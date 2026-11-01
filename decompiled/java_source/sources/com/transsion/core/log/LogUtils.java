package com.transsion.core.log;

import android.util.Log;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.StringReader;
import java.io.StringWriter;
import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Formatter;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import qk.a;

/* JADX INFO: loaded from: classes.dex */
public abstract class LogUtils {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static ExecutorService f44020b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static String f44021c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f44022d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final char[] f44019a = {'V', 'D', 'I', 'W', 'E', 'A'};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f44023e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static boolean f44024f = true;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static String f44025g = "TAG";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static boolean f44026h = true;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static boolean f44027i = true;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static boolean f44028j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static boolean f44029k = true;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static int f44030l = 2;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static int f44031m = 2;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final String f44032n = System.getProperty("file.separator");

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final String f44033o = System.getProperty("line.separator");

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final Format f44034p = new SimpleDateFormat("MM-dd HH:mm:ss.SSS ", Locale.getDefault());

    private static String a(String str) {
        if (!f44029k) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder();
        for (String str2 : str.split(f44033o)) {
            sb2.append("| ");
            sb2.append(str2);
            sb2.append(f44033o);
        }
        return sb2.toString();
    }

    private static boolean b(File file) {
        return file != null && (!file.exists() ? !file.mkdirs() : !file.isDirectory());
    }

    private static boolean c(String str) {
        File file = new File(str);
        if (file.exists()) {
            return file.isFile();
        }
        if (!b(file.getParentFile())) {
            return false;
        }
        try {
            return file.createNewFile();
        } catch (IOException e11) {
            e11.printStackTrace();
            return false;
        }
    }

    public static void d(String str, Object... objArr) {
        j(3, str, objArr);
    }

