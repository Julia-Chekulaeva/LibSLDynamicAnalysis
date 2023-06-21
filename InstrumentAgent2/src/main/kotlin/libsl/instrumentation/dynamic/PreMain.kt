package libsl.instrumentation.dynamic

import org.jetbrains.research.libsl.nodes.Function
import org.jetbrains.research.libsl.LibSL
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
    val library = LibSL(lslPath).loadFromFileName(lslFileName)
    val classesToOldToNewMethods = mutableMapOf<String, MutableMap<Pair<String, List<String>>, String>>()
    library.automataReferences.forEach { automatonReference ->
        println("Automaton ${automatonReference.name}")
        val className = automatonReference.name
        val oldToNewMethods = mutableMapOf<Pair<String, List<String>>, String>()
        classesToOldToNewMethods[className] = oldToNewMethods
        val resolvedAutomation = automatonReference.resolve()
        if (resolvedAutomation != null) {
            println("Resolved automaton: name ${
                resolvedAutomation.name
            }, type ${resolvedAutomation.typeReference.name}")
            resolvedAutomation.functions.forEach { function ->
                oldToNewMethods[
                        function.name to function.args.map { it.typeReference.name }
                ] = getNewMethodName(function, resolvedAutomation.functions)
                println("Method ${function.name}, args: ${function.args.joinToString { it.typeReference.name }}")
            }
        }
    }
    instrumentation.addTransformer(ClassFileAddMethodsTransformer(classesToOldToNewMethods))
}

private fun getNewMethodName(oldFun: Function, otherFuns: List<Function>): String {
    val result = StringBuilder("${oldFun.name}_NewName")
    val methodsWithSameArgs = otherFuns.filter { it.args == oldFun.args }
    while (methodsWithSameArgs.any { f -> f.name == result.toString() })
        result.append("_NewMethod")
    return result.toString()
}