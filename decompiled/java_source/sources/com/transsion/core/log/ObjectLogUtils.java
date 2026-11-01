package com.transsion.core.log;

import android.os.Environment;
import android.util.Log;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.transsion.core.utils.b;
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

/* JADX INFO: loaded from: classes.dex */
public final class ObjectLogUtils {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final char[] f44035o = {'V', 'D', 'I', 'W', 'E', 'A'};

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final String f44036p = System.getProperty("file.separator");

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final String f44037q = System.getProperty("line.separator");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f44038a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f44039b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f44040c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ExecutorService f44041d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f44042e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f44043f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f44044g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f44045h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Format f44046i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final String f44047j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final String f44048k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final String f44049l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    a f44050m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f44051n;

    /* JADX INFO: loaded from: classes5.dex */
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f44052a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f44053b = true;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f44054c = null;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f44055d = true;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f44056e = true;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f44057f = false;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f44058g = true;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f44059h = 2;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f44060i = 2;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private String f44061j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private String f44062k;

        public ObjectLogUtils m() {
            return new ObjectLogUtils(this);
        }

        public a n(boolean z10) {
            this.f44058g = z10;
            return this;
        }

        public a o(boolean z10) {
            this.f44053b = z10;
            return this;
        }

        public a p(String str) {
            if (ObjectLogUtils.p(str)) {
                this.f44054c = "";
                this.f44055d = true;
            } else {
                this.f44054c = str;
                this.f44055d = false;
            }
            return this;
        }

        public a q(boolean z10) {
            this.f44056e = z10;
            return this;
        }

