package libsl.instrumentation.dynamic

import java.lang.instrument.Instrumentation

const val libName = "new-lib-name-must-be-replaced"

fun premain(agentArgs: String?, instrumentation: Instrumentation) {
    println("Instrumentation has started")
    instrumentation.addTransformer(NewClassFileTransformer(libName))
    println("Instrumentation has finished")
}