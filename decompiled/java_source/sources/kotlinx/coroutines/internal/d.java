package kotlinx.coroutines.internal;

import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes7.dex */
public final class d implements n0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CoroutineContext f67851a;

    public d(CoroutineContext coroutineContext) {
        this.f67851a = coroutineContext;
    }

    @Override // kotlinx.coroutines.n0
    public CoroutineContext getCoroutineContext() {
        return this.f67851a;
    }

    public String toString() {
        return "CoroutineScope(coroutineContext=" + getCoroutineContext() + ')';
    }
}
