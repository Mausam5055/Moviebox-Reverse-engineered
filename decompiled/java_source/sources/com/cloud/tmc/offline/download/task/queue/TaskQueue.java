package com.cloud.tmc.offline.download.task.queue;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.cloud.tmc.offline.download.task.base.ITask;
import com.cloud.tmc.offline.download.thread.DownloadDispatcher;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u000f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001d\u0010\u0010\u001a\u00020\u0011\"\b\b\u0000\u0010\u0012*\u00020\u000f2\u0006\u0010\u0013\u001a\u0002H\u0012¢\u0006\u0002\u0010\u0014J\b\u0010\u0015\u001a\u00020\u0016H\u0002J\u0006\u0010\u0017\u001a\u00020\u0016J\u0006\u0010\u0018\u001a\u00020\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/cloud/tmc/offline/download/task/queue/TaskQueue;", "", "addQueueExecute", "", "(Z)V", "mAtomicInteger", "Ljava/util/concurrent/atomic/AtomicInteger;", "mDispatcher", "Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;", "mHandler", "Landroid/os/Handler;", "mTaskExecutor", "Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;", "mTaskQueue", "Ljava/util/concurrent/PriorityBlockingQueue;", "Lcom/cloud/tmc/offline/download/task/base/ITask;", "add", "", "T", "task", "(Lcom/cloud/tmc/offline/download/task/base/ITask;)I", "checkTaskExecutor", "", "quit", "start", "Companion", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TaskQueue {
    private static final int KEY_QUIT = 2;
    private static final int KEY_START = 1;
    private static final String TAG = "TaskQueue";
    private final boolean addQueueExecute;
    private final AtomicInteger mAtomicInteger;
    private final DownloadDispatcher mDispatcher;
    private final Handler mHandler;
    private TaskExecutor mTaskExecutor;
    private final PriorityBlockingQueue<ITask> mTaskQueue;

    public TaskQueue() {
        this(false, 1, null);
    }

    public TaskQueue(boolean z10) {
        this.addQueueExecute = z10;
        Looper looperMyLooper = Looper.myLooper();
        this.mHandler = new Handler(looperMyLooper == null ? Looper.getMainLooper() : looperMyLooper, new Handler.Callback() { // from class: com.cloud.tmc.offline.download.task.queue.a
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return TaskQueue.mHandler$lambda$0(this.f23920a, message);
            }
        });
        this.mDispatcher = new DownloadDispatcher(ExecutorUtils.getScheduledExecutor());
        this.mTaskQueue = new PriorityBlockingQueue<>();
        this.mAtomicInteger = new AtomicInteger();
    }

    public /* synthetic */ TaskQueue(boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? true : z10);
    }

    private final void checkTaskExecutor() {
        if (this.mTaskExecutor == null) {
            this.mTaskExecutor = new TaskExecutor(this.mDispatcher, 1, this.mTaskQueue);
        }
        if (this.addQueueExecute) {
            start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean mHandler$lambda$0(TaskQueue this$0, Message it) {
        TaskExecutor taskExecutor;
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(it, "it");
        try {
            int i11 = it.what;
            if (i11 == 1) {
                TaskExecutor taskExecutor2 = this$0.mTaskExecutor;
                if (taskExecutor2 != null) {
                    taskExecutor2.startQueue();
                }
            } else if (i11 == 2 && (taskExecutor = this$0.mTaskExecutor) != null) {
                taskExecutor.quit();
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
        return true;
    }

    public final <T extends ITask> int add(T task) {
        Intrinsics.h(task, "task");
        checkTaskExecutor();
        if (!this.mTaskQueue.contains(task)) {
            PriorityBlockingQueue<ITask> priorityBlockingQueue = this.mTaskQueue;
            task.setSequence(this.mAtomicInteger.incrementAndGet());
            priorityBlockingQueue.add(task);
        }
        return this.mTaskQueue.size();
    }

    public final void quit() {
        this.mHandler.sendEmptyMessage(2);
    }

    public final void start() {
        this.mHandler.sendEmptyMessage(1);
    }
}
