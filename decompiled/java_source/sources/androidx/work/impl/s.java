package androidx.work.impl;

import android.content.Context;
import android.os.PowerManager;
import androidx.work.WorkerParameters;
import androidx.work.impl.foreground.SystemForegroundDispatcher;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes.dex */
public class s implements androidx.work.impl.foreground.a {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final String f15913l = androidx.work.t.i("Processor");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f15915b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private androidx.work.b f15916c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private j4.c f15917d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private WorkDatabase f15918e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Map f15920g = new HashMap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Map f15919f = new HashMap();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Set f15922i = new HashSet();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final List f15923j = new ArrayList();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private PowerManager.WakeLock f15914a = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Object f15924k = new Object();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Map f15921h = new HashMap();

    public s(Context context, androidx.work.b bVar, j4.c cVar, WorkDatabase workDatabase) {
        this.f15915b = context;
        this.f15916c = bVar;
        this.f15917d = cVar;
        this.f15918e = workDatabase;
    }

    private WorkerWrapper f(String str) {
        WorkerWrapper workerWrapper = (WorkerWrapper) this.f15919f.remove(str);
        boolean z10 = workerWrapper != null;
        if (!z10) {
            workerWrapper = (WorkerWrapper) this.f15920g.remove(str);
        }
        this.f15921h.remove(str);
        if (z10) {
            t();
        }
        return workerWrapper;
    }

    private WorkerWrapper h(String str) {
        WorkerWrapper workerWrapper = (WorkerWrapper) this.f15919f.get(str);
        return workerWrapper == null ? (WorkerWrapper) this.f15920g.get(str) : workerWrapper;
    }

