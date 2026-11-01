package com.apm.insight.runtime;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apm.insight.CrashType;
import com.apm.insight.ICrashCallback;
import com.apm.insight.IOOMCallback;
import com.apm.insight.nativecrash.NativeImpl;
import java.io.File;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f19814a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f19815b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f19816c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f19817d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f19818e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static c f19819f = new c();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static volatile boolean f19820g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static boolean f19821h = false;

    public static c a() {
        return f19819f;
    }

    public static void a(long j11) {
        NativeImpl.a(j11);
    }

    public static synchronized void a(@NonNull Application application, @NonNull Context context) {
        try {
            long jUptimeMillis = SystemClock.uptimeMillis();
            if (f19814a) {
                return;
            }
            f19814a = true;
            if (context == null || application == null) {
                throw new IllegalArgumentException("context or Application must be not null.");
            }
            com.apm.insight.e.a(application, context);
            if (!com.apm.insight.e.u() || (!b(application) && !c(application))) {
                com.apm.insight.g.a aVarA = com.apm.insight.g.a.a();
                aVarA.a(new com.apm.insight.i.b(context));
                aVarA.b(new com.apm.insight.g.d(context));
                f19815b = true;
                NativeImpl.a();
                boolean zA = NativeImpl.a(context);
                f19817d = zA;
                if (!zA) {
                    f19818e = true;
                }
                if (Looper.myLooper() == Looper.getMainLooper()) {
                    f19820g = true;
                    NativeImpl.i();
                }
                m.a().a(new Runnable() { // from class: com.apm.insight.runtime.l.2

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    private /* synthetic */ boolean f19824a = true;

                    @Override // java.lang.Runnable
                    public final void run() {
                        if (!l.f19820g) {
                            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.apm.insight.runtime.l.2.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    l.r();
                                    NativeImpl.i();
                                }
                            });
                        }
                        l.e(this.f19824a);
                    }
                }, 0L);
                com.apm.insight.a.a((Object) ("Npth.init takes " + (SystemClock.uptimeMillis() - jUptimeMillis) + " ms."));
                return;
            }
            Log.e("apminsight", "Inner npth checked.");
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public static synchronized void a(@NonNull Context context) {
        Application applicationH;
        try {
            if (com.apm.insight.e.h() != null) {
                applicationH = com.apm.insight.e.h();
            } else if (context instanceof Application) {
                applicationH = (Application) context;
                if (applicationH.getBaseContext() == null) {
                    throw new IllegalArgumentException("The Application passed in when init has not been attached, please pass a attachBaseContext as param and call Npth.setApplication(Application) before init.");
                }
            } else {
                try {
                    applicationH = (Application) context.getApplicationContext();
                    if (applicationH == null) {
                        throw new IllegalArgumentException("Can not get the Application instance since a baseContext was passed in when init, please call Npth.setApplication(Application) before init.");
                    }
                    if (applicationH.getBaseContext() != null) {
                        context = applicationH.getBaseContext();
                    }
                } catch (Throwable unused) {
                    throw new IllegalArgumentException("Can not get the Application instance since a baseContext was passed in when init, please call Npth.setApplication(Application) before init.");
                }
            }
            a(applicationH, context);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public static void a(ICrashCallback iCrashCallback, CrashType crashType) {
        f19819f.a(iCrashCallback, crashType);
    }

    public static void a(IOOMCallback iOOMCallback) {
        f19819f.a(iOOMCallback);
    }

    public static void a(com.apm.insight.b.h.a aVar) {
        h.a(aVar);
    }

    public static void a(@NonNull com.apm.insight.b.i.a aVar) {
        com.apm.insight.e.i().setEncryptImpl$22f2d42e(aVar);
    }

    public static void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.apm.insight.d.a.a(str);
    }

    public static void a(final String str, final com.apm.insight.b.h.a aVar) {
        m.a().a(new Runnable() { // from class: com.apm.insight.runtime.l.1
            @Override // java.lang.Runnable
            public final void run() {
                if (com.apm.insight.l.a.b(com.apm.insight.e.g())) {
                    com.apm.insight.b.d.a(str, aVar);
                }
            }
        });
    }

    public static void a(String str, com.apm.insight.b.i.a aVar, com.apm.insight.b.i.a aVar2) {
        if (TextUtils.isEmpty(str) || !new File(str).exists()) {
            return;
        }
        com.apm.insight.a.a.a().a(str, aVar, aVar2);
    }

    public static void a(String str, @Nullable Map<? extends String, ? extends String> map, @Nullable Map<String, String> map2, @Nullable com.apm.insight.b.h.a aVar) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.apm.insight.d.a.a(str, map, map2, aVar);
    }

    public static void a(String str, @Nullable Map<? extends String, ? extends String> map, @Nullable Map<String, String> map2, @Nullable Map<String, String> map3, @Nullable com.apm.insight.b.h.a aVar) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.apm.insight.d.a.a(str, map, map2, map3, aVar);
    }

    @Deprecated
    public static void a(@NonNull Throwable th2) {
        if (com.apm.insight.e.i().isReportErrorEnable()) {
            com.apm.insight.g.a.a(th2);
        }
    }

    public static void a(boolean z10) {
        com.apm.insight.e.a(z10);
    }

    public static void b(long j11) {
        NativeImpl.b(j11);
    }

    public static void b(ICrashCallback iCrashCallback, CrashType crashType) {
        f19819f.b(iCrashCallback, crashType);
    }

    public static void b(IOOMCallback iOOMCallback) {
        f19819f.b(iOOMCallback);
    }

    public static void b(com.apm.insight.b.h.a aVar) {
        com.apm.insight.k.e.a(aVar);
    }

    @Deprecated
    public static void b(String str) {
        if (com.apm.insight.e.i().isReportErrorEnable()) {
            com.apm.insight.g.a.c(str);
        }
    }

    public static void b(boolean z10) {
        com.apm.insight.e.b(z10);
    }

    public static boolean b() {
        return f19815b;
    }

    private static boolean b(Context context) {
        try {
            return new File(com.apm.insight.l.j.j(context), "npth").exists();
        } catch (Throwable unused) {
            return false;
        }
    }

    public static void c(String str) {
        NativeImpl.b(str);
    }

    public static void c(boolean z10) {
        com.apm.insight.e.c(z10);
    }

    public static boolean c() {
        return f19816c;
    }

    private static boolean c(Context context) {
        try {
            return new File(context.getApplicationInfo().nativeLibraryDir, "libapminsighta.so").exists();
        } catch (Throwable unused) {
            return false;
        }
    }

    public static void d(boolean z10) {
        com.apm.insight.e.d(z10);
    }

    public static boolean d() {
        return f19817d;
    }

    static /* synthetic */ void e(boolean z10) {
        Context contextG = com.apm.insight.e.g();
        com.apm.insight.runtime.a.f.a();
        j.a();
        int iB = NativeImpl.b();
        NativeImpl.d();
        if (f19818e) {
            com.apm.insight.c.a();
            com.apm.insight.b.a.a("NativeLibraryLoad faild");
        } else if (iB < 0) {
            com.apm.insight.c.a();
            com.apm.insight.b.a.a("createCallbackThread faild");
        }
        com.apm.insight.e.a.a().a(contextG);
        com.apm.insight.c.a();
        com.apm.insight.k.h.a(contextG);
        if (z10) {
            com.apm.insight.b.f.a(contextG).c();
            f19816c = z10;
        }
        com.apm.insight.k.g.a().b();
        NativeImpl.g();
        com.apm.insight.k.j.d();
        NativeImpl.k();
        n.a("afterNpthInitAsync", "noValue");
    }

    public static boolean e() {
        return f19814a;
    }

    public static void f() {
        if (!f19814a || f19815b) {
            return;
        }
        Context contextG = com.apm.insight.e.g();
        com.apm.insight.g.a aVarA = com.apm.insight.g.a.a();
        aVarA.a(new com.apm.insight.i.b(contextG));
        aVarA.b(new com.apm.insight.g.d(contextG));
    }

    public static void g() {
        if (f19814a) {
            com.apm.insight.b.f.a(com.apm.insight.e.g()).c();
            f19816c = true;
        }
    }

    public static boolean h() {
        if (f19814a && !f19817d) {
            boolean zA = NativeImpl.a(com.apm.insight.e.g());
            f19817d = zA;
            if (!zA) {
                f19818e = true;
            }
        }
        return f19817d;
    }

    public static boolean i() {
        return com.apm.insight.b.c.c();
    }

    public static void j() {
        if (f19814a) {
            com.apm.insight.b.f.a(com.apm.insight.e.g()).d();
            f19816c = false;
        }
    }

    public static void k() {
        NativeImpl.c();
    }

    public static boolean l() {
        return com.apm.insight.g.a.b() || NativeImpl.e();
    }

    public static boolean m() {
        return com.apm.insight.g.a.c() || NativeImpl.e();
    }

    public static boolean n() {
        return com.apm.insight.g.a.b();
    }

    public static boolean o() {
        return f19821h;
    }

    public static void p() {
        f19821h = true;
    }

    static /* synthetic */ boolean r() {
        f19820g = true;
        return true;
    }
}
