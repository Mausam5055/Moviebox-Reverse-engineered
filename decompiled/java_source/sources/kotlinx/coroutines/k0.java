package kotlinx.coroutines;

import kotlin.ExceptionsKt;
import kotlin.coroutines.CoroutineContext;

/* JADX INFO: loaded from: classes7.dex */
public abstract class k0 {
    public static final void a(CoroutineContext coroutineContext, Throwable th2) {
        try {
            j0 j0Var = (j0) coroutineContext.get(j0.f67892k1);
            if (j0Var != null) {
                j0Var.o(coroutineContext, th2);
            } else {
                kotlinx.coroutines.internal.f.a(coroutineContext, th2);
            }
        } catch (Throwable th3) {
            kotlinx.coroutines.internal.f.a(coroutineContext, b(th2, th3));
        }
    }

    public static final Throwable b(Throwable th2, Throwable th3) {
        if (th2 == th3) {
            return th2;
        }
        RuntimeException runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th3);
        ExceptionsKt.a(runtimeException, th2);
        return runtimeException;
    }
}
