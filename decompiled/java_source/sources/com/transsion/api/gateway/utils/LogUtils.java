package com.transsion.api.gateway.utils;

import android.util.Log;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.StringReader;
import java.io.StringWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Formatter;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.zip.DataFormatException;
import java.util.zip.Deflater;
import java.util.zip.Inflater;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class LogUtils {
    public static final int A = 7;
    private static final String ARGS = "args";
    private static final String BOTTOM_BORDER = "|---------------------------------------------------------------------------------------------------";
    public static final int D = 3;
    public static final int E = 6;
    private static final int FILE = 16;
    public static final int I = 4;
    private static final int JSON = 32;
    private static final String LEFT_BORDER = "| ";
    private static final int MAX_LEN = 4000;
    private static final String NULL = "null";
    private static final String NULL_TIPS = "Log with null object.";
    private static final String TOP_BORDER = "|---------------------------------------------------------------------------------------------------";
    public static final int V = 2;
    public static final int W = 5;
    private static final int XML = 48;
    private static String defaultDir = null;
    private static String dir = null;
    private static ExecutorService executor = null;
    private static int sConsoleFilter = 2;
    private static int sFileFilter = 2;
    private static String sGlobalTag = "TAG";
    private static boolean sLog2ConsoleSwitch = true;
    private static boolean sLog2FileSwitch = false;
    private static boolean sLogBorderSwitch = true;
    private static boolean sLogHeadSwitch = true;
    private static boolean sLogSwitch = false;
    private static boolean sTagIsSpace = true;
    private static final char[] T = {'V', 'D', 'I', 'W', 'E', 'A'};
    private static final String FILE_SEP = System.getProperty("file.separator");
    private static final String LINE_SEP = System.getProperty("line.separator");
    private static final Format FORMAT = new SimpleDateFormat("MM-dd HH:mm:ss.SSS ", Locale.getDefault());

    public static class Builder {
        public Builder setBorderSwitch(boolean z10) {
            boolean unused = LogUtils.sLogBorderSwitch = z10;
            return this;
        }

        public Builder setConsoleFilter(int i11) {
            int unused = LogUtils.sConsoleFilter = i11;
            return this;
        }

        public Builder setConsoleSwitch(boolean z10) {
            boolean unused = LogUtils.sLog2ConsoleSwitch = z10;
            return this;
        }

        public Builder setDir(File file) {
            String str;
            if (file == null) {
                str = null;
            } else {
                str = file.getAbsolutePath() + LogUtils.FILE_SEP;
            }
            String unused = LogUtils.dir = str;
            return this;
        }

        public Builder setDir(String str) {
            if (LogUtils.isSpace(str)) {
                String unused = LogUtils.dir = null;
            } else {
                if (!str.endsWith(LogUtils.FILE_SEP)) {
                    str = str + LogUtils.FILE_SEP;
                }
                String unused2 = LogUtils.dir = str;
            }
            return this;
        }

        public Builder setFileFilter(int i11) {
            int unused = LogUtils.sFileFilter = i11;
            return this;
        }

        public Builder setGlobalTag(String str) {
            if (LogUtils.isSpace(str)) {
                String unused = LogUtils.sGlobalTag = "";
                boolean unused2 = LogUtils.sTagIsSpace = true;
            } else {
                String unused3 = LogUtils.sGlobalTag = str;
                boolean unused4 = LogUtils.sTagIsSpace = false;
            }
            return this;
        }

        public Builder setLog2FileSwitch(boolean z10) {
            boolean unused = LogUtils.sLog2FileSwitch = z10;
            return this;
        }

        public Builder setLogHeadSwitch(boolean z10) {
            boolean unused = LogUtils.sLogHeadSwitch = z10;
            return this;
        }

        public Builder setLogSwitch(boolean z10) {
            boolean unused = LogUtils.sLogSwitch = z10;
            return this;
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("switch: ");
            sb2.append(LogUtils.sLogSwitch);
            sb2.append(LogUtils.LINE_SEP);
            sb2.append("console: ");
            sb2.append(LogUtils.sLog2ConsoleSwitch);
            sb2.append(LogUtils.LINE_SEP);
            sb2.append("tag: ");
            sb2.append(LogUtils.sTagIsSpace ? LogUtils.NULL : LogUtils.sGlobalTag);
            sb2.append(LogUtils.LINE_SEP);
            sb2.append("head: ");
            sb2.append(LogUtils.sLogHeadSwitch);
            sb2.append(LogUtils.LINE_SEP);
            sb2.append("file: ");
            sb2.append(LogUtils.sLog2FileSwitch);
            sb2.append(LogUtils.LINE_SEP);
            sb2.append("dir: ");
            sb2.append(LogUtils.dir == null ? LogUtils.defaultDir : LogUtils.dir);
            sb2.append(LogUtils.LINE_SEP);
            sb2.append("border: ");
            sb2.append(LogUtils.sLogBorderSwitch);
            sb2.append(LogUtils.LINE_SEP);
            sb2.append("consoleFilter: ");
            sb2.append(LogUtils.T[LogUtils.sConsoleFilter - 2]);
            sb2.append(LogUtils.LINE_SEP);
            sb2.append("fileFilter: ");
            sb2.append(LogUtils.T[LogUtils.sFileFilter - 2]);
            return sb2.toString();
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface TYPE {
    }

    private LogUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static void a(Object obj) {
        log(7, sGlobalTag, obj);
    }

    public static void a(String str, Object... objArr) {
        log(7, str, objArr);
    }

    private static String addLeftBorder(String str) {
        if (!sLogBorderSwitch) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder();
        for (String str2 : str.split(LINE_SEP)) {
            sb2.append(LEFT_BORDER);
            sb2.append(str2);
            sb2.append(LINE_SEP);
        }
        return sb2.toString();
    }

    public static byte[] compress(byte[] bArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        Deflater deflater = new Deflater(1);
        try {
            deflater.setInput(bArr);
            deflater.finish();
            byte[] bArr2 = new byte[2048];
            while (!deflater.finished()) {
                byteArrayOutputStream.write(bArr2, 0, deflater.deflate(bArr2));
            }
            deflater.end();
            return byteArrayOutputStream.toByteArray();
        } catch (Throwable th2) {
            deflater.end();
            throw th2;
        }
    }

    private static boolean createOrExistsDir(File file) {
        return file != null && (!file.exists() ? !file.mkdirs() : !file.isDirectory());
    }

    private static boolean createOrExistsFile(String str) {
        File file = new File(str);
        if (file.exists()) {
            return file.isFile();
        }
        if (!createOrExistsDir(file.getParentFile())) {
            return false;
        }
        try {
            return file.createNewFile();
        } catch (IOException e11) {
            e11.printStackTrace();
            return false;
        }
    }

    public static void d(Object obj) {
        log(3, sGlobalTag, obj);
    }

    public static void d(String str, Object... objArr) {
        log(3, str, objArr);
    }

    public static void e(Object obj) {
        log(6, sGlobalTag, obj);
    }

    public static void e(String str, Object... objArr) {
        log(6, str, objArr);
    }

    public static void file(int i11, Object obj) {
        log(i11 | 16, sGlobalTag, obj);
    }

    public static void file(int i11, String str, Object obj) {
        log(i11 | 16, str, obj);
    }

    public static void file(Object obj) {
        log(19, sGlobalTag, obj);
    }

    public static void file(String str, Object obj) {
        log(19, str, obj);
    }

    private static String formatJson(String str) {
        try {
            if (str.startsWith("{")) {
                str = new JSONObject(str).toString(4);
            } else if (str.startsWith("[")) {
                str = new JSONArray(str).toString(4);
            }
        } catch (JSONException e11) {
            e11.printStackTrace();
        }
        return str;
    }

    private static String formatXml(String str) {
        try {
            StreamSource streamSource = new StreamSource(new StringReader(str));
            StreamResult streamResult = new StreamResult(new StringWriter());
            Transformer transformerNewTransformer = TransformerFactory.newInstance().newTransformer();
            transformerNewTransformer.setOutputProperty("indent", "yes");
            transformerNewTransformer.setOutputProperty("{http://xml.apache.org/xslt}indent-amount", "4");
            transformerNewTransformer.transform(streamSource, streamResult);
            return streamResult.getWriter().toString().replaceFirst(">", ">" + LINE_SEP);
        } catch (Exception e11) {
            e11.printStackTrace();
            return str;
        }
    }

    public static void i(Object obj) {
        log(4, sGlobalTag, obj);
    }

    public static void i(String str, Object... objArr) {
        log(4, str, objArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isSpace(String str) {
        if (str == null) {
            return true;
        }
        int length = str.length();
        for (int i11 = 0; i11 < length; i11++) {
            if (!Character.isWhitespace(str.charAt(i11))) {
                return false;
            }
        }
        return true;
    }

    public static void json(int i11, String str) {
        log(i11 | 32, sGlobalTag, str);
    }

    public static void json(int i11, String str, String str2) {
        log(i11 | 32, str, str2);
    }

    public static void json(String str) {
        log(35, sGlobalTag, str);
    }

    public static void json(String str, String str2) {
        log(35, str, str2);
    }

    private static void log(int i11, String str, Object... objArr) {
        if (!Log.isLoggable(str.length() > 23 ? str.substring(0, 23) : str, 3)) {
            if (!sLogSwitch) {
                return;
            }
            if (!sLog2ConsoleSwitch && !sLog2FileSwitch) {
                return;
            }
        }
        int i12 = i11 & 15;
        int i13 = i11 & 240;
        if (i12 >= sConsoleFilter || i12 >= sFileFilter) {
            String[] strArrProcessTagAndHead = processTagAndHead(str);
            String strProcessBody = processBody(i13, objArr);
            if (sLog2ConsoleSwitch && i12 >= sConsoleFilter) {
                print2Console(i12, strArrProcessTagAndHead[0], strArrProcessTagAndHead[1], strProcessBody);
            }
            if ((sLog2FileSwitch || i13 == 16) && i12 >= sFileFilter) {
                print2File(i12, strArrProcessTagAndHead[0], strArrProcessTagAndHead[2] + strProcessBody);
            }
        }
    }

    private static void print(int i11, String str, String str2) {
        Log.println(i11, str, str2);
    }

    private static void print2Console(int i11, String str, String str2, String str3) {
        if (sLogHeadSwitch) {
            print(i11, str, "\n" + str2);
        } else {
            print(i11, str, " \n");
        }
        if (sLogBorderSwitch) {
            print(i11, str, "|---------------------------------------------------------------------------------------------------");
            str3 = addLeftBorder(str3);
        }
        int length = str3.length();
        int i12 = length / 4000;
        if (i12 > 0) {
            int i13 = 4000;
            print(i11, str, str3.substring(0, 4000));
            int i14 = 1;
            while (i14 < i12) {
                int i15 = i13 + 4000;
                String strSubstring = str3.substring(i13, i15);
                if (sLogBorderSwitch) {
                    strSubstring = LEFT_BORDER + strSubstring;
                }
                print(i11, str, strSubstring);
                i14++;
                i13 = i15;
            }
            String strSubstring2 = str3.substring(i13, length);
            if (sLogBorderSwitch) {
                strSubstring2 = LEFT_BORDER + strSubstring2;
            }
            print(i11, str, strSubstring2);
        } else {
            print(i11, str, str3);
        }
        if (sLogBorderSwitch) {
            print(i11, str, "|---------------------------------------------------------------------------------------------------");
        }
    }

    private static void print2File(int i11, final String str, String str2) {
        String str3 = FORMAT.format(new Date(System.currentTimeMillis()));
        String strSubstring = str3.substring(0, 5);
        String strSubstring2 = str3.substring(6);
        StringBuilder sb2 = new StringBuilder();
        String str4 = dir;
        if (str4 == null) {
            str4 = defaultDir;
        }
        sb2.append(str4);
        sb2.append(strSubstring);
        sb2.append(".txt");
        final String string = sb2.toString();
        if (!createOrExistsFile(string)) {
            Log.e(str, "log to " + string + " failed!");
            return;
        }
        final String str5 = strSubstring2 + T[i11 - 2] + "/" + str + str2 + LINE_SEP;
        if (executor == null) {
            executor = Executors.newSingleThreadExecutor();
        }
        executor.execute(new Runnable() { // from class: com.transsion.api.gateway.utils.LogUtils.1
            /* JADX WARN: Code duplicated, block: B:29:0x0062 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            @Override // java.lang.Runnable
            public void run() throws Throwable {
                BufferedWriter bufferedWriter;
                IOException e11;
                BufferedWriter bufferedWriter2 = null;
                try {
                    try {
                        bufferedWriter = new BufferedWriter(new FileWriter(string, true));
                        try {
                            try {
                                bufferedWriter.write(str5);
                                StringBuilder sb3 = new StringBuilder();
                                sb3.append("log to ");
                                sb3.append(string);
                                sb3.append(" success!");
                                bufferedWriter.close();
                            } catch (IOException e12) {
                                e11 = e12;
                                e11.printStackTrace();
                                Log.e(str, "log to " + string + " failed!");
                                if (bufferedWriter == null) {
                                } else {
                                    bufferedWriter.close();
                                }
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            bufferedWriter2 = bufferedWriter;
                            if (bufferedWriter2 != null) {
                                try {
                                    bufferedWriter2.close();
                                } catch (IOException e13) {
                                    e13.printStackTrace();
                                }
                            }
                            throw th;
                        }
                    } catch (IOException e14) {
                        e14.printStackTrace();
                    }
                } catch (IOException e15) {
                    bufferedWriter = null;
                    e11 = e15;
                } catch (Throwable th3) {
                    th = th3;
                    if (bufferedWriter2 != null) {
                        bufferedWriter2.close();
                    }
                    throw th;
                }
            }
        });
    }

    private static String processBody(int i11, Object... objArr) {
        if (objArr == null) {
            return NULL_TIPS;
        }
        int length = objArr.length;
        String string = NULL;
        if (length == 1) {
            Object obj = objArr[0];
            if (obj != null) {
                string = obj.toString();
            }
            if (i11 == 32) {
                return formatJson(string);
            }
            return i11 == 48 ? formatXml(string) : string;
        }
        StringBuilder sb2 = new StringBuilder();
        int length2 = objArr.length;
        for (int i12 = 0; i12 < length2; i12++) {
            Object obj2 = objArr[i12];
            sb2.append("args");
            sb2.append("[");
            sb2.append(i12);
            sb2.append("]");
            sb2.append(" = ");
            sb2.append(obj2 == null ? NULL : obj2.toString());
            sb2.append(LINE_SEP);
        }
        return sb2.toString();
    }

    private static String[] processTagAndHead(String str) {
        if (sTagIsSpace || sLogHeadSwitch) {
            StackTraceElement stackTraceElement = Thread.currentThread().getStackTrace()[5];
            String className = stackTraceElement.getClassName();
            String[] strArrSplit = className.split("\\.");
            if (strArrSplit.length > 0) {
                className = strArrSplit[strArrSplit.length - 1];
            }
            if (className.contains("$")) {
                className = className.split("\\$")[0];
            }
            if (sTagIsSpace && isSpace(str)) {
                str = className;
            }
            if (sLogHeadSwitch) {
                String string = new Formatter().format("%s, %s(%s.java:%d)", Thread.currentThread().getName(), stackTraceElement.getMethodName(), className, Integer.valueOf(stackTraceElement.getLineNumber())).toString();
                return new String[]{str, string + LINE_SEP, " [" + string + "]: "};
            }
        } else {
            str = sGlobalTag;
        }
        return new String[]{str, "", ": "};
    }

    public static byte[] uncompress(byte[] bArr) {
        int iInflate;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        Inflater inflater = new Inflater();
        try {
            inflater.setInput(bArr);
            byte[] bArr2 = new byte[2048];
            while (!inflater.finished()) {
                try {
                    iInflate = inflater.inflate(bArr2);
                } catch (DataFormatException e11) {
                    e11.printStackTrace();
                    iInflate = 0;
                }
                byteArrayOutputStream.write(bArr2, 0, iInflate);
            }
            inflater.end();
            return byteArrayOutputStream.toByteArray();
        } catch (Throwable th2) {
            inflater.end();
            throw th2;
        }
    }

    public static void v(Object obj) {
        log(2, sGlobalTag, obj);
    }

    public static void v(String str, Object... objArr) {
        log(2, str, objArr);
    }

    public static void w(Object obj) {
        log(5, sGlobalTag, obj);
    }

    public static void w(String str, Object... objArr) {
        log(5, str, objArr);
    }

    public static void xml(int i11, String str) {
        log(i11 | 48, sGlobalTag, str);
    }

    public static void xml(int i11, String str, String str2) {
        log(i11 | 48, str, str2);
    }

    public static void xml(String str) {
        log(51, sGlobalTag, str);
    }

    public static void xml(String str, String str2) {
        log(51, str, str2);
    }
}
