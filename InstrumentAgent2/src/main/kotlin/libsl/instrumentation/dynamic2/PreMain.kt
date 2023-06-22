package libsl.instrumentation.dynamic2

import javassist.ClassPool
import javassist.CtClass
import javassist.CtMethod
import org.jetbrains.research.libsl.LibSL
import org.jetbrains.research.libsl.nodes.Function
import java.io.File
import java.lang.instrument.Instrumentation
import java.util.logging.Level
import java.util.logging.Logger

const val configPath = "src/main/resources/config"

val config = File(configPath).readLines().associate { s ->
    val split = s.split("=")
    split[0] to split[1].removePrefix("\"").removeSuffix("\"")
}

val lslPath = config["lslPath"] ?: ""
val lslFileName = config["lslFileName"] ?: ""

fun premain(agentArgs: String?, instrumentation: Instrumentation) {
    val logger = Logger.getAnonymousLogger()
    logger.log(Level.INFO, "Instrumentation has started")
    addTransformer(instrumentation, lslFileName)
    logger.log(Level.INFO, "Instrumentation has finished")
}

private fun addTransformer(instrumentation: Instrumentation, lslFileName: String) {
    val pool = ClassPool.getDefault()
    val library = LibSL(lslPath).loadFromFileName(lslFileName)
    val classesToOldToNewMethods = mutableMapOf<String, MutableMap<Pair<String, List<String>>, String>>()
    val ctClassesToOldToNewCtMethods = mutableMapOf<CtClass, MutableMap<CtMethod, CtMethod>>()
    library.automataReferences.forEach { automatonReference ->
        println("Automaton ${automatonReference.name}")
        val className = automatonReference.name
        val oldToNewMethods = mutableMapOf<Pair<String, List<String>>, String>()
        val oldToNewCtMethods = mutableMapOf<CtMethod, CtMethod>()
        classesToOldToNewMethods[className] = oldToNewMethods
        val resolvedAutomation = automatonReference.resolve()
        if (resolvedAutomation != null) {
            pool.importPackage(resolvedAutomation.name)
            val ctClass = pool.getCtClass(className) ?: return@forEach
            resolvedAutomation.functions.forEach { function ->
                val nameAndParamTypes = function.name to function.args.map { it.typeReference.name }
                val oldCtMethod = ctClass.methods.find { ctMethod ->
                    ctMethod.name == function.name && ctMethod.parameterTypes.map {
                        it.name
                    } == function.args.map {
                        it.typeReference.name
                    }
                } ?: return@forEach
                val newCtMethod = ctClass.methods.find { ctMethod ->
                    ctMethod.name == getNewMethodName(function, resolvedAutomation.functions) &&
                            ctMethod.parameterTypes.map {
                        it.name
                    } == function.args.map {
                        it.typeReference.name
                    }
                } ?: return@forEach
                oldToNewCtMethods[oldCtMethod] = newCtMethod
                oldToNewMethods[
                        nameAndParamTypes
                ] = getNewMethodName(function, resolvedAutomation.functions)
            }
            ctClassesToOldToNewCtMethods[ctClass] = oldToNewCtMethods
        }
    }
    instrumentation.addTransformer(ClassFileMethodCallsTransformer(ctClassesToOldToNewCtMethods))
}

private fun getNewMethodName(oldFun: Function, otherFuns: List<Function>): String {
    val result = StringBuilder("${oldFun.name}_NewName")
    val methodsWithSameArgs = otherFuns.filter { it.args == oldFun.args }
    while (methodsWithSameArgs.any { f -> f.name == result.toString() })
        result.append("_NewMethod")
    return result.toString()
}