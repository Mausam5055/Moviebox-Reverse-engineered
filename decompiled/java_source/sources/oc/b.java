package oc;

import com.google.firebase.messaging.threads.ThreadPriority;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final oc.a f70961a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile oc.a f70962b;

    /* JADX INFO: renamed from: oc.b$b, reason: collision with other inner class name */
    private static class C0860b implements oc.a {
        private C0860b() {
        }

        @Override // oc.a
        public ExecutorService a(ThreadFactory threadFactory, ThreadPriority threadPriority) {
            return b(1, threadFactory, threadPriority);
        }

        public ExecutorService b(int i11, ThreadFactory threadFactory, ThreadPriority threadPriority) {
            ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i11, i11, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), threadFactory);
            threadPoolExecutor.allowCoreThreadTimeOut(true);
            return Executors.unconfigurableExecutorService(threadPoolExecutor);
        }
    }

    static {
        C0860b c0860b = new C0860b();
        f70961a = c0860b;
        f70962b = c0860b;
    }

    public static oc.a a() {
        return f70962b;
    }
}
