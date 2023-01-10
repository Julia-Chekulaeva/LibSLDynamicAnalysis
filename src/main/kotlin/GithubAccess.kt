import org.kohsuke.github.GHRepository
import org.kohsuke.github.GHWorkflowRun
import org.kohsuke.github.GitHub
import org.kohsuke.github.GitHubBuilder
import java.io.File


const val gitHubActionsFile = ".github/workflows/bot-j-run-tests-with-logs.yml"
const val workflowName = "bot-j-Run-Tests-With-Logs"
const val qLanguage = "gradle"
const val qSize = "<700"
const val timeLimitMillis = 60_000
const val timeStepMillis = 5000L
const val threadsCount = 4

class GithubAccess(propertyFileName: String) {

    private val gitHub: GitHub = GitHubBuilder.fromPropertyFile(propertyFileName).build()

    fun getGitHub() = gitHub

    fun cleanRepos() {
        gitHub.myself.allRepositories.values.forEach { it.delete() }
    }

    fun checkRepos(libName: String) {
        println("\n${gitHub.myself}\n")
        cleanRepos()
        val repos = mutableSetOf<GHRepository>()
        val searchResult = gitHub.searchContent().q(libName).language(qLanguage).size(qSize).list()
        for (ghContent in searchResult) {
            repos.add(ghContent.owner)
        }
        val threads = MutableList(threadsCount) { Thread() }
        for ((index, repo) in repos.withIndex()) {
            while (threads[index % threadsCount].isAlive) {
                Thread.sleep(timeStepMillis)
            }
            threads[index % threadsCount] = Thread {
                println("Thread $index started")
                processRepo(repo)
                println("Thread $index finished")
            }
            threads[index % threadsCount].start()
        }
    }

    fun processRepo(repo: GHRepository) {
        repo.fork()
        val myRepo = gitHub.myself.getRepository(repo.name)
        println("${repo.htmlUrl}\nForked: ${myRepo.htmlUrl}\n")
        try {
            processForkedRepo(myRepo)
        } catch (e: Exception) {
            throw e
        } finally {
            myRepo.delete()
        }
    }

    private fun processForkedRepo(myRepo: GHRepository) {
        val file = File(gitHubActionsFile)
        myRepo.createContent().content(file.readText()).path(gitHubActionsFile)
            .message("Add $gitHubActionsFile file").commit()
        val startTime = System.currentTimeMillis()
        var jobs = myRepo.listWorkflows().toList().filter { it.name == workflowName }.map { it.listRuns() }
        while (jobs.isEmpty() || jobs.first().toList().isEmpty()) {
            Thread.sleep(timeStepMillis)
            jobs = myRepo.listWorkflows().toList().filter { it.name == workflowName }.map {
                it.enable()
                it.listRuns()
            }
        }
        jobs.first().forEach {
            if (it.name != workflowName)
                return@forEach
            while (
                it.status != GHWorkflowRun.Status.COMPLETED
                && System.currentTimeMillis() - startTime < timeLimitMillis
            ) {
                Thread.sleep(timeStepMillis)
            }
            println("${it.htmlUrl} - status: ${it.status.name}, name: ${it.name}")
            if (it.status.ordinal == 0) {
                println("Logs: ${it.logsUrl}")
            }
        }
    }
}