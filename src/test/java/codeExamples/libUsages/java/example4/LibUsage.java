package codeExamples.libUsages.java.example4;

import codeExamples.libExamples.java.example4.*;

public class LibUsage {

    public static void main(String[] args) {
        for (int i = 0; i < 10; i++) {
            use(i);
        }
    }

    public static void use(int n) {
        Class1.f4();
        if (n % 2 == 0) {
            Class1.f3();
        }
        Class1 inst1 = new Class1();
        inst1.f1();
        for (int i = 0; i < n; i++) {
            inst1.f2();
        }
    }
}
