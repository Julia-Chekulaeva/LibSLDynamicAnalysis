package instrumentation.java;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;
import java.util.logging.Logger;

public class MyLogger {

    public static final MyLogger myLogger;

    private static int id;

    static {
        try {
            myLogger = new MyLogger();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private final Logger logger = Logger.getLogger("Logger-Bot-J-LibSL");

    private final StringBuilder sb = new StringBuilder();

    final String logFilePath = "src/test/resources/example/logExample_.txt";

    private final File logFile = createLogFile();

    MyLogger() throws IOException {
    }

    private File createLogFile() throws IOException {
        File file = new File(logFilePath.replace("_", "" + id));
        for (; file.exists(); id++) {
            file = new File(logFilePath.replace("_", "" + id));
        }
        file.getParentFile().mkdirs();
        if (file.createNewFile()) {
            System.out.println("File " + file.getName() + " is created");
        }
        return file;
    }

    public void log(
            String logType, String className, String methodName, String parameters,
            String returnType, int objectId
    ) throws IOException {
        FileWriter fileWriter;
        try {
            fileWriter = new FileWriter(logFile);
        } catch (IOException e) {
            e.printStackTrace();
            return;
        }
        StringBuilder msg = new StringBuilder(logType);
        msg.append("; class_name: ");
        msg.append(className);
        msg.append("; method_name: ");
        msg.append(methodName);
        msg.append("; parameters: (");
        msg.append(parameters);
        msg.append("); return_type: ");
        msg.append(returnType);
        msg.append("; object_id: ");
        msg.append(objectId);
        msg.append("; time: ");
        msg.append(System.currentTimeMillis());
        msg.append("; ");
        msg.append(System.lineSeparator());
        logger.info(msg.toString());
        sb.append(msg);
        try {
            fileWriter.write(sb.toString());
            fileWriter.close();
        } catch (IOException e) {
            fileWriter.close();
            throw new RuntimeException(e);
        }
    }
}