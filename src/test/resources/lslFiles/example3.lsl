libsl "1.0.0";
library example3;

import "java";

type codeExamples.libExamples.example3.Class1 {
}

type codeExamples.libExamples.example3.Class2 {
    name: java.lang.String;
}

automaton codeExamples.libExamples.example3.Class1 : codeExamples.libExamples.example3.Class1 {
    fun f1(): void;
    
    fun f2(): void;
    
    fun f3(): void;
    
    fun f4(): void;
}
automaton codeExamples.libExamples.example3.Class2 (val arg0: int) : codeExamples.libExamples.example3.Class2 {
    val name: java.lang.String;
    fun getName(): java.lang.String;
}
