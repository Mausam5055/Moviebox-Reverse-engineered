package com.apm.insight.nativecrash;

import android.content.Context;
import android.os.Environment;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.apm.insight.CrashType;
import com.apm.insight.ICrashFilter;
import com.apm.insight.entity.Header;
import com.apm.insight.l.h;
import com.apm.insight.l.m;
import com.apm.insight.l.n;
import com.apm.insight.runtime.j;
import com.apm.insight.runtime.o;
import com.google.android.libraries.places.api.model.PlaceTypes;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Boolean f19696d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f19697a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private JSONObject f19698b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private b f19699c;

    /* JADX INFO: renamed from: com.apm.insight.nativecrash.a$a, reason: collision with other inner class name */
    static class C0180a {
        /* JADX INFO: Access modifiers changed from: private */
        public static String b(File file) {
            BufferedReader bufferedReader = null;
            try {
                BufferedReader bufferedReader2 = new BufferedReader(new FileReader(file));
                try {
                    String line = bufferedReader2.readLine();
                    if (line == null) {
                        com.apm.insight.a.a((Closeable) bufferedReader2);
                        return "";
                    }
                    if (line.startsWith("[FATAL:jni_android.cc") && line.contains("Please include Java exception stack in crash report ttwebview:")) {
                        StringBuilder sb2 = new StringBuilder();
                        int iIndexOf = line.indexOf(" ttwebview:");
                        sb2.append("Caused by: ");
                        sb2.append("Please include Java exception stack in crash report");
                        sb2.append("\n");
                        sb2.append(line.substring(iIndexOf + 11));
                        sb2.append("\n");
                        while (true) {
                            String line2 = bufferedReader2.readLine();
                            if (line2 == null) {
                                String string = sb2.toString();
                                com.apm.insight.a.a((Closeable) bufferedReader2);
                                return string;
                            }
                            sb2.append(line2);
                            sb2.append("\n");
                        }
                    } else {
                        com.apm.insight.a.a((Closeable) bufferedReader2);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    bufferedReader = bufferedReader2;
                    try {
                        com.apm.insight.c.a();
                        j.a(th, "NPTH_CATCH");
                    } finally {
                        com.apm.insight.a.a((Closeable) bufferedReader);
                    }
                }
            } catch (Throwable th3) {
                th = th3;
            }
            return "";
        }
    }

    class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final com.apm.insight.nativecrash.c f19700a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final com.apm.insight.h.b f19701b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final File f19702c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final File f19703d;

        public b(File file) {
            this.f19702c = file;
            this.f19703d = com.apm.insight.l.j.a(com.apm.insight.e.g(), file.getName());
            com.apm.insight.h.b bVar = new com.apm.insight.h.b(file);
            this.f19701b = bVar;
            com.apm.insight.nativecrash.c cVar = new com.apm.insight.nativecrash.c(file);
            this.f19700a = cVar;
            if (bVar.d() && cVar.a() == null) {
                cVar.a(file);
            }
        }

        /* JADX WARN: Code duplicated, block: B:11:0x001c A[Catch: all -> 0x0017, TRY_LEAVE, TryCatch #0 {all -> 0x0017, blocks: (B:4:0x0008, B:6:0x000e, B:11:0x001c), top: B:16:0x0008 }] */
        /* JADX WARN: Code duplicated, block: B:9:0x0019  */
        public final long a() {
            String str;
            Map<String, String> mapF = this.f19701b.f();
            if (mapF != null) {
                try {
                    if (mapF.isEmpty()) {
                        str = null;
                    } else {
                        str = mapF.get("start_time");
                    }
                    if (str != null) {
                        return Long.parseLong(str);
                    }
                } catch (Throwable th2) {
                    com.apm.insight.c.a();
                    j.a(th2, "NPTH_CATCH");
                }
            } else {
                str = null;
                if (str != null) {
                    return Long.parseLong(str);
                }
            }
            return System.currentTimeMillis();
        }

        public final File b() {
            return this.f19702c;
        }

        public final boolean c() {
            return this.f19701b.d();
        }
    }

    public class c extends e {
        c() {
            super();
            this.f19708b = "Total FD Count:";
            this.f19707a = com.apm.insight.l.j.i(a.this.f19699c.b());
            this.f19709c = ":";
            this.f19710d = -2;
        }
    }

    public class d extends e {
        d() {
            super();
            this.f19708b = "VmSize:";
            this.f19707a = com.apm.insight.l.j.k(a.this.f19699c.b());
            this.f19709c = "\\s+";
            this.f19710d = -1;
        }
    }

    public class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected File f19707a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        protected String f19708b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        protected String f19709c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        protected int f19710d;

        public e() {
        }

        private int a(String str) {
            int i11 = this.f19710d;
            if (!str.startsWith(this.f19708b)) {
                return i11;
            }
            try {
                i11 = Integer.parseInt(str.split(this.f19709c)[1].trim());
            } catch (NumberFormatException e11) {
                com.apm.insight.c.a();
                j.a(e11, "NPTH_CATCH");
            }
            if (i11 < 0) {
                return -2;
            }
            return i11;
        }

        public final int a() {
            int i11;
            Throwable th2;
            if (!this.f19707a.exists() || !this.f19707a.isFile()) {
                return -1;
            }
            BufferedReader bufferedReader = null;
            try {
                BufferedReader bufferedReader2 = new BufferedReader(new FileReader(this.f19707a));
                int iA = -1;
                do {
                    try {
                        String line = bufferedReader2.readLine();
                        if (line == null) {
                            break;
                        }
                        iA = a(line);
                    } catch (Throwable th3) {
                        th2 = th3;
                        i11 = iA;
                        bufferedReader = bufferedReader2;
                        try {
                            com.apm.insight.c.a();
                            j.a(th2, "NPTH_CATCH");
                            return i11;
                        } finally {
                            if (bufferedReader != null) {
                                com.apm.insight.a.a((Closeable) bufferedReader);
                            }
                        }
                    }
                } while (iA == -1);
                com.apm.insight.a.a((Closeable) bufferedReader2);
                return iA;
            } catch (Throwable th4) {
                i11 = -1;
                th2 = th4;
            }
        }
    }

    public class f extends e {
        f() {
            super();
            this.f19708b = "Total Threads Count:";
            this.f19707a = com.apm.insight.l.j.j(a.this.f19699c.b());
            this.f19709c = ":";
            this.f19710d = -2;
        }
    }

    public a(Context context) {
        this.f19697a = context;
    }

    private static String a(String str) {
        StringBuilder sb2 = new StringBuilder();
        try {
            if (str.length() < 16) {
                sb2.append(str);
            } else {
                sb2.append(str.charAt(6));
                sb2.append(str.charAt(7));
                sb2.append(str.charAt(4));
                sb2.append(str.charAt(5));
                sb2.append(str.charAt(2));
                sb2.append(str.charAt(3));
                sb2.append(str.charAt(0));
                sb2.append(str.charAt(1));
                sb2.append(str.charAt(10));
                sb2.append(str.charAt(11));
                sb2.append(str.charAt(8));
                sb2.append(str.charAt(9));
                sb2.append(str.charAt(14));
                sb2.append(str.charAt(15));
                sb2.append(str.charAt(12));
                sb2.append(str.charAt(13));
                if (str.length() >= 32) {
                    sb2.append((CharSequence) str, 16, 32);
                    sb2.append('0');
                }
            }
        } catch (Throwable th2) {
            com.apm.insight.c.a();
            j.a(th2, "NPTH_CATCH");
        }
        return sb2.toString().toUpperCase();
    }

    private void a(com.apm.insight.entity.a aVar) {
        File fileA = com.apm.insight.l.j.a(this.f19699c.b());
        if (fileA.exists()) {
            try {
                String strA = com.apm.insight.l.f.a(fileA.getAbsolutePath(), "\n");
                JSONArray jSONArray = new JSONArray();
                if (strA != null) {
                    for (String str : strA.split("\n")) {
                        jSONArray.put(str);
                    }
                }
                aVar.a("native_log", (Object) jSONArray);
            } catch (Throwable th2) {
                com.apm.insight.c.a();
                j.a(th2, "NPTH_CATCH");
            }
        }
    }

    private void b(com.apm.insight.entity.a aVar) {
        BufferedReader bufferedReader;
        File fileH = com.apm.insight.l.j.h(this.f19699c.b());
        if (!fileH.exists()) {
            NativeImpl.a(fileH.getAbsolutePath(), String.valueOf(com.apm.insight.e.i().getLogcatDumpCount()), String.valueOf(com.apm.insight.e.i().getLogcatLevel()));
        }
        JSONArray jSONArray = new JSONArray();
        String str = " " + this.f19699c.f19701b.f().get("pid") + " ";
        try {
            bufferedReader = new BufferedReader(new FileReader(fileH));
            try {
                if (fileH.length() > 512000) {
                    bufferedReader.skip(fileH.length() - 512000);
                }
                while (true) {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    }
                    if ((line.length() > 32 ? line.substring(0, 31) : line).contains(str)) {
                        jSONArray.put(line);
                    }
                }
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
            bufferedReader = null;
        }
        com.apm.insight.a.a((Closeable) bufferedReader);
        aVar.a("logcat", (Object) jSONArray);
    }

    public static long g() {
        if (NativeImpl.f()) {
            return Long.MAX_VALUE;
        }
        return Header.a() ? 3891200L : 2867200L;
    }

    public static boolean k() {
        Boolean bool = f19696d;
        if (bool != null) {
            return bool.booleanValue();
        }
        String[] strArr = {"/data/local/su", "/data/local/bin/su", "/data/local/xbin/su", "/system/xbin/su", "/system/bin/su", "/system/bin/.ext/su", "/system/bin/failsafe/su", "/system/sd/xbin/su", "/system/usr/we-need-root/su", "/sbin/su", "/su/bin/su"};
        for (int i11 = 0; i11 < 11; i11++) {
            try {
                if (new File(strArr[i11]).exists()) {
                    f19696d = Boolean.TRUE;
                    return true;
                }
                continue;
            } catch (Throwable th2) {
                com.apm.insight.c.a();
                j.a(th2, "NPTH_CATCH");
            }
        }
        f19696d = Boolean.FALSE;
        return false;
    }

    @Nullable
    private String l() {
        b bVar = this.f19699c;
        if (bVar == null) {
            return null;
        }
        String strC = bVar.f19700a.c();
        return (strC == null || strC.isEmpty()) ? this.f19699c.f19701b.e() : strC;
    }

    public final void a(File file) {
        this.f19699c = new b(file);
    }

    public final boolean a() {
        b bVar = this.f19699c;
        if (bVar != null) {
            return bVar.c();
        }
        return false;
    }

    public final JSONObject b() {
        File fileF = com.apm.insight.l.j.f(this.f19699c.b());
        if (!fileF.exists()) {
            return null;
        }
        try {
            String strA = com.apm.insight.l.f.a(fileF.getAbsolutePath(), "\n");
            if (strA != null && !strA.isEmpty()) {
                return new JSONObject(strA);
            }
        } catch (Throwable th2) {
            com.apm.insight.c.a();
            j.a(th2, "NPTH_CATCH");
        }
        return null;
    }

    public final void c() {
        BufferedWriter bufferedWriter;
        Throwable th2;
        try {
            File fileE = com.apm.insight.l.j.e(this.f19699c.b());
            File file = new File(fileE.getAbsolutePath() + ".tmp'");
            if (file.exists()) {
                file.delete();
            }
            int i11 = 0;
            if (fileE.exists()) {
                while (i11 < NativeCrashCollector.a()) {
                    File file2 = new File(fileE.getAbsolutePath() + '.' + i11);
                    if (file2.exists()) {
                        file2.delete();
                    }
                    i11++;
                }
                return;
            }
            com.apm.insight.entity.a aVar = new com.apm.insight.entity.a();
            for (int i12 = 0; i12 < NativeCrashCollector.a(); i12++) {
                File file3 = new File(fileE.getAbsolutePath() + '.' + i12);
                if (file3.exists()) {
                    try {
                        String strA = com.apm.insight.l.f.a(file3.getAbsolutePath(), "\n");
                        if (!TextUtils.isEmpty(strA)) {
                            JSONObject jSONObject = new JSONObject(strA);
                            if (jSONObject.length() > 0) {
                                aVar.c(jSONObject);
                            }
                        }
                    } catch (JSONException e11) {
                        com.apm.insight.c.a();
                        j.a(e11, "NPTH_CATCH");
                    }
                }
            }
            JSONObject jSONObjectC = aVar.c();
            try {
                if (jSONObjectC.length() != 0 && jSONObjectC.opt(PlaceTypes.STORAGE) == null) {
                    com.apm.insight.e.g();
                    com.apm.insight.entity.a.a(jSONObjectC, n.a());
                }
            } catch (Throwable unused) {
            }
            if (jSONObjectC.length() != 0) {
                this.f19698b = jSONObjectC;
                file.getParentFile().mkdirs();
                try {
                    bufferedWriter = new BufferedWriter(new FileWriter(file));
                    try {
                        h.a(jSONObjectC, bufferedWriter);
                    } catch (Throwable th3) {
                        th2 = th3;
                        try {
                            try {
                                jSONObjectC.put("err_write", th2.toString());
                                com.apm.insight.entity.a.a(jSONObjectC, "filters", "err_write", th2.getLocalizedMessage());
                            } catch (Throwable th4) {
                                com.apm.insight.a.a((Closeable) bufferedWriter);
                                throw th4;
                            }
                        } catch (JSONException unused2) {
                        }
                        com.apm.insight.c.a();
                        j.a(th2, "NPTH_CATCH");
                    }
                } catch (Throwable th5) {
                    bufferedWriter = null;
                    th2 = th5;
                }
                com.apm.insight.a.a((Closeable) bufferedWriter);
                if (file.renameTo(fileE)) {
                    while (i11 < NativeCrashCollector.a()) {
                        File file4 = new File(fileE.getAbsolutePath() + '.' + i11);
                        if (file4.exists()) {
                            file4.delete();
                        }
                        i11++;
                    }
                }
            }
        } catch (IOException e12) {
            com.apm.insight.c.a();
            j.a(e12, "NPTH_CATCH");
        }
    }

    public final boolean d() {
        ICrashFilter iCrashFilterB = com.apm.insight.e.b().b();
        if (iCrashFilterB == null) {
            return true;
        }
        try {
            return iCrashFilterB.onNativeCrashFilter(l(), "");
        } catch (Throwable th2) {
            com.apm.insight.c.a();
            j.a(th2, "NPTH_CATCH");
            return true;
        }
    }

    public final boolean e() {
        return com.apm.insight.e.a.a().a(com.apm.insight.l.j.f(this.f19699c.b()).getAbsolutePath());
    }

    public final void f() {
        com.apm.insight.e.a.a().a(com.apm.insight.d.a.b(com.apm.insight.l.j.f(this.f19699c.b()).getAbsolutePath()));
    }

    public final JSONObject h() {
        try {
            com.apm.insight.entity.a aVar = new com.apm.insight.entity.a();
            Header header = new Header(this.f19697a);
            JSONObject jSONObjectA = o.a().a(this.f19699c.a());
            if (jSONObjectA != null) {
                header.a(jSONObjectA);
                header.d();
                header.e();
            }
            Header.b(header);
            aVar.a(header);
            boolean z10 = true;
            aVar.a("is_native_crash", (Object) 1);
            aVar.a("repack_time", Long.valueOf(System.currentTimeMillis()));
            aVar.a("crash_uuid", this.f19699c.b().getName());
            b bVar = this.f19699c;
            Map<String, String> mapF = bVar != null ? bVar.f19701b.f() : null;
            if (mapF != null) {
                Object obj = (String) mapF.get("process_name");
                if (obj != null) {
                    aVar.a("process_name", obj);
                }
                String str = mapF.get("start_time");
                if (str != null) {
                    try {
                        aVar.a(Long.decode(str).longValue());
                    } catch (Throwable th2) {
                        com.apm.insight.c.a();
                        j.a(th2, "NPTH_CATCH");
                    }
                }
                String str2 = mapF.get("pid");
                if (str2 != null) {
                    try {
                        aVar.a("pid", Long.decode(str2));
                    } catch (Throwable th3) {
                        com.apm.insight.c.a();
                        j.a(th3, "NPTH_CATCH");
                    }
                }
                Object obj2 = (String) mapF.get("crash_thread_name");
                if (obj2 != null) {
                    aVar.a("crash_thread_name", obj2);
                }
                String str3 = mapF.get("crash_time");
                if (str3 != null) {
                    try {
                        aVar.a("crash_time", Long.decode(str3));
                    } catch (Throwable th4) {
                        com.apm.insight.c.a();
                        j.a(th4, "NPTH_CATCH");
                    }
                }
                aVar.a("data", l());
            }
            Map<String, String> mapB = this.f19699c.f19700a.b();
            if (!mapB.isEmpty()) {
                JSONArray jSONArray = new JSONArray();
                for (String str4 : mapB.keySet()) {
                    String strA = a(mapB.get(str4));
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("lib_name", str4);
                        jSONObject.put("lib_uuid", strA);
                        jSONArray.put(jSONObject);
                    } catch (JSONException e11) {
                        com.apm.insight.c.a();
                        j.a(e11, "NPTH_CATCH");
                    }
                }
                aVar.a("crash_lib_uuid", (Object) jSONArray);
            }
            File fileE = com.apm.insight.l.j.e(this.f19699c.b());
            if (fileE.exists() || this.f19698b != null) {
                try {
                    JSONObject jSONObject2 = this.f19698b;
                    if (jSONObject2 == null) {
                        jSONObject2 = new JSONObject(com.apm.insight.l.f.a(fileE.getAbsolutePath(), "\n"));
                    }
                    aVar.c(jSONObject2);
                    aVar.a("has_callback", "true");
                    if (aVar.c().opt(PlaceTypes.STORAGE) == null) {
                        com.apm.insight.e.g();
                        aVar.b(n.a());
                    }
                    com.apm.insight.a.a(aVar, aVar.d(), CrashType.NATIVE);
                } catch (Throwable th5) {
                    com.apm.insight.c.a();
                    j.a(th5, "NPTH_CATCH");
                }
                long j11 = -1;
                long jOptLong = aVar.c().optLong("crash_time", -1L);
                long jOptLong2 = aVar.c().optLong("java_end", -1L);
                if (jOptLong2 != -1 && jOptLong != -1) {
                    j11 = jOptLong2 - jOptLong;
                }
                try {
                    aVar.b("total_cost", String.valueOf(j11));
                    aVar.a("total_cost", String.valueOf(j11 / 1000));
                } catch (Throwable unused) {
                }
            } else {
                com.apm.insight.e.g();
                aVar.b(n.a());
                aVar.a("has_callback", "false");
            }
            File fileG = com.apm.insight.l.j.g(this.f19699c.b());
            String strA2 = "";
            if (fileG.exists()) {
                try {
                    strA2 = m.a(fileG.getAbsolutePath());
                } catch (Throwable th6) {
                    com.apm.insight.c.a();
                    j.a(th6, "NPTH_CATCH");
                }
            }
            File fileO = com.apm.insight.l.j.o(this.f19699c.b());
            if (fileO.exists()) {
                String strB = C0180a.b(fileO);
                strA2 = strA2.isEmpty() ? strB : strA2 + "\n" + strB;
            }
            try {
                if (!strA2.isEmpty()) {
                    aVar.a("java_data", (Object) strA2);
                }
            } catch (Throwable th7) {
                com.apm.insight.c.a();
                j.a(th7, "NPTH_CATCH");
            }
            b(aVar);
            a(aVar);
            com.apm.insight.entity.d.b(aVar.c());
            Map<? extends String, ? extends String> map = new HashMap<>();
            if (k()) {
                map.put("is_root", "true");
                aVar.a("is_root", "true");
            } else {
                map.put("is_root", "false");
                aVar.a("is_root", "false");
            }
            map.put("has_fds_file", com.apm.insight.l.j.i(this.f19699c.b()).exists() ? "true" : "false");
            File fileH = com.apm.insight.l.j.h(this.f19699c.b());
            map.put("has_logcat_file", (!fileH.exists() || fileH.length() <= 128) ? "false" : "true");
            map.put("has_maps_file", com.apm.insight.l.j.d(this.f19699c.b()).exists() ? "true" : "false");
            map.put("has_tombstone_file", com.apm.insight.l.j.b(this.f19699c.b()).exists() ? "true" : "false");
            map.put("has_meminfo_file", com.apm.insight.l.j.k(this.f19699c.b()).exists() ? "true" : "false");
            map.put("has_threads_file", com.apm.insight.l.j.j(this.f19699c.b()).exists() ? "true" : "false");
            int iA = new c().a();
            if (iA > 0) {
                if (iA > 960) {
                    map.put("fd_leak", "true");
                } else {
                    map.put("fd_leak", "false");
                }
                aVar.a("fd_count", Integer.valueOf(iA));
            }
            int iA2 = new f().a();
            if (iA2 > 0) {
                if (iA2 > 350) {
                    map.put("threads_leak", "true");
                } else {
                    map.put("threads_leak", "false");
                }
                aVar.a("threads_count", Integer.valueOf(iA2));
            }
            int iA3 = new d().a();
            if (iA3 > 0) {
                if (iA3 > g()) {
                    map.put("memory_leak", "true");
                } else {
                    map.put("memory_leak", "false");
                }
                aVar.a("memory_size", Integer.valueOf(iA3));
            }
            map.put("sdk_version", "2008-20250701130429");
            if (aVar.c().opt("java_data") == null) {
                z10 = false;
            }
            map.put("has_java_stack", String.valueOf(z10));
            JSONArray jSONArrayA = com.apm.insight.nativecrash.b.a(com.apm.insight.l.j.l(this.f19699c.f19702c), com.apm.insight.l.j.m(this.f19699c.f19702c));
            map.put("leak_threads_count", String.valueOf(jSONArrayA.length()));
            if (jSONArrayA.length() > 0) {
                try {
                    com.apm.insight.l.f.a(com.apm.insight.l.j.n(this.f19699c.f19702c), jSONArrayA);
                } catch (Throwable unused2) {
                }
            }
            aVar.b();
            aVar.a("is_64_devices", String.valueOf(Header.a()));
            aVar.a("is_64_runtime", String.valueOf(NativeImpl.f()));
            aVar.a("is_x86_devices", String.valueOf(Header.b()));
            aVar.c(map);
            File fileF = com.apm.insight.l.j.f(this.f19699c.b());
            JSONObject jSONObjectC = aVar.c();
            com.apm.insight.l.f.a(fileF, jSONObjectC);
            return jSONObjectC;
        } catch (Throwable th8) {
            com.apm.insight.c.a();
            j.a(th8, "NPTH_CATCH");
            return null;
        }
    }

    public final boolean i() {
        return com.apm.insight.l.f.a(this.f19699c.b());
    }

    public final void j() {
        try {
            com.apm.insight.l.f.b(this.f19699c.b().getAbsolutePath(), Environment.getExternalStorageDirectory().getAbsolutePath() + "/localDebug/" + com.apm.insight.e.g().getPackageName() + "/" + this.f19699c.b().getName() + ".zip");
        } catch (Throwable th2) {
            com.apm.insight.c.a();
            j.a(th2, "NPTH_CATCH");
        }
    }
}
