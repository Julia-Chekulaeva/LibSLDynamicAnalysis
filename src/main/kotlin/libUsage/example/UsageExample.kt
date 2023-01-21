package libUsage.example

import org.ejml.simple.SimpleMatrix

fun example() {
    val simpleMatrix1 = SimpleMatrix(1, 2, true,
        1.0, 0.0)
    val simpleMatrix2 = org.ejml.simple.SimpleMatrix(arrayOf(floatArrayOf(3.0f, 2.0f)))
    val firstElement: Double = simpleMatrix1.elementDiv(simpleMatrix2).get(1)
    println(firstElement)
}