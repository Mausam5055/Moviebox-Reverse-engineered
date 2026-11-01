package kotlinx.coroutines;

import kotlin.coroutines.Continuation;
import kotlinx.coroutines.internal.DispatchedContinuation;

/* JADX INFO: loaded from: classes7.dex */
public abstract class q {
    public static final void a(n nVar, a1 a1Var) {
        c(nVar, new b1(a1Var));
    }

    public static final CancellableContinuationImpl b(Continuation continuation) {
        if (!(continuation instanceof DispatchedContinuation)) {
            return new CancellableContinuationImpl(continuation, 1);
        }
        CancellableContinuationImpl cancellableContinuationImplClaimReusableCancellableContinuation$kotlinx_coroutines_core = ((DispatchedContinuation) continuation).claimReusableCancellableContinuation$kotlinx_coroutines_core();
        if (cancellableContinuationImplClaimReusableCancellableContinuation$kotlinx_coroutines_core != null) {
            if (!cancellableContinuationImplClaimReusableCancellableContinuation$kotlinx_coroutines_core.resetStateReusable()) {
                cancellableContinuationImplClaimReusableCancellableContinuation$kotlinx_coroutines_core = null;
            }
            if (cancellableContinuationImplClaimReusableCancellableContinuation$kotlinx_coroutines_core != null) {
                return cancellableContinuationImplClaimReusableCancellableContinuation$kotlinx_coroutines_core;
            }
        }
        return new CancellableContinuationImpl(continuation, 2);
    }

    public static final void c(n nVar, m mVar) {
        if (!(nVar instanceof CancellableContinuationImpl)) {
            throw new UnsupportedOperationException("third-party implementation of CancellableContinuation is not supported");
        }
        ((CancellableContinuationImpl) nVar).invokeOnCancellationInternal$kotlinx_coroutines_core(mVar);
    }
}
