package com.blankj.utilcode.util;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.NonNull;
import java.util.HashMap;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes.dex */
public final class ThreadUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Handler f20038a = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Map f20039b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Map f20040c = new ConcurrentHashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f20041d = Runtime.getRuntime().availableProcessors();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Timer f20042e = new Timer();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static Executor f20043f;

    /* JADX INFO: renamed from: com.blankj.utilcode.util.ThreadUtils$1, reason: invalid class name */
    /* JADX INFO: loaded from: classes2.dex */
    class AnonymousClass1 extends TimerTask {
        final /* synthetic */ ExecutorService val$pool;
        final /* synthetic */ Task val$task;

        AnonymousClass1(ExecutorService executorService, Task task) {
            this.val$pool = executorService;
            this.val$task = task;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            this.val$pool.execute(this.val$task);
        }
    }

    /* JADX INFO: renamed from: com.blankj.utilcode.util.ThreadUtils$2, reason: invalid class name */
    /* JADX INFO: loaded from: classes2.dex */
    class AnonymousClass2 extends TimerTask {
        final /* synthetic */ ExecutorService val$pool;
        final /* synthetic */ Task val$task;

        AnonymousClass2(ExecutorService executorService, Task task) {
            this.val$pool = executorService;
            this.val$task = task;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            this.val$pool.execute(this.val$task);
        }
    }

    private static final class LinkedBlockingQueue4Util extends LinkedBlockingQueue<Runnable> {
        private int mCapacity;
        private volatile b mPool;

        LinkedBlockingQueue4Util() {
            this.mCapacity = Integer.MAX_VALUE;
        }

        LinkedBlockingQueue4Util(int i11) {
            this.mCapacity = i11;
        }

        LinkedBlockingQueue4Util(boolean z10) {
            this.mCapacity = Integer.MAX_VALUE;
            if (z10) {
                this.mCapacity = 0;
            }
        }

        @Override // java.util.concurrent.LinkedBlockingQueue, java.util.Queue, java.util.concurrent.BlockingQueue
        public boolean offer(@NonNull Runnable runnable) {
            if (this.mCapacity > size() || this.mPool == null || this.mPool.getPoolSize() >= this.mPool.getMaximumPoolSize()) {
                return super.offer(runnable);
            }
            return false;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public static abstract class SimpleTask<T> extends Task<T> {
        @Override // com.blankj.utilcode.util.ThreadUtils.Task
        public void onCancel() {
            Log.e("ThreadUtils", "onCancel: " + Thread.currentThread());
        }

        @Override // com.blankj.utilcode.util.ThreadUtils.Task
        public void onFail(Throwable th2) {
            Log.e("ThreadUtils", "onFail: ", th2);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public static abstract class Task<T> implements Runnable {
        private static final int CANCELLED = 4;
        private static final int COMPLETING = 3;
        private static final int EXCEPTIONAL = 2;
        private static final int INTERRUPTED = 5;
        private static final int NEW = 0;
        private static final int RUNNING = 1;
        private static final int TIMEOUT = 6;
        private Executor deliver;
        private volatile boolean isSchedule;
        private a mTimeoutListener;
        private long mTimeoutMillis;
        private Timer mTimer;
        private volatile Thread runner;
        private final AtomicInteger state = new AtomicInteger(0);

        /* JADX INFO: renamed from: com.blankj.utilcode.util.ThreadUtils$Task$1, reason: invalid class name */
        class AnonymousClass1 extends TimerTask {
            AnonymousClass1() {
            }

            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                if (Task.this.isDone()) {
                    return;
                }
                Task.access$400(Task.this);
            }
        }

        public interface a {
        }

        static /* synthetic */ a access$400(Task task) {
            task.getClass();
            return null;
        }

        private Executor getDeliver() {
            Executor executor = this.deliver;
            return executor == null ? ThreadUtils.e() : executor;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSchedule(boolean z10) {
            this.isSchedule = z10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void timeout() {
            synchronized (this.state) {
                try {
                    if (this.state.get() > 1) {
                        return;
                    }
                    this.state.set(6);
                    if (this.runner != null) {
                        this.runner.interrupt();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        public void cancel() {
            cancel(true);
        }

        public void cancel(boolean z10) {
            synchronized (this.state) {
                try {
                    if (this.state.get() > 1) {
                        return;
                    }
                    this.state.set(4);
                    if (z10 && this.runner != null) {
                        this.runner.interrupt();
                    }
                    getDeliver().execute(new Runnable() { // from class: com.blankj.utilcode.util.ThreadUtils.Task.5
                        @Override // java.lang.Runnable
                        public void run() {
                            Task.this.onCancel();
                            Task.this.onDone();
                        }
                    });
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        public abstract T doInBackground() throws Throwable;

        public boolean isCanceled() {
            return this.state.get() >= 4;
        }

        public boolean isDone() {
            return this.state.get() > 1;
        }

        public abstract void onCancel();

        protected void onDone() {
            ThreadUtils.f20040c.remove(this);
            Timer timer = this.mTimer;
            if (timer != null) {
                timer.cancel();
                this.mTimer = null;
            }
        }

        public abstract void onFail(Throwable th2);

        public abstract void onSuccess(T t11);

        @Override // java.lang.Runnable
        public void run() {
            if (this.isSchedule) {
                if (this.runner == null) {
                    if (!this.state.compareAndSet(0, 1)) {
                        return;
                    } else {
                        this.runner = Thread.currentThread();
                    }
                } else if (this.state.get() != 1) {
                    return;
                }
            } else if (!this.state.compareAndSet(0, 1)) {
                return;
            } else {
                this.runner = Thread.currentThread();
            }
            try {
                final T tDoInBackground = doInBackground();
                if (this.isSchedule) {
                    if (this.state.get() != 1) {
                        return;
                    }
                    getDeliver().execute(new Runnable() { // from class: com.blankj.utilcode.util.ThreadUtils.Task.2
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // java.lang.Runnable
                        public void run() {
                            Task.this.onSuccess(tDoInBackground);
                        }
                    });
                } else if (this.state.compareAndSet(1, 3)) {
                    getDeliver().execute(new Runnable() { // from class: com.blankj.utilcode.util.ThreadUtils.Task.3
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // java.lang.Runnable
                        public void run() {
                            Task.this.onSuccess(tDoInBackground);
                            Task.this.onDone();
                        }
                    });
                }
            } catch (InterruptedException unused) {
                this.state.compareAndSet(4, 5);
            } catch (Throwable th2) {
                if (this.state.compareAndSet(1, 2)) {
                    getDeliver().execute(new Runnable() { // from class: com.blankj.utilcode.util.ThreadUtils.Task.4
                        @Override // java.lang.Runnable
                        public void run() {
                            Task.this.onFail(th2);
                            Task.this.onDone();
                        }
                    });
                }
            }
        }

        public Task<T> setDeliver(Executor executor) {
            this.deliver = executor;
            return this;
        }

        public Task<T> setTimeout(long j11, a aVar) {
            this.mTimeoutMillis = j11;
            return this;
        }
    }

    static final class UtilsThreadFactory extends AtomicLong implements ThreadFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final AtomicInteger f20044a = new AtomicInteger(1);
        private static final long serialVersionUID = -9209200509960368598L;
        private final boolean isDaemon;
        private final String namePrefix;
        private final int priority;

        /* JADX INFO: loaded from: classes2.dex */
        class a implements Thread.UncaughtExceptionHandler {
            a() {
            }

            @Override // java.lang.Thread.UncaughtExceptionHandler
            public void uncaughtException(Thread thread, Throwable th2) {
                System.out.println(th2);
            }
        }

        UtilsThreadFactory(String str, int i11) {
            this(str, i11, false);
        }

        UtilsThreadFactory(String str, int i11, boolean z10) {
            this.namePrefix = str + "-pool-" + f20044a.getAndIncrement() + "-thread-";
            this.priority = i11;
            this.isDaemon = z10;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(@NonNull Runnable runnable) {
            Thread thread = new Thread(runnable, this.namePrefix + getAndIncrement()) { // from class: com.blankj.utilcode.util.ThreadUtils.UtilsThreadFactory.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    try {
                        super.run();
                    } catch (Throwable th2) {
                        Log.e("ThreadUtils", "Request threw uncaught throwable", th2);
                    }
                }
            };
            thread.setDaemon(this.isDaemon);
            thread.setUncaughtExceptionHandler(new a());
            thread.setPriority(this.priority);
            return thread;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    class a implements Executor {
        a() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            ThreadUtils.k(runnable);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    static final class b extends ThreadPoolExecutor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final AtomicInteger f20046a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private LinkedBlockingQueue4Util f20047b;

        b(int i11, int i12, long j11, TimeUnit timeUnit, LinkedBlockingQueue4Util linkedBlockingQueue4Util, ThreadFactory threadFactory) {
            super(i11, i12, j11, timeUnit, linkedBlockingQueue4Util, threadFactory);
            this.f20046a = new AtomicInteger();
            linkedBlockingQueue4Util.mPool = this;
            this.f20047b = linkedBlockingQueue4Util;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static ExecutorService b(int i11, int i12) {
            if (i11 == -8) {
                return new b(ThreadUtils.f20041d + 1, (ThreadUtils.f20041d * 2) + 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue4Util(true), new UtilsThreadFactory("cpu", i12));
            }
            if (i11 == -4) {
                return new b((ThreadUtils.f20041d * 2) + 1, (ThreadUtils.f20041d * 2) + 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue4Util(), new UtilsThreadFactory("io", i12));
            }
            if (i11 == -2) {
                return new b(0, 128, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue4Util(true), new UtilsThreadFactory("cached", i12));
            }
            if (i11 == -1) {
                return new b(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue4Util(), new UtilsThreadFactory("single", i12));
            }
            return new b(i11, i11, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue4Util(), new UtilsThreadFactory("fixed(" + i11 + ")", i12));
        }

        @Override // java.util.concurrent.ThreadPoolExecutor
        protected void afterExecute(Runnable runnable, Throwable th2) {
            this.f20046a.decrementAndGet();
            super.afterExecute(runnable, th2);
        }

        @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            if (isShutdown()) {
                return;
            }
            this.f20046a.incrementAndGet();
            try {
                super.execute(runnable);
            } catch (RejectedExecutionException unused) {
                Log.e("ThreadUtils", "This will not happen!");
                this.f20047b.offer(runnable);
            } catch (Throwable unused2) {
                this.f20046a.decrementAndGet();
            }
        }
    }

    public static ExecutorService d() {
        return h(-2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Executor e() {
        if (f20043f == null) {
            f20043f = new a();
        }
        return f20043f;
    }

    public static ExecutorService f() {
        return h(-4);
    }

    public static Handler g() {
        return f20038a;
    }

    private static ExecutorService h(int i11) {
        return i(i11, 5);
    }

    private static ExecutorService i(int i11, int i12) {
        ExecutorService executorServiceB;
        Map map = f20039b;
        synchronized (map) {
            try {
                Map map2 = (Map) map.get(Integer.valueOf(i11));
                if (map2 == null) {
                    ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
                    executorServiceB = b.b(i11, i12);
                    concurrentHashMap.put(Integer.valueOf(i12), executorServiceB);
                    map.put(Integer.valueOf(i11), concurrentHashMap);
                } else {
                    executorServiceB = (ExecutorService) map2.get(Integer.valueOf(i12));
                    if (executorServiceB == null) {
                        executorServiceB = b.b(i11, i12);
                        map2.put(Integer.valueOf(i12), executorServiceB);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return executorServiceB;
    }

    public static boolean j() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    public static void k(Runnable runnable) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            runnable.run();
        } else {
            f20038a.post(runnable);
        }
    }

    public static void l(Runnable runnable, long j11) {
        f20038a.postDelayed(runnable, j11);
    }
}
