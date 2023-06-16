package codeExamples.libExamples.example2

class Class1(val name: String) {
    constructor(digit: Int) : this("name$digit")
    
    private lateinit var s: String

    val limit = 200

    private var i: Int? = 0

    fun writeIToS(): String {
        if (i!! >= limit)
            throw Exception("The value of i is bigger than $limit")
        s = i.toString()
        return s
    }

    fun incrementI() {
        i = i!! + 1
    }

    fun incrementI(value: Int) {
        i = i!! + value
    }

    fun incrementI(inst: Class2) {
        i = i!! + inst.id
    }

    fun setIToNull(): Class1 {
        i = null
        return this
    }

    fun setI(value: Int): Class2 {
        i = value
        return Class2(value)
    }

    fun getS() = s
}