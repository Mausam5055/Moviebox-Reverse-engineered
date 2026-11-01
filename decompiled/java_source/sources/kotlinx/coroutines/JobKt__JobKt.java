package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes7.dex */
public abstract /* synthetic */ class JobKt__JobKt {
    public static final z a(t1 t1Var) {
        return new u1(t1Var);
    }

    public static /* synthetic */ z b(t1 t1Var, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            t1Var = null;
        }
        return v1.a(t1Var);
    }

    public static final void c(CoroutineContext coroutineContext, CancellationException cancellationException) {
        t1 t1Var = (t1) coroutineContext.get(t1.f67996l1);
        if (t1Var != null) {
            t1Var.cancel(cancellationException);
        }
    }

    public static final void d(t1 t1Var, String str, Throwable th2) {
        t1Var.cancel(i1.a(str, th2));
    }

    public static /* synthetic */ void e(CoroutineContext coroutineContext, CancellationException cancellationException, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            cancellationException = null;
        }
        v1.c(coroutineContext, cancellationException);
    }

    public static /* synthetic */ void f(t1 t1Var, String str, Throwable th2, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            th2 = null;
        }
        v1.d(t1Var, str, th2);
    }

    public static final Object g(t1 t1Var, Continuation continuation) {
        t1.a.b(t1Var, null, 1, null);
        Object objJoin = t1Var.join(continuation);
        return objJoin == IntrinsicsKt.f() ? objJoin : Unit.f67061a;
    }

    public static final a1 h(t1 t1Var, a1 a1Var) {
        return m(t1Var, false, new c1(a1Var), 1, null);
    }

    public static final void i(CoroutineContext coroutineContext) {
        t1 t1Var = (t1) coroutineContext.get(t1.f67996l1);
        if (t1Var != null) {
            v1.j(t1Var);
        }
    }

    public static final void j(t1 t1Var) {
        if (!t1Var.isActive()) {
            throw t1Var.getCancellationException();
        }
    }

    public static final t1 k(CoroutineContext coroutineContext) {
        t1 t1Var = (t1) coroutineContext.get(t1.f67996l1);
        if (t1Var != null) {
            return t1Var;
        }
        throw new IllegalStateException(("Current context doesn't contain Job in it: " + coroutineContext).toString());
    }

    public static final a1 l(t1 t1Var, boolean z10, w1 w1Var) {
        return t1Var instanceof JobSupport ? ((JobSupport) t1Var).invokeOnCompletionInternal$kotlinx_coroutines_core(z10, w1Var) : t1Var.invokeOnCompletion(w1Var.u(), z10, new JobKt__JobKt$invokeOnCompletion$1(w1Var));
    }

    public static /* synthetic */ a1 m(t1 t1Var, boolean z10, w1 w1Var, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = true;
        }
        return v1.l(t1Var, z10, w1Var);
    }

    public static final boolean n(CoroutineContext coroutineContext) {
        t1 t1Var = (t1) coroutineContext.get(t1.f67996l1);
        if (t1Var != null) {
            return t1Var.isActive();
        }
        return true;
    }
}
