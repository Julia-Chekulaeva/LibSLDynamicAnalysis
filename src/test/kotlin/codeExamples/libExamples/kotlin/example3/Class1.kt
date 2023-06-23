package codeExamples.libExamples.kotlin.example3

class Class1 {

    fun f1() {
        println("Class1.f1() is called")
        println("Internal call: function Class1.f3()")
        f3(1)
    }

    fun f2() {
        println("Class1.f2() is called")
    }

    fun f3(a: Int) {
        println("Class1.f3() is called, a value: $a")
        println("Internal call: function Class1.f4()")
        f4()
    }

    fun f4() {
        println("Class1.f4() is called")
    }
}