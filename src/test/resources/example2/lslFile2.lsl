libsl "1.0.0";
library codeExamples.example2.libExample;

types {
    Int(int32);
    String(java.lang.String);
}

type codeExamples.example2.libExample.Class1 {
    name: String;

    s: String;

    i: Int;
}

type codeExamples.example2.libExample.Class2 {
    id: Int;
}

automaton A (var name: String) : codeExamples.example2.libExample.Class1 {

    var limit: Int = 200;

    fun writeIToS(): String {
    }

    fun incrementI() {
    }

    fun incrementI(value: Int) {
    }

    fun incrementI(inst: codeExamples.example2.libExample.Class2) {
    }

    fun setIToNull(): codeExamples.example2.libExample.Class1 {
    }

    fun setI(value: Int): codeExamples.example2.libExample.Class2 {
    }

    fun getS(): String {
    }
}

automaton B: Int {
    state s1;
}

automaton C (var id: Int) : codeExamples.example2.libExample.Class2 {
}