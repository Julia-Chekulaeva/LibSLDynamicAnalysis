import logAnalysis.AnalyseLogs
import org.jetbrains.research.libsl.LibSL
import org.junit.jupiter.api.Test
import java.io.File
import kotlin.test.assertFalse

class GraphTests {

    private fun getLslFileName(numberOfExample: Int) = "example$numberOfExample.lsl"

    private fun getLibrary(numberOfExample: Int) =
        LibSL(lslPath).loadFromFileName(getLslFileName(numberOfExample))

    @Test
    fun analyseLogs1() {
        analyseLogsExample(1)
    }

    @Test
    fun analyseLogs2() {
        analyseLogsExample(2)
    }

    @Test
    fun analyseLogs3() {
        analyseLogsExample(3)
    }

    @Test
    fun analyseLogs4() {
        analyseLogsExample(4)
    }

    private fun analyseLogsExample(exampleIndex: Int) {
        val dir = File("src/test/resources/example/")
        val analyseLogs = AnalyseLogs(
            dir.listFiles()?.toList() ?: listOf(),
            getLibrary(exampleIndex)
        )
        analyseLogs.analyseLogInfo(
            "src/test/resources/example$exampleIndex/graph$exampleIndex.dot"
        )
        analyseLogs.methodCallGroups.forEach {
            assert(analyseLogs.graph.checkMethodCallSequence(it))
        }
        AnalyseLogs(
            listOf(File("src/test/resources/example$exampleIndex/wrongLogExample$exampleIndex.txt")),
            getLibrary(exampleIndex)
        ).methodCallGroups.forEach {
            assertFalse(analyseLogs.graph.checkMethodCallSequence(it))
        }
        val matrixAndNames = analyseLogs.graph.matrixOfWeightsAndNamesToString().split(System.lineSeparator()).filter {
            it.trim().isNotEmpty()
        }
        val halfSize = matrixAndNames.size / 2
        val matrix = matrixAndNames.subList(0, halfSize).map { s ->
            s.split(Regex("\\s*,\\s*")).map { it.toInt() }
        }
        val names = matrixAndNames.subList(halfSize, matrixAndNames.size)
        assert(matrix.size == names.size)
        assert(matrix.isNotEmpty())
        assert(names[0] == "start")
        assert(matrix.all { it.size == matrix.size })
        /*assert(matrix[1].sum() == 0)
        assert(matrix.fold(0) { s, w -> s + w[0] } == 0)
        assertEquals(matrix[0].sum(), matrix.fold(0) { s, w -> s + w[1] })
        for (i in 2 until matrix.size) {
            assertEquals(
                matrix[i].sum(), matrix.fold(0) { s, w -> s + w[i] },
                "Row ${i + 1} and column ${i + 1} have different sum values"
            )
        }*/
    }
}