package instrumentation

import java.io.File
import java.util.logging.Logger

val logger = MyLogger(Logger.getLogger("Logger-Bot-J-LibSL"))

const val logFilePath = "src/test/resources/example/logExample.txt"

class MyLogger(private val logger: Logger) {

    private val logFile = createLogFile()

    private fun createLogFile(): File {
        val file = File(logFilePath)
        file.writeText("")
        return file
    }

    fun log(
        logType: String, className: String, methodName: String, parameters: List<String>,
        returnType: String, objectId: Int
    ) {
        val msg = "$logType; class_name: $className; method_name: $methodName; " +
                "parameters: (${parameters.joinToString { it }}); " +
                "return_type: $returnType; object_id: $objectId; " +
                "time: ${System.currentTimeMillis()}; ${System.lineSeparator()}"
        logger.info(msg)
        logFile.writeText(logFile.readText() + msg)
    }
}