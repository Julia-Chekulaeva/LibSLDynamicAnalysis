import org.kohsuke.github.GHRepository
import org.kohsuke.github.GHWorkflowRun
import org.kohsuke.github.GitHub
import org.kohsuke.github.GitHubBuilder
import java.io.File


const val gitHubActionsFile = ".github/workflows/bot-j-run-tests-with-logs.yml"
const val logsDirPath = "src/main/resources/logs"
const val workflowName = "bot-j-Run-Instrumented-Tests-With-Logs"
const val qLanguage = "gradle"
const val qSize = "<700"
const val timeLimitMillis = 60_000
const val timeStepMillis = 5000L

class GithubAccess(propertyFileName: String) {

    private val forkedRepos = mutableListOf<GHRepository>()

    private val gitHub: GitHub = GitHubBuilder.fromPropertyFile(propertyFileName).build()

    fun getGitHub() = gitHub

    fun cleanRepos() {
        gitHub.myself.allRepositories.values.forEach { it.delete() }
    }

    fun analyseDataFromRepos(libName: String) {
        try {
            searchForkAndEditRepos(libName)
            checkJobsStatusesAndLoadLogs()
        } catch (e: Exception) {
            throw e
        } finally {
            deleteForkedRepos()
        }
    }

    private fun deleteForkedRepos() {
        forkedRepos.forEach { it.delete() }
        forkedRepos.clear()
    }

    private fun searchForkAndEditRepos(libName: String) {
        println("\n${gitHub.myself}\n")
        val repos = mutableSetOf<GHRepository>()
        val searchResult = gitHub.searchContent().q(libName).language(qLanguage).size(qSize).list()
        for (ghContent in searchResult) {
            repos.add(ghContent.owner)
        }
        for (repo in repos) {
            forkAndEditRepo(repo)
        }
    }

    private fun checkJobsStatusesAndLoadLogs() {
        val startTime = System.currentTimeMillis()
        while (
            System.currentTimeMillis() - startTime <= timeLimitMillis
            && forkedRepos.map { checkJobStatusAndLoadLogs(it) }.any { !it }
        ) {
            forkedRepos.removeIf { it.isArchived }
            Thread.sleep(timeStepMillis)
        }
        forkedRepos.removeIf { it.isArchived }
    }

    fun forkAndEditRepo(repo: GHRepository) {
        gitHub.myself.allRepositories.filter { it.key == repo.name }.forEach { existingRepo ->
            var i = 1
            while (gitHub.myself.allRepositories.filter { it.key == "${repo.name}-$i" }.isNotEmpty()) {
                i++
            }
            existingRepo.value.renameTo("${repo.name}-$i")
            Thread.sleep(timeStepMillis)
            println("""Repo ${repo.name} is renamed to ${repo.name}-$i
                |""".trimMargin())
        }
        repo.fork()
        val myRepo = gitHub.myself.getRepository(repo.name)
        println("""${repo.htmlUrl}
            |Forked: ${myRepo.htmlUrl}
            |""".trimMargin())
        forkedRepos.add(myRepo)
        editForkedRepo(myRepo)
    }

    private fun editForkedRepo(myRepo: GHRepository) {
        val file = File(gitHubActionsFile)
        myRepo.createContent().content(file.readText()).path(gitHubActionsFile)
            .message("Add $gitHubActionsFile file").commit()
        myRepo.listWorkflows().forEach { it.enable() }
    }

    private fun checkJobStatusAndLoadLogs(myRepo: GHRepository): Boolean {
        val workflows = myRepo.listWorkflows().toList().filter { it.name == workflowName }
        if (workflows.isEmpty())
            return false

        workflows.first().listRuns().toList().forEach { run ->
            println("""${run.htmlUrl}
                |job: ${run.name}
                |status: ${run.status.name} (${run.conclusion?.name})
                |Logs: ${run.logsUrl}
                |""".trimMargin())
            if (run.status != GHWorkflowRun.Status.COMPLETED)
                return false
            myRepo.enableDownloads(true)
            if (run.conclusion == GHWorkflowRun.Conclusion.SUCCESS) {
                run.listJobs().toList().forEach { job ->
                    job.downloadLogs {
                        it.transferTo(File("$logsDirPath/log_repo_${myRepo.name}_job_${job.name}.txt").outputStream())
                    }
                }
            }
            myRepo.archive()
            myRepo.delete()
            return true
        }
        return false
    }
}