    private static boolean i(String str, WorkerWrapper workerWrapper, int i11) {
        if (workerWrapper == null) {
            androidx.work.t.e().a(f15913l, "WorkerWrapper could not be found for " + str);
            return false;
        }
        workerWrapper.p(i11);
        androidx.work.t.e().a(f15913l, "WorkerWrapper interrupted for " + str);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l(androidx.work.impl.model.x xVar, boolean z10) {
        synchronized (this.f15924k) {
            try {
                Iterator it = this.f15923j.iterator();
                while (it.hasNext()) {
                    ((e) it.next()).c(xVar, z10);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ androidx.work.impl.model.j0 m(ArrayList arrayList, String str) {
        arrayList.addAll(this.f15918e.m0().a(str));
        return this.f15918e.l0().j(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n(com.google.common.util.concurrent.r rVar, WorkerWrapper workerWrapper) {
        boolean zBooleanValue;
        try {
            zBooleanValue = ((Boolean) rVar.get()).booleanValue();
        } catch (InterruptedException | ExecutionException unused) {
            zBooleanValue = true;
        }
        o(workerWrapper, zBooleanValue);
    }

    private void o(WorkerWrapper workerWrapper, boolean z10) {
        synchronized (this.f15924k) {
            try {
                androidx.work.impl.model.x xVarM = workerWrapper.m();
                String strB = xVarM.b();
                if (h(strB) == workerWrapper) {
                    f(strB);
                }
                androidx.work.t.e().a(f15913l, getClass().getSimpleName() + " " + strB + " executed; reschedule = " + z10);
                Iterator it = this.f15923j.iterator();
                while (it.hasNext()) {
                    ((e) it.next()).c(xVarM, z10);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void q(final androidx.work.impl.model.x xVar, final boolean z10) {
        this.f15917d.a().execute(new Runnable() { // from class: androidx.work.impl.r
            @Override // java.lang.Runnable
            public final void run() {
                this.f15907a.l(xVar, z10);
            }
        });
    }

    private void t() {
        synchronized (this.f15924k) {
            try {
                if (this.f15919f.isEmpty()) {
                    try {
                        this.f15915b.startService(SystemForegroundDispatcher.g(this.f15915b));
                    } catch (Throwable th2) {
                        androidx.work.t.e().d(f15913l, "Unable to stop foreground service", th2);
                    }
                    PowerManager.WakeLock wakeLock = this.f15914a;
                    if (wakeLock != null) {
                        wakeLock.release();
                        this.f15914a = null;
                    }
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    @Override // androidx.work.impl.foreground.a
    public void a(String str, androidx.work.i iVar) {
        synchronized (this.f15924k) {
            try {
                androidx.work.t.e().f(f15913l, "Moving WorkSpec (" + str + ") to the foreground");
                WorkerWrapper workerWrapper = (WorkerWrapper) this.f15920g.remove(str);
                if (workerWrapper != null) {
                    if (this.f15914a == null) {
                        PowerManager.WakeLock wakeLockA = androidx.work.impl.utils.b0.a(this.f15915b, "ProcessorForegroundLck");
                        this.f15914a = wakeLockA;
                        wakeLockA.acquire();
                    }
                    this.f15919f.put(str, workerWrapper);
                    androidx.core.content.b.startForegroundService(this.f15915b, SystemForegroundDispatcher.f(this.f15915b, workerWrapper.m(), iVar));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void e(e eVar) {
        synchronized (this.f15924k) {
            this.f15923j.add(eVar);
        }
    }

    public androidx.work.impl.model.j0 g(String str) {
        synchronized (this.f15924k) {
            try {
                WorkerWrapper workerWrapperH = h(str);
                if (workerWrapperH == null) {
                    return null;
                }
                return workerWrapperH.n();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public boolean j(String str) {
        boolean zContains;
        synchronized (this.f15924k) {
            zContains = this.f15922i.contains(str);
        }
        return zContains;
    }

    public boolean k(String str) {
        boolean z10;
        synchronized (this.f15924k) {
            z10 = h(str) != null;
        }
        return z10;
    }

    public void p(e eVar) {
        synchronized (this.f15924k) {
            this.f15923j.remove(eVar);
        }
    }

    public boolean r(y yVar, WorkerParameters.a aVar) {
        androidx.work.impl.model.x xVarA = yVar.a();
        final String strB = xVarA.b();
        final ArrayList arrayList = new ArrayList();
        androidx.work.impl.model.j0 j0Var = (androidx.work.impl.model.j0) this.f15918e.Y(new Callable() { // from class: androidx.work.impl.p
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f15898a.m(arrayList, strB);
            }
        });
        if (j0Var == null) {
            androidx.work.t.e().k(f15913l, "Didn't find WorkSpec for id " + xVarA);
            q(xVarA, false);
            return false;
        }
        synchronized (this.f15924k) {
            try {
                if (k(strB)) {
                    Set set = (Set) this.f15921h.get(strB);
                    if (((y) set.iterator().next()).a().a() == xVarA.a()) {
                        set.add(yVar);
                        androidx.work.t.e().a(f15913l, "Work " + xVarA + " is already enqueued for processing");
                    } else {
                        q(xVarA, false);
                    }
                    return false;
                }
                if (j0Var.g() != xVarA.a()) {
                    q(xVarA, false);
                    return false;
                }
                final WorkerWrapper workerWrapperA = new WorkerWrapper.a(this.f15915b, this.f15916c, this.f15917d, this, this.f15918e, j0Var, arrayList).k(aVar).a();
                final com.google.common.util.concurrent.r rVarR = workerWrapperA.r();
                rVarR.addListener(new Runnable() { // from class: androidx.work.impl.q
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f15902a.n(rVarR, workerWrapperA);
                    }
                }, this.f15917d.a());
                this.f15920g.put(strB, workerWrapperA);
                HashSet hashSet = new HashSet();
                hashSet.add(yVar);
                this.f15921h.put(strB, hashSet);
                androidx.work.t.e().a(f15913l, getClass().getSimpleName() + ": processing " + xVarA);
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public boolean s(String str, int i11) {
        WorkerWrapper workerWrapperF;
        synchronized (this.f15924k) {
            androidx.work.t.e().a(f15913l, "Processor cancelling " + str);
            this.f15922i.add(str);
            workerWrapperF = f(str);
        }
        return i(str, workerWrapperF, i11);
    }

    public boolean u(y yVar, int i11) {
        WorkerWrapper workerWrapperF;
        String strB = yVar.a().b();
        synchronized (this.f15924k) {
            workerWrapperF = f(strB);
        }
        return i(strB, workerWrapperF, i11);
    }

    public boolean v(y yVar, int i11) {
        String strB = yVar.a().b();
        synchronized (this.f15924k) {
            try {
                if (this.f15919f.get(strB) == null) {
                    Set set = (Set) this.f15921h.get(strB);
                    if (set != null && set.contains(yVar)) {
                        return i(strB, f(strB), i11);
                    }
                    return false;
                }
                androidx.work.t.e().a(f15913l, "Ignored stopWork. WorkerWrapper " + strB + " is in foreground");
                return false;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
