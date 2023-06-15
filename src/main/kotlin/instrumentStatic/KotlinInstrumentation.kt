package instrumentStatic

import logAnalysis.LogType
import org.jetbrains.research.libsl.nodes.Function
import org.jetbrains.research.libsl.nodes.FunctionArgument
import org.jetbrains.research.libsl.nodes.Library
import org.jetbrains.research.libsl.nodes.VariableWithInitialValue
import java.io.File

class KotlinInstrumentation(private val library: Library) {

    private class InfoAboutClass(
        val newFullClassName: String, val instName: String, val shortClassName: String
    )

    private val infoByClassName = mutableMapOf<String, InfoAboutClass>()

    fun createModifiedLibFiles(directoryPath: String, newPackageName: String, oldPackageName: String) {
        val automatons = library.automataReferences.mapNotNull { it.resolve() }
        for (automaton in automatons) {
            val type = automaton.typeReference.resolve() ?: continue
            val oldFullClassName = type.fullName
            if (!oldFullClassName.startsWith(oldPackageName)) continue
            val newFullClassName = "$newPackageName.${oldFullClassName.removePrefix("$oldPackageName.")}"
            val shortClassName = oldFullClassName.split(".").last()
            val instName = "inst$shortClassName" // ! Unchecked !
            infoByClassName[oldFullClassName] =
                InfoAboutClass(newFullClassName, instName, shortClassName)
        }
        for (automaton in automatons) {
            val type = automaton.typeReference.resolve() ?: continue
            val oldFullClassName = type.fullName
            val infoAboutClass = infoByClassName[oldFullClassName] ?: continue
            val constructorVars = automaton.constructorVariables
            val constructorParams = constructorVars.joinToString { "${it.name}: ${it.typeReference.name}" }
            val paramNames = constructorVars.joinToString { it.name }
            val constructorParamInst = "val ${infoAboutClass.instName}: $oldFullClassName"
            val instFromParams = "$oldFullClassName($paramNames)"
            val fields = automaton.internalVariables
            val functions = automaton.functions
            val classText = getClassText(
                infoAboutClass, constructorParams, constructorParamInst,
                instFromParams, fields, functions, newPackageName, oldPackageName
            )
            println(classText)
            val file = File(
                "${directoryPath}/${infoAboutClass.newFullClassName.replace(".", "/")}.kt"
            )
            file.createNewFile()
            file.writeText(classText)
        }
    }

    private fun getClassText(
        infoAboutClass: InfoAboutClass, constructorParams: String, constructorParamInst: String,
        instFromParams: String, fields: List<VariableWithInitialValue>, functions: List<Function>,
        newPackageName: String, oldPackageName: String
    ) = """package ${infoAboutClass.newFullClassName.removeSuffix(".${infoAboutClass.shortClassName}")}
                |
                |class ${infoAboutClass.shortClassName}($constructorParamInst) {
                |   constructor($constructorParams) : this($instFromParams)
                |${
            fields.joinToString(System.lineSeparator()) {
                val name = it.name // ! Incorrect !
                """
                            |   var $name = ${infoAboutClass.instName}.$name""".trimMargin()
            }
        }
                |${
            functions.joinToString(System.lineSeparator()) { function ->
                val funName = function.name
                val args = function.args
                val returnType = function.returnType?.name ?: Unit.javaClass.canonicalName
                val returnTypeModified = if (infoByClassName.containsKey(returnType))
                    "$newPackageName${returnType.removePrefix(oldPackageName)}"
                else returnType
                """
                            |   fun $funName(${
                    args.joinToString {
                        val argTypeName = it.typeReference.name
                        "${it.name}: ${infoByClassName[argTypeName]?.newFullClassName ?: argTypeName}"
                    }
                }): $returnTypeModified {""".trimMargin() +
                        generateLogCommand(LogType.METHOD_STARTED, infoAboutClass, funName, args, returnType) + """
                            |       val result = ${infoAboutClass.instName}.$funName(${args.joinToString { argument ->
                            "${argument.name}${
                                if (infoByClassName.containsKey(argument.typeReference.name))
                                    ".${infoByClassName[argument.typeReference.name]?.instName}"
                                else ""
                            }"
                        }})""".trimMargin() + 
                        generateLogCommand(LogType.METHOD_FINISHED, infoAboutClass, funName, args, returnType) + """
                            |       return ${
                            if (returnType != returnTypeModified)
                                "$returnTypeModified(result)"
                            else "result"
                        }
                            |   }""".trimMargin()
                    }
                }
                |}
                |
                |""".trimMargin()

    private fun generateLogCommand(
        logType: LogType, infoAboutClass: InfoAboutClass, funName: String,
        args: List<FunctionArgument>, returnType: String
    ) = System.lineSeparator() + "       logger.log(" + System.lineSeparator() +
            "           \"${logType}\", ${infoAboutClass.instName}.javaClass.name, \"$funName\", ${
                args.joinToString(prefix = "listOf(", postfix = ")") { 
                    "\"${it.name}: ${it.typeReference.name} = \${${it.name}.hashCode()}\"" 
                }
            }, \"$returnType\", ${infoAboutClass.instName}.hashCode()" + System.lineSeparator() +
            "       )" + System.lineSeparator()

    fun replaceStringInFileAndCopyToAnotherFile(oldFile: File, newFile: File, oldStr: String, newStr: String) {
        val text = oldFile.readText().replace(oldStr, newStr)
        newFile.createNewFile()
        newFile.writeText(text)
    }
}