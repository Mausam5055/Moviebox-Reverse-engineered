package kotlinx.coroutines;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;

/* JADX INFO: loaded from: classes7.dex */
final class x extends JobSupport implements w {
    public x(t1 t1Var) {
        super(true);
        initParentJob(t1Var);
    }

    @Override // kotlinx.coroutines.w
    public boolean b(Throwable th2) {
        return makeCompleting$kotlinx_coroutines_core(new b0(th2, false, 2, null));
    }

    @Override // kotlinx.coroutines.JobSupport
    public boolean getOnCancelComplete$kotlinx_coroutines_core() {
        return true;
    }

    @Override // kotlinx.coroutines.r0
    public Object h() {
        return getCompletedInternal$kotlinx_coroutines_core();
    }

    @Override // kotlinx.coroutines.r0
    public Object i(Continuation continuation) throws Throwable {
        Object objAwaitInternal = awaitInternal(continuation);
        IntrinsicsKt.f();
        return objAwaitInternal;
    }

    @Override // kotlinx.coroutines.w
    public boolean n(Object obj) {
        return makeCompleting$kotlinx_coroutines_core(obj);
    }
}
