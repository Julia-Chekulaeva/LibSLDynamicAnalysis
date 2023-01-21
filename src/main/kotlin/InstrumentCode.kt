import org.jetbrains.research.libsl.nodes.Library
import java.io.File
import java.lang.instrument.ClassFileTransformer
import java.lang.instrument.Instrumentation

fun changeFile(fileName: String, library: Library) {
    var text = File(fileName).readText()
    var index = text.lastIndex
    while (text.contains(Regex("""[\w][\w\d]+(\([^()]*\))?.(get|elementDiv)\(.*\)"""))) {
    }
}

fun premain() {

}

fun codeToInsert(inst: String, instClass: String, methodName: String, args: List<String>) = """run {
            val inst = $inst
            val instClass = $instClass::class.java
            val methodName = "$methodName"
            ${args.withIndex().joinToString("; ") { "val arg${it.index} = ${it.value}" }}
            println("Log: class name """ + "\${inst.javaClass}, equals to \$instClass: \${" + """
    inst is $instClass
}, method name: """ + "\$methodName, arg types: \${" + """
    listOf(arg0).joinToString { it.javaClass.name }
}")
            inst.elementDiv(arg0)
        }"""