package codeExamples.libExamples.java.example4;

public class Class1 {

    public void f1() {
        System.out.println("Class1.f1() is called");
        System.out.println("Internal call: function Class1.f3()");
        f3();
    }

    public void f2() {
        System.out.println("Class1.f2() is called");
    }

    public static void f3() {
        System.out.println("Class1.f3() is called");
        System.out.println("Internal call: function Class1.f4()");
        f4();
    }

    public static void f4() {
        System.out.println("Class1.f4() is called");
    }
}