    private static String e(String str) {
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

    private static String f(String str) {
        try {
            StreamSource streamSource = new StreamSource(new StringReader(str));
            StreamResult streamResult = new StreamResult(new StringWriter());
            Transformer transformerNewTransformer = TransformerFactory.newInstance().newTransformer();
            transformerNewTransformer.setOutputProperty("indent", "yes");
            transformerNewTransformer.setOutputProperty("{http://xml.apache.org/xslt}indent-amount", "4");
            transformerNewTransformer.transform(streamSource, streamResult);
            return streamResult.getWriter().toString().replaceFirst(">", ">" + f44033o);
        } catch (Exception e11) {
            e11.printStackTrace();
            return str;
        }
    }

    public static void g(Object obj) {
        j(4, f44025g, obj);
    }

    public static void h(String str, Object... objArr) {
        j(4, str, objArr);
    }

    private static boolean i(String str) {
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

    private static void j(int i11, String str, Object... objArr) {
        String strSubstring = str.length() > 23 ? str.substring(0, 23) : str;
        if (!a.e() && !Log.isLoggable(strSubstring, 3)) {
            if (!f44023e) {
                return;
            }
            if (!f44024f && !f44028j) {
                return;
            }
        }
        int i12 = i11 & 15;
        int i13 = i11 & 240;
        if (i12 >= f44030l || i12 >= f44031m) {
            String[] strArrO = o(str);
            String strN = n(i13, objArr);
            if (f44024f && i12 >= f44030l) {
                l(i12, strArrO[0], strArrO[1], strN);
            }
            if ((f44028j || i13 == 16) && i12 >= f44031m) {
                m(i12, strArrO[0], strArrO[2] + strN);
            }
        }
    }

    private static void k(int i11, String str, String str2) {
        Log.println(i11, str, str2);
    }

    private static void l(int i11, String str, String str2, String str3) {
        if (f44027i) {
            k(i11, str, "\n" + str2);
        } else {
            k(i11, str, " \n");
        }
        if (f44029k) {
            k(i11, str, "|---------------------------------------------------------------------------------------------------");
            str3 = a(str3);
        }
        int length = str3.length();
        int i12 = length / 4000;
        if (i12 > 0) {
            int i13 = 4000;
            k(i11, str, str3.substring(0, 4000));
            int i14 = 1;
            while (i14 < i12) {
                int i15 = i13 + 4000;
                String strSubstring = str3.substring(i13, i15);
                if (f44029k) {
                    strSubstring = "| " + strSubstring;
                }
                k(i11, str, strSubstring);
                i14++;
                i13 = i15;
            }
            String strSubstring2 = str3.substring(i13, length);
            if (f44029k) {
                strSubstring2 = "| " + strSubstring2;
            }
            k(i11, str, strSubstring2);
        } else {
            k(i11, str, str3);
        }
        if (f44029k) {
            k(i11, str, "|---------------------------------------------------------------------------------------------------");
        }
    }

    private static void m(int i11, final String str, String str2) {
        String str3 = f44034p.format(new Date(System.currentTimeMillis()));
        String strSubstring = str3.substring(0, 5);
        String strSubstring2 = str3.substring(6);
        StringBuilder sb2 = new StringBuilder();
        String str4 = f44022d;
        if (str4 == null) {
            str4 = f44021c;
        }
        sb2.append(str4);
        sb2.append(strSubstring);
        sb2.append(".txt");
        final String string = sb2.toString();
        if (!c(string)) {
            Log.e(str, "log to " + string + " failed!");
            return;
        }
        final String str5 = strSubstring2 + f44019a[i11 - 2] + "/" + str + str2 + f44033o;
        if (f44020b == null) {
            f44020b = Executors.newSingleThreadExecutor();
        }
        f44020b.execute(new Runnable() { // from class: com.transsion.core.log.LogUtils.1
            /* JADX WARN: Code duplicated, block: B:30:0x0061 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            @Override // java.lang.Runnable
            public void run() throws Throwable {
                BufferedWriter bufferedWriter;
                IOException e11;
                BufferedWriter bufferedWriter2 = null;
                try {
                    try {
                        try {
                            bufferedWriter = new BufferedWriter(new FileWriter(string, true));
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
                                if (bufferedWriter != null) {
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
                        bufferedWriter = null;
                        e11 = e14;
                    } catch (Throwable th3) {
                        th = th3;
                        if (bufferedWriter2 != null) {
                            bufferedWriter2.close();
                        }
                        throw th;
                    }
                } catch (IOException e15) {
                    e15.printStackTrace();
                }
            }
        });
    }

    private static String n(int i11, Object... objArr) {
        if (objArr == null) {
            return "Log with null object.";
        }
        if (objArr.length == 1) {
            Object obj = objArr[0];
            String string = obj != null ? obj.toString() : "null";
            if (i11 == 32) {
                return e(string);
            }
            return i11 == 48 ? f(string) : string;
        }
        StringBuilder sb2 = new StringBuilder();
        int length = objArr.length;
        for (int i12 = 0; i12 < length; i12++) {
            Object obj2 = objArr[i12];
            sb2.append(NativeComponentConstants.KEY_COMPONENT_EVENT_ARGS);
            sb2.append("[");
            sb2.append(i12);
            sb2.append("]");
            sb2.append(" = ");
            sb2.append(obj2 == null ? "null" : obj2.toString());
            sb2.append(f44033o);
        }
        return sb2.toString();
    }

    private static String[] o(String str) {
        if (f44026h || f44027i) {
            StackTraceElement stackTraceElement = Thread.currentThread().getStackTrace()[5];
            String className = stackTraceElement.getClassName();
            String[] strArrSplit = className.split("\\.");
            if (strArrSplit.length > 0) {
                className = strArrSplit[strArrSplit.length - 1];
            }
            if (className.contains("$")) {
                className = className.split("\\$")[0];
            }
            if (f44026h && i(str)) {
                str = className;
            }
            if (f44027i) {
                String string = new Formatter().format("%s, %s(%s.java:%d)", Thread.currentThread().getName(), stackTraceElement.getMethodName(), className, Integer.valueOf(stackTraceElement.getLineNumber())).toString();
                return new String[]{str, string + f44033o, " [" + string + "]: "};
            }
        } else {
            str = f44025g;
        }
        return new String[]{str, "", ": "};
    }
}
