import instrumentStatic.KotlinInstrumentation
import org.jetbrains.research.libsl.LibSL
import org.junit.jupiter.api.Test
import java.io.File

class InstrumentationTests {

    private fun getLslPath(example: Int) = "src/test/resources/example$example/"

    private fun getLslFileName(example: Int) = "lslFile$example.lsl"

    private fun getLibrary(example: Int) =
        LibSL(getLslPath(example)).loadFromFileName(getLslFileName(example))

    private fun instrumentationTestForExample(exampleIndex: Int) {
        val kotlinInstrumentation = KotlinInstrumentation(getLibrary(exampleIndex))
        val fileLogger = File(
            "src/test/kotlin/codeExamples/example$exampleIndex/libExample_modified/Logger.kt"
        )
        fileLogger.parentFile.mkdirs()
        val libUsageFile = File(
            "src/test/kotlin/codeExamples/example$exampleIndex/libUsage_modified/LibUsage.kt"
        )
        libUsageFile.parentFile.mkdirs()
        kotlinInstrumentation.createModifiedLibFiles(
            "src/test/kotlin", "codeExamples.example$exampleIndex.libExample_modified",
            "codeExamples.example$exampleIndex.libExample"
        )
        kotlinInstrumentation.replaceStringInFileAndCopyToAnotherFile(
            File("src/main/resources/instrumentation/Logger.kt"), fileLogger,
            "instrumentation/static", "codeExamples.example$exampleIndex.libExample_modified"
        )
        kotlinInstrumentation.replaceStringInFileAndCopyToAnotherFile(
            fileLogger, fileLogger, "example/logExample", "example$exampleIndex/logExample$exampleIndex"
        )
        kotlinInstrumentation.replaceStringInFileAndCopyToAnotherFile(
            File("src/test/kotlin/codeExamples/example$exampleIndex/libUsage/LibUsage.kt"), libUsageFile,
            "codeExamples.example$exampleIndex.libUsage",
            "codeExamples.example$exampleIndex.libUsage_modified"
        )
        kotlinInstrumentation.replaceStringInFileAndCopyToAnotherFile(
            libUsageFile, libUsageFile, "codeExamples.example$exampleIndex.libExample",
            "codeExamples.example$exampleIndex.libExample_modified"
        )
    }

    @Test
    fun instrumentationTest() {
        instrumentationTestForExample(1)
        instrumentationTestForExample(2)
        instrumentationTestForExample(3)
    }
}