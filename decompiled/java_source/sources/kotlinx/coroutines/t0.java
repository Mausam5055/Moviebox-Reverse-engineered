package kotlinx.coroutines;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;

/* JADX INFO: loaded from: classes7.dex */
public interface t0 {

    public static final class a {
        public static Object a(t0 t0Var, long j11, Continuation continuation) {
            if (j11 <= 0) {
                return Unit.f67061a;
            }
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.c(continuation), 1);
            cancellableContinuationImpl.initCancellability();
            t0Var.scheduleResumeAfterDelay(j11, cancellableContinuationImpl);
            Object result = cancellableContinuationImpl.getResult();
            if (result == IntrinsicsKt.f()) {
                DebugProbesKt.c(continuation);
            }
            return result == IntrinsicsKt.f() ? result : Unit.f67061a;
        }

        public static a1 b(t0 t0Var, long j11, Runnable runnable, CoroutineContext coroutineContext) {
            return q0.a().invokeOnTimeout(j11, runnable, coroutineContext);
        }
    }

    a1 invokeOnTimeout(long j11, Runnable runnable, CoroutineContext coroutineContext);

    void scheduleResumeAfterDelay(long j11, n nVar);
}
