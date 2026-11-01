package kotlinx.coroutines;

import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes7.dex */
final class z0 implements a1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Future f68016a;

    public z0(Future future) {
        this.f68016a = future;
    }

    @Override // kotlinx.coroutines.a1
    public void dispose() {
        this.f68016a.cancel(false);
    }

    public String toString() {
        return "DisposableFutureHandle[" + this.f68016a + ']';
    }
}
