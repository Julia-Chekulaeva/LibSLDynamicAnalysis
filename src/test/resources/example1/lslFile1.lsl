libsl "1.0.0";
library codeExamples.example1.libExample;

types {
    Int(int32);
    String(java.lang.String);
}

type codeExamples.example1.libExample.Class1 {
    i: Int;
}

type codeExamples.example1.libExample.Class2 {
    s: String;
}

automaton A: codeExamples.example1.libExample.Class1 {

    var i: Int = 0

    fun foo(a: Int, b: String): String {
    }

    fun bar(): codeExamples.example1.libExample.Class1 {
    }
 }

automaton B: codeExamples.example1.libExample.Class2 {

    fun writeS(newS: String): codeExamples.example1.libExample.Class2 {
    }

    fun writeS(inst: codeExamples.example1.libExample.Class1) {
    }
}

automaton C (var v: Int) : Int {
    state s1;
}