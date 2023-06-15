package githubSearch

import instrumentStatic.modifyCode
import org.kohsuke.github.*
import java.io.File


const val dotGitHubDir = ".github"
const val workflowsDir = "workflows"
const val gitHubWorkflows = "$dotGitHubDir/$workflowsDir"
const val actionsFileName = "bot-j-run-tests-with-logs.yml"
const val gitHubActionsFile = "$gitHubWorkflows/$actionsFileName"
const val resourcesPath = "src/main/resources"
const val logsDirPath = "$resourcesPath/logs"
const val workflowName = "bot-j-Run-Instrumented-Tests-With-Logs"
const val qLanguage = "gradle"
const val timeLimitMillis = 60_000
const val timeStepMillis = 5000L

class GitHubAccess(propertyFileName: String) {

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

    private fun searchContent(libName: String, size: Int) =
        gitHub.searchContent().q(libName).size("<$size").language(qLanguage).list()

    private fun searchForkAndEditRepos(libName: String) {
        println("""Myself: ${gitHub.myself.htmlUrl}
            |""".trimMargin())
        val repos = mutableSetOf<GHRepository>()
        var size = 0
        var step = 1
        val maxStepsWithoutIncrement = 20
        var searchResult = searchContent(libName, size).toList()
        var stepsWithoutIncrement = 0
        try {
            while (true) {
                val prevFilesFound = searchResult.size
                size += step
                Thread.sleep(1000L)
                val searchContent = searchContent(libName, size)
                println("File size: $size\tFiles found: ${searchContent.totalCount}")
                searchResult = searchContent.toList()
                if (searchResult.size > prevFilesFound)
                    stepsWithoutIncrement = 0
                else if (searchResult.size == prevFilesFound)
                    stepsWithoutIncrement++
                else {
                    size -= step
                    val prevSearchContent = searchContent(libName, size)
                    println("File size: $size\tFiles found: ${prevSearchContent.totalCount}")
                    searchResult = prevSearchContent.toList()
                    throw Exception("File size started to decrease")
                }
                if (stepsWithoutIncrement >= maxStepsWithoutIncrement)
                    throw Exception("No more files found on last $stepsWithoutIncrement steps")
                step = size
            }
        } catch (e: Exception) {
            println(e.localizedMessage)
            println("""Found files count: ${searchResult.size}
                |""".trimMargin())
        }
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
        editSourceCodeFiles(myRepo)
        val ghActionsFile = File("$resourcesPath/$gitHubActionsFile")
        var index = 0
        var actionsFileName = gitHubActionsFile
        if (
            myRepo.getDirectoryContent("").any { it.name == dotGitHubDir } &&
            myRepo.getDirectoryContent(dotGitHubDir).any { it.name == workflowsDir }
        ) {
            while (myRepo.getDirectoryContent(gitHubWorkflows).any { it.name == actionsFileName }) {
                actionsFileName = gitHubActionsFile.replace(".yml", "$index.yml")
                index++
            }
        }
        myRepo.createContent().content(ghActionsFile.readText()).path(actionsFileName)
            .message("Add $actionsFileName file").commit()
        myRepo.listWorkflows().forEach { it.enable() }
    }

    private fun editSourceCodeFiles(myRepo: GHRepository) {
        val files = myRepo.getDirectoryContent("").toMutableList()
        while (files.isNotEmpty()) {
            val file = files.removeAt(0)
            if (file.isDirectory) {
                files.addAll((myRepo.getDirectoryContent(file.path).toMutableList()))
            } else if (file.name.endsWith(".java")) {
                file.update(modifyCode(file.read().toString()), "Modify ${file.path} file")
            }
        }
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

    fun clearLogs() {
        File(logsDirPath).listFiles()?.forEach { it.delete() }
    }
}