package codeExamples.libUsages.kotlin.example1

import codeExamples.libExamples.kotlin.example1.Class1
import codeExamples.libExamples.kotlin.example1.Class2

fun use1(cycles: Int) {
    println("External call: function Class1.bar()")
    val inst1 = Class1().bar()
    println("External call: function Class1.staticFun()")
    Class1.staticFun()
    for (i in 0 until cycles) {
        println("External call: function Class1.foo(Int, String)")
        println(inst1.foo(2, "someStringExample"))
        if (cycles % 2 == 0) {
            println("External call: function Class1.foo(Int, String)")
            inst1.foo(0, "")
        } else {
            println("External call: function Class1.bar()")
            inst1.bar()
        }
    }
    val inst2 = Class2()
    println("External calls: function Class2.writeS(String)")
    println("                function Class2.writeS(Class1)")
    inst2.writeS("otherStringExample").writeS(inst1)
    val inst3 = Class1()
    val inst4 = Class2()
    println("External call: function Class1.setI(Int)")
    inst3.i = 4
    println("External call: function Class1.getI()")
    println("Value i before executing bar(): ${inst3.i}")
    println("External calls: function Class1.bar()")
    println("                function Class1.getI()")
    println("Value i after executing bar(): ${inst3.bar().i}")
    println("External call: function Class2.writeS(Class1)")
    inst4.writeS(inst3)
    println("External calls: function Class2.writeS(String)")
    val inst5 = inst4.writeS("newStr")
    for (i in 0 until cycles) {
        println("External calls: function Class2.writeS(String)")
        println("                function Class2.writeS(Class1)")
        inst5.writeS("newStr2").writeS(inst1)
    }
}

fun main() {
    for (i in 0 until 5) {
        use1(i)
    }
}