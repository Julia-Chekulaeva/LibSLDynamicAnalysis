package libsl.instrumentation.static.java;

import java.io.*;
import java.util.List;
import java.util.Scanner;
import java.util.logging.Logger;

class MyLogger {

    public static final MyLogger myLogger;

    static {
        try {
            myLogger = new MyLogger();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private final Logger logger = Logger.getLogger("Logger-Bot-J-LibSL");

    final String logFilePath = "src/test/resources/example/logExample.txt";

    private final File logFile = createLogFile();

    MyLogger() throws IOException {
    }

    private File createLogFile() throws IOException {
        File file = new File(logFilePath);
        if (file.createNewFile()) {
            System.out.println("File " + logFilePath + " is created");
        }
        return file;
    }

    public void log(
            String logType, String className, String methodName, List<String> parameters,
            String returnType, int objectId
    ) {
        FileWriter fileWriter;
        Scanner scanner;
        try {
            fileWriter = new FileWriter(logFile);
            scanner = new Scanner(logFile);
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
        for (String param : parameters) {
            msg.append(param);
            msg.append(", ");
        }
        msg.delete(msg.length() - 2, msg.length());
        msg.append("); return_type: ");
        msg.append(returnType);
        msg.append("; object_id: ");
        msg.append(objectId);
        msg.append("; time: ");
        msg.append(System.currentTimeMillis());
        msg.append("; ");
        msg.append(System.lineSeparator());
        logger.info(msg.toString());
        try {
            fileWriter.write(scanner.next());
            fileWriter.write(msg.toString());
            fileWriter.close();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}