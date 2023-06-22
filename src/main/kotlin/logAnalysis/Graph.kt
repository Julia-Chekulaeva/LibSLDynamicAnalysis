package logAnalysis

const val startNodeName = "start"

const val endNodeName = "end"

class GraphException(message: String) : Exception(message)

class Graph {

    val startNode = Node(startNodeName, level = 0)

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

    class Node(name: String? = null, val nodeInfo: NodeInfo? = null, parent: Node? = null, level: Int? = null) {

        val name = name ?: (nodeInfo ?: throw GraphException("Cannot identify node name")).toString()

        val children = mutableMapOf<Node, Int>()

        val level: Int? = level ?: parent?.level?.plus(1)

        private fun childNodesToLines(listOfUsedNodes: MutableList<Node>): List<String> {
            val result = mutableListOf<String>()
            for (child in children) {
                result.add("\t{${child.value}} ->\t${child.key.name}-${child.key.level ?: "inf"}:")
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
            return """$name-${level ?: "inf"}:
                |${childNodesToLines(mutableListOf(this)).joinToString(System.lineSeparator()) { it }}
            """.trimMargin()
        }
    }

    fun checkMethodCallSequence(methodCallSequence: List<MethodCallLogInfo>): Boolean {
        var node = startNode
        for (methodCall in methodCallSequence) {
            node = node.children.keys.find { it.nodeInfo == NodeInfo(methodCall) } ?: return false
        }
        return node.children.containsKey(endNode)
    }

    fun matrixOfWeightsAndNamesToString(): String {
        val result = StringBuilder()
        val sortedNodes = nodes
        val separatorStr = ",  \t"
        for (nodeRow in sortedNodes) {
            for (nodeColumn in sortedNodes) {
                result.append(nodeRow.children[nodeColumn] ?: 0)
                result.append(separatorStr)
            }
            result.delete(result.length - separatorStr.length, result.length)
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
            result = Node(null, nodeInfo, prevNode)
            nodes.add(result)
        }
        connect(prevNode, result)
        return result
    }

    private fun checkNodesUnionKTail(node1: Node, node2: Node, k: Int): Boolean {
        return k == 0 || (node1.nodeInfo == node2.nodeInfo && node1.children.any { (child1, _) ->
            node2.children.any { (child2, _) -> checkNodesUnionKTail(child1, child2, k - 1) }
        })
    }

    fun kTail(k: Int) {
        val groupedNodes = mutableSetOf<MutableSet<Node>>()
        for (i in 2 until nodes.size) {
            for (j in 2 until i) {
                if (checkNodesUnionKTail(nodes[i], nodes[j], k)) {
                    val currentComparingNodes = mutableSetOf(nodes[i], nodes[j])
                    if (
                        groupedNodes.none { setOfNodes ->
                            val result = setOfNodes.intersect(currentComparingNodes).isNotEmpty()
                            if (result)
                                setOfNodes.addAll(currentComparingNodes)
                            result
                        }
                    ) {
                        groupedNodes.add(currentComparingNodes)
                    }
                }
            }
        }
        groupedNodes.forEach { setOfNodes ->
            getAllNodes()
            setOfNodes.removeIf {
                it !in nodes
            }
            val minLevelNode = setOfNodes.filter { it.level != null }.minByOrNull { it.level ?: 0 } ?: startNode
            setOfNodes.remove(minLevelNode)
            for (nodeToDelete in setOfNodes) {
                for (parent in nodes.filter { it.children.containsKey(nodeToDelete) }) {
                    parent.children[minLevelNode] = (parent.children[minLevelNode] ?: 0) +
                            parent.children[nodeToDelete]!!
                    parent.children.remove(nodeToDelete)
                }
            }
            for (deletedNode in setOfNodes) {
                getAllBranchesFromDeletingNode(minLevelNode, deletedNode)
            }
        }
        getAllNodes()
    }

    private fun getAllNodes(): Set<Node> {
        val result = mutableSetOf<Node>()
        var resultSize = 0
        val nodesToAdd = mutableListOf(startNode)
        result.addAll(nodesToAdd)
        while (result.size != resultSize) {
            val prevNodesToAdd = nodesToAdd.toList()
            resultSize = result.size
            nodesToAdd.clear()
            for (node in prevNodesToAdd) {
                nodesToAdd.addAll(node.children.keys)
            }
            result.addAll(nodesToAdd)
        }
        nodes.removeIf {
            it !in result
        }
        return result
    }

    private fun getAllBranchesFromDeletingNode(remainingNode: Node, nodeToDelete: Node) {
        if (remainingNode == nodeToDelete)
            return
        for ((childToDelete, count) in nodeToDelete.children) {
            val nextChild = remainingNode.children.keys.find { it.nodeInfo == childToDelete.nodeInfo }
            val remainingChild = nextChild ?: childToDelete
            val currentCount = remainingNode.children[remainingChild] ?: 0
            remainingNode.children[remainingChild] = currentCount + count
            getAllBranchesFromDeletingNode(remainingChild, childToDelete)
        }
    }

    override fun toString(): String {
        return """digraph SomeAutomaton {
            |${nodes.indices.joinToString (System.lineSeparator()) { "\ts$it;" }}
            |${nodes.withIndex().joinToString (System.lineSeparator()) { (i, n) -> 
                n.children.toList().joinToString (System.lineSeparator()) { (child, count) ->
                    "\ts$i -> s${nodes.indexOf(child)} [label=\"${child.name} ($count)\"];"
                }
            }}
            |}
        """.trimMargin()
    }
}