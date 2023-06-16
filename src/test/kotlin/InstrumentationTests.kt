import instrumentStatic.KotlinInstrumentation
import org.jetbrains.research.libsl.LibSL
import org.junit.jupiter.api.Test
import java.io.File

const val lslPath = "src/test/resources/lslFiles/"

class InstrumentationTests {

    private fun getLslFileName(example: Int) = "example$example.lsl"

    private fun getLibrary(example: Int) =
        LibSL(lslPath).loadFromFileName(getLslFileName(example))

    private fun instrumentationTestForExample(exampleIndex: Int) {
        val kotlinInstrumentation = KotlinInstrumentation(getLibrary(exampleIndex))
        val newLoggerPathKt = "src/test/kotlin/codeExamples/libExamples_modified/example$exampleIndex/Logger.kt"
        val oldLoggerPathKt = "src/main/resources/libsl/instrumentation/static/kt/Logger.kt"
        val packageStrToReplaceKt = "libsl.instrumentation.static.kt"
        val newLoggerPathJava = "src/test/kotlin/codeExamples/libExamples_modified/example$exampleIndex/MyLogger.java"
        val oldLoggerPathJava = "src/main/resources/libsl/instrumentation/static/java/MyLogger.java"
        val packageStrToReplaceJava = "libsl.instrumentation.static.java"
        val usageFilePath = "src/test/kotlin/codeExamples/libUsages/example$exampleIndex/LibUsage.kt"
        val usageModifiedFilePath = "src/test/kotlin/codeExamples/libUsages_modified/example$exampleIndex/LibUsage.kt"
        val libUsageModifiedFile = File(usageModifiedFilePath)
        libUsageModifiedFile.parentFile.mkdirs()
        kotlinInstrumentation.createModifiedLibFiles(
            "src/test/kotlin", "codeExamples.libExamples_modified.example$exampleIndex",
            "codeExamples.libExamples.example$exampleIndex"
        )
        val fileLogger = File(newLoggerPathJava)
        fileLogger.parentFile.mkdirs()
        kotlinInstrumentation.replaceStringInFileAndCopyToAnotherFile(
            File(oldLoggerPathJava), fileLogger,
            packageStrToReplaceJava, "codeExamples.libExamples_modified.example$exampleIndex"
        )
        kotlinInstrumentation.replaceStringInFileAndCopyToAnotherFile(
            fileLogger, fileLogger, "example/logExample", "example$exampleIndex/logExample$exampleIndex"
        )
        kotlinInstrumentation.replaceStringInFileAndCopyToAnotherFile(
            File(usageFilePath), libUsageModifiedFile,
            "codeExamples.libUsages.example$exampleIndex",
            "codeExamples.libUsages_modified.example$exampleIndex"
        )
        kotlinInstrumentation.replaceStringInFileAndCopyToAnotherFile(
            libUsageModifiedFile, libUsageModifiedFile, "codeExamples.libExamples.example$exampleIndex",
            "codeExamples.libExamples_modified.example$exampleIndex"
        )
    }

    @Test
    fun instrumentationTest() {
        instrumentationTestForExample(1)
        instrumentationTestForExample(2)
        instrumentationTestForExample(3)
    }
}