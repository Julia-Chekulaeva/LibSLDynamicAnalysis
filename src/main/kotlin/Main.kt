import githubSearch.GitHubAccess
import org.kohsuke.github.GitHub


const val propertyFileName = "C:/Users/student/github/bot-j.github"

fun main() {
    val libName = "org.yaml:snakeyaml:2.0"
    val gitHubAccess = GitHubAccess(propertyFileName)
    gitHubAccess.analyseDataFromRepos(libName)
    gitHubAccess.clearLogs()
}

fun testForks(github: GitHub) {
    github.searchRepositories().q("KotlinAsFirst2019").list().forEach {
        println("Repo ${it.fullName}")
        if (it.isFork && it.source.listCommits() == it.listCommits())
            return
        if (it.isFork)
            println("Repo ${it.fullName} is a fork, source repo: ${it.source.fullName}, parent repo: ${
                it.source.fullName
            }")
        try {
            it.fork()
            println("Repo ${it.fullName} is forked")
        } catch (e: Exception) {
            println(e.localizedMessage)
            e.printStackTrace()
        }
    }
}