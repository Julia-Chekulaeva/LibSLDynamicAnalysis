libsl "1.0.0";
library example2;

import "java";

type codeExamples.libExamples.kotlin.example2.Class1 {
    name: java.lang.String;
    s: java.lang.String;
    limit: int;
    i: int;
}

type codeExamples.libExamples.kotlin.example2.Class2 {
    name: java.lang.String;
    id: int;
}

automaton codeExamples.libExamples.kotlin.example2.Class1 (val arg0: java.lang.String) : codeExamples.libExamples.kotlin.example2.Class1 {
    val name: java.lang.String;
    val s: java.lang.String;
    val limit: int;
    val i: int;
    fun getLimit(): int;
    
    fun getName(): java.lang.String;
    
    fun getS(): java.lang.String;
    
    fun incrementI(): void {
        assigns i;
    }
    
    fun incrementI(arg0: int): void {
        assigns i;
    }
    
    fun incrementI(arg0: codeExamples.libExamples.kotlin.example2.Class2): void;
    
    fun setI(arg0: int): codeExamples.libExamples.kotlin.example2.Class2 {
        assigns i;
    }
    
    fun setIToNull(): codeExamples.libExamples.kotlin.example2.Class1 {
        assigns i;
    }
    
    fun writeIToS(): java.lang.String {
        assigns s;
    }
}
automaton codeExamples.libExamples.kotlin.example2.Class2 (val arg0: int) : codeExamples.libExamples.kotlin.example2.Class2 {
    val name: java.lang.String;
    val id: int;
    fun getId(): int;
}
