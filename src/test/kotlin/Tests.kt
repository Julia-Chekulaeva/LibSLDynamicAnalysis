import org.junit.jupiter.api.Test

class Tests {

    private val propertyFileName = "C:/Users/cat_p/bot-j.github"

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
}