package codeExamples.libExamples.example1

class Class1 {

    var i = 0

    fun foo(a: Int, b: String): String {
        println("Internal call: function Class1.getI()")
        println(i)
        println(b)
        println("Internal call: function Class1.bar()")
        bar()
        return "$b$a"
    }

    fun bar(): Class1 {
        println("Internal call: function Class1.getI()")
        println(i)
        println("Internal call: function Class1.setI(Int)")
        i++
        println("Internal call: function Class1.getI()")
        println(i)
        return this
    }
}