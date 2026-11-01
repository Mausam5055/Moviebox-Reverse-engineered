package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes7.dex */
public abstract class o0 {
    public static final n0 a(CoroutineContext coroutineContext) {
        if (coroutineContext.get(t1.f67996l1) == null) {
            coroutineContext = coroutineContext.plus(JobKt__JobKt.b(null, 1, null));
        }
        return new kotlinx.coroutines.internal.d(coroutineContext);
    }

    public static final n0 b() {
        return new kotlinx.coroutines.internal.d(l2.b(null, 1, null).plus(y0.c()));
    }

    public static final void c(n0 n0Var, CancellationException cancellationException) {
        t1 t1Var = (t1) n0Var.getCoroutineContext().get(t1.f67996l1);
        if (t1Var != null) {
            t1Var.cancel(cancellationException);
            return;
        }
        throw new IllegalStateException(("Scope cannot be cancelled because it does not have a job: " + n0Var).toString());
    }

    public static /* synthetic */ void d(n0 n0Var, CancellationException cancellationException, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            cancellationException = null;
        }
        c(n0Var, cancellationException);
    }

    public static final Object e(Function2 function2, Continuation continuation) {
        kotlinx.coroutines.internal.v vVar = new kotlinx.coroutines.internal.v(continuation.getContext(), continuation);
        Object objB = b00.b.b(vVar, vVar, function2);
        if (objB == IntrinsicsKt.f()) {
            DebugProbesKt.c(continuation);
        }
        return objB;
    }

    public static final void f(n0 n0Var) {
        v1.i(n0Var.getCoroutineContext());
    }

    public static final boolean g(n0 n0Var) {
        t1 t1Var = (t1) n0Var.getCoroutineContext().get(t1.f67996l1);
        if (t1Var != null) {
            return t1Var.isActive();
        }
        return true;
    }

    public static final n0 h(n0 n0Var, CoroutineContext coroutineContext) {
        return new kotlinx.coroutines.internal.d(n0Var.getCoroutineContext().plus(coroutineContext));
    }
}
