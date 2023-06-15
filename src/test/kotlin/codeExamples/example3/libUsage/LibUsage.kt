package codeExamples.example3.libUsage

import codeExamples.example3.libExample.Class1

private fun cycleF1(n: Int) {
    val inst1 = Class1()
    for (i in 0 until n)
        inst1.f1()
}

private fun cycleF2AndF3(n: Int) {
    val inst2 = Class1()
    for (i in 0 until n) {
        inst2.f2()
        inst2.f3()
    }
}

fun main() {
    for (i in 0 until 10) {
        cycleF1(i)
        cycleF2AndF3(i)
    }
}