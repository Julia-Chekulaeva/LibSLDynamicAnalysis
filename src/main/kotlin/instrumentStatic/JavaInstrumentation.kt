package instrumentStatic

private fun addImports(sourceCode: String): String {
    val split = sourceCode.split(";").toMutableList()
    val packageWord = "package"
    for (i in 0 until split.size) {
        if (split[i].matches(Regex("\\s*")))
            continue
        val index = if (split[i].matches(Regex("${packageWord}\\W(.|\\s)*")))
            i + 1 else i
        split.add(
            index, """|
            |import java.util.logging.Logger;
            |import java.util.logging.Level;
            |""".trimMargin()
        )
        break
    }
    return split.joinToString(";") { it }
}

fun modifyCode(sourceCode: String): String {
    return sourceCode
}