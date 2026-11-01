package com.apm.insight.l;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apm.insight.nativecrash.NativeImpl;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final StackTraceElement f19687a = new StackTraceElement("", "", "", 0);

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f19688a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f19689b;

        public a(int i11, int i12) {
            this.f19688a = i11;
            this.f19689b = i12;
        }

        public final JSONObject a() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("start", this.f19688a);
                jSONObject.put(TtmlNode.END, this.f19689b);
            } catch (Throwable unused) {
            }
            return jSONObject;
        }
    }

    public static String a(String str) {
        BufferedReader bufferedReader = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        File file = new File(str);
        if (!file.exists()) {
            return null;
        }
        LinkedList linkedList = new LinkedList();
        LinkedList linkedList2 = new LinkedList();
        StringBuilder sb2 = new StringBuilder();
        int i11 = 0;
        try {
            BufferedReader bufferedReader2 = new BufferedReader(new FileReader(file));
            int i12 = 0;
            while (true) {
                try {
                    String line = bufferedReader2.readLine();
                    if (line == null) {
                        break;
                    }
                    if (i12 <= 256) {
                        linkedList.add(line);
                        sb2.append(line);
                        sb2.append('\n');
                    } else {
                        linkedList2.add(line);
                        if (linkedList2.size() > 256) {
                            linkedList2.poll();
                            i11++;
                        }
                    }
                    i12++;
                } catch (Throwable unused) {
                    bufferedReader = bufferedReader2;
                    com.apm.insight.a.a((Closeable) bufferedReader);
                }
            }
            com.apm.insight.a.a((Closeable) bufferedReader2);
        } catch (Throwable unused2) {
        }
        if (!linkedList2.isEmpty()) {
            if (i11 != 0) {
                sb2.append("\t... skip ");
                sb2.append(i11);
                sb2.append(" lines\n");
            }
            Iterator it = linkedList2.iterator();
            while (it.hasNext()) {
                sb2.append((String) it.next());
                sb2.append('\n');
            }
        }
        return sb2.toString();
    }

    @NonNull
    public static String a(@NonNull Throwable th2) {
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        try {
            a(th2, printWriter);
            String string = stringWriter.toString();
            printWriter.close();
            return string;
        } catch (Throwable unused) {
            printWriter.close();
            return "";
        }
    }

    @NonNull
    public static String a(@NonNull Throwable th2, PrintStream printStream, e.a aVar) throws IOException {
        MessageDigest messageDigest;
        try {
            messageDigest = MessageDigest.getInstance("MD5");
        } catch (Throwable unused) {
            messageDigest = null;
        }
        e eVar = new e(printStream, messageDigest, aVar);
        try {
            a(th2, eVar);
        } catch (Throwable unused2) {
        }
        eVar.close();
        if (messageDigest == null) {
            return null;
        }
        byte[] bArrDigest = messageDigest.digest();
        if (bArrDigest == null || bArrDigest.length <= 0) {
            return "";
        }
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        char[] cArr2 = new char[bArrDigest.length << 1];
        int i11 = 0;
        for (byte b11 : bArrDigest) {
            int i12 = i11 + 1;
            cArr2[i11] = cArr[(b11 >>> 4) & 15];
            i11 += 2;
            cArr2[i12] = cArr[b11 & 15];
        }
        return new String(cArr2);
    }

    public static String a(StackTraceElement[] stackTraceElementArr) {
        StringBuilder sb2 = new StringBuilder();
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            a(stackTraceElement, sb2);
        }
        return sb2.toString();
    }

    public static StringBuilder a(StackTraceElement stackTraceElement, StringBuilder sb2) {
        String className = stackTraceElement.getClassName();
        sb2.append("  at ");
        sb2.append(className);
        sb2.append(".");
        sb2.append(stackTraceElement.getMethodName());
        sb2.append("(");
        sb2.append(stackTraceElement.getFileName());
        sb2.append(":");
        sb2.append(stackTraceElement.getLineNumber());
        sb2.append(")\n");
        return sb2;
    }

    public static JSONArray a(StackTraceElement[] stackTraceElementArr, String[] strArr) {
        a aVar = new a(-1, -1);
        JSONArray jSONArray = new JSONArray();
        for (int i11 = 0; i11 < stackTraceElementArr.length; i11++) {
            if (aVar.f19688a == -1) {
                if (a(stackTraceElementArr[i11].getClassName(), strArr)) {
                    aVar.f19688a = i11;
                    aVar.f19689b = i11;
                }
            } else if (!a(stackTraceElementArr[i11].getClassName(), strArr)) {
                aVar.f19689b = i11;
                jSONArray.put(aVar.a());
                aVar = new a(-1, -1);
            }
        }
        if (aVar.f19688a != -1) {
            aVar.f19689b = stackTraceElementArr.length;
            jSONArray.put(aVar.a());
        }
        return jSONArray;
    }

    public static JSONArray a(String[] strArr, String[] strArr2) {
        a aVar = new a(-1, -1);
        JSONArray jSONArray = new JSONArray();
        for (int i11 = 0; i11 < strArr.length; i11++) {
            if (aVar.f19688a == -1) {
                if (a(strArr[i11], strArr2)) {
                    aVar.f19688a = i11;
                    aVar.f19689b = i11;
                }
            } else if (!a(strArr[i11], strArr2)) {
                aVar.f19689b = i11;
                jSONArray.put(aVar.a());
                aVar = new a(-1, -1);
            }
        }
        if (aVar.f19688a != -1) {
            aVar.f19689b = strArr.length;
            jSONArray.put(aVar.a());
        }
        return jSONArray;
    }

    private static void a(StackTraceElement stackTraceElement, int i11) {
        try {
            NativeImpl.a(i11, "\tat ");
            NativeImpl.a(i11, stackTraceElement.getClassName());
            NativeImpl.a(i11, ".");
            NativeImpl.a(i11, stackTraceElement.getMethodName());
            if (stackTraceElement.isNativeMethod()) {
                NativeImpl.a(i11, "(Native Method)");
            } else if (stackTraceElement.getFileName() != null) {
                if (stackTraceElement.getLineNumber() >= 0) {
                    NativeImpl.a(i11, "(");
                    NativeImpl.a(i11, stackTraceElement.getFileName());
                    NativeImpl.a(i11, ":");
                    NativeImpl.a(i11, String.valueOf(stackTraceElement.getLineNumber()));
                    NativeImpl.a(i11, ")");
                } else {
                    NativeImpl.a(i11, "(");
                    NativeImpl.a(i11, stackTraceElement.getFileName());
                    NativeImpl.a(i11, ")");
                }
            } else if (stackTraceElement.getLineNumber() >= 0) {
                NativeImpl.a(i11, "(Unknown Source:");
                NativeImpl.a(i11, String.valueOf(stackTraceElement.getLineNumber()));
                NativeImpl.a(i11, ")");
            } else {
                NativeImpl.a(i11, "(Unknown Source)");
            }
            NativeImpl.a(i11, "\n");
        } catch (Throwable unused) {
        }
    }

    public static void a(@NonNull Throwable th2, int i11) {
        if (th2 == null || i11 <= 0) {
            return;
        }
        try {
            b(th2, i11);
            for (StackTraceElement stackTraceElement : th2.getStackTrace()) {
                a(stackTraceElement, i11);
            }
            for (Throwable th3 : th2.getSuppressed()) {
                a(th3, i11, "Suppressed: ", "\t");
            }
            Throwable cause = th2.getCause();
            if (cause != null) {
                a(cause, i11, "Caused by: ", "");
            }
        } catch (Throwable unused) {
        }
    }

    private static void a(Throwable th2, int i11, String str, String str2) {
        while (true) {
            StackTraceElement[] stackTrace = th2.getStackTrace();
            try {
                NativeImpl.a(i11, str2);
                NativeImpl.a(i11, str);
            } catch (Throwable unused) {
            }
            b(th2, i11);
            for (StackTraceElement stackTraceElement : stackTrace) {
                a(stackTraceElement, i11);
            }
            for (Throwable th3 : th2.getSuppressed()) {
                a(th3, i11, "Suppressed: ", str2 + "\t");
            }
            th2 = th2.getCause();
            if (th2 == null) {
                return;
            } else {
                str = "Caused by: ";
            }
        }
    }

    private static void a(Throwable th2, PrintWriter printWriter) {
        if (th2 == null) {
            return;
        }
        Set setNewSetFromMap = Collections.newSetFromMap(new IdentityHashMap());
        setNewSetFromMap.add(th2);
        printWriter.println(th2);
        StackTraceElement[] stackTrace = th2.getStackTrace();
        boolean z10 = stackTrace.length > 384;
        int i11 = 0;
        for (StackTraceElement stackTraceElement : stackTrace) {
            if (z10 && i11 > 256) {
                StringBuilder sb2 = new StringBuilder("\t... skip ");
                sb2.append((stackTrace.length - i11) - 128);
                sb2.append(" lines");
                printWriter.println(sb2.toString());
                break;
            }
            printWriter.println("\tat ".concat(String.valueOf(stackTraceElement)));
            i11++;
        }
        if (z10) {
            for (int length = stackTrace.length - 128; length < stackTrace.length; length++) {
                printWriter.println("\tat " + stackTrace[length]);
            }
        }
        for (Throwable th3 : th2.getSuppressed()) {
            a(th3, printWriter, "Suppressed: ", "\t", setNewSetFromMap, 128);
        }
        Throwable cause = th2.getCause();
        if (cause != null) {
            a(cause, printWriter, "Caused by: ", "", setNewSetFromMap, 128);
        }
    }

    private static void a(Throwable th2, PrintWriter printWriter, String str, String str2, Set<Throwable> set, int i11) {
        while (!set.contains(th2)) {
            set.add(th2);
            StackTraceElement[] stackTrace = th2.getStackTrace();
            boolean z10 = stackTrace.length > i11;
            printWriter.println(str2 + str + th2);
            int length = stackTrace.length;
            int i12 = 0;
            for (int i13 = 0; i13 < length; i13++) {
                StackTraceElement stackTraceElement = stackTrace[i13];
                if (z10 && i12 > i11) {
                    printWriter.println("\t... skip " + ((stackTrace.length - i12) - (i11 / 2)) + " lines");
                    break;
                }
                printWriter.println("\tat ".concat(String.valueOf(stackTraceElement)));
                i12++;
            }
            if (z10) {
                for (int length2 = stackTrace.length - (i11 / 2); length2 < stackTrace.length; length2++) {
                    printWriter.println("\tat " + stackTrace[length2]);
                }
            }
            for (Throwable th3 : th2.getSuppressed()) {
                int i14 = i11 / 2;
                a(th3, printWriter, "Suppressed: ", str2 + "\t", set, i14 > 10 ? i14 : 10);
            }
            th2 = th2.getCause();
            if (th2 == null) {
                return;
            }
            i11 /= 2;
            if (i11 <= 10) {
                i11 = 10;
            }
            str = "Caused by: ";
        }
        printWriter.println("\t[CIRCULAR REFERENCE:" + th2 + "]");
    }

    private static void a(Throwable th2, List<StackTraceElement> list) {
        if (th2 == null) {
            return;
        }
        Set setNewSetFromMap = Collections.newSetFromMap(new IdentityHashMap());
        setNewSetFromMap.add(th2);
        list.add(f19687a);
        StackTraceElement[] stackTrace = th2.getStackTrace();
        boolean z10 = stackTrace.length > 384;
        int i11 = 0;
        for (StackTraceElement stackTraceElement : stackTrace) {
            if (z10 && i11 > 256) {
                list.add(f19687a);
                break;
            } else {
                list.add(stackTraceElement);
                i11++;
            }
        }
        if (z10) {
            for (int length = stackTrace.length - 128; length < stackTrace.length; length++) {
                list.add(stackTrace[length]);
            }
        }
        for (Throwable th3 : th2.getSuppressed()) {
            a(th3, list, "\t", setNewSetFromMap, 128);
        }
        Throwable cause = th2.getCause();
        if (cause != null) {
            a(cause, list, "", setNewSetFromMap, 128);
        }
    }

    private static void a(Throwable th2, List<StackTraceElement> list, String str, Set<Throwable> set, int i11) {
        while (!set.contains(th2)) {
            set.add(th2);
            StackTraceElement[] stackTrace = th2.getStackTrace();
            int i12 = 0;
            boolean z10 = stackTrace.length > i11;
            list.add(f19687a);
            int i13 = 0;
            for (StackTraceElement stackTraceElement : stackTrace) {
                if (z10 && i13 > i11) {
                    list.add(f19687a);
                    break;
                } else {
                    list.add(stackTraceElement);
                    i13++;
                }
            }
            if (z10) {
                for (int length = stackTrace.length - (i11 / 2); length < stackTrace.length; length++) {
                    list.add(stackTrace[length]);
                }
            }
            Throwable[] suppressed = th2.getSuppressed();
            int length2 = suppressed.length;
            while (true) {
                int i14 = 10;
                if (i12 >= length2) {
                    break;
                }
                Throwable th3 = suppressed[i12];
                String str2 = str + "\t";
                int i15 = i11 / 2;
                if (i15 > 10) {
                    i14 = i15;
                }
                a(th3, list, str2, set, i14);
                i12++;
            }
            th2 = th2.getCause();
            if (th2 == null) {
                return;
            }
            i11 /= 2;
            if (i11 <= 10) {
                i11 = 10;
            }
        }
        list.add(f19687a);
    }

    private static boolean a(String str, String[] strArr) {
        if (strArr != null && !TextUtils.isEmpty(str)) {
            for (String str2 : strArr) {
                if (str.contains(str2)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Nullable
    public static JSONObject b(String str) {
        try {
            Map<Thread, StackTraceElement[]> allStackTraces = Thread.getAllStackTraces();
            JSONObject jSONObject = new JSONObject();
            if (allStackTraces == null) {
                return null;
            }
            jSONObject.put("thread_all_count", allStackTraces.size());
            JSONArray jSONArray = new JSONArray();
            for (Map.Entry<Thread, StackTraceElement[]> entry : allStackTraces.entrySet()) {
                JSONObject jSONObject2 = new JSONObject();
                Thread key = entry.getKey();
                String name = key.getName();
                if (!c(name) && (str == null || (!str.equals(name) && !name.startsWith(str) && !name.endsWith(str)))) {
                    jSONObject2.put("thread_name", key.getName() + "(" + key.getId() + ")");
                    StackTraceElement[] value = entry.getValue();
                    if (value != null) {
                        JSONArray jSONArray2 = new JSONArray();
                        for (StackTraceElement stackTraceElement : value) {
                            jSONArray2.put(stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName() + "(" + stackTraceElement.getLineNumber() + ")");
                        }
                        jSONObject2.put("thread_stack", jSONArray2);
                        if (jSONArray2.length() > 0) {
                        }
                    }
                    jSONArray.put(jSONObject2);
                }
            }
            jSONObject.put("thread_stacks", jSONArray);
            return jSONObject;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static void b(Throwable th2, int i11) {
        th2.getClass();
        String localizedMessage = th2.getLocalizedMessage();
        try {
            NativeImpl.a(i11, th2.getClass().getName());
            if (localizedMessage != null) {
                NativeImpl.a(i11, ": ");
                NativeImpl.a(i11, localizedMessage);
            }
            NativeImpl.a(i11, "\n");
        } catch (Throwable unused) {
        }
    }

    public static StackTraceElement[] b(@NonNull Throwable th2) {
        ArrayList arrayList = new ArrayList();
        try {
            a(th2, arrayList);
        } catch (Throwable unused) {
        }
        return (StackTraceElement[]) arrayList.toArray(new StackTraceElement[arrayList.size()]);
    }

    private static boolean c(String str) {
        Set<String> setA = g.a();
        if (setA.contains(str)) {
            return true;
        }
        for (String str2 : setA) {
            if (!TextUtils.isEmpty(str) && str.startsWith(str2)) {
                return true;
            }
        }
        return false;
    }

    public static boolean c(Throwable th2) {
        if (th2 == null) {
            return false;
        }
        int i11 = 0;
        while (th2 != null) {
            if (th2 instanceof OutOfMemoryError) {
                return true;
            }
            if (i11 > 20) {
                return false;
            }
            i11++;
            try {
                th2 = th2.getCause();
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    public static boolean d(Throwable th2) {
        if (th2 == null) {
            return false;
        }
        int i11 = 0;
        while (th2 != null) {
            try {
                if ((th2 instanceof OutOfMemoryError) && (th2.getMessage().contains("allocate") || th2.getMessage().contains("thrown"))) {
                    return true;
                }
                if (i11 > 20) {
                    return false;
                }
                i11++;
                th2 = th2.getCause();
            } catch (Throwable unused) {
                return true;
            }
        }
        return false;
    }
}
