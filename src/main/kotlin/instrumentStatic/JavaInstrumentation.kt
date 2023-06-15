package instrumentStatic

import org.jboss.forge.roaster.Roaster
import org.jboss.forge.roaster.model.impl.JavaUnitImpl
import org.jboss.forge.roaster.model.source.JavaClassSource
import org.jboss.forge.roaster.model.source.MethodSource

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

private fun modifyMethod(method: MethodSource<JavaClassSource>, className: String): String {
    val stringIdentifyingObject = if (method.isStatic)
        "NULL (static method)\""
    else
        "\" + System.identityHashCode(this)"
    method.body =  """Logger codeExample.libExamples.example1_modified.getLogger = Logger.getLogger("LoggingJul"); """ +
            """codeExample.libExamples.example1_modified.getLogger.log(Level.INFO, "METHOD_STARTED; class: $className; method: ${method.name}; arguments: ${
                method.parameters.joinToString { "${it.name}: ${it.type} = \" + ${it.name} + \"" }
            }; object: $stringIdentifyingObject);
            |${method.body}""".trimMargin()
    return method.toString()
}

fun modifyCode(sourceCode: String): String {
    val unit = Roaster.parseUnit(addImports(sourceCode))
    val newUnit = JavaUnitImpl(
        unit.topLevelTypes.map { javaType ->
            if (javaType.isClass) {
                val unitClass = Roaster.parse(JavaClassSource::class.java, javaType.toString())
                val classes = mutableListOf(unitClass)
                while (classes.isNotEmpty()) {
                    val currentClass = classes.first()
                    classes.removeAt(0)
                    currentClass.methods.forEach {
                        val currentMethod = currentClass.addMethod(it.toString())
                        currentMethod.name = "${currentMethod.name}_NotModified"
                        modifyMethod(it, currentClass.canonicalName)
                    }
                    currentClass.nestedTypes.forEach { classes.add(it as JavaClassSource) }
                }
                unitClass.enclosingType
            } else javaType
        }
    )
    return newUnit.toString()
}