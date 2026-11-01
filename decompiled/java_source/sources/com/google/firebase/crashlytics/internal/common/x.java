package com.google.firebase.crashlytics.internal.common;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.tasks.Task;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f31266a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.firebase.f f31267b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final d0 f31268c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private y f31271f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private y f31272g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f31273h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private n f31274i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final g0 f31275j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final vb.g f31276k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final qb.b f31277l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final pb.a f31278m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final k f31279n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final ob.a f31280o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final ob.l f31281p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final CrashlyticsWorkers f31282q;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f31270e = System.currentTimeMillis();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final l0 f31269d = new l0();

    public x(com.google.firebase.f fVar, g0 g0Var, ob.a aVar, d0 d0Var, qb.b bVar, pb.a aVar2, vb.g gVar, k kVar, ob.l lVar, CrashlyticsWorkers crashlyticsWorkers) {
        this.f31267b = fVar;
        this.f31268c = d0Var;
        this.f31266a = fVar.k();
        this.f31275j = g0Var;
        this.f31280o = aVar;
        this.f31277l = bVar;
        this.f31278m = aVar2;
        this.f31276k = gVar;
        this.f31279n = kVar;
        this.f31281p = lVar;
        this.f31282q = crashlyticsWorkers;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void A(String str) {
        this.f31274i.Y(str);
    }

    private void i() {
        try {
            this.f31273h = Boolean.TRUE.equals((Boolean) this.f31282q.f31297a.c().submit(new Callable() { // from class: com.google.firebase.crashlytics.internal.common.s
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.f31244a.t();
                }
            }).get(3L, TimeUnit.SECONDS));
        } catch (Exception unused) {
            this.f31273h = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public void v(wb.b bVar) {
        CrashlyticsWorkers.c();
        E();
        try {
            try {
                this.f31277l.a(new qb.a() { // from class: com.google.firebase.crashlytics.internal.common.v
                    @Override // qb.a
                    public final void a(String str) {
                        this.f31255a.B(str);
                    }
                });
                this.f31274i.U();
                if (!bVar.b().f31738b.f31745a) {
                    ob.g.f().b("Collection of crash reports disabled in Crashlytics settings.");
                    throw new RuntimeException("Collection of crash reports disabled in Crashlytics settings.");
                }
                if (!this.f31274i.A(bVar)) {
                    ob.g.f().k("Previous sessions could not be finalized.");
                }
                this.f31274i.Z(bVar.a());
                D();
            } catch (Exception e11) {
                ob.g.f().e("Crashlytics encountered a problem during asynchronous initialization.", e11);
            }
        } catch (Throwable th2) {
            D();
            throw th2;
        }
    }

    private void p(final wb.b bVar) {
        Future<?> futureSubmit = this.f31282q.f31297a.c().submit(new Runnable() { // from class: com.google.firebase.crashlytics.internal.common.u
            @Override // java.lang.Runnable
            public final void run() {
                this.f31249a.v(bVar);
            }
        });
        ob.g.f().b("Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously.");
        try {
            futureSubmit.get(3L, TimeUnit.SECONDS);
        } catch (InterruptedException e11) {
            ob.g.f().e("Crashlytics was interrupted during initialization.", e11);
            Thread.currentThread().interrupt();
        } catch (ExecutionException e12) {
            ob.g.f().e("Crashlytics encountered a problem during initialization.", e12);
        } catch (TimeoutException e13) {
            ob.g.f().e("Crashlytics timed out during initialization.", e13);
        }
    }

    public static String q() {
        return "19.3.0";
    }

    static boolean r(String str, boolean z10) {
        if (!z10) {
            ob.g.f().i("Configured not to require a build ID.");
            return true;
        }
        if (!TextUtils.isEmpty(str)) {
            return true;
        }
        Log.e("FirebaseCrashlytics", ".");
        Log.e("FirebaseCrashlytics", ".     |  | ");
        Log.e("FirebaseCrashlytics", ".     |  |");
        Log.e("FirebaseCrashlytics", ".     |  |");
        Log.e("FirebaseCrashlytics", ".   \\ |  | /");
        Log.e("FirebaseCrashlytics", ".    \\    /");
        Log.e("FirebaseCrashlytics", ".     \\  /");
        Log.e("FirebaseCrashlytics", ".      \\/");
        Log.e("FirebaseCrashlytics", ".");
        Log.e("FirebaseCrashlytics", "The Crashlytics build ID is missing. This occurs when the Crashlytics Gradle plugin is missing from your app's build configuration. Please review the Firebase Crashlytics onboarding instructions at https://firebase.google.com/docs/crashlytics/get-started?platform=android#add-plugin");
        Log.e("FirebaseCrashlytics", ".");
        Log.e("FirebaseCrashlytics", ".      /\\");
        Log.e("FirebaseCrashlytics", ".     /  \\");
        Log.e("FirebaseCrashlytics", ".    /    \\");
        Log.e("FirebaseCrashlytics", ".   / |  | \\");
        Log.e("FirebaseCrashlytics", ".     |  |");
        Log.e("FirebaseCrashlytics", ".     |  |");
        Log.e("FirebaseCrashlytics", ".     |  |");
        Log.e("FirebaseCrashlytics", ".");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean t() {
        return Boolean.valueOf(this.f31274i.t());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w(long j11, String str) {
        this.f31274i.d0(j11, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void x(final long j11, final String str) {
        this.f31282q.f31298b.f(new Runnable() { // from class: com.google.firebase.crashlytics.internal.common.w
            @Override // java.lang.Runnable
            public final void run() {
                this.f31256a.w(j11, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void y(Throwable th2) {
        this.f31274i.c0(Thread.currentThread(), th2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void z(String str, String str2) {
        this.f31274i.W(str, str2);
    }

    public void B(final String str) {
        final long jCurrentTimeMillis = System.currentTimeMillis() - this.f31270e;
        this.f31282q.f31297a.f(new Runnable() { // from class: com.google.firebase.crashlytics.internal.common.t
            @Override // java.lang.Runnable
            public final void run() {
                this.f31245a.x(jCurrentTimeMillis, str);
            }
        });
    }

    public void C(final Throwable th2) {
        this.f31282q.f31297a.f(new Runnable() { // from class: com.google.firebase.crashlytics.internal.common.p
            @Override // java.lang.Runnable
            public final void run() {
                this.f31237a.y(th2);
            }
        });
    }

    void D() {
        CrashlyticsWorkers.c();
        try {
            if (this.f31271f.d()) {
                return;
            }
            ob.g.f().k("Initialization marker file was not properly removed.");
        } catch (Exception e11) {
            ob.g.f().e("Problem encountered deleting Crashlytics initialization marker.", e11);
        }
    }

    void E() {
        CrashlyticsWorkers.c();
        this.f31271f.a();
        ob.g.f().i("Initialization marker file was created.");
    }

    public boolean F(a aVar, wb.b bVar) {
        if (!r(aVar.f31138b, CommonUtils.i(this.f31266a, "com.crashlytics.RequireBuildId", true))) {
            throw new IllegalStateException("The Crashlytics build ID is missing. This occurs when the Crashlytics Gradle plugin is missing from your app's build configuration. Please review the Firebase Crashlytics onboarding instructions at https://firebase.google.com/docs/crashlytics/get-started?platform=android#add-plugin");
        }
        String strC = new g().c();
        try {
            this.f31272g = new y("crash_marker", this.f31276k);
            this.f31271f = new y("initialization_marker", this.f31276k);
            rb.o oVar = new rb.o(strC, this.f31276k, this.f31282q);
            rb.e eVar = new rb.e(this.f31276k);
            xb.a aVar2 = new xb.a(1024, new xb.c(10));
            this.f31281p.c(oVar);
            this.f31274i = new n(this.f31266a, this.f31275j, this.f31268c, this.f31276k, this.f31272g, aVar, oVar, eVar, w0.i(this.f31266a, this.f31275j, this.f31276k, aVar, eVar, oVar, aVar2, bVar, this.f31269d, this.f31279n, this.f31282q), this.f31280o, this.f31278m, this.f31279n, this.f31282q);
            boolean zM = m();
            i();
            this.f31274i.y(strC, Thread.getDefaultUncaughtExceptionHandler(), bVar);
            if (!zM || !CommonUtils.d(this.f31266a)) {
                ob.g.f().b("Successfully configured exception handler.");
                return true;
            }
            ob.g.f().b("Crashlytics did not finish previous background initialization. Initializing synchronously.");
            p(bVar);
            return false;
        } catch (Exception e11) {
            ob.g.f().e("Crashlytics was not started due to an exception during initialization", e11);
            this.f31274i = null;
            return false;
        }
    }

    public Task G() {
        return this.f31274i.V();
    }

    public void H(Boolean bool) {
        this.f31268c.h(bool);
    }

    public void I(final String str, final String str2) {
        this.f31282q.f31297a.f(new Runnable() { // from class: com.google.firebase.crashlytics.internal.common.r
            @Override // java.lang.Runnable
            public final void run() {
                this.f31241a.z(str, str2);
            }
        });
    }

    public void J(final String str) {
        this.f31282q.f31297a.f(new Runnable() { // from class: com.google.firebase.crashlytics.internal.common.q
            @Override // java.lang.Runnable
            public final void run() {
                this.f31239a.A(str);
            }
        });
    }

    public Task j() {
        return this.f31274i.n();
    }

    public Task k() {
        return this.f31274i.s();
    }

    public boolean l() {
        return this.f31273h;
    }

    boolean m() {
        return this.f31271f.c();
    }

    public Task o(final wb.b bVar) {
        return this.f31282q.f31297a.f(new Runnable() { // from class: com.google.firebase.crashlytics.internal.common.o
            @Override // java.lang.Runnable
            public final void run() {
                this.f31235a.u(bVar);
            }
        });
    }

    public boolean s() {
        return this.f31268c.d();
    }
}
