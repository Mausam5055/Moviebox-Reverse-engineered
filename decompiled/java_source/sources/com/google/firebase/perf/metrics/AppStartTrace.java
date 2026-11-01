package com.google.firebase.perf.metrics;

import android.R;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.annotation.Keep;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.d0;
import androidx.p009lifecycle.g0;
import androidx.p009lifecycle.t;
import com.google.firebase.n;
import com.google.firebase.perf.session.PerfSession;
import com.google.firebase.perf.session.SessionManager;
import com.google.firebase.perf.util.Constants$TraceNames;
import com.google.firebase.perf.util.Timer;
import com.google.firebase.perf.v1.ApplicationProcessState;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import vc.k;

/* JADX INFO: loaded from: classes.dex */
public class AppStartTrace implements Application.ActivityLifecycleCallbacks, t {
    private static volatile AppStartTrace A;
    private static ExecutorService B;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final Timer f32259y = new com.google.firebase.perf.util.a().a();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final long f32260z = TimeUnit.MINUTES.toMicros(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final k f32262b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.google.firebase.perf.util.a f32263c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.google.firebase.perf.config.a f32264d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.google.firebase.perf.v1.i.b f32265e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Context f32266f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private WeakReference f32267g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private WeakReference f32268h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Timer f32270j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Timer f32271k;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private PerfSession f32280t;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f32261a = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f32269i = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Timer f32272l = null;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Timer f32273m = null;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Timer f32274n = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Timer f32275o = null;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Timer f32276p = null;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Timer f32277q = null;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private Timer f32278r = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private Timer f32279s = null;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f32281u = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f32282v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final b f32283w = new b();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f32284x = false;

    public static class StartFromBackgroundRunnable implements Runnable {
        private final AppStartTrace trace;

        public StartFromBackgroundRunnable(AppStartTrace appStartTrace) {
            this.trace = appStartTrace;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.trace.f32272l == null) {
                this.trace.f32281u = true;
            }
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    private final class b implements ViewTreeObserver.OnDrawListener {
        private b() {
        }

        @Override // android.view.ViewTreeObserver.OnDrawListener
        public void onDraw() {
            AppStartTrace.h(AppStartTrace.this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    AppStartTrace(k kVar, com.google.firebase.perf.util.a aVar, com.google.firebase.perf.config.a aVar2, ExecutorService executorService) {
        this.f32262b = kVar;
        this.f32263c = aVar;
        this.f32264d = aVar2;
        B = executorService;
        this.f32265e = com.google.firebase.perf.v1.i.M().r("_experiment_app_start_ttid");
        this.f32270j = Build.VERSION.SDK_INT >= 24 ? Timer.ofElapsedRealtime(Process.getStartElapsedRealtime()) : null;
        n nVar = (n) com.google.firebase.f.l().j(n.class);
        this.f32271k = nVar != null ? Timer.ofElapsedRealtime(nVar.b()) : null;
    }

    static /* synthetic */ int h(AppStartTrace appStartTrace) {
        int i11 = appStartTrace.f32282v;
        appStartTrace.f32282v = i11 + 1;
        return i11;
    }

    private Timer i() {
        Timer timer = this.f32271k;
        return timer != null ? timer : f32259y;
    }

    public static AppStartTrace j() {
        return A != null ? A : k(k.k(), new com.google.firebase.perf.util.a());
    }

    static AppStartTrace k(k kVar, com.google.firebase.perf.util.a aVar) {
        if (A == null) {
            synchronized (AppStartTrace.class) {
                try {
                    if (A == null) {
                        A = new AppStartTrace(kVar, aVar, com.google.firebase.perf.config.a.g(), new ThreadPoolExecutor(0, 1, f32260z + 10, TimeUnit.SECONDS, new LinkedBlockingQueue()));
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return A;
    }

    private Timer l() {
        Timer timer = this.f32270j;
        return timer != null ? timer : i();
    }

    public static boolean m(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        if (activityManager == null) {
            return true;
        }
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
        if (runningAppProcesses == null) {
            return false;
        }
        String packageName = context.getPackageName();
        String str = packageName + ":";
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.importance == 100 && (runningAppProcessInfo.processName.equals(packageName) || runningAppProcessInfo.processName.startsWith(str))) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n(com.google.firebase.perf.v1.i.b bVar) {
        this.f32262b.C((com.google.firebase.perf.v1.i) bVar.build(), ApplicationProcessState.FOREGROUND_BACKGROUND);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        com.google.firebase.perf.v1.i.b bVarQ = com.google.firebase.perf.v1.i.M().r(Constants$TraceNames.APP_START_TRACE_NAME.toString()).p(i().getMicros()).q(i().getDurationMicros(this.f32274n));
        ArrayList arrayList = new ArrayList(3);
        arrayList.add((com.google.firebase.perf.v1.i) com.google.firebase.perf.v1.i.M().r(Constants$TraceNames.ON_CREATE_TRACE_NAME.toString()).p(i().getMicros()).q(i().getDurationMicros(this.f32272l)).build());
        if (this.f32273m != null) {
            com.google.firebase.perf.v1.i.b bVarM = com.google.firebase.perf.v1.i.M();
            bVarM.r(Constants$TraceNames.ON_START_TRACE_NAME.toString()).p(this.f32272l.getMicros()).q(this.f32272l.getDurationMicros(this.f32273m));
            arrayList.add((com.google.firebase.perf.v1.i) bVarM.build());
            com.google.firebase.perf.v1.i.b bVarM2 = com.google.firebase.perf.v1.i.M();
            bVarM2.r(Constants$TraceNames.ON_RESUME_TRACE_NAME.toString()).p(this.f32273m.getMicros()).q(this.f32273m.getDurationMicros(this.f32274n));
            arrayList.add((com.google.firebase.perf.v1.i) bVarM2.build());
        }
        bVarQ.i(arrayList).j(this.f32280t.build());
        this.f32262b.C((com.google.firebase.perf.v1.i) bVarQ.build(), ApplicationProcessState.FOREGROUND_BACKGROUND);
    }

    private void p(final com.google.firebase.perf.v1.i.b bVar) {
        if (this.f32277q == null || this.f32278r == null || this.f32279s == null) {
            return;
        }
        B.execute(new Runnable() { // from class: com.google.firebase.perf.metrics.f
            @Override // java.lang.Runnable
            public final void run() {
                this.f32290a.n(bVar);
            }
        });
        u();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        if (this.f32279s != null) {
            return;
        }
        this.f32279s = this.f32263c.a();
        this.f32265e.k((com.google.firebase.perf.v1.i) com.google.firebase.perf.v1.i.M().r("_experiment_onDrawFoQ").p(l().getMicros()).q(l().getDurationMicros(this.f32279s)).build());
        if (this.f32270j != null) {
            this.f32265e.k((com.google.firebase.perf.v1.i) com.google.firebase.perf.v1.i.M().r("_experiment_procStart_to_classLoad").p(l().getMicros()).q(l().getDurationMicros(i())).build());
        }
        this.f32265e.o("systemDeterminedForeground", this.f32284x ? "true" : "false");
        this.f32265e.n("onDrawCount", this.f32282v);
        this.f32265e.j(this.f32280t.build());
        p(this.f32265e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r() {
        if (this.f32277q != null) {
            return;
        }
        this.f32277q = this.f32263c.a();
        this.f32265e.p(l().getMicros()).q(l().getDurationMicros(this.f32277q));
        p(this.f32265e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        if (this.f32278r != null) {
            return;
        }
        this.f32278r = this.f32263c.a();
        this.f32265e.k((com.google.firebase.perf.v1.i) com.google.firebase.perf.v1.i.M().r("_experiment_preDrawFoQ").p(l().getMicros()).q(l().getDurationMicros(this.f32278r)).build());
        p(this.f32265e);
    }

    @Keep
    public static void setLauncherActivityOnCreateTime(String str) {
    }

    @Keep
    public static void setLauncherActivityOnResumeTime(String str) {
    }

    @Keep
    public static void setLauncherActivityOnStartTime(String str) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivityCreated(Activity activity, Bundle bundle) {
        try {
            if (!this.f32281u && this.f32272l == null) {
                this.f32284x = this.f32284x || m(this.f32266f);
                this.f32267g = new WeakReference(activity);
                this.f32272l = this.f32263c.a();
                if (l().getDurationMicros(this.f32272l) > f32260z) {
                    this.f32269i = true;
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        View viewFindViewById;
        if (this.f32281u || this.f32269i || !this.f32264d.h() || (viewFindViewById = activity.findViewById(R.id.content)) == null) {
            return;
        }
        viewFindViewById.getViewTreeObserver().removeOnDrawListener(this.f32283w);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivityResumed(Activity activity) {
        View viewFindViewById;
        try {
            if (!this.f32281u && !this.f32269i) {
                boolean zH = this.f32264d.h();
                if (zH && (viewFindViewById = activity.findViewById(R.id.content)) != null) {
                    viewFindViewById.getViewTreeObserver().addOnDrawListener(this.f32283w);
                    com.google.firebase.perf.util.c.e(viewFindViewById, new Runnable() { // from class: com.google.firebase.perf.metrics.b
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f32286a.q();
                        }
                    });
                    com.google.firebase.perf.util.f.a(viewFindViewById, new Runnable() { // from class: com.google.firebase.perf.metrics.c
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f32287a.r();
                        }
                    }, new Runnable() { // from class: com.google.firebase.perf.metrics.d
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f32288a.s();
                        }
                    });
                }
                if (this.f32274n != null) {
                    return;
                }
                this.f32268h = new WeakReference(activity);
                this.f32274n = this.f32263c.a();
                this.f32280t = SessionManager.getInstance().perfSession();
                sc.a.e().a("onResume(): " + activity.getClass().getName() + ": " + i().getDurationMicros(this.f32274n) + " microseconds");
                B.execute(new Runnable() { // from class: com.google.firebase.perf.metrics.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f32289a.o();
                    }
                });
                if (!zH) {
                    u();
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivityStarted(Activity activity) {
        if (!this.f32281u && this.f32273m == null && !this.f32269i) {
            this.f32273m = this.f32263c.a();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
    }

    @Keep
    @d0(Lifecycle.Event.ON_STOP)
    public void onAppEnteredBackground() {
        if (this.f32281u || this.f32269i || this.f32276p != null) {
            return;
        }
        this.f32276p = this.f32263c.a();
        this.f32265e.k((com.google.firebase.perf.v1.i) com.google.firebase.perf.v1.i.M().r("_experiment_firstBackgrounding").p(l().getMicros()).q(l().getDurationMicros(this.f32276p)).build());
    }

    @Keep
    @d0(Lifecycle.Event.ON_START)
    public void onAppEnteredForeground() {
        if (this.f32281u || this.f32269i || this.f32275o != null) {
            return;
        }
        this.f32275o = this.f32263c.a();
        this.f32265e.k((com.google.firebase.perf.v1.i) com.google.firebase.perf.v1.i.M().r("_experiment_firstForegrounding").p(l().getMicros()).q(l().getDurationMicros(this.f32275o)).build());
    }

    public synchronized void t(Context context) {
        try {
            if (this.f32261a) {
                return;
            }
            g0.l().getLifecycle().a(this);
            Context applicationContext = context.getApplicationContext();
            if (applicationContext instanceof Application) {
                ((Application) applicationContext).registerActivityLifecycleCallbacks(this);
                this.f32284x = this.f32284x || m(applicationContext);
                this.f32261a = true;
                this.f32266f = applicationContext;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void u() {
        if (this.f32261a) {
            g0.l().getLifecycle().d(this);
            ((Application) this.f32266f).unregisterActivityLifecycleCallbacks(this);
            this.f32261a = false;
        }
    }
}
