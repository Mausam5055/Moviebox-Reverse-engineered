package o8;

import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes4.dex */
public class a implements Executor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Executor f70740b = new a("GENERAL_EXECUTOR", 4, 32);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ScheduledExecutorService f70741c = Executors.newScheduledThreadPool(4);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f70742d = 32;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ThreadPoolExecutor f70743a;

    /* JADX INFO: renamed from: o8.a$a, reason: collision with other inner class name */
    class ThreadFactoryC0857a implements ThreadFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final AtomicInteger f70744a = new AtomicInteger(1);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f70745b;

        ThreadFactoryC0857a(String str) {
            this.f70745b = str;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, String.format(Locale.US, "BiddingKit:%s #%d", this.f70745b, Integer.valueOf(this.f70744a.getAndIncrement())));
        }
    }

    a(String str, int i11, int i12) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i11, i12, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactoryC0857a(str));
        this.f70743a = threadPoolExecutor;
        threadPoolExecutor.allowCoreThreadTimeOut(true);
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        int size = this.f70743a.getQueue().size();
        synchronized (a.class) {
            try {
                int i11 = f70742d;
                if (size == i11) {
                    f70742d = i11 * 2;
                    com.facebook.biddingkit.logging.b.a("MultiAsyncTaskExecutor", "Tasks queue too long. Size = " + i11);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        this.f70743a.execute(runnable);
    }
}
