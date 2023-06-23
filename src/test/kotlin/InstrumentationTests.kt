import org.junit.jupiter.api.Test

const val lslPath = "src/test/resources/lslFiles/"

class InstrumentationTests {

    @Test
    fun test1() {
        println("Test 1 started")
        codeExamples.libUsages.kotlin.example1.main()
        println("Test 1 finished")
    }

    @Test
    fun test2() {
        println("Test 2 started")
        codeExamples.libUsages.kotlin.example2.main()
        println("Test 2 finished")
    }

    @Test
    fun test3() {
        println("Test 3 started")
        codeExamples.libUsages.kotlin.example3.main()
        println("Test 3 finished")
    }

    @Test
    fun test4() {
        println("Test 4 started")
        codeExamples.libUsages.java.example4.LibUsage.main(arrayOf())
        println("Test 4 finished")
    }
}