package libUsage.example2
import org.ejml.simple.SimpleMatrix

fun example() {
    val simpleMatrix1 = SimpleMatrix(1, 2, true,
        1.0, 0.0)
    val simpleMatrix2 = org.ejml.simple.SimpleMatrix(arrayOf(floatArrayOf(3.0f, 2.0f)))
    val firstElement: Double = run {
        val inst = run {
            val inst = simpleMatrix1
            val instClass = org.ejml.simple.SimpleMatrix::class.java
            val methodName = "elementDiv"
            val arg0 = simpleMatrix2
            println("Log: class name ${inst.javaClass}, equals to $instClass: ${
                inst is org.ejml.simple.SimpleMatrix
            }, method name: $methodName, arg types: ${
                listOf(arg0).joinToString { it.javaClass.name }
            }")
            inst.elementDiv(arg0)
        }
        val instClass = org.ejml.simple.SimpleBase::class.java
        val methodName = "get"
        val arg0 = 1
        println("Log: class name ${inst.javaClass}, equals to $instClass: ${
            inst is org.ejml.simple.SimpleBase<*>
        }, method name: $methodName, arg types: ${
            listOf(arg0).joinToString { it.javaClass.name }
        }")
        inst.get(arg0)
    }
    println(firstElement)
}