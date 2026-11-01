package androidx.work.impl.background.greedy;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import androidx.work.WorkInfo;
import androidx.work.d;
import androidx.work.d0;
import androidx.work.impl.a0;
import androidx.work.impl.b1;
import androidx.work.impl.constraints.WorkConstraintsTracker;
import androidx.work.impl.constraints.WorkConstraintsTrackerKt;
import androidx.work.impl.constraints.h;
import androidx.work.impl.e;
import androidx.work.impl.model.j0;
import androidx.work.impl.model.s1;
import androidx.work.impl.model.x;
import androidx.work.impl.s;
import androidx.work.impl.u;
import androidx.work.impl.y;
import androidx.work.impl.z;
import androidx.work.t;
import i4.n;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes2.dex */
public class a implements u, h, e {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final String f15548o = t.i("GreedyScheduler");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f15549a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private DelayedWorkTracker f15551c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f15552d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final s f15555g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final b1 f15556h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final androidx.work.b f15557i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    Boolean f15559k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final WorkConstraintsTracker f15560l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final j4.c f15561m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final c f15562n;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f15550b = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Object f15553e = new Object();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final a0 f15554f = z.b();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Map f15558j = new HashMap();

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final int f15563a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final long f15564b;

        private b(int i11, long j11) {
            this.f15563a = i11;
            this.f15564b = j11;
        }
    }

    public a(Context context, androidx.work.b bVar, n nVar, s sVar, b1 b1Var, j4.c cVar) {
        this.f15549a = context;
        d0 d0VarK = bVar.k();
        this.f15551c = new DelayedWorkTracker(this, d0VarK, bVar.a());
        this.f15562n = new c(d0VarK, b1Var);
        this.f15561m = cVar;
        this.f15560l = new WorkConstraintsTracker(nVar);
        this.f15557i = bVar;
        this.f15555g = sVar;
        this.f15556h = b1Var;
    }

    private void f() {
        this.f15559k = Boolean.valueOf(androidx.work.impl.utils.a0.b(this.f15549a, this.f15557i));
    }

    private void g() {
        if (this.f15552d) {
            return;
        }
        this.f15555g.e(this);
        this.f15552d = true;
    }

    private void h(x xVar) {
        t1 t1Var;
        synchronized (this.f15553e) {
            t1Var = (t1) this.f15550b.remove(xVar);
        }
        if (t1Var != null) {
            t.e().a(f15548o, "Stopping tracking for " + xVar);
            t1Var.cancel(null);
        }
    }

    private long i(j0 j0Var) {
        long jMax;
        synchronized (this.f15553e) {
            try {
                x xVarA = s1.a(j0Var);
                b bVar = (b) this.f15558j.get(xVarA);
                if (bVar == null) {
                    bVar = new b(j0Var.f15774k, this.f15557i.a().currentTimeMillis());
                    this.f15558j.put(xVarA, bVar);
                }
                jMax = bVar.f15564b + (((long) Math.max((j0Var.f15774k - bVar.f15563a) - 5, 0)) * 30000);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return jMax;
    }

    @Override // androidx.work.impl.u
    public void a(String str) {
        if (this.f15559k == null) {
            f();
        }
        if (!this.f15559k.booleanValue()) {
            t.e().f(f15548o, "Ignoring schedule request in non-main process");
            return;
        }
        g();
        t.e().a(f15548o, "Cancelling work ID " + str);
        DelayedWorkTracker delayedWorkTracker = this.f15551c;
        if (delayedWorkTracker != null) {
            delayedWorkTracker.b(str);
        }
        for (y yVar : this.f15554f.remove(str)) {
            this.f15562n.b(yVar);
            this.f15556h.e(yVar);
        }
    }

    @Override // androidx.work.impl.u
    public void b(j0... j0VarArr) {
        if (this.f15559k == null) {
            f();
        }
        if (!this.f15559k.booleanValue()) {
            t.e().f(f15548o, "Ignoring schedule request in a secondary process");
            return;
        }
        g();
        HashSet<j0> hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        for (j0 j0Var : j0VarArr) {
            if (!this.f15554f.a(s1.a(j0Var))) {
                long jMax = Math.max(j0Var.c(), i(j0Var));
                long jCurrentTimeMillis = this.f15557i.a().currentTimeMillis();
                if (j0Var.f15765b == WorkInfo.State.ENQUEUED) {
                    if (jCurrentTimeMillis < jMax) {
                        DelayedWorkTracker delayedWorkTracker = this.f15551c;
                        if (delayedWorkTracker != null) {
                            delayedWorkTracker.a(j0Var, jMax);
                        }
                    } else if (j0Var.m()) {
                        d dVar = j0Var.f15773j;
                        if (dVar.j()) {
                            t.e().a(f15548o, "Ignoring " + j0Var + ". Requires device idle.");
                        } else if (Build.VERSION.SDK_INT < 24 || !dVar.g()) {
                            hashSet.add(j0Var);
                            hashSet2.add(j0Var.f15764a);
                        } else {
                            t.e().a(f15548o, "Ignoring " + j0Var + ". Requires ContentUri triggers.");
                        }
                    } else if (!this.f15554f.a(s1.a(j0Var))) {
                        t.e().a(f15548o, "Starting work for " + j0Var.f15764a);
                        y yVarC = this.f15554f.c(j0Var);
                        this.f15562n.c(yVarC);
                        this.f15556h.c(yVarC);
                    }
                }
            }
        }
        synchronized (this.f15553e) {
            try {
                if (!hashSet.isEmpty()) {
                    t.e().a(f15548o, "Starting tracking for " + TextUtils.join(",", hashSet2));
                    for (j0 j0Var2 : hashSet) {
                        x xVarA = s1.a(j0Var2);
                        if (!this.f15550b.containsKey(xVarA)) {
                            this.f15550b.put(xVarA, WorkConstraintsTrackerKt.e(this.f15560l, j0Var2, this.f15561m.b(), this));
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // androidx.work.impl.e
    public void c(x xVar, boolean z10) {
        y yVarB = this.f15554f.b(xVar);
        if (yVarB != null) {
            this.f15562n.b(yVarB);
        }
        h(xVar);
        if (z10) {
            return;
        }
        synchronized (this.f15553e) {
            this.f15558j.remove(xVar);
        }
    }

    @Override // androidx.work.impl.u
    public boolean d() {
        return false;
    }

    @Override // androidx.work.impl.constraints.h
    public void e(j0 j0Var, androidx.work.impl.constraints.b bVar) {
        x xVarA = s1.a(j0Var);
        if (bVar instanceof androidx.work.impl.constraints.b.a) {
            if (this.f15554f.a(xVarA)) {
                return;
            }
            t.e().a(f15548o, "Constraints met: Scheduling work ID " + xVarA);
            y yVarD = this.f15554f.d(xVarA);
            this.f15562n.c(yVarD);
            this.f15556h.c(yVarD);
            return;
        }
        t.e().a(f15548o, "Constraints not met: Cancelling work ID " + xVarA);
        y yVarB = this.f15554f.b(xVarA);
        if (yVarB != null) {
            this.f15562n.b(yVarB);
            this.f15556h.b(yVarB, ((androidx.work.impl.constraints.b.C0134b) bVar).a());
        }
    }
}
