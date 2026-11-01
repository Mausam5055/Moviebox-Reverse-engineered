package androidx.core.provider;

import android.os.Handler;
import android.os.Process;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
abstract class RequestExecutor {

    private static class DefaultThreadFactory implements ThreadFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f8181a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f8182b;

        private static class ProcessPriorityThread extends Thread {
            private final int mPriority;

            ProcessPriorityThread(Runnable runnable, String str, int i11) {
                super(runnable, str);
                this.mPriority = i11;
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                Process.setThreadPriority(this.mPriority);
                super.run();
            }
        }

        DefaultThreadFactory(String str, int i11) {
            this.f8181a = str;
            this.f8182b = i11;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new ProcessPriorityThread(runnable, this.f8181a, this.f8182b);
        }
    }

    private static class ReplyRunnable<T> implements Runnable {
        private Callable<T> mCallable;
        private androidx.core.util.a mConsumer;
        private Handler mHandler;

        ReplyRunnable(Handler handler, Callable<T> callable, androidx.core.util.a aVar) {
            this.mCallable = callable;
            this.mConsumer = aVar;
            this.mHandler = handler;
        }

        @Override // java.lang.Runnable
        public void run() {
            final T tCall;
            try {
                tCall = this.mCallable.call();
            } catch (Exception unused) {
                tCall = null;
            }
            final androidx.core.util.a aVar = this.mConsumer;
            this.mHandler.post(new Runnable() { // from class: androidx.core.provider.RequestExecutor.ReplyRunnable.1
                @Override // java.lang.Runnable
                public void run() {
                    aVar.accept(tCall);
                }
            });
        }
    }

    private static class a implements Executor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Handler f8183a;

        a(Handler handler) {
            this.f8183a = (Handler) androidx.core.util.i.g(handler);
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            if (this.f8183a.post((Runnable) androidx.core.util.i.g(runnable))) {
                return;
            }
            throw new RejectedExecutionException(this.f8183a + " is shutting down");
        }
    }

    static ThreadPoolExecutor a(String str, int i11, int i12) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, i12, TimeUnit.MILLISECONDS, new LinkedBlockingDeque(), new DefaultThreadFactory(str, i11));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return threadPoolExecutor;
    }

    static Executor b(Handler handler) {
        return new a(handler);
    }

    static void c(Executor executor, Callable callable, androidx.core.util.a aVar) {
        executor.execute(new ReplyRunnable(androidx.core.provider.a.a(), callable, aVar));
    }

    static Object d(ExecutorService executorService, Callable callable, int i11) throws InterruptedException {
        try {
            return executorService.submit(callable).get(i11, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e11) {
            throw e11;
        } catch (ExecutionException e12) {
            throw new RuntimeException(e12);
        } catch (TimeoutException unused) {
            throw new InterruptedException("timeout");
        }
    }
}
