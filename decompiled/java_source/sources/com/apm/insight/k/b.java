package com.apm.insight.k;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.apm.insight.CrashType;
import com.apm.insight.Npth;
import com.apm.insight.entity.Header;
import com.apm.insight.l.n;
import com.apm.insight.nativecrash.NativeImpl;
import com.apm.insight.runtime.m;
import com.apm.insight.runtime.o;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile b f19574b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f19575a;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private C0179b f19579f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private HashMap<String, C0179b> f19580g;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<File> f19576c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<File> f19577d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f19578e = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private volatile boolean f19581h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Runnable f19582i = new Runnable() { // from class: com.apm.insight.k.b.1
        @Override // java.lang.Runnable
        public final void run() throws Throwable {
            b.this.f();
        }
    };

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Runnable f19583j = new Runnable() { // from class: com.apm.insight.k.b.2
        @Override // java.lang.Runnable
        public final void run() throws Throwable {
            b.this.d();
        }
    };

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        File f19593a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        long f19594b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        long f19595c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @Nullable
        CrashType f19596d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        String f19597e;

        a(File file, long j11, @Nullable CrashType crashType) {
            this.f19595c = -1L;
            this.f19593a = file;
            this.f19594b = j11;
            this.f19596d = crashType;
            this.f19597e = file.getName();
        }

        a(File file, @Nullable CrashType crashType) {
            this.f19594b = -1L;
            this.f19595c = -1L;
            this.f19593a = file;
            this.f19596d = crashType;
            this.f19597e = file.getName();
        }
    }

    /* JADX INFO: renamed from: com.apm.insight.k.b$b, reason: collision with other inner class name */
    static class C0179b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f19598a;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        a f19601d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        a f19602e;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        List<a> f19599b = new ArrayList();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        List<a> f19600c = new ArrayList();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        boolean f19603f = false;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        int f19604g = 0;

        C0179b(String str) {
            this.f19598a = str;
        }
    }

    private b(Context context) {
        this.f19575a = context;
    }

    @Nullable
    private com.apm.insight.f.b a(File file, CrashType crashType, String str, long j11, long j12) {
        com.apm.insight.f.b bVar;
        try {
            try {
                if (file.isFile()) {
                    com.apm.insight.l.f.a(file);
                    return null;
                }
                boolean z10 = crashType == CrashType.LAUNCH;
                if (crashType == null) {
                    try {
                        return com.apm.insight.l.f.b(new File(file, file.getName()).getAbsolutePath());
                    } catch (Throwable th2) {
                        th = th2;
                        bVar = null;
                        com.apm.insight.l.f.a(file);
                        com.apm.insight.c.a();
                        com.apm.insight.runtime.j.a(th, "NPTH_CATCH");
                        return bVar;
                    }
                }
                com.apm.insight.f.b bVarA = com.apm.insight.l.f.a(file, crashType);
                try {
                    JSONObject jSONObjectB = bVarA.b();
                    try {
                        if (bVarA.b() == null) {
                            com.apm.insight.l.f.a(file);
                        } else {
                            if (crashType == CrashType.ANR) {
                                return bVarA;
                            }
                            jSONObjectB.put("crash_time", j11);
                            jSONObjectB.put("app_start_time", j12);
                            JSONObject jSONObjectOptJSONObject = jSONObjectB.optJSONObject("header");
                            if (jSONObjectOptJSONObject == null) {
                                jSONObjectOptJSONObject = Header.a(j11).f();
                            } else if (z10) {
                                jSONObjectB.remove("header");
                            }
                            String strOptString = jSONObjectOptJSONObject.optString("sdk_version_name", null);
                            if (strOptString == null) {
                                strOptString = "2008-20250701130429";
                            }
                            com.apm.insight.entity.a.a(jSONObjectB, "filters", "sdk_version", strOptString);
                            JSONArray jSONArrayOptJSONArray = jSONObjectB.optJSONArray("logcat");
                            if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() == 0) {
                                jSONObjectB.put("logcat", com.apm.insight.runtime.h.a(str));
                            }
                            com.apm.insight.entity.a.a(jSONObjectB, "filters", "has_dump", "true");
                            com.apm.insight.entity.a.a(jSONObjectB, "filters", "has_logcat", String.valueOf(!com.apm.insight.a.a(jSONObjectB, "logcat")));
                            com.apm.insight.entity.a.a(jSONObjectB, "filters", "memory_leak", String.valueOf(com.apm.insight.entity.a.a(str)));
                            com.apm.insight.entity.a.a(jSONObjectB, "filters", "fd_leak", String.valueOf(com.apm.insight.entity.a.b(str)));
                            com.apm.insight.entity.a.a(jSONObjectB, "filters", "threads_leak", String.valueOf(com.apm.insight.entity.a.c(str)));
                            com.apm.insight.entity.a.a(jSONObjectB, "filters", "is_64_devices", String.valueOf(Header.a()));
                            com.apm.insight.entity.a.a(jSONObjectB, "filters", "is_64_runtime", String.valueOf(NativeImpl.f()));
                            com.apm.insight.entity.a.a(jSONObjectB, "filters", "is_x86_devices", String.valueOf(Header.b()));
                            com.apm.insight.entity.a.a(jSONObjectB, "filters", "has_meminfo_file", String.valueOf(com.apm.insight.l.j.d(str).exists()));
                            com.apm.insight.entity.a.a(jSONObjectB, "filters", "is_root", String.valueOf(com.apm.insight.nativecrash.a.k()));
                            jSONObjectB.put("launch_did", com.apm.insight.i.a.a(this.f19575a));
                            jSONObjectB.put("crash_uuid", file.getName());
                            try {
                                long j13 = Long.parseLong(com.apm.insight.runtime.b.a(j11, str));
                                com.apm.insight.entity.a.a(jSONObjectB, "filters", "lastAliveTime", Math.abs(j13 - j11) < 60000 ? "< 60s" : "> 60s");
                                jSONObjectB.put("lastAliveTime", String.valueOf(j13));
                            } catch (Throwable unused) {
                                jSONObjectB.put("lastAliveTime", TmcConstants.ROUTE_UNKNOWN);
                                com.apm.insight.entity.a.a(jSONObjectB, "filters", "lastAliveTime", TmcConstants.ROUTE_UNKNOWN);
                            }
                            jSONObjectB.put("has_dump", "true");
                            if (jSONObjectB.opt(PlaceTypes.STORAGE) == null) {
                                com.apm.insight.e.g();
                                com.apm.insight.entity.a.a(jSONObjectB, n.a());
                            }
                            if (Header.b(jSONObjectOptJSONObject)) {
                                com.apm.insight.entity.a.a(jSONObjectB, "filters", "unauthentic_version", "unauthentic_version");
                            }
                            com.apm.insight.entity.d.b(jSONObjectB);
                            bVarA.b().put("upload_scene", "launch_scan");
                            if (z10) {
                                JSONObject jSONObject = new JSONObject();
                                jSONObjectB.put("event_type", "start_crash");
                                jSONObjectB.put("stack", jSONObjectB.remove("data"));
                                jSONObject.put("data", new JSONArray().put(jSONObjectB));
                                jSONObject.put("header", jSONObjectOptJSONObject);
                                bVarA.a(jSONObject);
                            } else {
                                jSONObjectB.put("isJava", 1);
                            }
                        }
                        return bVarA;
                    } catch (Throwable th3) {
                        th = th3;
                        bVar = bVarA;
                        com.apm.insight.l.f.a(file);
                        com.apm.insight.c.a();
                        com.apm.insight.runtime.j.a(th, "NPTH_CATCH");
                        return bVar;
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
            } catch (Throwable th5) {
                th = th5;
            }
        } catch (Throwable th6) {
            th = th6;
            bVar = null;
        }
        com.apm.insight.l.f.a(file);
        com.apm.insight.c.a();
        com.apm.insight.runtime.j.a(th, "NPTH_CATCH");
        return bVar;
    }

    public static b a() {
        if (f19574b == null) {
            synchronized (b.class) {
                try {
                    if (f19574b == null) {
                        f19574b = new b(com.apm.insight.e.g());
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f19574b;
    }

    private static JSONObject a(com.apm.insight.nativecrash.a aVar) {
        JSONObject jSONObjectB = aVar.b();
        if (jSONObjectB != null && jSONObjectB.length() != 0) {
            return jSONObjectB;
        }
        if (com.apm.insight.e.d()) {
            aVar.j();
        }
        if (!aVar.a()) {
            aVar.i();
            return null;
        }
        if (!aVar.d()) {
            aVar.i();
            return null;
        }
        if (aVar.e()) {
            aVar.i();
            return null;
        }
        aVar.c();
        return aVar.h();
    }

    private void a(final C0179b c0179b, boolean z10, @Nullable com.apm.insight.runtime.f fVar) {
        Iterator<a> it;
        final File file;
        CrashType crashType;
        if (c0179b.f19599b.isEmpty()) {
            return;
        }
        if (c0179b.f19602e == null) {
            c0179b.f19602e = c0179b.f19601d;
        }
        for (Iterator<a> it2 = c0179b.f19599b.iterator(); it2.hasNext(); it2 = it) {
            a next = it2.next();
            try {
                File file2 = next.f19593a;
                CrashType crashType2 = next.f19596d;
                it = it2;
                try {
                    final com.apm.insight.f.b bVarA = a(file2, crashType2, c0179b.f19598a, next.f19594b, next.f19595c);
                    if (bVarA == null) {
                        com.apm.insight.l.f.a(file2);
                    } else {
                        JSONObject jSONObjectB = bVarA.b();
                        if (jSONObjectB == null) {
                            com.apm.insight.l.f.a(file2);
                        } else {
                            JSONObject jSONObjectOptJSONObject = jSONObjectB.optJSONObject("header");
                            if (jSONObjectOptJSONObject == null) {
                                com.apm.insight.l.f.a(file2);
                            } else {
                                if (crashType2 == null) {
                                    file = file2;
                                    if (new File(file, file2.getName()).exists() || file.getName().split("_").length < 5) {
                                        if (e.b(bVarA.a(), jSONObjectB.toString()).a()) {
                                            com.apm.insight.l.f.a(file);
                                        }
                                    }
                                } else {
                                    file = file2;
                                }
                                File fileA = com.apm.insight.entity.b.a(file);
                                if (fileA.exists()) {
                                    try {
                                        JSONArray jSONArray = new JSONArray(com.apm.insight.l.f.a(fileA, "\n"));
                                        JSONObject jSONObjectOptJSONObject2 = crashType2 == CrashType.LAUNCH ? ((JSONArray) jSONObjectB.opt("data")).optJSONObject(0) : jSONObjectB;
                                        if ((z10 || c0179b.f19602e == next) && !next.f19597e.contains("ignore")) {
                                            crashType = crashType2;
                                            if (fVar != null && !fVar.a(jSONObjectOptJSONObject2.optString("crash_md5", "default"))) {
                                                com.apm.insight.l.f.a(next.f19593a);
                                            }
                                        } else {
                                            try {
                                                com.apm.insight.entity.a.a(jSONObjectOptJSONObject2, "filters", "aid", String.valueOf(jSONObjectOptJSONObject.opt("aid")));
                                                crashType = crashType2;
                                                try {
                                                    com.apm.insight.entity.a.a(jSONObjectOptJSONObject2, "filters", "has_ignore", String.valueOf(next.f19597e.contains("ignore")));
                                                    jSONObjectOptJSONObject.put("aid", Sdk$SDKMetric.SDKMetricType.AD_WILL_CLOSE_VALUE);
                                                } catch (Throwable th2) {
                                                    th = th2;
                                                    com.apm.insight.c.a();
                                                    com.apm.insight.runtime.j.a(th, "NPTH_CATCH");
                                                }
                                            } catch (Throwable th3) {
                                                th = th3;
                                                crashType = crashType2;
                                            }
                                        }
                                        com.apm.insight.entity.a.a(jSONObjectOptJSONObject2, "filters", "start_uuid", c0179b.f19598a);
                                        com.apm.insight.entity.a.a(jSONObjectOptJSONObject2, "filters", "leak_threads_count", String.valueOf(c0179b.f19604g));
                                        com.apm.insight.entity.a.a(jSONObjectOptJSONObject2, "filters", "crash_thread_name", jSONObjectOptJSONObject2.optString("crash_thread_name", TmcConstants.ROUTE_UNKNOWN));
                                        try {
                                            com.apm.insight.entity.b.a(jSONObjectB, jSONArray, new com.apm.insight.entity.b.a() { // from class: com.apm.insight.k.b.3
                                                @Override // com.apm.insight.entity.b.a
                                                public final void a(JSONObject jSONObject) {
                                                    e.a(bVarA.a(), jSONObject.toString(), new File(file, "logZip"), com.apm.insight.l.j.a(b.this.f19575a, c0179b.f19598a));
                                                }
                                            });
                                            if (!com.apm.insight.l.f.a(file)) {
                                                com.apm.insight.e.a.a().a(com.apm.insight.d.a.b(file.getAbsolutePath()));
                                            }
                                            c.a(crashType, jSONObjectB);
                                        } catch (Throwable th4) {
                                            th = th4;
                                            com.apm.insight.c.a();
                                            com.apm.insight.runtime.j.a(th, "NPTH_CATCH");
                                            com.apm.insight.l.f.a(next.f19593a);
                                        }
                                    } catch (Throwable unused) {
                                    }
                                } else {
                                    com.apm.insight.l.f.a(file);
                                }
                            }
                        }
                    }
                } catch (Throwable th5) {
                    th = th5;
                    com.apm.insight.c.a();
                    com.apm.insight.runtime.j.a(th, "NPTH_CATCH");
                    com.apm.insight.l.f.a(next.f19593a);
                }
            } catch (Throwable th6) {
                th = th6;
                it = it2;
            }
        }
    }

    private void a(HashMap<String, C0179b> map) {
        File[] fileArrListFiles = com.apm.insight.l.j.f(this.f19575a).listFiles();
        if (fileArrListFiles == null || fileArrListFiles.length == 0) {
            return;
        }
        for (int i11 = 0; i11 < fileArrListFiles.length && i11 < 5; i11++) {
            File file = fileArrListFiles[i11];
            try {
                if (!file.isDirectory()) {
                    com.apm.insight.l.f.a(file);
                } else if (file.getName().endsWith("G")) {
                    String name = file.getName();
                    C0179b c0179b = map.get(name);
                    if (c0179b == null) {
                        c0179b = new C0179b(name);
                        map.put(name, c0179b);
                    }
                    JSONArray jSONArrayA = com.apm.insight.nativecrash.b.a(com.apm.insight.l.j.l(file), com.apm.insight.l.j.m(file));
                    int length = jSONArrayA.length();
                    c0179b.f19604g = length;
                    if (length > 0) {
                        try {
                            com.apm.insight.l.f.a(com.apm.insight.l.j.n(file), jSONArrayA);
                        } catch (Throwable unused) {
                        }
                    }
                } else {
                    com.apm.insight.l.f.a(file);
                }
            } catch (Throwable th2) {
                com.apm.insight.c.a();
                com.apm.insight.runtime.j.a(th2, "NPTH_CATCH");
                com.apm.insight.l.f.a(file);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:47:0x00c4  */
    private void a(HashMap<String, C0179b> map, C0179b c0179b) {
        byte b11;
        CrashType crashType;
        File[] fileArrListFiles = com.apm.insight.l.j.a(this.f19575a).listFiles();
        if (fileArrListFiles == null) {
            return;
        }
        Arrays.sort(fileArrListFiles, Collections.reverseOrder());
        char c11 = 0;
        int i11 = 0;
        while (i11 < fileArrListFiles.length) {
            File file = fileArrListFiles[i11];
            try {
                if (com.apm.insight.e.a.a().a(file.getAbsolutePath())) {
                    com.apm.insight.l.f.a(file);
                } else if (!com.apm.insight.l.f.e(file) && !com.apm.insight.g.a.a().b(file.getName())) {
                    if (file.isFile()) {
                        com.apm.insight.l.f.a(file);
                    } else {
                        String name = file.getName();
                        if (name.endsWith("G")) {
                            String[] strArrSplit = name.split("_");
                            if (strArrSplit.length < 5) {
                                c0179b.f19599b.add(new a(file, null));
                            } else {
                                try {
                                    long j11 = Long.parseLong(strArrSplit[c11]);
                                    long j12 = Long.parseLong(strArrSplit[4]);
                                    String str = strArrSplit[2];
                                    String str2 = strArrSplit[1];
                                    int iHashCode = str2.hashCode();
                                    if (iHashCode != -1109843021) {
                                        if (iHashCode != 96741) {
                                            if (iHashCode == 3254818 && str2.equals("java")) {
                                                b11 = 1;
                                            } else {
                                                b11 = -1;
                                            }
                                        } else if (str2.equals("anr")) {
                                            b11 = 2;
                                        } else {
                                            b11 = -1;
                                        }
                                    } else if (str2.equals("launch")) {
                                        b11 = 0;
                                    } else {
                                        b11 = -1;
                                    }
                                    if (b11 == 0) {
                                        crashType = CrashType.LAUNCH;
                                    } else if (b11 != 1) {
                                        crashType = b11 != 2 ? null : CrashType.ANR;
                                    } else {
                                        crashType = CrashType.JAVA;
                                    }
                                    C0179b c0179b2 = map.get(str);
                                    if (c0179b2 == null) {
                                        c0179b2 = new C0179b(str);
                                        map.put(str, c0179b2);
                                    }
                                    a aVar = new a(file, j11, crashType);
                                    aVar.f19595c = j12;
                                    a aVar2 = c0179b2.f19601d;
                                    if ((aVar2 == null || aVar2.f19594b > aVar.f19594b) && crashType != null && crashType != CrashType.ANR && !name.contains("ignore")) {
                                        c0179b2.f19601d = aVar;
                                    }
                                    c0179b2.f19599b.add(aVar);
                                } catch (Throwable unused) {
                                    c0179b.f19599b.add(new a(file, null));
                                    com.apm.insight.c.a();
                                    com.apm.insight.runtime.j.a(new RuntimeException("err format crashTime:".concat(name)), "NPTH_CATCH");
                                }
                            }
                        } else {
                            com.apm.insight.l.f.a(file);
                        }
                    }
                }
            } catch (Throwable th2) {
                com.apm.insight.c.a();
                com.apm.insight.runtime.j.a(th2, "NPTH_CATCH");
            }
            i11++;
            c11 = 0;
        }
    }

    private static boolean a(File file) {
        String[] list = file.list();
        if (list == null) {
            return false;
        }
        for (String str : list) {
            if (!TextUtils.isEmpty(str) && str.endsWith("")) {
                return true;
            }
        }
        return false;
    }

    private void b(final C0179b c0179b, boolean z10, @Nullable com.apm.insight.runtime.f fVar) {
        boolean z11;
        if (c0179b.f19600c.size() <= 1 && c0179b.f19600c.isEmpty()) {
            c0179b.f19602e = c0179b.f19601d;
            return;
        }
        boolean zB = com.apm.insight.l.k.b(this.f19575a);
        c0179b.f19602e = c0179b.f19601d;
        com.apm.insight.nativecrash.a aVar = new com.apm.insight.nativecrash.a(this.f19575a);
        Iterator<a> it = c0179b.f19600c.iterator();
        while (it.hasNext()) {
            a next = it.next();
            final File file = next.f19593a;
            try {
                aVar.a(file);
                JSONObject jSONObjectA = a(aVar);
                if (jSONObjectA == null || jSONObjectA.length() == 0) {
                    it = it;
                    z11 = zB;
                    aVar.i();
                    zB = z11;
                    it = it;
                } else {
                    if (jSONObjectA.length() != 0) {
                        if (z10) {
                            it = it;
                            z11 = zB;
                            if (fVar != null && !fVar.a("default")) {
                                aVar.i();
                            }
                        } else {
                            long jOptLong = jSONObjectA.optLong("crash_time");
                            try {
                                a aVar2 = c0179b.f19602e;
                                if (aVar2 == null) {
                                    c0179b.f19602e = next;
                                    c0179b.f19603f = true;
                                    if (fVar == null || fVar.a("default")) {
                                        it = it;
                                        z11 = zB;
                                    } else {
                                        aVar.i();
                                    }
                                    com.apm.insight.c.a();
                                    com.apm.insight.runtime.j.a(th, "NPTH_CATCH");
                                    com.apm.insight.l.f.a(file);
                                } else {
                                    it = it;
                                    try {
                                        if (c0179b.f19603f) {
                                            z11 = zB;
                                        } else {
                                            z11 = zB;
                                            try {
                                                if (jOptLong < aVar2.f19594b) {
                                                    c0179b.f19602e = next;
                                                    if (fVar == null || fVar.a("default")) {
                                                        a(file);
                                                        c0179b.f19603f = true;
                                                    } else {
                                                        aVar.i();
                                                        zB = z11;
                                                        it = it;
                                                    }
                                                }
                                            } catch (Throwable th2) {
                                                th = th2;
                                            }
                                        }
                                        com.apm.insight.entity.a.a(jSONObjectA, "filters", "aid", String.valueOf(jSONObjectA.optJSONObject("header").opt("aid")));
                                        jSONObjectA.optJSONObject("header").put("aid", Sdk$SDKMetric.SDKMetricType.AD_WILL_CLOSE_VALUE);
                                    } catch (Throwable th3) {
                                        th = th3;
                                        z11 = zB;
                                    }
                                }
                            } catch (Throwable th4) {
                                th = th4;
                                z11 = zB;
                            }
                        }
                        try {
                            com.apm.insight.entity.a.a(jSONObjectA, "filters", "start_uuid", c0179b.f19598a);
                            com.apm.insight.entity.a.a(jSONObjectA, "filters", "crash_thread_name", jSONObjectA.optString("crash_thread_name", TmcConstants.ROUTE_UNKNOWN));
                            if (z11) {
                                c.a aVar3 = new c.a(jSONObjectA, CrashType.NATIVE);
                                com.apm.insight.entity.b.a(jSONObjectA, com.apm.insight.entity.b.a(aVar3.c(), aVar3.a(), o.a().b(aVar3.b() == -1 ? System.currentTimeMillis() : aVar3.b())), new com.apm.insight.entity.b.a() { // from class: com.apm.insight.k.b.4
                                    @Override // com.apm.insight.entity.b.a
                                    public final void a(JSONObject jSONObject) {
                                        d.a();
                                        d.a(jSONObject, file, com.apm.insight.l.j.a(b.this.f19575a, c0179b.f19598a));
                                    }
                                });
                                if (!aVar.i()) {
                                    aVar.f();
                                }
                            }
                            c.a(CrashType.NATIVE, jSONObjectA);
                        } catch (Throwable th5) {
                            th = th5;
                            com.apm.insight.c.a();
                            com.apm.insight.runtime.j.a(th, "NPTH_CATCH");
                            com.apm.insight.l.f.a(file);
                        }
                    } else {
                        it = it;
                        z11 = zB;
                    }
                    zB = z11;
                    it = it;
                }
            } catch (Throwable th6) {
                th = th6;
            }
        }
    }

    private void b(HashMap<String, C0179b> map) {
        File[] fileArrListFiles = com.apm.insight.l.j.d(this.f19575a).listFiles();
        if (fileArrListFiles == null || fileArrListFiles.length == 0) {
            return;
        }
        for (int i11 = 0; i11 < fileArrListFiles.length && i11 < 5; i11++) {
            File file = fileArrListFiles[i11];
            try {
                if (!file.isDirectory()) {
                    com.apm.insight.l.f.a(file);
                } else if (file.getName().endsWith("G")) {
                    String name = file.getName();
                    C0179b c0179b = map.get(name);
                    if (c0179b == null) {
                        c0179b = new C0179b(name);
                        map.put(name, c0179b);
                    }
                    c0179b.f19600c.add(new a(file, CrashType.NATIVE));
                } else {
                    com.apm.insight.l.f.a(file);
                }
            } catch (Throwable th2) {
                com.apm.insight.c.a();
                com.apm.insight.runtime.j.a(th2, "NPTH_CATCH");
                com.apm.insight.l.f.a(file);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() throws Throwable {
        if (this.f19581h || this.f19580g == null) {
            return;
        }
        if (!com.apm.insight.l.k.b(this.f19575a)) {
            e();
        }
        if (this.f19578e == -1) {
            if (com.apm.insight.runtime.a.a() && com.apm.insight.runtime.a.f()) {
                this.f19578e = 1;
            } else {
                this.f19578e = 0;
            }
        }
        boolean z10 = this.f19578e == 1;
        com.apm.insight.runtime.f fVar = new com.apm.insight.runtime.f(this.f19575a);
        Iterator<C0179b> it = this.f19580g.values().iterator();
        while (it.hasNext()) {
            b(it.next(), z10, fVar);
        }
        Iterator<C0179b> it2 = this.f19580g.values().iterator();
        while (it2.hasNext()) {
            a(it2.next(), z10, fVar);
        }
        Iterator<C0179b> it3 = this.f19580g.values().iterator();
        while (it3.hasNext()) {
            com.apm.insight.l.f.a(com.apm.insight.l.j.a(this.f19575a, it3.next().f19598a));
        }
        fVar.a();
        com.apm.insight.runtime.b.a();
        e();
    }

    private void e() {
        this.f19581h = true;
        this.f19580g = null;
        NativeImpl.j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() throws Throwable {
        if (this.f19581h) {
            return;
        }
        if (!com.apm.insight.l.k.b(this.f19575a) || (System.currentTimeMillis() - com.apm.insight.e.j() <= 5000 && com.apm.insight.e.i().isApmExists() && !Npth.hasCrash())) {
            m.a().a(this.f19582i, 5000L);
        } else {
            d();
        }
    }

    private void g() {
        File[] fileArrListFiles = com.apm.insight.l.j.i(this.f19575a).listFiles();
        if (fileArrListFiles == null) {
            return;
        }
        for (int i11 = 0; i11 < fileArrListFiles.length && i11 < 5; i11++) {
            File file = fileArrListFiles[i11];
            if (file.getName().endsWith(".atmp")) {
                com.apm.insight.a.a.a();
                file.getAbsolutePath();
            } else {
                try {
                    com.apm.insight.f.b bVarC = com.apm.insight.l.f.c(file.getAbsolutePath());
                    if (bVarC != null) {
                        if (bVarC.b() != null) {
                            bVarC.b().put("upload_scene", "launch_scan");
                        }
                        if (e.a(e.d(), bVarC.e(), bVarC.d(), bVarC.f(), bVarC.g())) {
                            com.apm.insight.l.f.a(file);
                            String strC = bVarC.c();
                            if (!TextUtils.isEmpty(strC)) {
                                com.apm.insight.l.f.a(new File(strC));
                            }
                        }
                    } else {
                        com.apm.insight.l.f.a(file);
                    }
                } catch (Throwable th2) {
                    com.apm.insight.c.a();
                    com.apm.insight.runtime.j.a(th2, "NPTH_CATCH");
                }
            }
        }
    }

    public final void a(boolean z10) throws Throwable {
        if (!Npth.isStopUpload() && z10) {
            if (this.f19579f == null) {
                this.f19579f = new C0179b("old_uuid");
                HashMap<String, C0179b> map = new HashMap<>();
                this.f19580g = map;
                a(map);
                a(this.f19580g, this.f19579f);
                com.apm.insight.l.f.a(com.apm.insight.l.j.b(this.f19575a));
                b(this.f19580g);
                b(this.f19579f, true, null);
                a(this.f19579f, true, null);
                this.f19579f = null;
                if (this.f19580g.isEmpty()) {
                    e();
                } else {
                    f();
                }
            }
            g();
            com.apm.insight.a.c();
        }
    }

    public final void b() {
        try {
            if (!this.f19581h && com.apm.insight.l.a.b(com.apm.insight.e.g())) {
                m.a().a(this.f19583j);
            }
        } catch (Throwable unused) {
        }
    }

    public final boolean c() {
        return this.f19581h;
    }
}
