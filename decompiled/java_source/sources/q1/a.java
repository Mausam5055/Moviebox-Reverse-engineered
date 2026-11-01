package q1;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements AutoCloseable, n0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CoroutineContext f73044a;

    public a(CoroutineContext coroutineContext) {
        Intrinsics.h(coroutineContext, "coroutineContext");
        this.f73044a = coroutineContext;
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        JobKt__JobKt.e(getCoroutineContext(), null, 1, null);
    }

    @Override // kotlinx.coroutines.n0
    public CoroutineContext getCoroutineContext() {
        return this.f73044a;
    }
}
