package kotlinx.coroutines;

import kotlin.coroutines.CoroutineContext;

/* JADX INFO: loaded from: classes7.dex */
public final class p2 extends i0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final p2 f67907a = new p2();

    private p2() {
    }

    @Override // kotlinx.coroutines.i0
    public void dispatch(CoroutineContext coroutineContext, Runnable runnable) {
        t2 t2Var = (t2) coroutineContext.get(t2.f67998b);
        if (t2Var == null) {
            throw new UnsupportedOperationException("Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls.");
        }
        t2Var.f67999a = true;
    }

    @Override // kotlinx.coroutines.i0
    public boolean isDispatchNeeded(CoroutineContext coroutineContext) {
        return false;
    }

    @Override // kotlinx.coroutines.i0
    public i0 limitedParallelism(int i11, String str) {
        throw new UnsupportedOperationException("limitedParallelism is not supported for Dispatchers.Unconfined");
    }

    @Override // kotlinx.coroutines.i0
    public String toString() {
        return "Dispatchers.Unconfined";
    }
}
