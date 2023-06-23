package codeExamples.libExamples.kotlin.example1

class Class2 {

    init {
        println("The Class2 object is being initialised")
    }

    private var s = ""

    fun writeS(newS: String): Class2 {
        println("Internal call: function Class2.setS(String)")
        s = newS
        println("Internal call: function Class2.getS()")
        println(s)
        return this
    }

    fun writeS(inst: Class1) {
        println("Internal calls: function Class2.getS()")
        println("                function Class1.getI()")
        println("                function Class1.foo(Int, String)")
        println("                function Class2.writeS(String)")
        writeS(inst.foo(inst.i, s))
    }
}