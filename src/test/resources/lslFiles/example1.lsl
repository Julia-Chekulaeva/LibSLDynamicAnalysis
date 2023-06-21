libsl "1.0.0";
library example1;

import "java";

type codeExamples.libExamples.example1.Class1 {
    i: int;
}

type codeExamples.libExamples.example1.Class2 {
    s: java.lang.String;
}

automaton codeExamples.libExamples.example1.Class1 : codeExamples.libExamples.example1.Class1 {
    val i: int;
    fun bar(): codeExamples.libExamples.example1.Class1 {
        assigns i;
    }
    
    fun foo(arg0: int, arg1: java.lang.String): java.lang.String {
        assigns i;
    }
    
    fun getI(): int;
    
    fun setI(arg0: int): void {
        assigns i;
    }
}
automaton codeExamples.libExamples.example1.Class2 : codeExamples.libExamples.example1.Class2 {
    val s: java.lang.String;
    fun writeS(arg0: java.lang.String): codeExamples.libExamples.example1.Class2 {
        assigns s;
        assigns arg0;
    }
    
    fun writeS(arg0: codeExamples.libExamples.example1.Class1): void;
}
