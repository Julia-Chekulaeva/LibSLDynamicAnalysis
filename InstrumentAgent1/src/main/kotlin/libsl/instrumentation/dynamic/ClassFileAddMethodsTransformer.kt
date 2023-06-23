package libsl.instrumentation.dynamic

import javassist.*
import javassist.bytecode.AccessFlag
import java.io.File
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
        logger.log(Level.INFO, "First changing class $classNameWithDots: started")
        val newClassfileBuffer = useJavassist(classNameWithDots, logger, classfileBuffer, oldToNewMethods)
        logger.log(Level.INFO, "First changing class $classNameWithDots: finished")
        val file = File("src/main/resources/1/$className.class")
        file.parentFile.mkdirs()
        file.writeBytes(newClassfileBuffer)
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
        try {
            val logCommand = getLogCommand(classNameWithDots, oldMethodName, method, argNames)
            method.insertBefore(logCommand)
            createdMethod.insertBefore("System.out.println(\"Hi from ${createdMethod.name} fun!\");")
            method.insertBefore("System.out.println(\"Hi from ${method.name} fun!\");")
        } catch (e: Exception) {
            e.printStackTrace()
        }
        ctClass.addMethod(createdMethod)
    }

    private fun getLogCommand(
        classNameWithDots: String, oldMethodName: String, method: CtMethod, argNames: Array<String>
    ): String {
        val isStatic = method.methodInfo.accessFlags.and(AccessFlag.STATIC) != 0
        val id = if (isStatic) "0" else "$0.hashCode()"
        val params = method.parameterTypes.withIndex().joinToString {
            "${argNames[it.index]}: ${it.value.name}${""/*= \" + $${it.index + 1}.hashCode() + \"*/}"
        }
        val returnType = method.returnType.name
        val result = """
            |MyLogger.myLogger.log(
            |    "METHOD_CALL", "$classNameWithDots", "$oldMethodName", "$params", "$returnType", $id, $isStatic
            |);"""
        return result.trimMargin()
    }
}