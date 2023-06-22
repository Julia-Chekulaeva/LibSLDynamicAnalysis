package logAnalysis

import org.jetbrains.research.libsl.nodes.Library
import java.io.File
import java.lang.Exception

class AnalyseLogs(private val logFiles: List<File>, private val library: Library) {

    val graph = Graph()

    private val keyWords = listOf("class_name", "method_name", "parameters", "return_type", "object_id", "time")

    private val keyWordsWithDelimiters = keyWords.map { "$it: " }

    private val logInfoFromFiles = getLogInfoFromLogFiles()

    val methodCallGroups = getMethodCallGroupsFromLogInfo()

    private fun getLogValueForKeyWord(str: List<String>, index: Int): String = (str.find {
        it.startsWith(keyWordsWithDelimiters[index])
    } ?: throw Exception("No info about ${keyWords[index]}")).removePrefix(keyWordsWithDelimiters[index])

    private fun getLogInfoFromLogFiles(): List<LogInfo> {
        val result = mutableListOf<LogInfo>()
        logFiles.forEach { logFile ->
            val splitRegex1 = Regex(";\\s*")
            val splitRegex2 = Regex(",\\s*")
            val methodsCallsInfo = mutableListOf<MethodCallLogInfo>()
            logFile.readLines().forEach { line ->
                val split = line.split(splitRegex1)
                val logType = LogType.values().find { it.name == split[0] } ?: return@forEach
                val className = getLogValueForKeyWord(split, 0)
                val methodName = getLogValueForKeyWord(split, 1)
                val parametersStr = getLogValueForKeyWord(split, 2).removePrefix("(").removeSuffix(")")
                val parameters = if (parametersStr.matches(Regex(" *")))
                    listOf()
                else parametersStr.split(splitRegex2).map { it.split(": ") }.map {
                    MethodCallLogInfo.ParameterLogInfo(it[0], it[1])
                }
                val returnType = getLogValueForKeyWord(split, 3)
                val objectId = getLogValueForKeyWord(split, 4).toLongOrNull()
                val time = getLogValueForKeyWord(split, 5).toLong()
                methodsCallsInfo.add(MethodCallLogInfo(
                    className, methodName, parameters, returnType, objectId, logType, time
                ))
            }
            result.add(LogInfo(methodsCallsInfo))
        }
        return result
    }

    private fun getMethodCallGroupsFromLogInfo(): List<List<MethodCallLogInfo>> {
        val result = mutableListOf<MutableList<MethodCallLogInfo>>()
        logInfoFromFiles.forEach { logInfo ->
            val callGroupsByObjectId = logInfo.methodsCallsInfo.filter { methodCallLogInfo ->
                library.automataReferences.any {
                    methodCallLogInfo.className == it.context.resolveAutomaton(it)?.typeReference?.name
                }
            }.groupBy { it.objectId }.map { group ->
                val res = mutableListOf<MethodCallLogInfo>()
                group.value.forEach { methodCall ->
                    if (res.size > 0) {
                        val last = res.last()
                        if (
                            last.typeOfLog == LogType.METHOD_STARTED &&
                            methodCall.typeOfLog == LogType.METHOD_FINISHED &&
                            last.className == methodCall.className && last.methodName == methodCall.methodName &&
                            last.parameters == methodCall.parameters
                        ) {
                            val newMethodCall = MethodCallLogInfo(
                                last.className, last.methodName, last.parameters, last.returnType,
                                group.key, LogType.METHOD_CALL, last.time
                            )
                            res[res.lastIndex] = newMethodCall
                            return@forEach
                        }
                    }
                    res.add(methodCall)
                }
                res
            }
            result.addAll(callGroupsByObjectId)
        }
        return result
    }

    fun analyseLogInfo(graphFilePath: String) {
        methodCallGroups.forEach { classGroup ->
            var prevNode = graph.startNode
            classGroup.forEach { methodCallLogInfo ->
                prevNode = graph.findOrCreateNextNode(prevNode, methodCallLogInfo)
            }
            graph.connectToEndNode(prevNode)
        }
        graph.kTail(5)
        File(graphFilePath).writeText(graph.toString())
    }
}