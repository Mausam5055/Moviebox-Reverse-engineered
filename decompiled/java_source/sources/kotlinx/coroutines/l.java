package kotlinx.coroutines;

import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes7.dex */
final class l implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Future f67895a;

    public l(Future future) {
        this.f67895a = future;
    }

    @Override // kotlinx.coroutines.m
    public void a(Throwable th2) {
        this.f67895a.cancel(false);
    }

    public String toString() {
        return "CancelFutureOnCancel[" + this.f67895a + ']';
    }
}
