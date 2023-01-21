object NullClass
fun <T> writeLogInfo(inst: T, methodName: String, vararg arguments: Any): T {
    println("Log: class name ${(inst ?: NullClass).javaClass}, method name: $methodName, arg types: ${
        arguments.joinToString { it.javaClass.name }
    }")
    return inst
}