package codeExamples.libExamples.java.example4;

public class Class2 {
    public void f1() {
        System.out.println("Class2.f1() is called");
        System.out.println("Internal call: function Class2.use1()");
        use1();
    }

    public void f2() {
        System.out.println("Class2.f2() is called");
    }

    private void use1() {
        System.out.println("Internal call: function Class1.f3()");
        Class1.f3();
        System.out.println("Internal call: function Class1.f3()");
        new Class1().f2();
    }
}
