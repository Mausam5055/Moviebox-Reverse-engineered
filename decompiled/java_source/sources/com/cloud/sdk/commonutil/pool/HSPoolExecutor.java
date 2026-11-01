package com.cloud.sdk.commonutil.pool;

import android.os.Process;
import android.os.StrictMode;
import android.util.Log;
import com.cloud.sdk.commonutil.util.c;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
public final class HSPoolExecutor extends ThreadPoolExecutor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f23147a;

    protected class ComparableFutureTask<V> extends FutureTask<V> implements Comparable<ComparableFutureTask<V>> {
        private Object object;

        public ComparableFutureTask(Runnable runnable, V v11) {
            super(runnable, v11);
            this.object = runnable;
        }

        public ComparableFutureTask(Callable<V> callable) {
            super(callable);
            this.object = callable;
        }

        @Override // java.lang.Comparable
        public int compareTo(ComparableFutureTask<V> comparableFutureTask) {
            if (this == comparableFutureTask) {
                return 0;
            }
            if (comparableFutureTask == null) {
                return -1;
            }
            Object obj = this.object;
            if (obj == null || comparableFutureTask.object == null || !obj.getClass().equals(comparableFutureTask.object.getClass())) {
                return 0;
            }
            Object obj2 = this.object;
            if (obj2 instanceof Comparable) {
                return ((Comparable) obj2).compareTo(comparableFutureTask.object);
            }
            return 0;
        }
    }

    private static final class DefaultThreadFactory implements ThreadFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f23148a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final UncaughtThrowableStrategy f23149b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f23150c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f23151d;

        DefaultThreadFactory(String str, UncaughtThrowableStrategy uncaughtThrowableStrategy, boolean z10) {
            this.f23148a = str;
            this.f23149b = uncaughtThrowableStrategy;
            this.f23150c = z10;
        }

        @Override // java.util.concurrent.ThreadFactory
        public synchronized Thread newThread(Runnable runnable) {
            Thread thread;
            thread = new Thread(runnable, "zero-" + this.f23148a + "-thread-" + this.f23151d) { // from class: com.cloud.sdk.commonutil.pool.HSPoolExecutor.DefaultThreadFactory.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    Process.setThreadPriority(10);
                    if (DefaultThreadFactory.this.f23150c) {
                        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectNetwork().penaltyDeath().build());
                    }
                    try {
                        super.run();
                    } catch (Throwable th2) {
                        DefaultThreadFactory.this.f23149b.handle(th2);
                    }
                }
            };
            this.f23151d = this.f23151d + 1;
            return thread;
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.cloud.sdk.commonutil.pool.HSPoolExecutor$UncaughtThrowableStrategy, still in use, count: 1, list:
  (r0v1 com.cloud.sdk.commonutil.pool.HSPoolExecutor$UncaughtThrowableStrategy) from 0x0024: SPUT (r0v1 com.cloud.sdk.commonutil.pool.HSPoolExecutor$UncaughtThrowableStrategy) com.cloud.sdk.commonutil.pool.HSPoolExecutor.UncaughtThrowableStrategy.DEFAULT com.cloud.sdk.commonutil.pool.HSPoolExecutor$UncaughtThrowableStrategy
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
    	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
    	at java.base/java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
    	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static class UncaughtThrowableStrategy {
        IGNORE,
        LOG { // from class: com.cloud.sdk.commonutil.pool.HSPoolExecutor.UncaughtThrowableStrategy.1
            @Override // com.cloud.sdk.commonutil.pool.HSPoolExecutor.UncaughtThrowableStrategy
            protected void handle(Throwable th2) {
                c.Log().e("ssp", "thread pool: uncaught throwable: " + Log.getStackTraceString(th2));
            }
        },
        THROW { // from class: com.cloud.sdk.commonutil.pool.HSPoolExecutor.UncaughtThrowableStrategy.2
            @Override // com.cloud.sdk.commonutil.pool.HSPoolExecutor.UncaughtThrowableStrategy
            protected void handle(Throwable th2) {
                super.handle(th2);
                if (th2 != null) {
                    throw new RuntimeException("Request threw uncaught throwable", th2);
                }
            }
        };

        public static final UncaughtThrowableStrategy DEFAULT = new UncaughtThrowableStrategy() { // from class: com.cloud.sdk.commonutil.pool.HSPoolExecutor.UncaughtThrowableStrategy.1
            @Override // com.cloud.sdk.commonutil.pool.HSPoolExecutor.UncaughtThrowableStrategy
            protected void handle(Throwable th2) {
                c.Log().e("ssp", "thread pool: uncaught throwable: " + Log.getStackTraceString(th2));
            }
        };

        static {
        }

        private UncaughtThrowableStrategy() {
            super(str, i);
        }

        /* synthetic */ UncaughtThrowableStrategy(String str, int i11, a aVar) {
            this();
        }

        public static UncaughtThrowableStrategy valueOf(String str) {
            return (UncaughtThrowableStrategy) Enum.valueOf(UncaughtThrowableStrategy.class, str);
        }

        public static UncaughtThrowableStrategy[] values() {
            return (UncaughtThrowableStrategy[]) $VALUES.clone();
        }

        protected void handle(Throwable th2) {
        }
    }

    public HSPoolExecutor(int i11, String str, UncaughtThrowableStrategy uncaughtThrowableStrategy, boolean z10, boolean z11) {
        super(0, Integer.MAX_VALUE, 60L, TimeUnit.MILLISECONDS, new SynchronousQueue(), new DefaultThreadFactory(str, uncaughtThrowableStrategy, z10));
        this.f23147a = z11;
        try {
            c.Log().d("ssp", "HSPoolExecutor init, poolSize=" + getPoolSize());
        } catch (Exception e11) {
            c.Log().e("ssp", "HSPoolExecutor init error: " + Log.getStackTraceString(e11));
        }
    }

    private Future a(Future future) {
        if (this.f23147a) {
            try {
                future.get();
            } catch (InterruptedException | ExecutionException e11) {
                throw new RuntimeException(e11);
            }
        }
        return future;
    }

    public static HSPoolExecutor b() {
        return new HSPoolExecutor(20, "zero", UncaughtThrowableStrategy.DEFAULT, false, false);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        if (this.f23147a) {
            runnable.run();
        } else {
            super.execute(runnable);
        }
    }

    @Override // java.util.concurrent.AbstractExecutorService
    protected RunnableFuture newTaskFor(Runnable runnable, Object obj) {
        return new ComparableFutureTask(runnable, obj);
    }

    @Override // java.util.concurrent.AbstractExecutorService
    protected RunnableFuture newTaskFor(Callable callable) {
        return new ComparableFutureTask(callable);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public Future submit(Runnable runnable) {
        return a(super.submit(runnable));
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public Future submit(Runnable runnable, Object obj) {
        return a(super.submit(runnable, obj));
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public Future submit(Callable callable) {
        return a(super.submit(callable));
    }
}
