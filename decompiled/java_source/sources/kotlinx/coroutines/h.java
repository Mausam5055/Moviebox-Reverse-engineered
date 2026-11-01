package kotlinx.coroutines;

/* JADX INFO: loaded from: classes7.dex */
public final class h extends EventLoopImplBase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Thread f67833a;

    public h(Thread thread) {
        this.f67833a = thread;
    }

    @Override // kotlinx.coroutines.f1
    protected Thread getThread() {
        return this.f67833a;
    }
}
