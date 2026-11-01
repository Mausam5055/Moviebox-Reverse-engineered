package com.google.firebase.perf.application;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.google.firebase.perf.metrics.Trace;
import com.google.firebase.perf.metrics.g;
import com.google.firebase.perf.session.SessionManager;
import com.google.firebase.perf.util.Constants$CounterNames;
import com.google.firebase.perf.util.Constants$TraceNames;
import com.google.firebase.perf.util.Timer;
import com.google.firebase.perf.util.e;
import com.google.firebase.perf.util.h;
import com.google.firebase.perf.v1.ApplicationProcessState;
import com.google.firebase.perf.v1.i;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import vc.k;

/* JADX INFO: loaded from: classes4.dex */
public class a implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final sc.a f32195r = sc.a.e();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static volatile a f32196s;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final WeakHashMap f32197a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final WeakHashMap f32198b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final WeakHashMap f32199c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final WeakHashMap f32200d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Map f32201e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Set f32202f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Set f32203g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final AtomicInteger f32204h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final k f32205i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final com.google.firebase.perf.config.a f32206j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final com.google.firebase.perf.util.a f32207k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final boolean f32208l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Timer f32209m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Timer f32210n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private ApplicationProcessState f32211o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f32212p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f32213q;

    /* JADX INFO: renamed from: com.google.firebase.perf.application.a$a, reason: collision with other inner class name */
    public interface InterfaceC0446a {
        void a();
    }

    public interface b {
        void onUpdateAppState(ApplicationProcessState applicationProcessState);
    }

    a(k kVar, com.google.firebase.perf.util.a aVar) {
        this(kVar, aVar, com.google.firebase.perf.config.a.g(), g());
    }

    a(k kVar, com.google.firebase.perf.util.a aVar, com.google.firebase.perf.config.a aVar2, boolean z10) {
        this.f32197a = new WeakHashMap();
        this.f32198b = new WeakHashMap();
        this.f32199c = new WeakHashMap();
        this.f32200d = new WeakHashMap();
        this.f32201e = new HashMap();
        this.f32202f = new HashSet();
        this.f32203g = new HashSet();
        this.f32204h = new AtomicInteger(0);
        this.f32211o = ApplicationProcessState.BACKGROUND;
        this.f32212p = false;
        this.f32213q = true;
        this.f32205i = kVar;
        this.f32207k = aVar;
        this.f32206j = aVar2;
        this.f32208l = z10;
    }

    public static a b() {
        if (f32196s == null) {
            synchronized (a.class) {
                try {
                    if (f32196s == null) {
                        f32196s = new a(k.k(), new com.google.firebase.perf.util.a());
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f32196s;
    }

    public static String c(Activity activity) {
        return "_st_" + activity.getClass().getSimpleName();
    }

    private static boolean g() {
        return d.a();
    }

    private void l() {
        synchronized (this.f32203g) {
            try {
                for (InterfaceC0446a interfaceC0446a : this.f32203g) {
                    if (interfaceC0446a != null) {
                        interfaceC0446a.a();
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void m(Activity activity) {
        Trace trace = (Trace) this.f32200d.get(activity);
        if (trace == null) {
            return;
        }
        this.f32200d.remove(activity);
        e eVarE = ((d) this.f32198b.get(activity)).e();
        if (!eVarE.d()) {
            f32195r.k("Failed to record frame data for %s.", activity.getClass().getSimpleName());
        } else {
            h.a(trace, (g.a) eVarE.c());
            trace.stop();
        }
    }

    private void n(String str, Timer timer, Timer timer2) {
        if (this.f32206j.K()) {
            i.b bVarJ = i.M().r(str).p(timer.getMicros()).q(timer.getDurationMicros(timer2)).j(SessionManager.getInstance().perfSession().build());
            int andSet = this.f32204h.getAndSet(0);
            synchronized (this.f32201e) {
                try {
                    bVarJ.l(this.f32201e);
                    if (andSet != 0) {
                        bVarJ.n(Constants$CounterNames.TRACE_STARTED_NOT_STOPPED.toString(), andSet);
                    }
                    this.f32201e.clear();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            this.f32205i.C((i) bVarJ.build(), ApplicationProcessState.FOREGROUND_BACKGROUND);
        }
    }

    private void o(Activity activity) {
        if (h() && this.f32206j.K()) {
            d dVar = new d(activity);
            this.f32198b.put(activity, dVar);
            if (activity instanceof FragmentActivity) {
                c cVar = new c(this.f32207k, this.f32205i, this, dVar);
                this.f32199c.put(activity, cVar);
                ((FragmentActivity) activity).getSupportFragmentManager().p1(cVar, true);
            }
        }
    }

    private void q(ApplicationProcessState applicationProcessState) {
        this.f32211o = applicationProcessState;
        synchronized (this.f32202f) {
            try {
                Iterator it = this.f32202f.iterator();
                while (it.hasNext()) {
                    b bVar = (b) ((WeakReference) it.next()).get();
                    if (bVar != null) {
                        bVar.onUpdateAppState(this.f32211o);
                    } else {
                        it.remove();
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public ApplicationProcessState a() {
        return this.f32211o;
    }

    public void d(String str, long j11) {
        synchronized (this.f32201e) {
            try {
                Long l11 = (Long) this.f32201e.get(str);
                if (l11 == null) {
                    this.f32201e.put(str, Long.valueOf(j11));
                } else {
                    this.f32201e.put(str, Long.valueOf(l11.longValue() + j11));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void e(int i11) {
        this.f32204h.addAndGet(i11);
    }

    public boolean f() {
        return this.f32213q;
    }

    protected boolean h() {
        return this.f32208l;
    }

    public synchronized void i(Context context) {
        if (this.f32212p) {
            return;
        }
        Context applicationContext = context.getApplicationContext();
        if (applicationContext instanceof Application) {
            ((Application) applicationContext).registerActivityLifecycleCallbacks(this);
            this.f32212p = true;
        }
    }

    public void j(InterfaceC0446a interfaceC0446a) {
        synchronized (this.f32203g) {
            this.f32203g.add(interfaceC0446a);
        }
    }

    public void k(WeakReference weakReference) {
        synchronized (this.f32202f) {
            this.f32202f.add(weakReference);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        o(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        this.f32198b.remove(activity);
        if (this.f32199c.containsKey(activity)) {
            ((FragmentActivity) activity).getSupportFragmentManager().N1((FragmentManager.k) this.f32199c.remove(activity));
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivityResumed(Activity activity) {
        try {
            if (this.f32197a.isEmpty()) {
                this.f32209m = this.f32207k.a();
                this.f32197a.put(activity, Boolean.TRUE);
                if (this.f32213q) {
                    q(ApplicationProcessState.FOREGROUND);
                    l();
                    this.f32213q = false;
                } else {
                    n(Constants$TraceNames.BACKGROUND_TRACE_NAME.toString(), this.f32210n, this.f32209m);
                    q(ApplicationProcessState.FOREGROUND);
                }
            } else {
                this.f32197a.put(activity, Boolean.TRUE);
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
        try {
            if (h() && this.f32206j.K()) {
                if (!this.f32198b.containsKey(activity)) {
                    o(activity);
                }
                ((d) this.f32198b.get(activity)).c();
                Trace trace = new Trace(c(activity), this.f32205i, this.f32207k, this);
                trace.start();
                this.f32200d.put(activity, trace);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivityStopped(Activity activity) {
        try {
            if (h()) {
                m(activity);
            }
            if (this.f32197a.containsKey(activity)) {
                this.f32197a.remove(activity);
                if (this.f32197a.isEmpty()) {
                    this.f32210n = this.f32207k.a();
                    n(Constants$TraceNames.FOREGROUND_TRACE_NAME.toString(), this.f32209m, this.f32210n);
                    q(ApplicationProcessState.BACKGROUND);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public void p(WeakReference weakReference) {
        synchronized (this.f32202f) {
            this.f32202f.remove(weakReference);
        }
    }
}
