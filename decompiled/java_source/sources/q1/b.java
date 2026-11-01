package q1;

import kotlin.NotImplementedError;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.l2;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b {
    public static final a a() {
        CoroutineContext coroutineContextD;
        try {
            coroutineContextD = y0.c().d();
        } catch (IllegalStateException unused) {
            coroutineContextD = EmptyCoroutineContext.INSTANCE;
        } catch (NotImplementedError unused2) {
            coroutineContextD = EmptyCoroutineContext.INSTANCE;
        }
        return new a(coroutineContextD.plus(l2.b(null, 1, null)));
    }
}
