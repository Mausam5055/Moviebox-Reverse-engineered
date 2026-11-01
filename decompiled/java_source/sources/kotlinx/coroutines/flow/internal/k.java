package kotlinx.coroutines.flow.internal;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;

/* JADX INFO: loaded from: classes7.dex */
final class k implements Continuation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final k f67810a = new k();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final CoroutineContext f67811b = EmptyCoroutineContext.INSTANCE;

    private k() {
    }

    @Override // kotlin.coroutines.Continuation
    public CoroutineContext getContext() {
        return f67811b;
    }

    @Override // kotlin.coroutines.Continuation
    public void resumeWith(Object obj) {
    }
}
