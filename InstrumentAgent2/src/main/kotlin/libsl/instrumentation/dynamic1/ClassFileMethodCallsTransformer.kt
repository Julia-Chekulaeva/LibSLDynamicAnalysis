package libsl.instrumentation.dynamic1

import javassist.*
import javassist.bytecode.AccessFlag
import javassist.expr.ExprEditor
import javassist.expr.MethodCall
import java.io.File
import java.lang.instrument.ClassFileTransformer
import java.security.ProtectionDomain
import java.util.logging.Level
import java.util.logging.Logger

class ClassFileMethodCallsTransformer(
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
        getOldToNewMethods(classNameWithDots) ?: return classfileBuffer
        logger.log(Level.INFO, "${logger.name}: Changing class $classNameWithDots: started")
        val newClassfileBuffer = useJavassist(classNameWithDots, logger, classfileBuffer)
        logger.log(Level.INFO, "Changing class $classNameWithDots: finished")
        val file = File("src/main/resources/2/$className.class")
        file.parentFile.mkdirs()
        file.writeBytes(newClassfileBuffer)
        return newClassfileBuffer
    }

    private fun useJavassist(
        classNameWithDots: String?, logger: Logger, classfileBuffer: ByteArray?
    ): ByteArray {
        pool.insertClassPath(ByteArrayClassPath(classNameWithDots, classfileBuffer))
        val ctClass = pool[classNameWithDots]
        ctClass.defrost()
        logger.log(Level.INFO, "Class ${ctClass.name} methods are: ${ctClass.declaredMethods.joinToString { method ->
            "${method.name}(${method.parameterTypes.joinToString { it.name }})"
        }}")
        instrumentClass(ctClass)
        return ctClass.toBytecode()
    }

    private fun instrumentClass(ctClass: CtClass) {
        ctClass.instrument(NewExprEditor(classesToOldToNewMethods))
        ctClass.nestedClasses.forEach { instrumentClass(it) }
    }

    private class NewExprEditor(
        private val classesToOldToNewMethods: Map<String, Map<Pair<String, List<String>>, String>>
    ) : ExprEditor() {
        override fun edit(m: MethodCall) {
            val oldToNewMethods = classesToOldToNewMethods[m.className]
            if (oldToNewMethods != null) {
                println("className = ${m.className}")
                val newMethodName = oldToNewMethods[m.methodName to m.method.parameterTypes.map { it.name }]
                if (newMethodName != null) {
                    val isStatic = m.method.methodInfo.accessFlags.and(AccessFlag.STATIC) != 0
                    println("oldMethodName = ${m.methodName}, returnType = ${m.method.returnType.name}")
                    val call = if (isStatic)
                        "${m.className}.$newMethodName($$);"
                    else
                        "\$0.$newMethodName($$);"
                    val replaceStr = if (m.method.returnType.name == "void")
                        call
                    else "\$_ = $call;"
                    m.replace(replaceStr)
                    println("newMethodName = $newMethodName")
                }
            }
        }
    }
}