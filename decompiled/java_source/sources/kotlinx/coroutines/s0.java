package kotlinx.coroutines;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;

/* JADX INFO: loaded from: classes7.dex */
class s0 extends a implements r0 {
    public s0(CoroutineContext coroutineContext, boolean z10) {
        super(coroutineContext, true, z10);
    }

    static /* synthetic */ Object X(s0 s0Var, Continuation continuation) throws Throwable {
        Object objAwaitInternal = s0Var.awaitInternal(continuation);
        IntrinsicsKt.f();
        return objAwaitInternal;
    }

    @Override // kotlinx.coroutines.r0
    public Object h() {
        return getCompletedInternal$kotlinx_coroutines_core();
    }

    @Override // kotlinx.coroutines.r0
    public Object i(Continuation continuation) {
        return X(this, continuation);
    }
}
