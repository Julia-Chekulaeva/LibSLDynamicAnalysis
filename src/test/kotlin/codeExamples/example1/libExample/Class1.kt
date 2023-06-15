package codeExamples.example1.libExample

class Class1 {

    var i = 0

    fun foo(a: Int, b: String): String {
        println(i)
        println(b)
        bar()
        return "$b$a"
    }

    fun bar(): Class1 {
        println(i)
        i++
        println(i)
        return this
    }
}