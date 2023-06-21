import org.junit.jupiter.api.Test

const val lslPath = "src/test/resources/lslFiles/"

class InstrumentationTests {

    @Test
    fun test1() {
        println("Test 1 started")
        codeExamples.libUsages.example1.main()
        println("Test 1 finished")
    }

    @Test
    fun test2() {
        println("Test 2 started")
        codeExamples.libUsages.example2.main()
        println("Test 2 finished")
    }

    @Test
    fun test3() {
        println("Test 3 started")
        codeExamples.libUsages.example3.main()
        println("Test 3 finished")
    }
}