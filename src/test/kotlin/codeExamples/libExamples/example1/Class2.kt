package codeExamples.libExamples.example1

class Class2 {

    init {
        println("The Class2 object is being initialised")
    }

    private var s = ""

    fun writeS(newS: String): Class2 {
        s = newS
        println(s)
        return this
    }

    fun writeS(inst: Class1) {
        writeS(inst.foo(inst.i, s))
    }
}