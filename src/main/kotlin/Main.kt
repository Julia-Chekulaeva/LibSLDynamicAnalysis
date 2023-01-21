import org.jetbrains.research.libsl.LibSL
import java.io.File


const val lslPath = "src/main/resources"
const val lslFileName = "lslFile.lsl"
const val propertyFileName = "C:/Users/cat_p/bot-j.github"

fun main(args: Array<String>) {
    val library = LibSL(lslPath).loadFromFileName(lslFileName)
    val libName = "rjohnsondev:java-libpst:0.9.4"
    //changeFile("src/main/kotlin/libUsage/example/UsageExample.kt", library)
    //example()
    GitHubAccess(propertyFileName).analyseDataFromRepos(libName)
    clearLogs()
}

private fun clearLogs() {
    File(logsDirPath).listFiles()?.forEach { it.delete() }
}