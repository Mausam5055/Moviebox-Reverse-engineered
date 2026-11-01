package kotlinx.coroutines.internal;

import java.util.Iterator;
import kotlin.ExceptionsKt;
import kotlin.coroutines.CoroutineContext;

/* JADX INFO: loaded from: classes7.dex */
public abstract class f {
    public static final void a(CoroutineContext coroutineContext, Throwable th2) {
        Iterator it = e.a().iterator();
        while (it.hasNext()) {
            try {
                ((kotlinx.coroutines.j0) it.next()).o(coroutineContext, th2);
            } catch (ExceptionSuccessfullyProcessed unused) {
                return;
            } catch (Throwable th3) {
                e.b(kotlinx.coroutines.k0.b(th2, th3));
            }
        }
        try {
            ExceptionsKt.a(th2, new DiagnosticCoroutineContextException(coroutineContext));
        } catch (Throwable unused2) {
        }
        e.b(th2);
    }
}
