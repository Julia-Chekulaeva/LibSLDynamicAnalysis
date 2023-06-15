package logAnalysis

enum class LogType(val shortName: String) {
    METHOD_STARTED("ST"), METHOD_FINISHED("FN"), METHOD_CALL("CALL")
}