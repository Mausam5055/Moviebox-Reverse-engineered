package com.apm.insight;

import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apm.insight.entity.Header;
import com.apm.insight.l.j;
import com.apm.insight.nativecrash.NativeImpl;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.zip.ZipFile;
import org.apache.tools.zip.UnixStat;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Map<CrashType, List<AttachUserData>> f19312a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Map<CrashType, List<AttachUserData>> f19313b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Map<String, String> f19314c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ICrashFilter f19315d = null;

    public static int a(JSONObject jSONObject, int i11, String... strArr) {
        JSONObject jSONObjectB = b(jSONObject, strArr);
        if (jSONObjectB == null) {
            return i11;
        }
        int iOptInt = jSONObjectB.optInt(strArr[strArr.length - 1], i11);
        a("JSONUtil", "normal get jsonInt: " + strArr[strArr.length - 1] + " : " + iOptInt);
        return iOptInt;
    }

    @NonNull
    public static File a(String str, int i11, int i12) {
        File file = new File(j.a(e.g(), str), "logcat.txt");
        if (file.exists() && file.length() > 0) {
            return file;
        }
        file.getParentFile().mkdirs();
        try {
            file.createNewFile();
        } catch (IOException unused) {
        }
        NativeImpl.a(file.getAbsolutePath(), String.valueOf(i11), String.valueOf(i12));
        return file;
    }

    @Nullable
    public static String a(JSONObject jSONObject, String... strArr) {
        JSONObject jSONObjectB = b(jSONObject, strArr);
        if (jSONObjectB == null) {
            return null;
        }
        String strOptString = jSONObjectB.optString(strArr[1]);
        a("ApmConfig", "normal get configArray: " + strArr[1] + " : " + strOptString);
        return strOptString;
    }

    @Nullable
    public static JSONArray a(String[] strArr) {
        if (strArr == null) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        for (String str : strArr) {
            jSONArray.put(str);
        }
        return jSONArray;
    }

    public static void a(com.apm.insight.entity.a aVar, Header header, CrashType crashType) {
        JSONObject jSONObjectC;
        if (aVar == null || (jSONObjectC = aVar.c()) == null || crashType == null) {
            return;
        }
        long jOptLong = jSONObjectC.optLong("crash_time");
        String strA = e.c().a();
        if (jOptLong <= 0 || TextUtils.isEmpty(crashType.getName())) {
            return;
        }
        try {
            String str = "android__" + strA + "_" + jOptLong + "_" + crashType;
            if (header == null) {
                jSONObjectC.put("unique_key", str);
                return;
            }
            JSONObject jSONObjectF = header.f();
            if (jSONObjectF != null) {
                jSONObjectF.put("unique_key", str);
            }
        } catch (JSONException e11) {
            e11.printStackTrace();
        }
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable unused) {
            }
        }
    }

    public static void a(Object obj) {
        if (e.i().isDebugMode()) {
            String.valueOf(obj);
        }
    }

    public static void a(String str) {
        com.apm.insight.h.a.a("android.os.FileUtils", "setPermissions", str, Integer.valueOf(UnixStat.DEFAULT_DIR_PERM), -1, -1);
    }

    public static void a(String str, Object obj) {
        if (e.i().isDebugMode()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str);
            sb2.append(" ");
            sb2.append(obj);
        }
    }

    private static void a(String str, Object obj, Throwable th2) {
        if (e.i().isDebugMode()) {
            Log.e("npth", str + " " + obj, th2);
        }
    }

    public static void a(Throwable th2) {
        if (e.i().isDebugMode()) {
            Log.e("npth", "NPTH Catch Error", th2);
        }
    }

    public static void a(ZipFile zipFile) {
        if (zipFile == null) {
            return;
        }
        try {
            zipFile.close();
        } catch (IOException unused) {
        }
    }

    public static void a(JSONObject jSONObject, JSONObject jSONObject2) {
        Iterator<String> itKeys = jSONObject2.keys();
        while (itKeys.hasNext()) {
            try {
                String next = itKeys.next();
                if (!jSONObject.has(next)) {
                    jSONObject.put(next, jSONObject2.opt(next));
                }
            } catch (Throwable unused) {
                return;
            }
        }
    }

    public static boolean a(JSONArray jSONArray) {
        return jSONArray == null || jSONArray.length() == 0;
    }

    public static boolean a(JSONObject jSONObject) {
        return jSONObject == null || jSONObject.length() == 0;
    }

    public static boolean a(JSONObject jSONObject, String str) {
        return a(jSONObject) || a(jSONObject.optJSONArray(str));
    }

    public static JSONArray b(JSONArray jSONArray) {
        int i11;
        if (jSONArray.length() <= 384) {
            return jSONArray;
        }
        JSONArray jSONArray2 = new JSONArray();
        int i12 = 0;
        while (true) {
            if (i12 >= 256) {
                break;
            }
            jSONArray2.put(jSONArray.opt(i12));
            i12++;
        }
        for (i11 = 256; i11 < 384; i11++) {
            jSONArray2.put(jSONArray.opt(jSONArray.length() - (384 - i11)));
        }
        return jSONArray2;
    }

    @Nullable
    public static JSONObject b(JSONObject jSONObject, String... strArr) {
        if (jSONObject == null) {
            a("JSONUtil", "err get JsonFromParent: null json", new RuntimeException());
            return null;
        }
        for (int i11 = 0; i11 < strArr.length - 1; i11++) {
            jSONObject = jSONObject.optJSONObject(strArr[i11]);
            if (jSONObject == null) {
                a("JSONUtil", "err get json: not found node:" + strArr[i11]);
                return null;
            }
        }
        return jSONObject;
    }

    public static void b(Object obj) {
        if (e.i().isDebugMode()) {
            String.valueOf(obj);
        }
    }

    public static void b(Throwable th2) {
        if (e.i().isDebugMode()) {
            Log.w("npth", "NPTH Catch Error", th2);
        }
    }

    public static boolean b(String str) {
        try {
            System.loadLibrary(str);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static void c() {
        File[] fileArrListFiles;
        File file = new File(e.g().getFilesDir(), "apminsight/crashCommand");
        if (file.exists() && (fileArrListFiles = file.listFiles()) != null) {
            for (File file2 : fileArrListFiles) {
                try {
                    file2.getName().split("_")[0].equals("0");
                    file2.delete();
                } catch (Throwable th2) {
                    c.a();
                    com.apm.insight.runtime.j.a(th2, "NPTH_CATCH");
                    try {
                        file2.delete();
                    } catch (Throwable unused) {
                    }
                }
            }
        }
    }

    private void c(CrashType crashType, AttachUserData attachUserData) {
        List<AttachUserData> arrayList;
        if (this.f19312a.get(crashType) == null) {
            arrayList = new ArrayList<>();
            this.f19312a.put(crashType, arrayList);
        } else {
            arrayList = this.f19312a.get(crashType);
        }
        arrayList.add(attachUserData);
    }

    public static void d() {
        try {
            a(e.f(), e.i().getLogcatDumpCount(), e.i().getLogcatLevel());
            if (e.v()) {
                g();
                i();
                h();
                j();
            }
        } catch (Throwable unused) {
        }
    }

    private void d(CrashType crashType, AttachUserData attachUserData) {
        List<AttachUserData> arrayList;
        if (this.f19313b.get(crashType) == null) {
            arrayList = new ArrayList<>();
            this.f19313b.put(crashType, arrayList);
        } else {
            arrayList = this.f19313b.get(crashType);
        }
        arrayList.add(attachUserData);
    }

    public static File e() throws Throwable {
        BufferedWriter bufferedWriter;
        File file = new File(j.e(e.g()), "anr_trace.txt");
        if (file.exists() || !com.apm.insight.runtime.a.e()) {
            return file;
        }
        File file2 = new File("/data/anr/traces.txt");
        if (!file2.exists()) {
            return file;
        }
        BufferedReader bufferedReader = null;
        try {
            file.getParentFile().mkdirs();
            BufferedReader bufferedReader2 = new BufferedReader(new FileReader(file2));
            try {
                bufferedWriter = new BufferedWriter(new FileWriter(file));
                int length = 0;
                do {
                    try {
                        String line = bufferedReader2.readLine();
                        if (line == null) {
                            break;
                        }
                        bufferedWriter.write(line);
                        bufferedWriter.write(10);
                        length += line.length();
                    } catch (IOException unused) {
                        bufferedReader = bufferedReader2;
                        a((Closeable) bufferedReader);
                    } catch (Throwable th2) {
                        th = th2;
                        bufferedReader = bufferedReader2;
                        a((Closeable) bufferedReader);
                        a((Closeable) bufferedWriter);
                        throw th;
                    }
                } while (length < 1048576);
                a((Closeable) bufferedReader2);
            } catch (IOException unused2) {
                bufferedWriter = null;
            } catch (Throwable th3) {
                th = th3;
                bufferedWriter = null;
            }
        } catch (IOException unused3) {
            bufferedWriter = null;
        } catch (Throwable th4) {
            th = th4;
            bufferedWriter = null;
        }
        a((Closeable) bufferedWriter);
        return file;
    }

    private void e(CrashType crashType, AttachUserData attachUserData) {
        List<AttachUserData> list = this.f19312a.get(crashType);
        if (list != null) {
            list.remove(attachUserData);
        }
    }

    public static int f() {
        try {
            return new File("/proc/" + Process.myPid() + "/fd").listFiles().length;
        } catch (Throwable unused) {
            return -1;
        }
    }

    private void f(CrashType crashType, AttachUserData attachUserData) {
        List<AttachUserData> list = this.f19313b.get(crashType);
        if (list != null) {
            list.remove(attachUserData);
        }
    }

    @NonNull
    private static File g() {
        File file = new File(j.e(e.g()), "maps.txt");
        if (file.exists()) {
            return file;
        }
        file.getParentFile().mkdirs();
        try {
            file.createNewFile();
        } catch (IOException unused) {
        }
        NativeImpl.f(file.getAbsolutePath());
        return file;
    }

    @NonNull
    private static File h() {
        File file = new File(j.e(e.g()), "meminfo.txt");
        if (file.exists()) {
            return file;
        }
        file.getParentFile().mkdirs();
        try {
            file.createNewFile();
        } catch (IOException unused) {
        }
        NativeImpl.d(file.getAbsolutePath());
        return file;
    }

    private static File i() {
        File file = new File(j.e(e.g()), "fds.txt");
        if (file.exists()) {
            return file;
        }
        file.getParentFile().mkdirs();
        try {
            file.createNewFile();
        } catch (IOException unused) {
        }
        NativeImpl.e(file.getAbsolutePath());
        return file;
    }

    private static File j() {
        File file = new File(j.e(e.g()), "threads.txt");
        if (file.exists()) {
            return file;
        }
        file.getParentFile().mkdirs();
        try {
            file.createNewFile();
        } catch (IOException unused) {
        }
        NativeImpl.g(file.getAbsolutePath());
        return file;
    }

    @Nullable
    public final List<AttachUserData> a(CrashType crashType) {
        return this.f19312a.get(crashType);
    }

    public final Map<String, String> a() {
        return this.f19314c;
    }

    final void a(AttachUserData attachUserData, CrashType crashType) {
        if (crashType != CrashType.ALL) {
            c(crashType, attachUserData);
            return;
        }
        c(CrashType.LAUNCH, attachUserData);
        c(CrashType.JAVA, attachUserData);
        c(CrashType.CUSTOM_JAVA, attachUserData);
        c(CrashType.NATIVE, attachUserData);
        c(CrashType.ANR, attachUserData);
        c(CrashType.DART, attachUserData);
    }

    final void a(CrashType crashType, AttachUserData attachUserData) {
        if (crashType != CrashType.ALL) {
            e(crashType, attachUserData);
            return;
        }
        e(CrashType.LAUNCH, attachUserData);
        e(CrashType.JAVA, attachUserData);
        e(CrashType.CUSTOM_JAVA, attachUserData);
        e(CrashType.NATIVE, attachUserData);
        e(CrashType.ANR, attachUserData);
        e(CrashType.DART, attachUserData);
    }

    final void a(ICrashFilter iCrashFilter) {
        this.f19315d = iCrashFilter;
    }

    final void a(Map<? extends String, ? extends String> map) {
        this.f19314c.putAll(map);
    }

    @Nullable
    public final ICrashFilter b() {
        return this.f19315d;
    }

    @Nullable
    public final List<AttachUserData> b(CrashType crashType) {
        return this.f19313b.get(crashType);
    }

    final void b(AttachUserData attachUserData, CrashType crashType) {
        if (crashType != CrashType.ALL) {
            d(crashType, attachUserData);
            return;
        }
        d(CrashType.LAUNCH, attachUserData);
        d(CrashType.JAVA, attachUserData);
        d(CrashType.CUSTOM_JAVA, attachUserData);
        d(CrashType.NATIVE, attachUserData);
        d(CrashType.ANR, attachUserData);
        d(CrashType.DART, attachUserData);
    }

    final void b(CrashType crashType, AttachUserData attachUserData) {
        if (crashType != CrashType.ALL) {
            f(crashType, attachUserData);
            return;
        }
        f(CrashType.LAUNCH, attachUserData);
        f(CrashType.JAVA, attachUserData);
        f(CrashType.CUSTOM_JAVA, attachUserData);
        f(CrashType.NATIVE, attachUserData);
        f(CrashType.ANR, attachUserData);
        f(CrashType.DART, attachUserData);
    }
}
