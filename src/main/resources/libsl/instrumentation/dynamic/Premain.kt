package libsl.instrumentation.dynamic

import java.lang.instrument.Instrumentation

fun premain(agentArgs: String?, instrumentation: Instrumentation) {
    println("Instrumentation has started")
    instrumentation.addTransformer(NewClassFileTransformer())
    println("Instrumentation has finished")
}