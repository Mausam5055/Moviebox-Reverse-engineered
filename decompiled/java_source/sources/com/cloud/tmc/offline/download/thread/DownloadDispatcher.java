package com.cloud.tmc.offline.download.thread;

import android.os.Looper;
import android.os.MessageQueue;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.utils.AppDynamicBuildConfig;
import com.cloud.tmc.offline.download.model.TaskResult;
import com.cloud.tmc.offline.download.task.base.ITask;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0013\b\u0007\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J5\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2%\b\u0002\u0010\n\u001a\u001f\u0012\u0013\u0012\u00110\t¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\b\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u000bJ\u0006\u0010\u000e\u001a\u00020\u0007J\u0010\u0010\u000f\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0002J\u0012\u0010\u0010\u001a\u0006\u0012\u0002\b\u00030\u00112\u0006\u0010\u0012\u001a\u00020\u0013R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;", "", "executor", "Ljava/util/concurrent/ExecutorService;", "(Ljava/util/concurrent/ExecutorService;)V", "mExecutor", "dispatch", "", "task", "Lcom/cloud/tmc/offline/download/task/base/ITask;", "onCompleted", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "dispatcherEnd", "execute", "submit", "Ljava/util/concurrent/Future;", "runnable", "Ljava/lang/Runnable;", "Companion", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class DownloadDispatcher {
    private static final String TAG = "TmcOfflineDownload: DownLoadDispatcher";
    private final ExecutorService executor;
    private final ExecutorService mExecutor;

    /* JADX WARN: Multi-variable type inference failed */
    @JvmOverloads
    public DownloadDispatcher() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    @JvmOverloads
    public DownloadDispatcher(ExecutorService executorService) {
        this.executor = executorService;
        this.mExecutor = executorService == null ? new ScheduledThreadPoolExecutor(Math.max(8, Runtime.getRuntime().availableProcessors() * 2), new DownloadThreadFactory("DownLoadThreadFactory", false)) : executorService;
    }

    public /* synthetic */ DownloadDispatcher(ExecutorService executorService, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : executorService);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void dispatch$default(DownloadDispatcher downloadDispatcher, ITask iTask, Function1 function1, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            function1 = null;
        }
        downloadDispatcher.dispatch(iTask, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean dispatch$lambda$1(final ITask task, final DownloadDispatcher this$0, final Function1 function1) {
        Intrinsics.h(task, "$task");
        Intrinsics.h(this$0, "this$0");
        TmcLogger.d(TAG, "execute idleHandler task: " + task);
        this$0.mExecutor.execute(new Runnable() { // from class: com.cloud.tmc.offline.download.thread.c
            @Override // java.lang.Runnable
            public final void run() {
                DownloadDispatcher.dispatch$lambda$1$lambda$0(this.f23927a, task, function1);
            }
        });
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void dispatch$lambda$1$lambda$0(DownloadDispatcher this$0, ITask task, Function1 function1) {
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(task, "$task");
        this$0.execute(task);
        if (function1 != null) {
            function1.invoke(task);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void dispatch$lambda$2(DownloadDispatcher this$0, ITask task, Function1 function1) {
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(task, "$task");
        this$0.execute(task);
        if (function1 != null) {
            function1.invoke(task);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void execute(final ITask task) {
        TmcLogger.d(TAG, "execute task: " + task);
        try {
            task.run(new Function1<TaskResult<?>, Unit>() { // from class: com.cloud.tmc.offline.download.thread.DownloadDispatcher$execute$1$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    invoke((TaskResult<?>) obj);
                    return Unit.f67061a;
                }

                public final void invoke(TaskResult<?> result) {
                    Intrinsics.h(result, "result");
                    Function2<ITask, TaskResult<?>, Unit> onResult = task.getOnResult();
                    if (onResult != null) {
                        onResult.invoke(task, result);
                    }
                    if (result instanceof TaskResult.Retry) {
                        try {
                            Thread.sleep(result.getDelay());
                        } catch (InterruptedException e11) {
                            e11.printStackTrace();
                        }
                        this.execute(task);
                    }
                }
            });
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "execute task run failed!", th2);
        }
    }

    public final void dispatch(final ITask task, final Function1<? super ITask, Unit> onCompleted) {
        Intrinsics.h(task, "task");
        if (task.isIdleRunTask()) {
            Looper.getMainLooper().getQueue().addIdleHandler(new MessageQueue.IdleHandler() { // from class: com.cloud.tmc.offline.download.thread.a
                @Override // android.os.MessageQueue.IdleHandler
                public final boolean queueIdle() {
                    return DownloadDispatcher.dispatch$lambda$1(task, this, onCompleted);
                }
            });
        } else {
            this.mExecutor.execute(new Runnable() { // from class: com.cloud.tmc.offline.download.thread.b
                @Override // java.lang.Runnable
                public final void run() {
                    DownloadDispatcher.dispatch$lambda$2(this.f23924a, task, onCompleted);
                }
            });
        }
    }

    public final void dispatcherEnd() {
        if (Intrinsics.c(this.executor, this.mExecutor)) {
            return;
        }
        if (AppDynamicBuildConfig.isAppDebugAble()) {
            TmcLogger.d(TAG, "auto shutdown default executor");
        }
        this.mExecutor.shutdown();
    }

    public final Future<?> submit(Runnable runnable) {
        Intrinsics.h(runnable, "runnable");
        Future<?> futureSubmit = this.mExecutor.submit(runnable);
        Intrinsics.g(futureSubmit, "mExecutor.submit(runnable)");
        return futureSubmit;
    }
}
