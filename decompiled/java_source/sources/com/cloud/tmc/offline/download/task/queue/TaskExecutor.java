package com.cloud.tmc.offline.download.task.queue;

import android.util.Log;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.offline.download.task.base.ITask;
import com.cloud.tmc.offline.download.thread.DownloadDispatcher;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B'\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\u0010\tJ\u001a\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u0013H\u0002J\u0006\u0010\u0014\u001a\u00020\u0010J\b\u0010\u0015\u001a\u00020\u0010H\u0016J\b\u0010\u0016\u001a\u00020\u0010H\u0002J\u0006\u0010\u0017\u001a\u00020\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;", "Ljava/lang/Runnable;", "dispatcher", "Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;", "parallelism", "", "mTask", "Ljava/util/concurrent/BlockingQueue;", "Lcom/cloud/tmc/offline/download/task/base/ITask;", "(Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;ILjava/util/concurrent/BlockingQueue;)V", "inFlightTasks", "Ljava/util/concurrent/atomic/AtomicInteger;", "isRunning", "Ljava/util/concurrent/atomic/AtomicBoolean;", "waitCountLimit", "log", "", "", "printStack", "", "quit", "run", "sleep", "startQueue", "Companion", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TaskExecutor implements Runnable {
    private static final int MAX_WAIT_COUNT_LIMIT = 3;
    private static final long MAX_WAIT_TIMEOUT = 10000;
    private static final String TAG = "TmcOfflineDownload: TaskExecutor";
    private final DownloadDispatcher dispatcher;
    private final AtomicInteger inFlightTasks;
    private final AtomicBoolean isRunning;
    private final BlockingQueue<ITask> mTask;
    private final int parallelism;
    private final AtomicInteger waitCountLimit;

    public TaskExecutor(DownloadDispatcher dispatcher, int i11, BlockingQueue<ITask> mTask) {
        Intrinsics.h(dispatcher, "dispatcher");
        Intrinsics.h(mTask, "mTask");
        this.dispatcher = dispatcher;
        this.parallelism = i11;
        this.mTask = mTask;
        this.isRunning = new AtomicBoolean(false);
        this.inFlightTasks = new AtomicInteger(0);
        this.waitCountLimit = new AtomicInteger(0);
    }

    public /* synthetic */ TaskExecutor(DownloadDispatcher downloadDispatcher, int i11, BlockingQueue blockingQueue, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(downloadDispatcher, (i12 & 2) != 0 ? 1 : i11, blockingQueue);
    }

    private final void log(String log, boolean printStack) {
        TmcLogger.d(TAG, log + " " + (printStack ? Log.getStackTraceString(new Throwable("Just Print")) : ""));
    }

    static /* synthetic */ void log$default(TaskExecutor taskExecutor, String str, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        taskExecutor.log(str, z10);
    }

    private final void sleep() {
        try {
            Thread.sleep(1000L);
        } catch (InterruptedException e11) {
            TmcLogger.e(TAG, "InterruptedException while sleeping.", e11);
        }
    }

    public final void quit() {
        if (this.isRunning.getAndSet(false)) {
            log$default(this, "quit", false, 2, null);
            try {
                Thread.currentThread().interrupt();
            } catch (Throwable th2) {
                TmcLogger.e(TAG, th2);
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        while (this.isRunning.get() && !Thread.currentThread().isInterrupted()) {
            log$default(this, "Start Waiting...", false, 2, null);
            try {
                final ITask iTaskPoll = this.mTask.poll(10000L, TimeUnit.MILLISECONDS);
                log$default(this, "Waiting for task: " + iTaskPoll, false, 2, null);
                if (iTaskPoll == null) {
                    int iIncrementAndGet = this.waitCountLimit.incrementAndGet();
                    log$default(this, "incrementAndGet: " + iIncrementAndGet, false, 2, null);
                    if (iIncrementAndGet >= 3) {
                        log$default(this, "When the maximum number of acquisition timeouts is reached, exit the current thread", false, 2, null);
                        quit();
                        return;
                    }
                    iTaskPoll = null;
                }
                if (iTaskPoll != null) {
                    this.waitCountLimit.set(0);
                }
                int iIncrementAndGet2 = this.inFlightTasks.incrementAndGet();
                log$default(this, "inFlight: " + iIncrementAndGet2, false, 2, null);
                if (iIncrementAndGet2 > this.parallelism) {
                    sleep();
                    if (iTaskPoll != null) {
                        log$default(this, "Reached the maximum parallelism, re-throw into the queue " + iTaskPoll, false, 2, null);
                        this.mTask.add(iTaskPoll);
                    }
                    this.inFlightTasks.decrementAndGet();
                } else if (iTaskPoll != null) {
                    log$default(this, "Run task: " + iTaskPoll, false, 2, null);
                    this.dispatcher.dispatch(iTaskPoll, new Function1<ITask, Unit>() { // from class: com.cloud.tmc.offline.download.task.queue.TaskExecutor$run$2$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                            invoke((ITask) obj);
                            return Unit.f67061a;
                        }

                        public final void invoke(ITask it) {
                            Intrinsics.h(it, "it");
                            TaskExecutor.log$default(this.this$0, "Run task finished: " + iTaskPoll, false, 2, null);
                            this.this$0.inFlightTasks.decrementAndGet();
                        }
                    });
                } else {
                    this.inFlightTasks.decrementAndGet();
                }
            } catch (InterruptedException unused) {
                if (!this.isRunning.get()) {
                    quit();
                    return;
                }
            }
        }
    }

    public final void startQueue() {
        if (this.isRunning.getAndSet(true)) {
            return;
        }
        log$default(this, "startQueue", false, 2, null);
        this.inFlightTasks.set(0);
        this.waitCountLimit.set(0);
        this.dispatcher.submit(this);
    }
}
