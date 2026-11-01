package com.google.firebase.messaging;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import com.google.android.gms.cloudmessaging.CloudMessage;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import java.io.IOException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class FirebaseMessaging {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static y0 f31965m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    static ScheduledExecutorService f31967o;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.firebase.f f31968a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f31969b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final e0 f31970c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final u0 f31971d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a f31972e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Executor f31973f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Executor f31974g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Task f31975h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final j0 f31976i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f31977j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Application.ActivityLifecycleCallbacks f31978k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final long f31964l = TimeUnit.HOURS.toSeconds(8);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    static ic.b f31966n = new ic.b() { // from class: com.google.firebase.messaging.q
        @Override // ic.b
        public final Object get() {
            return FirebaseMessaging.H();
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: loaded from: classes4.dex */
    class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final fc.d f31979a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f31980b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private fc.b f31981c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Boolean f31982d;

        a(fc.d dVar) {
            this.f31979a = dVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(fc.a aVar) {
            if (c()) {
                FirebaseMessaging.this.N();
            }
        }

        private Boolean e() {
            ApplicationInfo applicationInfo;
            Bundle bundle;
            Context contextK = FirebaseMessaging.this.f31968a.k();
            SharedPreferences sharedPreferences = contextK.getSharedPreferences("com.google.firebase.messaging", 0);
            if (sharedPreferences.contains("auto_init")) {
                return Boolean.valueOf(sharedPreferences.getBoolean("auto_init", false));
            }
            try {
                PackageManager packageManager = contextK.getPackageManager();
                if (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(contextK.getPackageName(), 128)) == null || (bundle = applicationInfo.metaData) == null || !bundle.containsKey("firebase_messaging_auto_init_enabled")) {
                    return null;
                }
                return Boolean.valueOf(applicationInfo.metaData.getBoolean("firebase_messaging_auto_init_enabled"));
            } catch (PackageManager.NameNotFoundException unused) {
                return null;
            }
        }

        synchronized void b() {
            try {
                if (this.f31980b) {
                    return;
                }
                Boolean boolE = e();
                this.f31982d = boolE;
                if (boolE == null) {
                    fc.b bVar = new fc.b() { // from class: com.google.firebase.messaging.b0
                        @Override // fc.b
                        public final void a(fc.a aVar) {
                            this.f32044a.d(aVar);
                        }
                    };
                    this.f31981c = bVar;
                    this.f31979a.b(com.google.firebase.b.class, bVar);
                }
                this.f31980b = true;
            } catch (Throwable th2) {
                throw th2;
            }
        }

        synchronized boolean c() {
            Boolean bool;
            try {
                b();
                bool = this.f31982d;
            } catch (Throwable th2) {
                throw th2;
            }
            return bool != null ? bool.booleanValue() : FirebaseMessaging.this.f31968a.t();
        }
    }

    FirebaseMessaging(com.google.firebase.f fVar, hc.a aVar, ic.b bVar, fc.d dVar, j0 j0Var, e0 e0Var, Executor executor, Executor executor2, Executor executor3) {
        this.f31977j = false;
        f31966n = bVar;
        this.f31968a = fVar;
        this.f31972e = new a(dVar);
        Context contextK = fVar.k();
        this.f31969b = contextK;
        p pVar = new p();
        this.f31978k = pVar;
        this.f31976i = j0Var;
        this.f31970c = e0Var;
        this.f31971d = new u0(executor);
        this.f31973f = executor2;
        this.f31974g = executor3;
        Context contextK2 = fVar.k();
        if (contextK2 instanceof Application) {
            ((Application) contextK2).registerActivityLifecycleCallbacks(pVar);
        } else {
            Log.w("FirebaseMessaging", "Context " + contextK2 + " was not an application, can't register for lifecycle callbacks. Some notification events may be dropped as a result.");
        }
        if (aVar != null) {
            aVar.a(new hc.a.InterfaceC0776a() { // from class: com.google.firebase.messaging.u
            });
        }
        executor2.execute(new Runnable() { // from class: com.google.firebase.messaging.v
            @Override // java.lang.Runnable
            public final void run() {
                this.f32167a.E();
            }
        });
        Task taskF = c1.f(this, j0Var, e0Var, contextK, n.g());
        this.f31975h = taskF;
        taskF.addOnSuccessListener(executor2, new OnSuccessListener() { // from class: com.google.firebase.messaging.w
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                this.f32173a.F((c1) obj);
            }
        });
        executor2.execute(new Runnable() { // from class: com.google.firebase.messaging.x
            @Override // java.lang.Runnable
            public final void run() {
                this.f32175a.G();
            }
        });
    }

    FirebaseMessaging(com.google.firebase.f fVar, hc.a aVar, ic.b bVar, ic.b bVar2, jc.e eVar, ic.b bVar3, fc.d dVar) {
        this(fVar, aVar, bVar, bVar2, eVar, bVar3, dVar, new j0(fVar.k()));
    }

    FirebaseMessaging(com.google.firebase.f fVar, hc.a aVar, ic.b bVar, ic.b bVar2, jc.e eVar, ic.b bVar3, fc.d dVar, j0 j0Var) {
        this(fVar, aVar, bVar3, dVar, j0Var, new e0(fVar, j0Var, bVar, bVar2, eVar), n.f(), n.c(), n.b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task A(String str, y0.a aVar, String str2) {
        q(this.f31969b).f(r(), str, str2, this.f31976i.a());
        if (aVar == null || !str2.equals(aVar.f32185a)) {
            x(str2);
        }
        return Tasks.forResult(str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task B(final String str, final y0.a aVar) {
        return this.f31970c.f().onSuccessTask(this.f31974g, new SuccessContinuation() { // from class: com.google.firebase.messaging.z
            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final Task then(Object obj) {
                return this.f32188a.A(str, aVar, (String) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void C(TaskCompletionSource taskCompletionSource) {
        try {
            taskCompletionSource.setResult(m());
        } catch (Exception e11) {
            taskCompletionSource.setException(e11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void D(CloudMessage cloudMessage) {
        if (cloudMessage != null) {
            i0.y(cloudMessage.getIntent());
            v();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void E() {
        if (y()) {
            N();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void F(c1 c1Var) {
        if (y()) {
            c1Var.q();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ r8.i H() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Task I(String str, c1 c1Var) {
        return c1Var.r(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Task J(String str, c1 c1Var) {
        return c1Var.u(str);
    }

    private boolean L() {
        p0.c(this.f31969b);
        if (!p0.d(this.f31969b)) {
            return false;
        }
        if (this.f31968a.j(kb.a.class) != null) {
            return true;
        }
        return i0.a() && f31966n != null;
    }

    private synchronized void M() {
        if (!this.f31977j) {
            P(0L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N() {
        if (Q(t())) {
            M();
        }
    }

    @NonNull
    @Keep
    static synchronized FirebaseMessaging getInstance(@NonNull com.google.firebase.f fVar) {
        FirebaseMessaging firebaseMessaging;
        firebaseMessaging = (FirebaseMessaging) fVar.j(FirebaseMessaging.class);
        Preconditions.checkNotNull(firebaseMessaging, "Firebase Messaging component is not present");
        return firebaseMessaging;
    }

    public static synchronized FirebaseMessaging p() {
        return getInstance(com.google.firebase.f.l());
    }

    private static synchronized y0 q(Context context) {
        try {
            if (f31965m == null) {
                f31965m = new y0(context);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f31965m;
    }

    private String r() {
        return "[DEFAULT]".equals(this.f31968a.m()) ? "" : this.f31968a.o();
    }

    public static r8.i u() {
        return (r8.i) f31966n.get();
    }

    private void v() {
        this.f31970c.e().addOnSuccessListener(this.f31973f, new OnSuccessListener() { // from class: com.google.firebase.messaging.y
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                this.f32182a.D((CloudMessage) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public void G() {
        p0.c(this.f31969b);
        r0.g(this.f31969b, this.f31970c, L());
        if (L()) {
            v();
        }
    }

    private void x(String str) {
        if ("[DEFAULT]".equals(this.f31968a.m())) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Invoking onNewToken for app: ");
                sb2.append(this.f31968a.m());
            }
            Intent intent = new Intent("com.google.firebase.messaging.NEW_TOKEN");
            intent.putExtra("token", str);
            new m(this.f31969b).k(intent);
        }
    }

    synchronized void K(boolean z10) {
        this.f31977j = z10;
    }

    public Task O(final String str) {
        return this.f31975h.onSuccessTask(new SuccessContinuation() { // from class: com.google.firebase.messaging.a0
            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final Task then(Object obj) {
                return FirebaseMessaging.I(str, (c1) obj);
            }
        });
    }

    synchronized void P(long j11) {
        n(new SyncTask(this, Math.min(Math.max(30L, 2 * j11), f31964l)), j11);
        this.f31977j = true;
    }

    boolean Q(y0.a aVar) {
        return aVar == null || aVar.b(this.f31976i.a());
    }

    public Task R(final String str) {
        return this.f31975h.onSuccessTask(new SuccessContinuation() { // from class: com.google.firebase.messaging.r
            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final Task then(Object obj) {
                return FirebaseMessaging.J(str, (c1) obj);
            }
        });
    }

    String m() throws IOException {
        final y0.a aVarT = t();
        if (!Q(aVarT)) {
            return aVarT.f32185a;
        }
        final String strC = j0.c(this.f31968a);
        try {
            return (String) Tasks.await(this.f31971d.b(strC, new u0.a() { // from class: com.google.firebase.messaging.t
                @Override // com.google.firebase.messaging.u0.a
                public final Task start() {
                    return this.f32159a.B(strC, aVarT);
                }
            }));
        } catch (InterruptedException | ExecutionException e11) {
            throw new IOException(e11);
        }
    }

    void n(Runnable runnable, long j11) {
        synchronized (FirebaseMessaging.class) {
            try {
                if (f31967o == null) {
                    f31967o = new ScheduledThreadPoolExecutor(1, new NamedThreadFactory("TAG"));
                }
                f31967o.schedule(runnable, j11, TimeUnit.SECONDS);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    Context o() {
        return this.f31969b;
    }

    public Task s() {
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.f31973f.execute(new Runnable() { // from class: com.google.firebase.messaging.s
            @Override // java.lang.Runnable
            public final void run() {
                this.f32157a.C(taskCompletionSource);
            }
        });
        return taskCompletionSource.getTask();
    }

    y0.a t() {
        return q(this.f31969b).d(r(), j0.c(this.f31968a));
    }

    public boolean y() {
        return this.f31972e.c();
    }

    boolean z() {
        return this.f31976i.g();
    }
}
