package kotlinx.coroutines;

import kotlin.Result;
import kotlin.ResultKt;

/* JADX INFO: loaded from: classes7.dex */
final class g2 extends w1 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final CancellableContinuationImpl f67832e;

    public g2(CancellableContinuationImpl cancellableContinuationImpl) {
        this.f67832e = cancellableContinuationImpl;
    }

    @Override // kotlinx.coroutines.w1
    public boolean u() {
        return false;
    }

    @Override // kotlinx.coroutines.w1
    public void v(Throwable th2) {
        Object state$kotlinx_coroutines_core = t().getState$kotlinx_coroutines_core();
        if (state$kotlinx_coroutines_core instanceof b0) {
            CancellableContinuationImpl cancellableContinuationImpl = this.f67832e;
            Result.Companion companion = Result.INSTANCE;
            cancellableContinuationImpl.resumeWith(Result.m454constructorimpl(ResultKt.a(((b0) state$kotlinx_coroutines_core).f67641a)));
        } else {
            CancellableContinuationImpl cancellableContinuationImpl2 = this.f67832e;
            Result.Companion companion2 = Result.INSTANCE;
            cancellableContinuationImpl2.resumeWith(Result.m454constructorimpl(x1.h(state$kotlinx_coroutines_core)));
        }
    }
}
