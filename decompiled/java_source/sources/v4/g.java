package v4;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public class g implements ThreadFactory {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final AtomicInteger f77024d = new AtomicInteger(1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ThreadGroup f77025a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AtomicInteger f77026b = new AtomicInteger(1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f77027c;

    public g() {
        SecurityManager securityManager = System.getSecurityManager();
        this.f77025a = securityManager == null ? Thread.currentThread().getThreadGroup() : securityManager.getThreadGroup();
        this.f77027c = "lottie-" + f77024d.getAndIncrement() + "-thread-";
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread thread = new Thread(this.f77025a, runnable, this.f77027c + this.f77026b.getAndIncrement(), 0L);
        thread.setDaemon(false);
        thread.setPriority(10);
        return thread;
    }
}
