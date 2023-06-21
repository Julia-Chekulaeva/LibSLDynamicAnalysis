import githubSearch.GitHubAccess
import logAnalysis.AnalyseLogs
import org.jetbrains.research.libsl.LibSL
import org.junit.jupiter.api.Test
import java.io.File

class Tests {

    private val lslPath = "src/test/resources/lslFiles/"

    private fun getLslPath(numberOfExample: Int) = "src/test/resources/lslFiles$numberOfExample/"

    private fun getLslFileName(numberOfExample: Int) = "example$numberOfExample.lsl"

    private val propertyFileName = "C:/Users/student/github/bot-lsl.github"

    private fun getLibrary(numberOfExample: Int) =
        LibSL(getLslPath(numberOfExample)).loadFromFileName(getLslFileName(numberOfExample))

    @Test
    fun processReposTest() {
        processRepoTest(
            lslPath, "shakeyaml-2.0.lsl", "spring-projects/spring-framework"
        )
    }

    private fun processRepoTest(lslPath: String, lslFileName: String, repoName: String) {
        val githubAccess = GitHubAccess(propertyFileName, lslPath, lslFileName)
        val gitHub = githubAccess.getGitHub()
        println(gitHub.myself)
        githubAccess.cleanRepos()
        val botRepo = gitHub.getRepository(repoName)
        githubAccess.forkAndEditRepo(botRepo)
        Thread.sleep(120000)
        githubAccess.checkJobStatusAndLoadLogs(botRepo)
    }

    @Test
    fun cleanReposTest() {
        val githubAccess = GitHubAccess(propertyFileName, lslLocalPath, lslLocalFileName)
        val gitHub = githubAccess.getGitHub()
        githubAccess.cleanRepos()
        assert(gitHub.myself.allRepositories.isEmpty())
    }

    @Test
    fun analyseLogs() {
        analyseLogsExample(1)
        analyseLogsExample(2)
    }

    private fun analyseLogsExample(exampleIndex: Int) {
        val analyseLogs = AnalyseLogs(
            listOf(File("src/test/resources/example$exampleIndex/logExample$exampleIndex.txt")),
            getLibrary(exampleIndex)
        )
        analyseLogs.analyseLogInfo(
            "src/test/resources/example$exampleIndex/graphForLogExample$exampleIndex.txt",
            "src/test/resources/example$exampleIndex/matrixAndNodeNamesExample$exampleIndex.txt"
        )
    }
}