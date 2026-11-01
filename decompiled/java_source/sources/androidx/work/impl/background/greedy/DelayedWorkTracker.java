package androidx.work.impl.background.greedy;

import androidx.work.d0;
import androidx.work.impl.model.j0;
import androidx.work.impl.u;
import androidx.work.t;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class DelayedWorkTracker {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final String f15543e = t.i("DelayedWorkTracker");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final u f15544a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d0 f15545b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.work.a f15546c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map f15547d = new HashMap();

    public DelayedWorkTracker(u uVar, d0 d0Var, androidx.work.a aVar) {
        this.f15544a = uVar;
        this.f15545b = d0Var;
        this.f15546c = aVar;
    }

    public void a(final j0 j0Var, long j11) {
        Runnable runnable = (Runnable) this.f15547d.remove(j0Var.f15764a);
        if (runnable != null) {
            this.f15545b.a(runnable);
        }
        Runnable runnable2 = new Runnable() { // from class: androidx.work.impl.background.greedy.DelayedWorkTracker.1
            @Override // java.lang.Runnable
            public void run() {
                t.e().a(DelayedWorkTracker.f15543e, "Scheduling work " + j0Var.f15764a);
                DelayedWorkTracker.this.f15544a.b(j0Var);
            }
        };
        this.f15547d.put(j0Var.f15764a, runnable2);
        this.f15545b.b(j11 - this.f15546c.currentTimeMillis(), runnable2);
    }

    public void b(String str) {
        Runnable runnable = (Runnable) this.f15547d.remove(str);
        if (runnable != null) {
            this.f15545b.a(runnable);
        }
    }
}
