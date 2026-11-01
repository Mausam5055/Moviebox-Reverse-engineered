package kotlinx.coroutines;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;

/* JADX INFO: loaded from: classes7.dex */
final class j2 extends kotlinx.coroutines.internal.v {
    public j2(CoroutineContext coroutineContext, Continuation continuation) {
        super(coroutineContext, continuation);
    }

    @Override // kotlinx.coroutines.JobSupport
    public boolean childCancelled(Throwable th2) {
        return false;
    }
}
