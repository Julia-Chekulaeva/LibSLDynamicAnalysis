package logAnalysis

class Graph2 {

    private val startNode = StateNode(startNodeName)

    private val endNode = StateNode(endNodeName)

    private val nodes = mutableListOf<Node>(startNode, endNode)

    companion object {
        private var nextStateNumber = 0
    }

    class MethodCallInfo(
        val className: String, val methodName: String, val parameterTypes: List<String>, val typeOfLog: LogType
    ) {
        constructor(methodCallLogInfo: MethodCallLogInfo) : this(
            methodCallLogInfo.className, methodCallLogInfo.methodName,
            methodCallLogInfo.parameters.map { it.type }, methodCallLogInfo.typeOfLog
        )

        override fun equals(other: Any?): Boolean {
            return other is MethodCallInfo && other.className == className && other.methodName == methodName &&
                    other.parameterTypes == parameterTypes && other.typeOfLog == typeOfLog
        }

        override fun toString() =
            "${className.split(".").last()}-${methodName}-<${parameterTypes.joinToString {
                it.split(".").last()
            }}>-${typeOfLog.shortName}"

        override fun hashCode(): Int {
            var result = className.hashCode()
            result = 31 * result + methodName.hashCode()
            result = 31 * result + parameterTypes.hashCode()
            result = 31 * result + typeOfLog.hashCode()
            return result
        }
    }

    class StateNode(name: String = "S${nextStateNumber++}") : Node(name)

    class MethodCallNode(methodCallInfo: MethodCallInfo, parentState: StateNode) : Node(
        null, methodCallInfo, parentState
    )

    abstract class Node(name: String? = null, val methodCallInfo: MethodCallInfo? = null, val parent: Node? = null) {

        val name = name ?: (methodCallInfo ?: throw Exception("Cannot identify node name")).toString()

        val children = mutableMapOf<Node, Int>()

        private fun childNodesToLines(listOfUsedNodes: MutableList<Node>): List<String> {
            val result = mutableListOf<String>()
            for (child in children) {
                result.add("\t{${child.value}}\t-> ${child.key.name}:")
                if (!listOfUsedNodes.contains(child.key)) {
                    if (child.key.name != endNodeName)
                        listOfUsedNodes.add(child.key)
                    result.addAll(child.key.childNodesToLines(listOfUsedNodes).map { "\t$it" })
                } else {
                    result.add("\t\t<...>")
                }
            }
            return result
        }

        override fun toString(): String {
            return """$name:
                |${childNodesToLines(mutableListOf(this)).joinToString(System.lineSeparator()) { it }}
            """.trimMargin()
        }
    }

    fun matrixOfWeightsAndNamesToString(): String {
        val result = StringBuilder()
        val sortedNodes = nodes
        for (nodeRow in sortedNodes) {
            for (nodeColumn in sortedNodes) {
                result.append(nodeRow.children[nodeColumn] ?: 0)
                result.append(", ")
            }
            result.append(System.lineSeparator())
        }
        for (node in sortedNodes) {
            result.append(node.name)
            result.append(System.lineSeparator())
        }
        return result.toString()
    }

    private fun connect(prevNode: Node, nextNode: Node) {
        prevNode.children[nextNode] = (prevNode.children[nextNode] ?: 0) + 1
    }

    fun connectToEndNode(node: Node) = connect(node, endNode)

    fun findOrCreateNextNode(prevState: StateNode, methodCallLogInfo: MethodCallLogInfo): Node {
        val methodCallInfo = MethodCallInfo(methodCallLogInfo)
        var result = prevState.children.keys.find {
            it.methodCallInfo == methodCallInfo
        }?.children?.keys?.find { it.name.matches(Regex("S\\d+")) }
        if (result == null) {
            result = MethodCallNode(methodCallInfo, prevState)
            nodes.add(result)
            connect(prevState, result)
            val nextState = StateNode()
            nodes.add(nextState)
            connect(result, nextState)
        }
        return result
    }

    override fun toString(): String {
        return startNode.toString()
    }
}