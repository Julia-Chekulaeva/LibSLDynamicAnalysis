package codeExamples.libUsages.example1

import codeExamples.libExamples.example1.Class1
import codeExamples.libExamples.example1.Class2

fun use1(cycles: Int) {
    val inst1 = Class1().bar()
    for (i in 0 until cycles) {
        println(inst1.foo(2, "someStringExample"))
        if (cycles % 2 == 0)
            inst1.foo(0, "")
        else
            inst1.bar()
    }
    val inst2 = Class2()
    inst2.writeS("otherStringExample").writeS(inst1)
    val inst3 = Class1()
    val inst4 = Class2()
    println("Value i before executing bar(): ${inst3.i}")
    println("Value i after executing bar(): ${inst3.bar().i}")
    inst4.writeS(inst3)
    val inst5 = inst4.writeS("newStr")
    for (i in 0 until cycles) {
        inst5.writeS("newStr2").writeS(inst1)
    }
}

fun main() {
    for (i in 0 until 5) {
        use1(i)
    }
}