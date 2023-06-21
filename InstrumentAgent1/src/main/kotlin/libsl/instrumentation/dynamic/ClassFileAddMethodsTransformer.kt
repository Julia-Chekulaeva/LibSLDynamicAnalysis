package libsl.instrumentation.dynamic

import javassist.*
import java.lang.instrument.ClassFileTransformer
import java.security.ProtectionDomain
import java.util.logging.Level
import java.util.logging.Logger

class ClassFileAddMethodsTransformer(
    private val classesToOldToNewMethods: Map<String, Map<Pair<String, List<String>>, String>>
) : ClassFileTransformer {

    private val pool = getPool()

    private fun getPool(): ClassPool {
        val pool = ClassPool.getDefault()
        pool.importPackage("instrumentation.java.MyLogger")
        return pool
    }

    private fun getOldToNewMethods(classNameWithDots: String?) = classesToOldToNewMethods[classNameWithDots]

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
        val oldToNewMethods = getOldToNewMethods(classNameWithDots) ?: return classfileBuffer
        logger.log(Level.INFO, "${logger.name}: Changing class $classNameWithDots: started")
        val newClassfileBuffer = useJavassist(classNameWithDots, logger, classfileBuffer, oldToNewMethods)
        logger.log(Level.INFO, "Changing class $classNameWithDots: finished")
        println("Classes with old and new methods: $classesToOldToNewMethods")
        return newClassfileBuffer
    }

    private fun useJavassist(
        classNameWithDots: String?, logger: Logger, classfileBuffer: ByteArray?,
        oldToNewMethods: Map<Pair<String, List<String>>, String>
    ): ByteArray {
        pool.insertClassPath(ByteArrayClassPath(classNameWithDots, classfileBuffer))
        val ctClass = pool[classNameWithDots]
        val methods = ctClass.declaredMethods.toList()
        for (method in methods) {
            val newMethodName = oldToNewMethods[
                    method.name to method.parameterTypes.map { it.name }
            ] ?: continue
            logger.log(
                Level.INFO,
                "Method ${method.name}: ${method.parameterTypes.joinToString { it.name }}"
            )
            analyseMethod(ctClass, method, newMethodName)
        }
        logger.log(Level.INFO, "Class ${ctClass.name} methods are: ${ctClass.declaredMethods.joinToString { method ->
            "${method.name}(${method.parameterTypes.joinToString { it.name }})"
        }}")
        return ctClass.toBytecode()
    }

    private fun analyseMethod(ctClass: CtClass, method: CtMethod, newMethodName: String) {
        val classNameWithDots = ctClass.name
        val oldMethodName = method.name
        val classMap = ClassMap()
        classMap[classNameWithDots] = classNameWithDots
        val argNames = Array(method.parameterTypes.size) { "arg$it" }
        val createdMethod = CtNewMethod.copy(
            method, newMethodName, ctClass, classMap
        )
        method.insertBefore(getLogCommand(classNameWithDots, oldMethodName, method, argNames))
        ctClass.addMethod(createdMethod)
    }

    private fun getLogCommand(
        classNameWithDots: String, oldMethodName: String, method: CtMethod, argNames: Array<String>
    ) = """MyLogger.myLogger.log("METHOD_CALL", "$classNameWithDots", "$oldMethodName", "${
        method.parameterTypes.withIndex().joinToString {
            "${argNames[it.index]}: ${it.value.name} = \" + $${it.index + 1}.hashCode() + \""
        }
    }", "${method.returnType.name}", hashCode());""".trimMargin()
}