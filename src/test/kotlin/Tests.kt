import githubSearch.GitHubAccess
import logAnalysis.AnalyseLogs
import org.jetbrains.research.libsl.LibSL
import org.junit.jupiter.api.Test
import java.io.File

class Tests {

    private fun getLslPath(numberOfExample: Int) = "src/test/resources/example$numberOfExample/"

    private fun getLslFileName(numberOfExample: Int) = "lslFile$numberOfExample.lsl"

    private val propertyFileName = "C:/Users/student/github/bot-j.github"

    private fun getLibrary(numberOfExample: Int) =
        LibSL(getLslPath(numberOfExample)).loadFromFileName(getLslFileName(numberOfExample))

    @Test
    fun processRepoTest() {
        val githubAccess = GitHubAccess(propertyFileName)
        val gitHub = githubAccess.getGitHub()
        println(gitHub.myself)
        githubAccess.cleanRepos()
        val botRepo = gitHub.getRepository("Julia-Chekulaeva/YouTubeGifAndSoundBot")
        githubAccess.forkAndEditRepo(botRepo)
    }

    @Test
    fun cleanReposTest() {
        val githubAccess = GitHubAccess(propertyFileName)
        val gitHub = githubAccess.getGitHub()
        githubAccess.cleanRepos()
        assert(gitHub.myself.allRepositories.isEmpty())
    }

    @Test
    fun testForks() {
        testForks(GitHubAccess(propertyFileName).getGitHub())
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