        public a r(boolean z10) {
            this.f44052a = z10;
            return this;
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("switch: ");
            sb2.append(this.f44052a);
            sb2.append(ObjectLogUtils.f44037q);
            sb2.append("console: ");
            sb2.append(this.f44053b);
            sb2.append(ObjectLogUtils.f44037q);
            sb2.append("tag: ");
            sb2.append(this.f44055d ? "null" : this.f44054c);
            sb2.append(ObjectLogUtils.f44037q);
            sb2.append("head: ");
            sb2.append(this.f44056e);
            sb2.append(ObjectLogUtils.f44037q);
            sb2.append("file: ");
            sb2.append(this.f44057f);
            sb2.append(ObjectLogUtils.f44037q);
            sb2.append("dir: ");
            String str = this.f44062k;
            if (str == null) {
                str = this.f44061j;
            }
            sb2.append(str);
            sb2.append(ObjectLogUtils.f44037q);
            sb2.append("border: ");
            sb2.append(this.f44058g);
            sb2.append(ObjectLogUtils.f44037q);
            sb2.append("consoleFilter: ");
            sb2.append(ObjectLogUtils.f44035o[this.f44059h - 2]);
            sb2.append(ObjectLogUtils.f44037q);
            sb2.append("fileFilter: ");
            sb2.append(ObjectLogUtils.f44035o[this.f44060i - 2]);
            return sb2.toString();
        }
    }

    private ObjectLogUtils(a aVar) {
        this.f44038a = 16;
        this.f44039b = 32;
        this.f44040c = 48;
        this.f44042e = "|---------------------------------------------------------------------------------------------------";
        this.f44043f = "| ";
        this.f44044g = "|---------------------------------------------------------------------------------------------------";
        this.f44045h = 4000;
        this.f44046i = new SimpleDateFormat("MM-dd HH:mm:ss.SSS ", Locale.getDefault());
        this.f44047j = "Log with null object.";
        this.f44048k = "null";
        this.f44049l = NativeComponentConstants.KEY_COMPONENT_EVENT_ARGS;
        new a();
        this.f44051n = 0;
        this.f44050m = aVar;
    }

    private String d(String str) {
        if (!this.f44050m.f44058g) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder();
        for (String str2 : str.split(f44037q)) {
            sb2.append("| ");
            sb2.append(str2);
            sb2.append(f44037q);
        }
        return sb2.toString();
    }

    private static boolean e(File file) {
        return file != null && (!file.exists() ? !file.mkdirs() : !file.isDirectory());
    }

    private static boolean f(String str) {
        File file = new File(str);
        if (file.exists()) {
            return file.isFile();
        }
        if (!e(file.getParentFile())) {
            return false;
        }
        try {
            return file.createNewFile();
        } catch (IOException e11) {
            e11.printStackTrace();
            return false;
        }
    }

    private static String k(String str) {
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

    private String l(String str) {
        try {
            StreamSource streamSource = new StreamSource(new StringReader(str));
            StreamResult streamResult = new StreamResult(new StringWriter());
            Transformer transformerNewTransformer = TransformerFactory.newInstance().newTransformer();
            transformerNewTransformer.setOutputProperty("indent", "yes");
            transformerNewTransformer.setOutputProperty("{http://xml.apache.org/xslt}indent-amount", "4");
            transformerNewTransformer.transform(streamSource, streamResult);
            return streamResult.getWriter().toString().replaceFirst(">", ">" + f44037q);
        } catch (Exception e11) {
            e11.printStackTrace();
            return str;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean p(String str) {
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

    private void r(int i11, String str, Object... objArr) {
        try {
            if (!Log.isLoggable(str.length() > 23 ? str.substring(0, 23) : str, 3)) {
                if (!this.f44050m.f44052a) {
                    return;
                }
                if (!this.f44050m.f44053b && !this.f44050m.f44057f) {
                    return;
                }
            }
            int i12 = i11 & 15;
            int i13 = i11 & 240;
            if (i12 >= this.f44050m.f44059h || i12 >= this.f44050m.f44060i) {
                String[] strArrW = w(str);
                String strV = v(i13, objArr);
                if (this.f44050m.f44053b && i12 >= this.f44050m.f44059h) {
                    t(i12, strArrW[0], strArrW[1], strV);
                }
                if ((this.f44050m.f44057f || i13 == 16) && i12 >= this.f44050m.f44060i) {
                    u(i12, strArrW[0], strArrW[2] + strV);
                }
            }
        } catch (Exception unused) {
        }
    }

    private static void s(int i11, String str, String str2) {
        Log.println(i11, str, str2);
    }

    private void t(int i11, String str, String str2, String str3) {
        if (this.f44050m.f44056e) {
            s(i11, str, "\n" + str2);
        } else {
            s(i11, str, " \n");
        }
        if (this.f44050m.f44058g) {
            s(i11, str, "|---------------------------------------------------------------------------------------------------");
            str3 = d(str3);
        }
        int length = str3.length();
        int i12 = length / 4000;
        if (i12 > 0) {
            int i13 = 4000;
            s(i11, str, str3.substring(0, 4000));
            int i14 = 1;
            while (i14 < i12) {
                int i15 = i13 + 4000;
                String strSubstring = str3.substring(i13, i15);
                if (this.f44050m.f44058g) {
                    strSubstring = "| " + strSubstring;
                }
                s(i11, str, strSubstring);
                i14++;
                i13 = i15;
            }
            String strSubstring2 = str3.substring(i13, length);
            if (this.f44050m.f44058g) {
                strSubstring2 = "| " + strSubstring2;
            }
            s(i11, str, strSubstring2);
        } else {
            s(i11, str, str3);
        }
        if (this.f44050m.f44058g) {
            s(i11, str, "|---------------------------------------------------------------------------------------------------");
        }
    }

    private void u(int i11, final String str, String str2) {
        String str3 = this.f44046i.format(new Date(System.currentTimeMillis()));
        String strSubstring = str3.substring(0, 5);
        String strSubstring2 = str3.substring(6);
        if (this.f44050m.f44061j == null) {
            if (!"mounted".equals(Environment.getExternalStorageState()) || b.a(qk.a.a()) == null) {
                a aVar = this.f44050m;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(qk.a.a().getCacheDir());
                String str4 = f44036p;
                sb2.append(str4);
                sb2.append("log");
                sb2.append(str4);
                aVar.f44061j = sb2.toString();
            } else {
                a aVar2 = this.f44050m;
                StringBuilder sb3 = new StringBuilder();
                sb3.append(b.a(qk.a.a()));
                String str5 = f44036p;
                sb3.append(str5);
                sb3.append("log");
                sb3.append(str5);
                aVar2.f44061j = sb3.toString();
            }
        }
        StringBuilder sb4 = new StringBuilder();
        sb4.append(this.f44050m.f44062k == null ? this.f44050m.f44061j : this.f44050m.f44062k);
        sb4.append(strSubstring);
        sb4.append(".txt");
        final String string = sb4.toString();
        if (!f(string)) {
            Log.e(str, "log to " + string + " failed!");
            return;
        }
        final String str6 = strSubstring2 + f44035o[i11 - 2] + "/" + str + str2 + f44037q;
        if (this.f44041d == null) {
            this.f44041d = Executors.newSingleThreadExecutor();
        }
        this.f44041d.execute(new Runnable() { // from class: com.transsion.core.log.ObjectLogUtils.1
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
                                bufferedWriter.write(str6);
                                StringBuilder sb5 = new StringBuilder();
                                sb5.append("log to ");
                                sb5.append(string);
                                sb5.append(" success!");
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

    private String v(int i11, Object... objArr) {
        if (objArr == null) {
            return "Log with null object.";
        }
        if (objArr.length == 1) {
            Object obj = objArr[0];
            String string = obj != null ? obj.toString() : "null";
            if (i11 == 32) {
                return k(string);
            }
            return i11 == 48 ? l(string) : string;
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
            sb2.append(f44037q);
        }
        return sb2.toString();
    }

    private String[] w(String str) {
        if (this.f44050m.f44055d || this.f44050m.f44056e) {
            StackTraceElement stackTraceElement = Thread.currentThread().getStackTrace()[this.f44051n + 5];
            String className = stackTraceElement.getClassName();
            String[] strArrSplit = className.split("\\.");
            if (strArrSplit.length > 0) {
                className = strArrSplit[strArrSplit.length - 1];
            }
            if (className.contains("$")) {
                className = className.split("\\$")[0];
            }
            if (this.f44050m.f44055d && p(str)) {
                str = className;
            }
            if (this.f44050m.f44056e) {
                String string = new Formatter().format("%s, %s(%s.java:%d)", Thread.currentThread().getName(), stackTraceElement.getMethodName(), className, Integer.valueOf(stackTraceElement.getLineNumber())).toString();
                return new String[]{str, string + f44037q, " [" + string + "]: "};
            }
        } else {
            str = this.f44050m.f44054c;
        }
        return new String[]{str, "", ": "};
    }

    public void A(String str, Object... objArr) {
        r(5, str, objArr);
    }

    public void g(Object obj) {
        r(3, this.f44050m.f44054c, obj);
    }

    public void h(String str, Object... objArr) {
        r(3, str, objArr);
    }

    public void i(Object obj) {
        r(6, this.f44050m.f44054c, obj);
    }

    public void j(String str, Object... objArr) {
        r(6, str, objArr);
    }

    public a m() {
        return this.f44050m;
    }

    public void n(Object obj) {
        r(4, this.f44050m.f44054c, obj);
    }

    public void o(String str, Object... objArr) {
        r(4, str, objArr);
    }

    public void q(String str, String str2) {
        r(35, str, str2);
    }

    public void x(int i11) {
        this.f44051n = i11;
    }

    public void y(String str, Object... objArr) {
        r(2, str, objArr);
    }

    public void z(Object obj) {
        r(5, this.f44050m.f44054c, obj);
    }
}
