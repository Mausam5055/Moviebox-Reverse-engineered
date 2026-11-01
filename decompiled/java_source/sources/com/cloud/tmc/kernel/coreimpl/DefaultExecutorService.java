package com.cloud.tmc.kernel.coreimpl;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.executor.IExecutorService;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.BuildConfigProxy;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public class DefaultExecutorService implements IExecutorService {
    private static final int CPU_COUNT;
    private static final int KEEP_ALIVE_SECONDS = 30;
    private static final int MAJOR_CORE_POOL_SIZE;
    private static final int MAXIMUM_POOL_SIZE;
    private static final int SLAVE_CORE_POOL_SIZE = 2;
    private static final String TAG = "DefaultExecutorService";
    private static final String TYPE_MAJOR_POOL = "major_pool";
    private static final String TYPE_SLAVE_POOL = "slave_pool";
    private static final ThreadFactory sMajorThreadFactory;
    private static final ThreadFactory sSlaveThreadFactory;
    private Executor mMajorExecutor;
    private ScheduledThreadPoolExecutor mScheduledThreadPool;
    private Executor mSlaveExecutor;
    private ExecutorService mLogPool = null;
    private final BlockingQueue<Runnable> sMajorPoolWorkQueue = new PriorityBlockingQueue(256);
    private final BlockingQueue<Runnable> sSlavePoolWorkQueue = new PriorityBlockingQueue(128);
    private Handler mHandler = new Handler(Looper.getMainLooper());
    private Executor mSyncExecutor = new Executor() { // from class: com.cloud.tmc.kernel.coreimpl.DefaultExecutorService.1
        @Override // java.util.concurrent.Executor
        public void execute(@NonNull Runnable runnable) {
            runnable.run();
        }
    };
    private Executor mUiExecutor = new Executor() { // from class: com.cloud.tmc.kernel.coreimpl.DefaultExecutorService.2
        @Override // java.util.concurrent.Executor
        public void execute(@NonNull Runnable runnable) {
            DefaultExecutorService.this.mHandler.post(runnable);
        }
    };

    private static class RunnablePriority implements Runnable, Comparable<RunnablePriority> {
        private Runnable runnable;
        private ExecutorType type;

        RunnablePriority(Runnable runnable, ExecutorType executorType) {
            this.type = executorType;
            this.runnable = runnable;
        }

        @Override // java.lang.Comparable
        public int compareTo(RunnablePriority runnablePriority) {
            ExecutorType executorType = this.type;
            if (executorType == null) {
                return -1;
            }
            ExecutorType executorType2 = runnablePriority.type;
            if (executorType2 == null) {
                return 1;
            }
            if (executorType.equals(executorType2)) {
                return 0;
            }
            return this.type.ordinal() - runnablePriority.type.ordinal();
        }

        public ExecutorType getType() {
            return this.type;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.runnable.run();
        }
    }

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        CPU_COUNT = iAvailableProcessors;
        MAJOR_CORE_POOL_SIZE = Math.max(2, Math.min(iAvailableProcessors - 1, 4));
        MAXIMUM_POOL_SIZE = (iAvailableProcessors * 2) + 1;
        sMajorThreadFactory = new ThreadFactory() { // from class: com.cloud.tmc.kernel.coreimpl.DefaultExecutorService.3
            private final AtomicInteger mCount = new AtomicInteger(1);

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                return new Thread(runnable, "Tmc #" + this.mCount.getAndIncrement());
            }
        };
        sSlaveThreadFactory = new ThreadFactory() { // from class: com.cloud.tmc.kernel.coreimpl.DefaultExecutorService.4
            private final AtomicInteger mCount = new AtomicInteger(1);

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                return new Thread(runnable, "Tmc ##" + this.mCount.getAndIncrement());
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getExecutor$0(ExecutorType executorType, Executor executor, Runnable runnable) {
        RunnablePriority runnablePriority = new RunnablePriority(runnable, executorType);
        TmcLogger.e("TmcExecutorService", "插入 task: type" + executorType);
        executor.execute(runnablePriority);
        if (((BuildConfigProxy) TmcProxy.get(BuildConfigProxy.class)).isDebug().booleanValue()) {
            printStats((executorType == ExecutorType.NORMAL || executorType == ExecutorType.IDLE) ? TYPE_SLAVE_POOL : TYPE_MAJOR_POOL, executor);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$printStats$1(String str, ThreadPoolExecutor threadPoolExecutor) {
        TmcLogger.d(TAG, "=========================Type: " + str);
        TmcLogger.d(TAG, "Pool Size: {}, " + threadPoolExecutor.getPoolSize());
        TmcLogger.d(TAG, "Active Threads: {}, " + threadPoolExecutor.getActiveCount());
        TmcLogger.d(TAG, "Number of Tasks Completed: {}, " + threadPoolExecutor.getCompletedTaskCount());
        TmcLogger.d(TAG, "Number of Tasks in Queue: {}, " + threadPoolExecutor.getQueue().size());
        TmcLogger.d(TAG, "=========================");
    }

    private void printStats(final String str, Executor executor) {
        if (executor instanceof ThreadPoolExecutor) {
            final ThreadPoolExecutor threadPoolExecutor = (ThreadPoolExecutor) executor;
            if (this.mLogPool == null) {
                this.mLogPool = Executors.newFixedThreadPool(1);
            }
            this.mLogPool.execute(new Runnable() { // from class: com.cloud.tmc.kernel.coreimpl.b
                @Override // java.lang.Runnable
                public final void run() {
                    DefaultExecutorService.lambda$printStats$1(str, threadPoolExecutor);
                }
            });
        }
    }

    @Override // com.cloud.tmc.kernel.executor.IExecutorService
    public synchronized Executor getExecutor(final ExecutorType executorType) {
        final Executor executor;
        if (executorType == ExecutorType.UI) {
            return this.mUiExecutor;
        }
        if (executorType == ExecutorType.SYNC) {
            return this.mSyncExecutor;
        }
        if (executorType == ExecutorType.NORMAL || executorType == ExecutorType.IDLE) {
            if (this.mSlaveExecutor == null) {
                int i11 = MAXIMUM_POOL_SIZE / 2;
                this.mSlaveExecutor = new ThreadPoolExecutor(2, i11 < 2 ? 2 : i11, 30L, TimeUnit.SECONDS, this.sSlavePoolWorkQueue, sSlaveThreadFactory);
            }
            executor = this.mSlaveExecutor;
        } else {
            if (this.mMajorExecutor == null) {
                int i12 = MAJOR_CORE_POOL_SIZE;
                int i13 = MAXIMUM_POOL_SIZE;
                this.mMajorExecutor = new ThreadPoolExecutor(i12, i13 < i12 ? i12 : i13, 30L, TimeUnit.SECONDS, this.sMajorPoolWorkQueue, sMajorThreadFactory);
            }
            executor = this.mMajorExecutor;
        }
        return new Executor() { // from class: com.cloud.tmc.kernel.coreimpl.a
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                this.f23487a.lambda$getExecutor$0(executorType, executor, runnable);
            }
        };
    }

    @Override // com.cloud.tmc.kernel.executor.IExecutorService
    public synchronized ScheduledThreadPoolExecutor getScheduledExecutor() {
        try {
            if (this.mScheduledThreadPool == null) {
                this.mScheduledThreadPool = new ScheduledThreadPoolExecutor(4);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.mScheduledThreadPool;
    }
}
