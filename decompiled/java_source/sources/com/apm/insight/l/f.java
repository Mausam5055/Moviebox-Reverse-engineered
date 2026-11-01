package com.apm.insight.l;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apm.insight.CrashType;
import com.apm.insight.entity.Header;
import com.apm.insight.nativecrash.NativeImpl;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f19667a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f19668b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private JSONObject f19669c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private byte[] f19670d;

    public f(int i11) {
        this.f19667a = i11;
    }

    public f(int i11, Throwable th2) {
        this.f19667a = i11;
        this.f19668b = th2.getMessage();
    }

    public f(String str) {
        this.f19667a = Sdk$SDKError.Reason.AD_ALREADY_FAILED_VALUE;
        this.f19668b = str;
    }

    public f(JSONObject jSONObject) {
        this.f19667a = 0;
        this.f19669c = jSONObject;
    }

    public f(byte[] bArr) {
        this.f19667a = Sdk$SDKError.Reason.AD_ALREADY_LOADED_VALUE;
        this.f19670d = bArr;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0023  */
    private static com.apm.insight.entity.a a(File file, boolean z10) {
        String strA;
        String str;
        String str2;
        com.apm.insight.entity.a aVar = new com.apm.insight.entity.a();
        String string = "InvalidStack.NoStackAvailable: Catch a crash not OOM without stack.\n";
        if (file.exists()) {
            try {
                strA = a(file.getAbsolutePath(), "\n");
            } catch (IOException unused) {
                strA = null;
            }
            if (TextUtils.isEmpty(strA)) {
                if (z10) {
                    string = "InvalidStack.NoStackAvailable: Catch a OOM Exception without stack.\n";
                }
                str2 = null;
                str = null;
            } else {
                String[] strArrSplit = strA.split("\n");
                ArrayList arrayList = new ArrayList();
                StringBuilder sb2 = new StringBuilder();
                StringBuilder sb3 = new StringBuilder();
                boolean z11 = false;
                boolean z12 = false;
                for (String str3 : strArrSplit) {
                    if (!z11 && str3.startsWith("stack:")) {
                        z11 = true;
                    } else if (!z12 && str3.startsWith("err:")) {
                        z12 = true;
                    } else if (z12) {
                        sb3.append(str3);
                        sb3.append("\n");
                    } else if (z11) {
                        sb2.append(str3);
                        sb2.append("\n");
                    } else {
                        arrayList.add(str3);
                    }
                }
                String str4 = arrayList.size() > 0 ? (String) arrayList.get(0) : null;
                String str5 = arrayList.size() >= 2 ? (String) arrayList.get(1) : null;
                String str6 = arrayList.size() >= 3 ? (String) arrayList.get(2) : null;
                String str7 = arrayList.size() >= 4 ? (String) arrayList.get(3) : null;
                if (z11 && sb2.length() > 0) {
                    string = sb2.toString();
                } else if (str6 != null) {
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append(str6);
                    sb4.append("\nCaused by: ");
                    sb4.append(z10 ? "InvalidStack.NoStackAvailable: Catch a OOM Exception without stack.\n" : "InvalidStack.NoStackAvailable: Catch a crash not OOM without stack.\n");
                    string = sb4.toString();
                } else if (str5 != null) {
                    StringBuilder sb5 = new StringBuilder();
                    sb5.append(str5);
                    sb5.append("\nCaused by: ");
                    sb5.append(z10 ? "InvalidStack.NoStackAvailable: Catch a OOM Exception without stack.\n" : "InvalidStack.NoStackAvailable: Catch a crash not OOM without stack.\n");
                    string = sb5.toString();
                } else if (z10) {
                    string = "InvalidStack.NoStackAvailable: Catch a OOM Exception without stack.\n";
                }
                if (z12 && sb3.length() > 0) {
                    string = string + "\nCaused by: InvalidStack.CrashWhenWriteStack: Npth error when dumpping the stack:\n" + ((Object) sb3);
                }
                str = str4;
                str2 = str7;
            }
        } else {
            if (z10) {
                string = "InvalidStack.NoStackAvailable: Catch a OOM Exception without stack.\n";
            }
            str2 = null;
            str = null;
        }
        aVar.a("data", (Object) string);
        aVar.a("process_name", (Object) str);
        aVar.a("crash_thread_name", (Object) str2);
        aVar.a("isOOM", Boolean.valueOf(z10));
        return aVar;
    }

    public static com.apm.insight.f.b a(File file, CrashType crashType) {
        com.apm.insight.entity.a aVarF = f(file);
        String name = file.getName();
        String strSubstring = name.substring(name.lastIndexOf(95) + 1);
        JSONObject jSONObjectOptJSONObject = aVarF.c().optJSONObject("header");
        if (jSONObjectOptJSONObject.optString("unique_key", null) == null) {
            try {
                jSONObjectOptJSONObject.put("unique_key", "android_" + com.apm.insight.e.c().a() + "_" + strSubstring + "_" + CrashType.LAUNCH);
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
        com.apm.insight.f.b bVar = new com.apm.insight.f.b();
        bVar.a(crashType == CrashType.LAUNCH ? com.apm.insight.k.e.e() : com.apm.insight.k.e.c());
        bVar.a(aVarF.c());
        bVar.a(com.apm.insight.k.e.a());
        return bVar;
    }

    public static String a(File file, String str) throws IOException {
        return b(file, str);
    }

    public static String a(File file, String str, String str2, JSONObject jSONObject, boolean z10) {
        return b(file, str, str2, jSONObject, z10);
    }

    public static String a(String str, String str2) throws IOException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return b(new File(str), str2);
    }

    public static JSONArray a(@NonNull File file, long j11) throws Throwable {
        JSONArray jSONArray = new JSONArray();
        BufferedReader bufferedReader = null;
        try {
            BufferedReader bufferedReader2 = new BufferedReader(new FileReader(file));
            if (j11 > 0) {
                try {
                    bufferedReader2.skip(j11);
                    bufferedReader2.readLine();
                } catch (Throwable th2) {
                    th = th2;
                    bufferedReader = bufferedReader2;
                    com.apm.insight.a.a((Closeable) bufferedReader);
                    throw th;
                }
            }
            while (true) {
                String line = bufferedReader2.readLine();
                if (line == null) {
                    com.apm.insight.a.a((Closeable) bufferedReader2);
                    return jSONArray;
                }
                jSONArray.put(line);
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static JSONArray a(String str) throws IOException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return a(new File(str), -1L);
    }

    public static void a(File file, File file2) throws Throwable {
        FileOutputStream fileOutputStream;
        if (file2 == null) {
            return;
        }
        FileInputStream fileInputStream = null;
        try {
            file2.getParentFile().mkdirs();
            FileInputStream fileInputStream2 = new FileInputStream(file);
            try {
                fileOutputStream = new FileOutputStream(file2);
                try {
                    byte[] bArr = new byte[8192];
                    while (true) {
                        int i11 = fileInputStream2.read(bArr);
                        if (i11 <= 0) {
                            break;
                        } else {
                            fileOutputStream.write(bArr, 0, i11);
                        }
                    }
                    com.apm.insight.a.a((Closeable) fileInputStream2);
                } catch (Exception e11) {
                    e = e11;
                    fileInputStream = fileInputStream2;
                    try {
                        e.printStackTrace();
                        com.apm.insight.a.a((Closeable) fileInputStream);
                    } catch (Throwable th2) {
                        th = th2;
                        com.apm.insight.a.a((Closeable) fileInputStream);
                        com.apm.insight.a.a((Closeable) fileOutputStream);
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    fileInputStream = fileInputStream2;
                    com.apm.insight.a.a((Closeable) fileInputStream);
                    com.apm.insight.a.a((Closeable) fileOutputStream);
                    throw th;
                }
            } catch (Exception e12) {
                e = e12;
                fileOutputStream = null;
            } catch (Throwable th4) {
                th = th4;
                fileOutputStream = null;
            }
        } catch (Exception e13) {
            e = e13;
            fileOutputStream = null;
        } catch (Throwable th5) {
            th = th5;
            fileOutputStream = null;
        }
        com.apm.insight.a.a((Closeable) fileOutputStream);
    }

    public static void a(@NonNull File file, @NonNull String str, boolean z10) throws Throwable {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        file.getParentFile().mkdirs();
        FileOutputStream fileOutputStream = null;
        try {
            FileOutputStream fileOutputStream2 = new FileOutputStream(file, z10);
            try {
                fileOutputStream2.write(str.getBytes());
                fileOutputStream2.flush();
                com.apm.insight.a.a((Closeable) fileOutputStream2);
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream = fileOutputStream2;
                com.apm.insight.a.a((Closeable) fileOutputStream);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Nullable
    public static void a(File file, Map<String, String> map) throws Throwable {
        if (map == null || map.isEmpty()) {
            return;
        }
        FileOutputStream fileOutputStream = null;
        try {
            try {
                Properties properties = new Properties();
                FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                try {
                    for (Map.Entry<String, String> entry : map.entrySet()) {
                        properties.setProperty(entry.getKey(), entry.getValue());
                    }
                    properties.store(fileOutputStream2, "no");
                    com.apm.insight.a.a((Closeable) fileOutputStream2);
                } catch (IOException e11) {
                    e = e11;
                    fileOutputStream = fileOutputStream2;
                    com.apm.insight.a.b((Throwable) e);
                    com.apm.insight.a.a((Closeable) fileOutputStream);
                } catch (Throwable th2) {
                    th = th2;
                    fileOutputStream = fileOutputStream2;
                    com.apm.insight.a.a((Closeable) fileOutputStream);
                    throw th;
                }
            } catch (IOException e12) {
                e = e12;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static void a(@NonNull File file, @NonNull JSONArray jSONArray) throws IOException {
        BufferedWriter bufferedWriter;
        if (jSONArray == null) {
            return;
        }
        file.getParentFile().mkdirs();
        try {
            bufferedWriter = new BufferedWriter(new FileWriter(file));
            try {
                h.a(jSONArray, bufferedWriter);
                com.apm.insight.a.a((Closeable) bufferedWriter);
            } catch (Throwable unused) {
                com.apm.insight.a.a((Closeable) bufferedWriter);
            }
        } catch (Throwable unused2) {
            bufferedWriter = null;
        }
    }

    public static void a(@NonNull File file, @NonNull JSONObject jSONObject) throws IOException {
        BufferedWriter bufferedWriter;
        if (jSONObject == null) {
            return;
        }
        file.getParentFile().mkdirs();
        try {
            bufferedWriter = new BufferedWriter(new FileWriter(file));
            try {
                h.a(jSONObject, bufferedWriter);
                com.apm.insight.a.a((Closeable) bufferedWriter);
            } catch (Throwable unused) {
                com.apm.insight.a.a((Closeable) bufferedWriter);
            }
        } catch (Throwable unused2) {
            bufferedWriter = null;
        }
    }

    public static void a(OutputStream outputStream, File... fileArr) throws Throwable {
        ZipOutputStream zipOutputStream = null;
        try {
            ZipOutputStream zipOutputStream2 = new ZipOutputStream(outputStream);
            try {
                zipOutputStream2.putNextEntry(new ZipEntry("/"));
                for (File file : fileArr) {
                    a(zipOutputStream2, file);
                }
                com.apm.insight.a.a((Closeable) zipOutputStream2);
            } catch (Throwable th2) {
                th = th2;
                zipOutputStream = zipOutputStream2;
                com.apm.insight.a.a((Closeable) zipOutputStream);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private static void a(ZipOutputStream zipOutputStream, File file) throws Throwable {
        if (file == null || !file.exists()) {
            return;
        }
        File[] fileArrListFiles = file.isDirectory() ? file.listFiles() : new File[]{file};
        if (fileArrListFiles == null) {
            return;
        }
        for (File file2 : fileArrListFiles) {
            a(zipOutputStream, file2, file2.getName());
        }
    }

    private static void a(ZipOutputStream zipOutputStream, File file, String str) throws Throwable {
        if (file == null || !file.exists()) {
            return;
        }
        if (file.isDirectory()) {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null) {
                return;
            }
            zipOutputStream.putNextEntry(new ZipEntry(str + "/"));
            String str2 = str.length() == 0 ? "" : str + "/";
            for (int i11 = 0; i11 < fileArrListFiles.length; i11++) {
                a(zipOutputStream, fileArrListFiles[i11], str2 + fileArrListFiles[i11].getName());
            }
            return;
        }
        zipOutputStream.putNextEntry(new ZipEntry(str));
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(file);
            try {
                byte[] bArr = new byte[4096];
                while (true) {
                    int i12 = fileInputStream2.read(bArr);
                    if (-1 == i12) {
                        com.apm.insight.a.a((Closeable) fileInputStream2);
                        return;
                    }
                    zipOutputStream.write(bArr, 0, i12);
                }
            } catch (Throwable th2) {
                th = th2;
                fileInputStream = fileInputStream2;
                com.apm.insight.a.a((Closeable) fileInputStream);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static boolean a(@NonNull File file) {
        boolean zA;
        boolean z10 = true;
        if (!file.exists()) {
            return true;
        }
        if (!file.canWrite()) {
            return false;
        }
        if (file.isFile()) {
            return file.delete();
        }
        if (!file.isDirectory()) {
            return true;
        }
        File[] fileArrListFiles = file.listFiles();
        for (int i11 = 0; fileArrListFiles != null && i11 < fileArrListFiles.length; i11++) {
            if (fileArrListFiles[i11].isFile()) {
                if (fileArrListFiles[i11].canWrite()) {
                    zA = fileArrListFiles[i11].delete();
                } else {
                    z10 = false;
                }
            } else {
                zA = a(fileArrListFiles[i11]);
            }
            z10 &= zA;
        }
        return z10 & file.delete();
    }

    public static com.apm.insight.f.b b(String str) {
        try {
            String strA = a(str, "\n");
            if (strA == null) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(strA);
            com.apm.insight.f.b bVar = new com.apm.insight.f.b();
            bVar.a(jSONObject.optString("url"));
            bVar.a(jSONObject.optJSONObject(TtmlNode.TAG_BODY));
            bVar.b(jSONObject.optString("dump_file"));
            bVar.a(jSONObject.optBoolean("encrypt", false));
            return bVar;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static String b(File file, String str) throws Throwable {
        StringBuilder sb2 = new StringBuilder();
        BufferedReader bufferedReader = null;
        try {
            BufferedReader bufferedReader2 = new BufferedReader(new FileReader(file));
            while (true) {
                try {
                    String line = bufferedReader2.readLine();
                    if (line == null) {
                        com.apm.insight.a.a((Closeable) bufferedReader2);
                        return sb2.toString();
                    }
                    if (sb2.length() != 0 && str != null) {
                        sb2.append(str);
                    }
                    sb2.append(line);
                } catch (Throwable th2) {
                    th = th2;
                    bufferedReader = bufferedReader2;
                    com.apm.insight.a.a((Closeable) bufferedReader);
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private static String b(File file, String str, String str2, JSONObject jSONObject, boolean z10) {
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(file, str);
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("url", str2);
            jSONObject2.put(TtmlNode.TAG_BODY, jSONObject);
            jSONObject2.put("dump_file", "");
            jSONObject2.put("encrypt", z10);
            a(file2, jSONObject2);
        } catch (IOException e11) {
            e11.printStackTrace();
        } catch (JSONException e12) {
            e12.printStackTrace();
        }
        return file2.getAbsolutePath();
    }

    public static void b(String str, String str2) throws Exception {
        ZipOutputStream zipOutputStream;
        Throwable th2;
        File file = new File(str);
        try {
            new File(str2).getParentFile().mkdirs();
            zipOutputStream = new ZipOutputStream(new FileOutputStream(str2));
            try {
                a(zipOutputStream, file, "");
                com.apm.insight.a.a((Closeable) zipOutputStream);
            } catch (Throwable th3) {
                th2 = th3;
                com.apm.insight.a.a((Closeable) zipOutputStream);
                throw th2;
            }
        } catch (Throwable th4) {
            zipOutputStream = null;
            th2 = th4;
        }
    }

    public static boolean b(File file) {
        String[] list = file.list();
        return list == null || list.length == 0;
    }

    public static com.apm.insight.f.b c(String str) {
        try {
            JSONObject jSONObject = new JSONObject(a(str, "\n"));
            com.apm.insight.f.b bVar = new com.apm.insight.f.b();
            bVar.d(jSONObject.optString("aid"));
            bVar.c(jSONObject.optString("did"));
            bVar.e(jSONObject.optString("processName"));
            ArrayList arrayList = new ArrayList();
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("alogFiles");
            if (jSONArrayOptJSONArray != null) {
                for (int i11 = 0; i11 < jSONArrayOptJSONArray.length(); i11++) {
                    arrayList.add(jSONArrayOptJSONArray.getString(i11));
                }
                bVar.a(arrayList);
            }
            return bVar;
        } catch (IOException e11) {
            e11.printStackTrace();
            return null;
        } catch (JSONException e12) {
            e12.printStackTrace();
            return null;
        }
    }

    @Nullable
    public static Map<String, String> c(File file) throws Throwable {
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2 = null;
        try {
            Properties properties = new Properties();
            fileInputStream = new FileInputStream(file);
            try {
                try {
                    properties.load(fileInputStream);
                    Set<String> setStringPropertyNames = properties.stringPropertyNames();
                    HashMap map = new HashMap();
                    for (String str : setStringPropertyNames) {
                        map.put(str, properties.getProperty(str));
                    }
                    com.apm.insight.a.a((Closeable) fileInputStream);
                    return map;
                } catch (IOException e11) {
                    e = e11;
                    com.apm.insight.a.b((Throwable) e);
                    com.apm.insight.a.a((Closeable) fileInputStream);
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                fileInputStream2 = fileInputStream;
                com.apm.insight.a.a((Closeable) fileInputStream2);
                throw th;
            }
        } catch (IOException e12) {
            e = e12;
            fileInputStream = null;
        } catch (Throwable th3) {
            th = th3;
            com.apm.insight.a.a((Closeable) fileInputStream2);
            throw th;
        }
    }

    public static void d(File file) {
        File file2 = new File(file, "lock");
        try {
            file2.createNewFile();
            NativeImpl.c(file2.getAbsolutePath());
        } catch (Throwable th2) {
            com.apm.insight.c.a();
            com.apm.insight.runtime.j.a(th2, "NPTH_CATCH");
        }
    }

    public static boolean e(File file) {
        if (!file.isFile()) {
            file = new File(file, "lock");
        }
        if (!file.exists()) {
            return false;
        }
        try {
            int iC = NativeImpl.c(file.getAbsolutePath());
            if (iC > 0) {
                NativeImpl.a(iC);
                return false;
            }
            if (iC < 0) {
                return true;
            }
        } catch (Throwable th2) {
            com.apm.insight.c.a();
            com.apm.insight.runtime.j.a(th2, "NPTH_CATCH");
        }
        return false;
    }

    private static com.apm.insight.entity.a f(File file) {
        com.apm.insight.entity.a aVarA = a(new File(file, "logEventStack"), file.getName().contains("oom"));
        boolean z10 = false;
        for (int i11 = 0; i11 < 6; i11++) {
            File fileA = j.a(file, ".".concat(String.valueOf(i11)));
            if (fileA.exists()) {
                try {
                    aVarA.c(new JSONObject(a(fileA.getAbsolutePath(), "\n")));
                    z10 = true;
                } catch (Throwable unused) {
                }
            }
        }
        aVarA.a("crash_type", z10 ? "step" : "simple");
        JSONObject jSONObjectOptJSONObject = aVarA.c().optJSONObject("header");
        com.apm.insight.e.g();
        JSONObject jSONObjectF = Header.a(aVarA.c().optLong("crash_time", 0L)).f();
        if (jSONObjectOptJSONObject == null) {
            aVarA.a(jSONObjectF);
        } else {
            com.apm.insight.a.a(jSONObjectOptJSONObject, jSONObjectF);
        }
        return aVarA;
    }

    public final boolean a() {
        return this.f19667a != 207;
    }

    @Nullable
    public final byte[] b() {
        return this.f19670d;
    }
}
