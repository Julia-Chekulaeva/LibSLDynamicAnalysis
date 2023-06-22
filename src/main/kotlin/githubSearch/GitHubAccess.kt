package githubSearch

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

class GitHubException(override val message: String) : Exception()

class GitHubAccess(
    propertyFileName: String,
    private val lslLocalPath: String,
    private val lslLocalFileName: String
    ) {

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

    private fun searchContent(libName: String, size: Int): PagedSearchIterable<GHContent> {
        val result = gitHub.searchContent().q(libName).language(qLanguage)
        return result.size("<$size").list()
    }

    private fun searchForkAndEditRepos(libName: String) {
        println("""Myself: ${gitHub.myself.htmlUrl}
            |""".trimMargin())
        val repos = mutableSetOf<GHRepository>()
        var size = 0
        var step = 1
        val maxStepsWithoutIncrement = 20
        val maxFilesCount = 100
        var searchResult = searchContent(libName, size).toList()
        var stepsWithoutIncrement = 0
        try {
            while (true) {
                val prevFilesFound = searchResult.size
                size += step
                Thread.sleep(1000L)
                val searchContent = searchContent(libName, size)
                println("File size: $size\tTotal count: ${searchContent.totalCount}")
                searchResult = searchContent.toList()
                println("Files found: ${searchResult.size}")
                if (searchResult.size > prevFilesFound)
                    stepsWithoutIncrement = 0
                else if (searchResult.size > maxFilesCount) {
                    throw GitHubException(
                        "Too many files found: $prevFilesFound"
                    )
                } else if (searchResult.size == prevFilesFound) {
                    stepsWithoutIncrement++
                    if (prevFilesFound * stepsWithoutIncrement > 200)
                        throw GitHubException(
                            "Too many steps without changing " +
                                    "(steps count: $stepsWithoutIncrement, files found: $prevFilesFound)"
                        )
                }
                else {
                    size -= step
                    val prevSearchContent = searchContent(libName, size)
                    println("File size: $size\tFiles found: ${prevSearchContent.totalCount}")
                    searchResult = prevSearchContent.toList()
                    throw GitHubException(
                        "File size started to decrease" +
                            "(steps count: $stepsWithoutIncrement, files found: $prevFilesFound)"
                    )
                }
                if (stepsWithoutIncrement >= maxStepsWithoutIncrement)
                    throw GitHubException("No more files found on last $stepsWithoutIncrement steps")
                step = size * 2
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
        val myRepo = repo.fork()
        println("""${repo.htmlUrl}
            |Forked: ${myRepo.htmlUrl}
            |""".trimMargin())
        forkedRepos.add(myRepo)
        try {
            editForkedRepo(myRepo)
        } catch (e: Exception) {
            e.printStackTrace()
        }
    }

    private fun editForkedRepo(myRepo: GHRepository) {
        sourceCodeFilesDynamicInstrumentation(myRepo)
        addGHActionsFile(myRepo)
        myRepo.listWorkflows().forEach { it.enable() }
    }

    private fun addGHActionsFile(myRepo: GHRepository) {
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
    }

    private fun sourceCodeFilesDynamicInstrumentation(myRepo: GHRepository) {
        addJarAgent(1, myRepo)
        addJarAgent(2, myRepo)
        val lslLocalFile = File("$lslLocalPath$lslLocalFileName")
        val lslFilePathForGitHub = lslLocalFile.absolutePath
        val configFileName = "src/main/resources/config"
        val configContent = """
            |lslPath="$lslLocalPath"
            |lslFileName="$lslLocalFileName"
        """.trimMargin()
        myRepo.createContent().path(lslFilePathForGitHub).content(lslLocalFile.readText())
            .message("Add $lslLocalFileName file").commit()
        myRepo.createContent().path(configFileName).content(configContent)
            .message("Add $lslLocalFileName file").commit()
        modifyGradleFiles(myRepo.getFileContent(""))
    }

    private fun addJarAgent(index: Int, myRepo: GHRepository) {
        val agentJarName = "InstrumentAgent$index-1.0-SNAPSHOT.jar"
        val agentJarPath = "InstrumentAgent$index${File.separator}build${File.separator}libs${File.separator}$agentJarName"
        val jarFile = File(agentJarPath)
        myRepo.createContent().path(agentJarName).content(jarFile.readBytes())
            .message("Add $agentJarName file").commit()
    }

    private fun modifyGradleFiles(gradleFile: GHContent) {
        if (gradleFile.isDirectory) {
            for (file in gradleFile.listDirectoryContent()) {
                modifyGradleFiles(file)
            }
        } else if (gradleFile.name.endsWith(".gradle.kts")) {
            gradleFile.update(
                gradleFile.read().toString() + """
                        |
                        |dependencies {
                        |    implementation("com.github.vldf:libsl:4a5d678")
                        |    implementation("org.javassist:javassist:3.29.2-GA")
                        |}
                        |
                        |tasks.test {
                        |    jvmArgs = mutableListOf(
                        |        "-javaagent:InstrumentAgent1-1.0-SNAPSHOT.jar",
                        |        "-javaagent:InstrumentAgent2-1.0-SNAPSHOT.jar",
                        |    )
                        |}
                    """.trimMargin(),
                "Modify ${gradleFile.name} file"
            )
        }
    }

    fun checkJobStatusAndLoadLogs(myRepo: GHRepository): Boolean {
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