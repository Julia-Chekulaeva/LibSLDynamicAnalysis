package logAnalysis

class Graph3 {

    val startNode = Node(startNodeName)

    private val endNode = Node(endNodeName)

    private val nodes = mutableListOf(startNode, endNode)

    class NodeInfo(
        val className: String, val methodName: String, val parameterTypes: List<String>, val typeOfLog: LogType
    ) {
        constructor(methodCallLogInfo: MethodCallLogInfo) : this(
            methodCallLogInfo.className, methodCallLogInfo.methodName,
            methodCallLogInfo.parameters.map { it.type }, methodCallLogInfo.typeOfLog
        )

        override fun equals(other: Any?): Boolean {
            return other is NodeInfo && other.className == className && other.methodName == methodName &&
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

    class Node(name: String? = null, val nodeInfo: NodeInfo? = null, val parent: Node? = null) {

        val name = name ?: (nodeInfo ?: throw Exception("Cannot identify node name")).toString()

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

    fun findOrCreateNextNode(prevNode: Node, methodCallLogInfo: MethodCallLogInfo): Node {
        val nodeInfo = NodeInfo(methodCallLogInfo)
        var result = prevNode.children.keys.find { it.nodeInfo == nodeInfo }
        if (result == null) {
            var nodeBeforeCurrent = prevNode
            while (nodeBeforeCurrent != startNode) {
                if (nodeBeforeCurrent.nodeInfo == nodeInfo)
                    result = nodeBeforeCurrent
                nodeBeforeCurrent = nodeBeforeCurrent.parent
                    ?: throw Exception("No parent node for node $nodeBeforeCurrent")
            }
            if (result == null) {
                result = Node(null, nodeInfo, prevNode)
                nodes.add(result)
            }
        }
        connect(prevNode, result)
        return result
    }

    override fun toString(): String {
        return startNode.toString()
    }
}