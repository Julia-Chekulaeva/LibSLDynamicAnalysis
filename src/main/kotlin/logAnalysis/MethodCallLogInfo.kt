package logAnalysis

class MethodCallLogInfo(
    val className: String, val methodName: String,
    val parameters: List<ParameterLogInfo>, val returnType: String,
    val objectId: Long?, val typeOfLog: LogType, val time: Long
) {
    class ParameterLogInfo(val name: String, val type: String) {
        override fun equals(other: Any?): Boolean {
            return other is ParameterLogInfo && other.name == name && other.type == type
        }

        override fun hashCode(): Int {
            var result = name.hashCode()
            result = 31 * result + type.hashCode()
            return result
        }
    }
}