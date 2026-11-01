package androidx.p009lifecycle;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes.dex */
public final class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lifecycle f9634a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lifecycle.State f9635b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final i f9636c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final r f9637d;

    public p(Lifecycle lifecycle, Lifecycle.State minState, i dispatchQueue, final t1 parentJob) {
        Intrinsics.h(lifecycle, "lifecycle");
        Intrinsics.h(minState, "minState");
        Intrinsics.h(dispatchQueue, "dispatchQueue");
        Intrinsics.h(parentJob, "parentJob");
        this.f9634a = lifecycle;
        this.f9635b = minState;
        this.f9636c = dispatchQueue;
        r rVar = new r() { // from class: androidx.lifecycle.o
            @Override // androidx.p009lifecycle.r
            public final void onStateChanged(u uVar, Lifecycle.Event event) {
                p.c(this.f9629a, parentJob, uVar, event);
            }
        };
        this.f9637d = rVar;
        if (lifecycle.b() != Lifecycle.State.DESTROYED) {
            lifecycle.a(rVar);
        } else {
            t1.a.b(parentJob, null, 1, null);
            b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(p this$0, t1 parentJob, u source, Lifecycle.Event event) {
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(parentJob, "$parentJob");
        Intrinsics.h(source, "source");
        Intrinsics.h(event, "<anonymous parameter 1>");
        if (source.getLifecycle().b() == Lifecycle.State.DESTROYED) {
            t1.a.b(parentJob, null, 1, null);
            this$0.b();
        } else if (source.getLifecycle().b().compareTo(this$0.f9635b) < 0) {
            this$0.f9636c.h();
        } else {
            this$0.f9636c.i();
        }
    }

    public final void b() {
        this.f9634a.d(this.f9637d);
        this.f9636c.g();
    }
}
