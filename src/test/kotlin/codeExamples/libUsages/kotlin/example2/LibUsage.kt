package codeExamples.libUsages.kotlin.example2

import codeExamples.libExamples.kotlin.example2.Class1
import codeExamples.libExamples.kotlin.example2.Class2

fun use1(n: Int) {
    val inst1 = Class1("inst1")
    val inst2 = Class2(2)
    println(inst1.limit)
    for (i in 0 until n) {
        inst1.incrementI()
        inst1.incrementI(8)
    }
    if (n % 2 == 0)
        inst1.writeIToS()
    else
        inst1.setI(7)
    inst1.incrementI(inst2)
    inst1.writeIToS()
    inst1.getS()
    inst1.setIToNull()
    inst1.setI(6)
}

fun main() {
    for (n in 0 until 5) {
        use1(n)
    }
}