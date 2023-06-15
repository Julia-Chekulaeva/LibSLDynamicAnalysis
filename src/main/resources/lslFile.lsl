libsl "1.0.0";
library simple;

types {
    Int(java.lang.Integer);
    String(java.lang.String);
}

automaton A (var i: Int, var s: String) : Int {
    var i: Int;

    fun func() {
      i = new B(state = s1, v = (1 + 1) / 2);
    }
}

automaton B (var v: Int) : Int {
    state s1;
}

automaton org.ejml.simple.SimpleMatrix ( var data: Array<Array<Double>> ) : org.ejml.simple.SimpleBase<org.ejml.simple.SimpleMatrix> {

    fun elementDiv( b: org.ejml.simple.SimpleBase ): org.ejml.simple.SimpleMatrix;

    fun get( Int index ): java.lang.Double;
}