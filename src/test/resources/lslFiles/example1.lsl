libsl "1.0.0";
library example1;

import "java";

type codeExamples.libExamples.kotlin.example1.Class1 {
    Companion: codeExamples.libExamples.kotlin.example1.Class1$Companion;
    i: int;
}

type codeExamples.libExamples.kotlin.example1.Class1$Companion {
}

type codeExamples.libExamples.kotlin.example1.Class2 {
    s: java.lang.String;
}

automaton codeExamples.libExamples.kotlin.example1.Class1 : codeExamples.libExamples.kotlin.example1.Class1 {
    val Companion: codeExamples.libExamples.kotlin.example1.Class1$Companion;
    val i: int;
    fun bar(): codeExamples.libExamples.kotlin.example1.Class1 {
        assigns i;
    }
    
    fun foo(arg0: int, arg1: java.lang.String): java.lang.String {
        assigns i;
    }
    
    fun getI(): int;
    
    fun setI(arg0: int): void {
        assigns i;
    }
    
    fun `static-constructor`(): void {
        assigns Companion;
    }
}
automaton codeExamples.libExamples.kotlin.example1.Class1$Companion : codeExamples.libExamples.kotlin.example1.Class1$Companion {
    fun staticFun(): void;
}
automaton codeExamples.libExamples.kotlin.example1.Class2 : codeExamples.libExamples.kotlin.example1.Class2 {
    val s: java.lang.String;
    fun writeS(arg0: java.lang.String): codeExamples.libExamples.kotlin.example1.Class2 {
        assigns s;
        assigns arg0;
    }
    
    fun writeS(arg0: codeExamples.libExamples.kotlin.example1.Class1): void;
}
