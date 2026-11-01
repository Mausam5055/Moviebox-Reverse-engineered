package kotlinx.coroutines.flow.internal;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;

/* JADX INFO: loaded from: classes7.dex */
final class s implements Continuation, CoroutineStackFrame {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Continuation f67818a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final CoroutineContext f67819b;

    public s(Continuation continuation, CoroutineContext coroutineContext) {
        this.f67818a = continuation;
        this.f67819b = coroutineContext;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public CoroutineStackFrame getCallerFrame() {
        Continuation continuation = this.f67818a;
        if (continuation instanceof CoroutineStackFrame) {
            return (CoroutineStackFrame) continuation;
        }
        return null;
    }

    @Override // kotlin.coroutines.Continuation
    public CoroutineContext getContext() {
        return this.f67819b;
    }

    @Override // kotlin.coroutines.Continuation
    public void resumeWith(Object obj) {
        this.f67818a.resumeWith(obj);
    }
}
