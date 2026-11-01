package androidx.p009lifecycle;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class g0 implements u {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final b f9592i = new b(null);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final g0 f9593j = new g0();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f9594a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f9595b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Handler f9598e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f9596c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f9597d = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final w f9599f = new w(this);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Runnable f9600g = new Runnable() { // from class: androidx.lifecycle.f0
        @Override // java.lang.Runnable
        public final void run() {
            g0.i(this.f9588a);
        }
    };

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final i0.a f9601h = new d();

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f9602a = new a();

        private a() {
        }

        @JvmStatic
        public static final void a(Activity activity, Application.ActivityLifecycleCallbacks callback) {
            Intrinsics.h(activity, "activity");
            Intrinsics.h(callback, "callback");
            activity.registerActivityLifecycleCallbacks(callback);
        }
    }

    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final u a() {
            return g0.f9593j;
        }

        public final void b(Context context) {
            Intrinsics.h(context, "context");
            g0.f9593j.h(context);
        }
    }

    public static final class c extends j {

        public static final class a extends j {
            final /* synthetic */ g0 this$0;

            a(g0 g0Var) {
                this.this$0 = g0Var;
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPostResumed(Activity activity) {
                Intrinsics.h(activity, "activity");
                this.this$0.e();
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPostStarted(Activity activity) {
                Intrinsics.h(activity, "activity");
                this.this$0.f();
            }
        }

        c() {
        }

        @Override // androidx.p009lifecycle.j, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            Intrinsics.h(activity, "activity");
            if (Build.VERSION.SDK_INT < 29) {
                i0.INSTANCE.b(activity).e(g0.this.f9601h);
            }
        }

        @Override // androidx.p009lifecycle.j, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            Intrinsics.h(activity, "activity");
            g0.this.d();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreCreated(Activity activity, Bundle bundle) {
            Intrinsics.h(activity, "activity");
            a.a(activity, new a(g0.this));
        }

        @Override // androidx.p009lifecycle.j, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            Intrinsics.h(activity, "activity");
            g0.this.g();
        }
    }

    public static final class d implements i0.a {
        d() {
        }

        @Override // androidx.lifecycle.i0.a
        public void onCreate() {
        }

        @Override // androidx.lifecycle.i0.a
        public void onResume() {
            g0.this.e();
        }

        @Override // androidx.lifecycle.i0.a
        public void onStart() {
            g0.this.f();
        }
    }

    private g0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(g0 this$0) {
        Intrinsics.h(this$0, "this$0");
        this$0.j();
        this$0.k();
    }

    public static final u l() {
        return f9592i.a();
    }

    public final void d() {
        int i11 = this.f9595b - 1;
        this.f9595b = i11;
        if (i11 == 0) {
            Handler handler = this.f9598e;
            Intrinsics.e(handler);
            handler.postDelayed(this.f9600g, 700L);
        }
    }

    public final void e() {
        int i11 = this.f9595b + 1;
        this.f9595b = i11;
        if (i11 == 1) {
            if (this.f9596c) {
                this.f9599f.i(Lifecycle.Event.ON_RESUME);
                this.f9596c = false;
            } else {
                Handler handler = this.f9598e;
                Intrinsics.e(handler);
                handler.removeCallbacks(this.f9600g);
            }
        }
    }

    public final void f() {
        int i11 = this.f9594a + 1;
        this.f9594a = i11;
        if (i11 == 1 && this.f9597d) {
            this.f9599f.i(Lifecycle.Event.ON_START);
            this.f9597d = false;
        }
    }

    public final void g() {
        this.f9594a--;
        k();
    }

    @Override // androidx.p009lifecycle.u
    public Lifecycle getLifecycle() {
        return this.f9599f;
    }

    public final void h(Context context) {
        Intrinsics.h(context, "context");
        this.f9598e = new Handler();
        this.f9599f.i(Lifecycle.Event.ON_CREATE);
        Context applicationContext = context.getApplicationContext();
        Intrinsics.f(applicationContext, "null cannot be cast to non-null type android.app.Application");
        ((Application) applicationContext).registerActivityLifecycleCallbacks(new c());
    }

    public final void j() {
        if (this.f9595b == 0) {
            this.f9596c = true;
            this.f9599f.i(Lifecycle.Event.ON_PAUSE);
        }
    }

    public final void k() {
        if (this.f9594a == 0 && this.f9596c) {
            this.f9599f.i(Lifecycle.Event.ON_STOP);
            this.f9597d = true;
        }
    }
}
