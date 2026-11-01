package androidx.p009lifecycle;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.k;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes.dex */
public final class LifecycleCoroutineScopeImpl extends LifecycleCoroutineScope implements r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lifecycle f9532a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final CoroutineContext f9533b;

    public LifecycleCoroutineScopeImpl(Lifecycle lifecycle, CoroutineContext coroutineContext) {
        Intrinsics.h(lifecycle, "lifecycle");
        Intrinsics.h(coroutineContext, "coroutineContext");
        this.f9532a = lifecycle;
        this.f9533b = coroutineContext;
        if (a().b() == Lifecycle.State.DESTROYED) {
            JobKt__JobKt.e(getCoroutineContext(), null, 1, null);
        }
    }

    @Override // androidx.p009lifecycle.LifecycleCoroutineScope
    public Lifecycle a() {
        return this.f9532a;
    }

    public final void c() {
        k.d(this, y0.c().q(), null, new LifecycleCoroutineScopeImpl$register$1(this, null), 2, null);
    }

    @Override // kotlinx.coroutines.n0
    public CoroutineContext getCoroutineContext() {
        return this.f9533b;
    }

    @Override // androidx.p009lifecycle.r
    public void onStateChanged(u source, Lifecycle.Event event) {
        Intrinsics.h(source, "source");
        Intrinsics.h(event, "event");
        if (a().b().compareTo(Lifecycle.State.DESTROYED) <= 0) {
            a().d(this);
            JobKt__JobKt.e(getCoroutineContext(), null, 1, null);
        }
    }
}
