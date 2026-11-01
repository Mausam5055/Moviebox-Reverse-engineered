package androidx.concurrent.futures;

import com.google.common.util.concurrent.r;
import java.util.concurrent.ExecutionException;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public abstract class ListenableFutureKt {
    public static final Object b(final r rVar, Continuation continuation) throws Throwable {
        try {
            if (rVar.isDone()) {
                return AbstractResolvableFuture.p(rVar);
            }
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.c(continuation), 1);
            rVar.addListener(new ToContinuation(rVar, cancellableContinuationImpl), DirectExecutor.INSTANCE);
            cancellableContinuationImpl.invokeOnCancellation(new Function1<Throwable, Unit>() { // from class: androidx.concurrent.futures.ListenableFutureKt$await$$inlined$suspendCancellableCoroutine$lambda$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    invoke((Throwable) obj);
                    return Unit.f67061a;
                }

                public final void invoke(Throwable th2) {
                    rVar.cancel(false);
                }
            });
            Object result = cancellableContinuationImpl.getResult();
            if (result == IntrinsicsKt.f()) {
                DebugProbesKt.c(continuation);
            }
            return result;
        } catch (ExecutionException e11) {
            throw c(e11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Throwable c(ExecutionException executionException) {
        Throwable cause = executionException.getCause();
        if (cause == null) {
            Intrinsics.t();
        }
        return cause;
    }
}
