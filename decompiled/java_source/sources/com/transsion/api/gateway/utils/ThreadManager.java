package com.transsion.api.gateway.utils;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import java.util.LinkedList;
import java.util.Queue;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public class ThreadManager {
    public static final String TAG = "ThreadManager";

    /* JADX INFO: loaded from: classes5.dex */
    public static class EventHandlerThreadHolder {
        private static Handler mHandler;
        private static HandlerThread mHandlerThread;

        static {
            HandlerThread handlerThread = new HandlerThread("event-thread");
            mHandlerThread = handlerThread;
            handlerThread.start();
            mHandler = new Handler(mHandlerThread.getLooper());
        }

        private EventHandlerThreadHolder() {
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static class ExecutorHolder {
        private static ExecutorService mExecutor = new ThreadPoolExecutor(0, 8, 20, TimeUnit.MILLISECONDS, new SynchronousQueue(), new GatewayThreadFactory(), new ThreadPoolExecutor.DiscardOldestPolicy());

        private ExecutorHolder() {
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static class GatewayThreadFactory implements ThreadFactory {
        private static final AtomicInteger poolNumber = new AtomicInteger(1);
        private final ThreadGroup group;
        private final String namePrefix;
        private final AtomicInteger threadNumber = new AtomicInteger(1);

        public GatewayThreadFactory() {
            SecurityManager securityManager = System.getSecurityManager();
            this.group = securityManager != null ? securityManager.getThreadGroup() : Thread.currentThread().getThreadGroup();
            this.namePrefix = "gateway-pool-" + poolNumber.getAndIncrement();
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(this.group, runnable, this.namePrefix + this.threadNumber.getAndIncrement(), 0L);
            if (thread.isDaemon()) {
                thread.setDaemon(false);
            }
            if (thread.getPriority() != 5) {
                thread.setPriority(5);
            }
            return thread;
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static class ScheduledExecutorHolder {
        private static ScheduledExecutorService mScheduledExecutor = Executors.newSingleThreadScheduledExecutor();

        private ScheduledExecutorHolder() {
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static class SerialExecutor implements Executor {
        public Runnable mActive;
        public final Queue<Runnable> mTasks;

        private SerialExecutor() {
            this.mTasks = new LinkedList();
        }

        @Override // java.util.concurrent.Executor
        public synchronized void execute(final Runnable runnable) {
            this.mTasks.offer(new Runnable() { // from class: com.transsion.api.gateway.utils.ThreadManager.SerialExecutor.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        runnable.run();
                    } finally {
                        SerialExecutor.this.scheduleNext();
                    }
                }
            });
            if (this.mActive == null) {
                scheduleNext();
            }
        }

        public synchronized void scheduleNext() {
            Runnable runnablePoll = this.mTasks.poll();
            this.mActive = runnablePoll;
            if (runnablePoll != null) {
                ThreadManager.getExecutor().execute(this.mActive);
            }
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static class SingleExecutorHolder {
        private static ExecutorService mSingleExecutor = Executors.newSingleThreadExecutor();

        private SingleExecutorHolder() {
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static class TimerHandlerThreadHolder {
        private static Handler mHandler;
        private static HandlerThread mHandlerThread;

        static {
            HandlerThread handlerThread = new HandlerThread("globle_timer");
            mHandlerThread = handlerThread;
            handlerThread.start();
            mHandler = new Handler(mHandlerThread.getLooper());
        }

        private TimerHandlerThreadHolder() {
        }
    }

    private ThreadManager() {
    }

    public static final void execute(Runnable runnable) {
        getExecutor().execute(runnable);
    }

    public static void executeInBackground(Runnable runnable) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            execute(runnable);
        } else {
            runnable.run();
        }
    }

    public static void executeInDbWriteThread(Runnable runnable) {
        executeInSingle(runnable);
    }

    public static void executeInSingle(Runnable runnable) {
        getSingleExecutor().execute(runnable);
    }

    private static Handler getEventThreadHandler() {
        return EventHandlerThreadHolder.mHandler;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ExecutorService getExecutor() {
        return ExecutorHolder.mExecutor;
    }

    private static ScheduledExecutorService getScheduledExecutor() {
        return ScheduledExecutorHolder.mScheduledExecutor;
    }

    private static ExecutorService getSingleExecutor() {
        return SingleExecutorHolder.mSingleExecutor;
    }

    private static Handler getTimerThreadHandler() {
        return TimerHandlerThreadHolder.mHandler;
    }

    public static Executor newSerialExecutor() {
        return new SerialExecutor();
    }

    public static void postAtTime(Runnable runnable, long j11) {
        getTimerThreadHandler().postAtTime(runnable, j11);
    }

    public static void postDelayed(Runnable runnable, long j11) {
        getTimerThreadHandler().postDelayed(runnable, j11);
    }

    public static void postDelayedAndRemoveBefore(Runnable runnable, long j11) {
        getTimerThreadHandler().removeCallbacks(runnable);
        getTimerThreadHandler().postDelayed(runnable, j11);
    }

    public static void runInEventThread(Runnable runnable) {
        getEventThreadHandler().post(runnable);
    }

    public static final ScheduledFuture<?> schedule(Runnable runnable, long j11) {
        return getScheduledExecutor().schedule(runnable, j11, TimeUnit.MILLISECONDS);
    }

    public static final <T> ScheduledFuture<T> schedule(Callable<T> callable, long j11) {
        return getScheduledExecutor().schedule(callable, j11, TimeUnit.MILLISECONDS);
    }

    public static final ScheduledFuture<?> scheduleAtFixedRate(Runnable runnable, long j11, long j12) {
        return getScheduledExecutor().scheduleAtFixedRate(runnable, j11, j12, TimeUnit.MILLISECONDS);
    }

    public static ScheduledFuture<?> scheduleWithFixedDelay(Runnable runnable, long j11, long j12) {
        return getScheduledExecutor().scheduleWithFixedDelay(runnable, j11, j12, TimeUnit.MILLISECONDS);
    }

    public static final Future<?> submit(Runnable runnable) {
        return getExecutor().submit(runnable);
    }

    public static final <T> Future<T> submit(Runnable runnable, T t11) {
        return getExecutor().submit(runnable, t11);
    }

    public static final <T> Future<T> submit(Callable<T> callable) {
        return getExecutor().submit(callable);
    }

    public static Future<?> submitInSingle(Runnable runnable) {
        return getSingleExecutor().submit(runnable);
    }

    public static <T> Future<T> submitInSingle(Runnable runnable, T t11) {
        return getSingleExecutor().submit(runnable, t11);
    }

    public static <T> Future<T> submitInSingle(Callable<T> callable) {
        return getSingleExecutor().submit(callable);
    }
}
