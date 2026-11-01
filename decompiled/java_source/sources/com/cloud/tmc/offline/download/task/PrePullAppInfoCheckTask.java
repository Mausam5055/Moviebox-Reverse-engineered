package com.cloud.tmc.offline.download.task;

import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.offline.download.OfflineManager;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.cloud.tmc.offline.download.model.TaskResult;
import com.cloud.tmc.offline.download.task.base.BaseTask;
import com.cloud.tmc.offline.download.task.base.ITask;
import com.cloud.tmc.offline.download.utils.PrePullAppInfoUtils;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B%\u0012\u001e\u0010\u0002\u001a\u001a\u0012\u0004\u0012\u00020\u0004\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0003¢\u0006\u0002\u0010\u0007J\"\u0010\u000f\u001a\u00020\u00062\u0018\u0010\u0010\u001a\u0014\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0011H\u0016R2\u0010\u0002\u001a\u001a\u0012\u0004\u0012\u00020\u0004\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0003X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u0007R\u0014\u0010\u000b\u001a\u00020\f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000e¨\u0006\u0013"}, d2 = {"Lcom/cloud/tmc/offline/download/task/PrePullAppInfoCheckTask;", "Lcom/cloud/tmc/offline/download/task/base/BaseTask;", "onResult", "Lkotlin/Function2;", "Lcom/cloud/tmc/offline/download/task/base/ITask;", "Lcom/cloud/tmc/offline/download/model/TaskResult;", "", "(Lkotlin/jvm/functions/Function2;)V", "getOnResult", "()Lkotlin/jvm/functions/Function2;", "setOnResult", "trigger", "", "getTrigger", "()Ljava/lang/String;", "run", "block", "Lkotlin/Function1;", "Companion", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PrePullAppInfoCheckTask extends BaseTask {
    private static final String TAG = "PrePullAppInfoCheckTask";
    private Function2<? super ITask, ? super TaskResult<?>, Unit> onResult;

    public PrePullAppInfoCheckTask(Function2<? super ITask, ? super TaskResult<?>, Unit> function2) {
        super(TAG, 0L, 2, null);
        this.onResult = function2;
    }

    @Override // com.cloud.tmc.offline.download.task.base.BaseTask, com.cloud.tmc.offline.download.task.base.ITask
    public Function2<ITask, TaskResult<?>, Unit> getOnResult() {
        return this.onResult;
    }

    @Override // com.cloud.tmc.offline.download.task.base.ITask
    public String getTrigger() {
        return OfflineConstantsKt.TRIGGER_IDLE;
    }

    @Override // com.cloud.tmc.offline.download.task.base.ITask
    public void run(final Function1<? super TaskResult<?>, Unit> block) {
        if (OfflineManager.isForceRefreshPrefetchCdnAppInfo$com_cloud_tmc_offline_download()) {
            TmcLogger.d(TAG, "开启了强制刷新精选 AppInfo，跳过检查步骤");
            if (block != null) {
                block.invoke(new TaskResult.Success(OfflineConstantsKt.PRE_PULL_APPINFO_STEP_DOWNLOAD, false, 2, null));
                return;
            }
            return;
        }
        Function0<Unit> function0 = new Function0<Unit>() { // from class: com.cloud.tmc.offline.download.task.PrePullAppInfoCheckTask$run$downloadStepBlock$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Object invoke() {
                m276invoke();
                return Unit.f67061a;
            }

            /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
            public final void m276invoke() {
                Function1<TaskResult<?>, Unit> function1;
                boolean zIsAllowRequest = PrePullAppInfoUtils.INSTANCE.isAllowRequest();
                TmcLogger.d("PrePullAppInfoCheckTask", "检查间隔时间是否允许: " + zIsAllowRequest);
                if (!zIsAllowRequest || (function1 = block) == null) {
                    return;
                }
                function1.invoke(new TaskResult.Success(OfflineConstantsKt.PRE_PULL_APPINFO_STEP_DOWNLOAD, false, 2, null));
            }
        };
        PrePullAppInfoUtils prePullAppInfoUtils = PrePullAppInfoUtils.INSTANCE;
        if (!prePullAppInfoUtils.isDownloaded()) {
            function0.invoke();
            return;
        }
        if (prePullAppInfoUtils.isNotLegalZip()) {
            TmcLogger.d(TAG, "已下载，检查不是合法 zip 包");
            function0.invoke();
        } else if (prePullAppInfoUtils.isParsed()) {
            TmcLogger.d(TAG, "已下载且已解析成功");
            function0.invoke();
        } else if (block != null) {
            block.invoke(new TaskResult.Success(OfflineConstantsKt.PRE_PULL_APPINFO_STEP_UNZIP, false, 2, null));
        }
    }

    @Override // com.cloud.tmc.offline.download.task.base.BaseTask, com.cloud.tmc.offline.download.task.base.ITask
    public void setOnResult(Function2<? super ITask, ? super TaskResult<?>, Unit> function2) {
        this.onResult = function2;
    }
}
