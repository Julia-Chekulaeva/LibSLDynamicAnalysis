package instrumentation.dynamic

import java.lang.instrument.ClassFileTransformer
import java.security.ProtectionDomain
import java.util.logging.Level
import java.util.logging.Logger

class NewClassFileTransformer(private val libName: String) : ClassFileTransformer {

    override fun transform(
        loader: ClassLoader?,
        className: String?,
        classBeingRedefined: Class<*>?,
        protectionDomain: ProtectionDomain?,
        classfileBuffer: ByteArray?
    ): ByteArray {
        val classNameNotNull = className?.replace('/', '.') ?: ""
        val logger = Logger.getLogger("InstrumentationLogger")
        if (classfileBuffer == null) {
            return byteArrayOf()
        }
        if (!classNameNotNull.startsWith(libName)) {
            return classfileBuffer
        }
        logger.log(Level.INFO, "${logger.name}: Changing class $classNameNotNull: started")
        logger.log(Level.INFO, "Changing class $classNameNotNull: finished")
        return classfileBuffer
    }
}