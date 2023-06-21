import githubSearch.GitHubAccess
import java.io.File


const val propertyFileName = "C:/Users/student/github/bot-lsl.github"
const val libName = "org.yaml:snakeyaml:2.0"
const val lslLocalPath = "src/main/resources/lslFiles/"
const val lslLocalFileName = "example.lsl"

fun main() {
    val lslFile = File("$lslLocalPath$lslLocalFileName")
    lslFile.createNewFile()
    app(propertyFileName, libName, lslLocalPath, lslLocalFileName)
}

fun app(propertyFileName: String, libName: String, lslLocalPath: String, lslLocalFileName: String) {
    val gitHubAccess = GitHubAccess(propertyFileName, lslLocalPath, lslLocalFileName)
    gitHubAccess.analyseDataFromRepos(libName)
    gitHubAccess.clearLogs()
}