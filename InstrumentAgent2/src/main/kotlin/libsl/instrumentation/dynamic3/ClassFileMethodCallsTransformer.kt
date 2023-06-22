package libsl.instrumentation.dynamic3

import javassist.*
import java.lang.instrument.ClassFileTransformer
import java.security.ProtectionDomain
import java.util.logging.Level
import java.util.logging.Logger

class ClassFileMethodCallsTransformer(
    private val ctClassesToOldToNewCtMethods: Map<CtClass, Map<CtMethod, CtMethod>>
) : ClassFileTransformer {

    private val pool = getPool()

    private fun getPool(): ClassPool {
        val pool = ClassPool.getDefault()
        pool.importPackage("instrumentation.java.MyLogger")
        return pool
    }

    override fun transform(
        loader: ClassLoader?,
        className: String?,
        classBeingRedefined: Class<*>?,
        protectionDomain: ProtectionDomain?,
        classfileBuffer: ByteArray?
    ): ByteArray {
        val classNameWithDots = className?.replace('/', '.')
        val logger = Logger.getLogger("InstrumentationLogger")
        if (classfileBuffer == null) {
            return byteArrayOf()
        }
        if (ctClassesToOldToNewCtMethods.none {
            it.key.name == classNameWithDots
        })
            return classfileBuffer
        logger.log(Level.INFO, "${logger.name}: Changing class $classNameWithDots: started")
        val newClassfileBuffer = useJavassist(classNameWithDots, logger)
        logger.log(Level.INFO, "Changing class $classNameWithDots: finished")
        return newClassfileBuffer
    }

    private fun useJavassist(
        classNameWithDots: String?, logger: Logger
    ): ByteArray {
        val ctClass = pool[classNameWithDots]
        val codeConverter = CodeConverter()
        ctClassesToOldToNewCtMethods.values.forEach { map ->
            map.forEach {
                codeConverter.redirectMethodCall(it.key, it.value)
            }
        }
        ctClass.instrument(codeConverter)
        logger.log(Level.INFO, "Class ${ctClass.name} methods are: ${ctClass.declaredMethods.joinToString { method ->
            "${method.name}(${method.parameterTypes.joinToString { it.name }})"
        }}")
        return ctClass.toBytecode()
    }
}