import org.jetbrains.research.libsl.LibSL


const val lslPath = "src/main/resources"
const val lslFileName = "lslFile.lsl"
const val propertyFileName = "C:/Users/cat_p/bot-j.github"

fun main(args: Array<String>) {
    val libSL = LibSL(lslPath).loadFromFileName(lslFileName)
    val libName = "com.github.sealedtx:java-youtube-downloader"
    GithubAccess(propertyFileName).analyseDataFromRepos(libName)
}