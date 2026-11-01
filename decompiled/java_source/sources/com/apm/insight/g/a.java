package com.apm.insight.g;

import android.os.Looper;
import android.os.SystemClock;
import com.apm.insight.CrashType;
import com.apm.insight.ICrashCallback;
import com.apm.insight.ICrashFilter;
import com.apm.insight.IOOMCallback;
import com.apm.insight.e;
import com.apm.insight.k.h;
import com.apm.insight.l.j;
import com.apm.insight.l.m;
import com.apm.insight.nativecrash.NativeImpl;
import com.apm.insight.runtime.a.f;
import com.apm.insight.runtime.l;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements Thread.UncaughtExceptionHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static a f19518a;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static volatile boolean f19519i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static volatile ThreadLocal<Boolean> f19520j = new ThreadLocal<>();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static volatile long f19521l = 10000;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static ArrayList<b> f19522m = new ArrayList<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Thread.UncaughtExceptionHandler f19523b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private c f19524c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private c f19525d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile int f19526e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile int f19527f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ConcurrentHashMap<String, Object> f19528g = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ConcurrentHashMap<String, Object> f19529h = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private JSONArray f19530k;

    private a() {
        Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        if (defaultUncaughtExceptionHandler != this) {
            this.f19523b = defaultUncaughtExceptionHandler;
            Thread.setDefaultUncaughtExceptionHandler(this);
        }
    }

    public static a a() {
        if (f19518a == null) {
            f19518a = new a();
        }
        return f19518a;
    }

    private String a(File file, Throwable th2, Thread thread, boolean z10) {
        String absolutePath = file.getAbsolutePath();
        this.f19529h.put(file.getName(), file);
        try {
            file.getParentFile().mkdirs();
            file.createNewFile();
            NativeImpl.c(absolutePath);
        } catch (Throwable unused) {
        }
        String strA = null;
        if (z10) {
            int iH = NativeImpl.h(absolutePath);
            if (iH > 0) {
                try {
                    e.g();
                    NativeImpl.a(iH, com.apm.insight.l.a.b());
                    NativeImpl.a(iH, "\n");
                    NativeImpl.a(iH, th2.getMessage());
                    NativeImpl.a(iH, "\n");
                    NativeImpl.a(iH, th2.getClass().getName());
                    if (th2.getMessage() != null) {
                        NativeImpl.a(iH, ": ");
                        NativeImpl.a(iH, th2.getMessage());
                    }
                    NativeImpl.a(iH, "\n");
                    NativeImpl.a(iH, thread.getName());
                    NativeImpl.a(iH, "\n");
                } catch (Throwable unused2) {
                }
                try {
                    NativeImpl.a(iH, "stack:");
                    NativeImpl.a(iH, "\n");
                } catch (Throwable unused3) {
                }
                m.a(th2, iH);
                NativeImpl.b(iH);
            }
        } else {
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file, true);
                try {
                    StringBuilder sb2 = new StringBuilder();
                    e.g();
                    sb2.append(com.apm.insight.l.a.b());
                    sb2.append("\n");
                    fileOutputStream.write(sb2.toString().getBytes());
                    fileOutputStream.write((th2.getMessage() + "\n").getBytes());
                    fileOutputStream.write((th2 + "\n").getBytes());
                    fileOutputStream.write((thread.getName() + "\n").getBytes());
                } catch (Throwable unused4) {
                }
                try {
                    fileOutputStream.write("stack:\n".getBytes());
                } catch (Throwable unused5) {
                }
                try {
                    strA = m.a(th2, new PrintStream(fileOutputStream), Looper.getMainLooper() == Looper.myLooper() ? new com.apm.insight.l.e.a() { // from class: com.apm.insight.g.a.1

                        /* JADX INFO: renamed from: a, reason: collision with root package name */
                        private boolean f19531a = false;

                        @Override // com.apm.insight.l.e.a
                        public final boolean a(String str) {
                            if (!this.f19531a && str.contains("android.os.Looper.loop")) {
                                this.f19531a = true;
                            }
                            return !this.f19531a;
                        }
                    } : new com.apm.insight.l.e.a());
                    com.apm.insight.a.a((Closeable) fileOutputStream);
                } catch (Throwable th3) {
                    try {
                        th2.printStackTrace(new PrintStream(fileOutputStream));
                    } catch (Throwable th4) {
                        try {
                            fileOutputStream.write("err:\n".getBytes());
                            fileOutputStream.write((th3 + "\n").getBytes());
                            fileOutputStream.write((th4 + "\n").getBytes());
                        } catch (Throwable unused6) {
                        }
                    }
                }
                com.apm.insight.a.a((Closeable) fileOutputStream);
            } catch (Throwable unused7) {
            }
        }
        return strA;
    }

    /* JADX WARN: Code duplicated, block: B:103:0x01cc A[Catch: all -> 0x01d0, TRY_LEAVE, TryCatch #6 {all -> 0x01d0, blocks: (B:101:0x01c6, B:103:0x01cc), top: B:153:0x01c6 }] */
    /* JADX WARN: Code duplicated, block: B:108:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:109:0x01d6 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:115:0x01e8  */
    /* JADX WARN: Code duplicated, block: B:157:0x01a5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:165:0x01e9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:24:0x0067  */
    /* JADX WARN: Code duplicated, block: B:82:0x018b  */
    /* JADX WARN: Code duplicated, block: B:89:0x01a4  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [int] */
    /* JADX WARN: Type inference failed for: r0v20, types: [int] */
    /* JADX WARN: Type inference failed for: r0v24, types: [int] */
    /* JADX WARN: Type inference failed for: r0v26, types: [int] */
    /* JADX WARN: Type inference failed for: r0v40, types: [int] */
    /* JADX WARN: Type inference failed for: r0v42, types: [int] */
    /* JADX WARN: Type inference failed for: r20v0, types: [com.apm.insight.g.a] */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v20, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v26 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v35 */
    /* JADX WARN: Type inference failed for: r2v36 */
    /* JADX WARN: Type inference failed for: r2v37 */
    /* JADX WARN: Type inference failed for: r2v38 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [int] */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v20 */
    /* JADX WARN: Type inference failed for: r4v21, types: [int] */
    /* JADX WARN: Type inference failed for: r4v23 */
    /* JADX WARN: Type inference failed for: r4v24 */
    /* JADX WARN: Type inference failed for: r4v25, types: [boolean] */
    /* JADX WARN: Type inference failed for: r4v29 */
    /* JADX WARN: Type inference failed for: r4v30 */
    /* JADX WARN: Type inference failed for: r4v31 */
    /* JADX WARN: Type inference failed for: r4v32 */
    /* JADX WARN: Type inference failed for: r4v33 */
    /* JADX WARN: Type inference failed for: r4v34 */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [long] */
    /* JADX WARN: Type inference failed for: r5v10, types: [long] */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v13, types: [long] */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v17 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.apm.insight.g.c] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private Throwable a(Thread thread, Throwable th2) {
        boolean zC;
        boolean z10;
        CrashType crashType;
        ?? r11;
        ?? r12;
        ?? r13;
        boolean z11;
        ?? r14;
        ?? r15;
        ?? r16;
        String strA;
        ?? r17;
        c cVar;
        boolean z12;
        if (this.f19526e >= 3) {
            return null;
        }
        this.f19526e++;
        this.f19527f++;
        if (f19519i) {
            f19520j.set(Boolean.TRUE);
        }
        f19519i = true;
        long jCurrentTimeMillis = System.currentTimeMillis();
        boolean z13 = false;
        boolean z14 = (com.apm.insight.runtime.a.b.c() == -1 || jCurrentTimeMillis - com.apm.insight.runtime.a.b.c() <= e.i().getLaunchCrashInterval()) && !(e.n() && e.q() == 0);
        try {
            zC = m.c(th2);
            if (zC) {
                try {
                    if (m.d(th2)) {
                        z12 = true;
                    } else {
                        z12 = false;
                    }
                } catch (Throwable unused) {
                    z10 = false;
                }
            } else {
                z12 = false;
            }
            z10 = z12;
        } catch (Throwable unused2) {
            zC = false;
        }
        try {
            if (z14) {
                try {
                    crashType = CrashType.LAUNCH;
                } catch (Throwable th3) {
                    th = th3;
                    z11 = false;
                    r11 = z10;
                    r12 = jCurrentTimeMillis;
                    r13 = 1;
                    try {
                        if (!m.c(th)) {
                            com.apm.insight.a.a(th);
                        }
                        if (z13) {
                            synchronized (this) {
                                this.f19527f -= r13;
                                this.f19526e -= r13;
                                return g();
                            }
                        }
                        if (r11 != 0) {
                            a(thread, th2, z14, r12);
                        }
                        e();
                        d();
                        c(thread, th2);
                        return null;
                    } catch (Throwable th4) {
                        if (z13) {
                            synchronized (this) {
                                this.f19527f -= r13;
                                this.f19526e -= r13;
                                return g();
                            }
                        }
                        if (r11 != 0 && !z11) {
                            try {
                                a(thread, th2, z14, r12);
                            } catch (Throwable unused3) {
                                throw th4;
                            }
                        }
                        e();
                        d();
                        c(thread, th2);
                        throw th4;
                    }
                }
            } else {
                try {
                    crashType = CrashType.JAVA;
                } catch (Throwable th5) {
                    th = th5;
                    r11 = z10;
                    r12 = jCurrentTimeMillis;
                    r13 = 1;
                    z11 = false;
                    if (!m.c(th)) {
                        com.apm.insight.a.a(th);
                    }
                    if (z13) {
                        synchronized (this) {
                            this.f19527f -= r13;
                            this.f19526e -= r13;
                            return g();
                        }
                    }
                    if (r11 != 0) {
                        a(thread, th2, z14, r12);
                    }
                    e();
                    d();
                    c(thread, th2);
                    return null;
                }
            }
            String strA2 = e.a(jCurrentTimeMillis, crashType, zC, false);
            File file = new File(j.a(e.g()), strA2);
            ?? r18 = "logEventStack";
            String strA3 = a(new File(file, "logEventStack"), th2, thread, z10);
            boolean z15 = (f() & 1) != 0 || (strA3 != null && e.i().isCrashIgnored(strA3));
            try {
                JSONArray jSONArrayA = com.apm.insight.entity.b.a(th2, thread, file);
                this.f19530k = jSONArrayA;
                if (jSONArrayA == null || z15) {
                    try {
                        strA = e.a(jCurrentTimeMillis, z14 ? CrashType.LAUNCH : CrashType.JAVA, zC, true);
                        File file2 = new File(j.a(e.g()), strA);
                        file.renameTo(file2);
                        new File(file2, "logEventStack");
                        r17 = "logEventStack";
                    } catch (Throwable th6) {
                        th = th6;
                        z11 = false;
                        r14 = z10;
                        r15 = jCurrentTimeMillis;
                        r16 = 1;
                        z13 = z15;
                        r11 = r14;
                        r13 = r16;
                        r12 = r15;
                        if (!m.c(th)) {
                            com.apm.insight.a.a(th);
                        }
                        if (z13) {
                            synchronized (this) {
                                this.f19527f -= r13;
                                this.f19526e -= r13;
                            }
                            return g();
                        }
                        if (r11 != 0 && !z11) {
                            a(thread, th2, z14, r12);
                        }
                        e();
                        d();
                        c(thread, th2);
                        return null;
                    }
                } else {
                    strA = strA2;
                    r17 = jSONArrayA;
                }
                com.apm.insight.a.d();
                com.apm.insight.k.b.a().b();
                z11 = com.apm.insight.runtime.a.a("exception_modules", "oom_callback") == 1;
                if (z10 && z11) {
                    r17 = z14;
                    r18 = jCurrentTimeMillis;
                    try {
                        a(thread, th2, r17, r18);
                    } catch (Throwable th7) {
                        th = th7;
                        r14 = z10;
                        r15 = jCurrentTimeMillis;
                        r16 = 1;
                        z13 = z15;
                        r11 = r14;
                        r13 = r16;
                        r12 = r15;
                        if (!m.c(th)) {
                            com.apm.insight.a.a(th);
                        }
                        if (z13) {
                            synchronized (this) {
                                this.f19527f -= r13;
                                this.f19526e -= r13;
                                return g();
                            }
                        }
                        if (r11 != 0) {
                            a(thread, th2, z14, r12);
                        }
                        e();
                        d();
                        c(thread, th2);
                        return null;
                    }
                }
                ?? ValueOf = String.valueOf(z14);
                com.apm.insight.a.a((Object) "[uncaughtException] isLaunchCrash=".concat(ValueOf));
                com.apm.insight.a.a.a();
                boolean zB = b(thread, th2);
                try {
                    if (!zB || (cVar = this.f19524c) == null || !z14) {
                        ValueOf = z10;
                        r18 = jCurrentTimeMillis;
                        r17 = 1;
                        if (zB) {
                            ?? r19 = this.f19525d;
                            if (r19 != 0) {
                                ValueOf = ValueOf;
                                r17 = r17;
                                r18 = r18;
                                r19.a(r18, thread, th2, strA, strA3, z15);
                                com.apm.insight.a.a((Object) ("[uncaughtException] mLaunchCrashDisposer " + th2.toString()));
                                ValueOf = ValueOf;
                                r17 = r17;
                                r18 = r18;
                            }
                        }
                        if (!z15) {
                            synchronized (this) {
                                this.f19527f -= r17;
                                this.f19526e -= r17;
                            }
                            return g();
                        }
                        if (ValueOf != 0 && !z11) {
                            a(thread, th2, z14, r18);
                        }
                        e();
                        d();
                        c(thread, th2);
                        return null;
                    }
                    ValueOf = z10;
                    r18 = jCurrentTimeMillis;
                    r17 = 1;
                    cVar.a(jCurrentTimeMillis, thread, th2, strA, strA3, z15);
                    com.apm.insight.a.a((Object) ("[uncaughtException] mLaunchCrashDisposer " + th2.toString()));
                    ValueOf = ValueOf;
                    r17 = r17;
                    r18 = r18;
                    if (!z15) {
                        synchronized (this) {
                            this.f19527f -= r17;
                            this.f19526e -= r17;
                            return g();
                        }
                    }
                    if (ValueOf != 0) {
                        a(thread, th2, z14, r18);
                    }
                    e();
                    d();
                    c(thread, th2);
                    return null;
                } catch (Throwable th8) {
                    th = th8;
                    r14 = ValueOf;
                    r16 = r17;
                    r15 = r18;
                    z13 = z15;
                    r11 = r14;
                    r13 = r16;
                    r12 = r15;
                    if (!m.c(th)) {
                        com.apm.insight.a.a(th);
                    }
                    if (z13) {
                        synchronized (this) {
                            this.f19527f -= r13;
                            this.f19526e -= r13;
                            return g();
                        }
                    }
                    if (r11 != 0) {
                        a(thread, th2, z14, r12);
                    }
                    e();
                }
            } catch (Throwable th9) {
                th = th9;
                r14 = z10;
                r15 = jCurrentTimeMillis;
                r16 = 1;
                z11 = false;
            }
        } catch (Throwable unused4) {
        }
    }

    public static void a(long j11) {
        f19521l = j11;
    }

    private void a(Thread thread, Throwable th2, boolean z10, long j11) {
        List<IOOMCallback> listA = l.a().a();
        CrashType crashType = z10 ? CrashType.LAUNCH : CrashType.JAVA;
        for (IOOMCallback iOOMCallback : listA) {
            try {
                if (iOOMCallback instanceof com.apm.insight.b) {
                    ((com.apm.insight.b) iOOMCallback).a(crashType, th2, thread, j11, this.f19530k);
                } else {
                    iOOMCallback.onCrash(crashType, th2, thread, j11);
                }
            } catch (Throwable th3) {
                com.apm.insight.a.b(th3);
            }
        }
    }

    public static void a(final Throwable th2) {
        if (th2 == null) {
            return;
        }
        try {
            com.apm.insight.runtime.m.a().a(new Runnable() { // from class: com.apm.insight.g.a.2
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        com.apm.insight.entity.a aVarA = com.apm.insight.entity.a.a(System.currentTimeMillis(), e.g(), th2);
                        aVarA.a("userdefine", (Object) 1);
                        com.apm.insight.entity.a aVarA2 = f.a().a(CrashType.CUSTOM_JAVA, aVarA);
                        if (aVarA2 != null) {
                            com.apm.insight.k.d.a().c(aVarA2.c());
                        }
                    } catch (Throwable unused) {
                    }
                }
            });
        } catch (Throwable unused) {
        }
    }

    public static boolean b() {
        return f19519i;
    }

    private static boolean b(Thread thread, Throwable th2) {
        ICrashFilter iCrashFilterB = e.b().b();
        if (iCrashFilterB != null) {
            try {
                if (!iCrashFilterB.onJavaCrashFilter(th2, thread)) {
                    return false;
                }
            } catch (Throwable unused) {
            }
        }
        return true;
    }

    public static void c(final String str) {
        if (str == null) {
            return;
        }
        try {
            com.apm.insight.runtime.m.a().a(new Runnable() { // from class: com.apm.insight.g.a.3
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        com.apm.insight.entity.a aVar = new com.apm.insight.entity.a();
                        aVar.a("data", (Object) str);
                        aVar.a("userdefine", (Object) 1);
                        com.apm.insight.entity.a aVarA = f.a().a(CrashType.CUSTOM_JAVA, aVar);
                        if (aVarA != null) {
                            com.apm.insight.k.d.a().c(aVarA.c());
                        }
                    } catch (Throwable unused) {
                    }
                }
            });
        } catch (Throwable unused) {
        }
    }

    private void c(Thread thread, Throwable th2) {
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f19523b;
        if (uncaughtExceptionHandler == null || uncaughtExceptionHandler == this) {
            return;
        }
        uncaughtExceptionHandler.uncaughtException(thread, th2);
    }

    public static boolean c() {
        Boolean bool = f19520j.get();
        return bool != null && bool.booleanValue();
    }

    private void d() {
        synchronized (this) {
            this.f19527f--;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        while (this.f19527f != 0 && SystemClock.uptimeMillis() - jUptimeMillis < f19521l) {
            SystemClock.sleep(50L);
        }
    }

    private static void e() {
        File fileA = j.a(e.g());
        File fileA2 = j.a();
        if (com.apm.insight.l.f.b(fileA) && com.apm.insight.l.f.b(fileA2)) {
            return;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        while (!h.a() && SystemClock.uptimeMillis() - jUptimeMillis < f19521l) {
            try {
                SystemClock.sleep(500L);
            } catch (Throwable unused) {
            }
        }
    }

    private static int f() {
        int iA = 0;
        for (int i11 = 0; i11 < f19522m.size(); i11++) {
            try {
                try {
                    iA |= f19522m.get(i11).a();
                } catch (Throwable th2) {
                    com.apm.insight.c.a();
                    com.apm.insight.runtime.j.a(th2, "NPTH_CATCH");
                }
            } catch (Throwable unused) {
            }
        }
        return iA;
    }

    private static Throwable g() {
        for (int i11 = 0; i11 < f19522m.size(); i11++) {
            try {
                f19522m.get(i11);
            } catch (Throwable unused) {
            }
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            return null;
        }
        try {
            Looper.loop();
            return null;
        } catch (Throwable th2) {
            return th2;
        }
    }

    public final void a(c cVar) {
        this.f19524c = cVar;
    }

    public final void a(String str) {
        this.f19528g.put(str, new Object());
    }

    public final void a(Thread thread, Throwable th2, boolean z10, com.apm.insight.entity.a aVar) {
        List<ICrashCallback> listC;
        CrashType crashType;
        if (z10) {
            listC = l.a().b();
            crashType = CrashType.LAUNCH;
        } else {
            listC = l.a().c();
            crashType = CrashType.JAVA;
        }
        for (ICrashCallback iCrashCallback : listC) {
            long jUptimeMillis = SystemClock.uptimeMillis();
            try {
                if (iCrashCallback instanceof com.apm.insight.b) {
                    ((com.apm.insight.b) iCrashCallback).a(crashType, m.a(th2), thread, this.f19530k);
                } else {
                    iCrashCallback.onCrash(crashType, m.a(th2), thread);
                }
                aVar.b("callback_cost_" + iCrashCallback.getClass().getName(), String.valueOf(SystemClock.uptimeMillis() - jUptimeMillis));
            } catch (Throwable th3) {
                com.apm.insight.a.b(th3);
                aVar.b("callback_err_" + iCrashCallback.getClass().getName(), String.valueOf(SystemClock.uptimeMillis() - jUptimeMillis));
            }
        }
    }

    public final void b(c cVar) {
        this.f19525d = cVar;
    }

    public final boolean b(String str) {
        return this.f19528g.containsKey(str);
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th2) {
        do {
            th2 = a(thread, th2);
        } while (th2 != null);
    }
}
