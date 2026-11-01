package kotlinx.coroutines.internal;

import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.a1;
import kotlinx.coroutines.q0;
import kotlinx.coroutines.t0;

/* JADX INFO: loaded from: classes7.dex */
public final class r extends kotlinx.coroutines.i0 implements t0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ t0 f67882a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final kotlinx.coroutines.i0 f67883b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f67884c;

    /* JADX WARN: Multi-variable type inference failed */
    public r(kotlinx.coroutines.i0 i0Var, String str) {
        t0 t0Var = i0Var instanceof t0 ? (t0) i0Var : null;
        this.f67882a = t0Var == null ? q0.a() : t0Var;
        this.f67883b = i0Var;
        this.f67884c = str;
    }

    @Override // kotlinx.coroutines.i0
    public void dispatch(CoroutineContext coroutineContext, Runnable runnable) {
        this.f67883b.dispatch(coroutineContext, runnable);
    }

    @Override // kotlinx.coroutines.i0
    public void dispatchYield(CoroutineContext coroutineContext, Runnable runnable) {
        this.f67883b.dispatchYield(coroutineContext, runnable);
    }

    @Override // kotlinx.coroutines.t0
    public a1 invokeOnTimeout(long j11, Runnable runnable, CoroutineContext coroutineContext) {
        return this.f67882a.invokeOnTimeout(j11, runnable, coroutineContext);
    }

    @Override // kotlinx.coroutines.i0
    public boolean isDispatchNeeded(CoroutineContext coroutineContext) {
        return this.f67883b.isDispatchNeeded(coroutineContext);
    }

    @Override // kotlinx.coroutines.t0
    public void scheduleResumeAfterDelay(long j11, kotlinx.coroutines.n nVar) {
        this.f67882a.scheduleResumeAfterDelay(j11, nVar);
    }

    @Override // kotlinx.coroutines.i0
    public String toString() {
        return this.f67884c;
    }
}
