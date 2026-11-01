package com.cloud.tmc.offline.download.task;

import android.content.Context;
import android.os.SystemClock;
import com.cloud.h5update.TH5Update;
import com.cloud.h5update.bean.BaseResponse;
import com.cloud.h5update.bean.UpdateEntity;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.OfflineDownloadAnalyseType;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.utils.TmcGsonUtils;
import com.cloud.tmc.offline.download.OfflineManager;
import com.cloud.tmc.offline.download.callback.LoadConfigCallback;
import com.cloud.tmc.offline.download.model.OffPkgConfig;
import com.cloud.tmc.offline.download.model.TaskResult;
import com.cloud.tmc.offline.download.model.TaskResultKt;
import com.cloud.tmc.offline.download.task.base.BaseTask;
import com.cloud.tmc.offline.download.task.base.ITask;
import com.cloud.tmc.offline.download.th5update.UpdateChecker;
import com.cloud.tmc.offline.download.utils.NetworkUtils;
import com.cloud.tmc.offline.download.utils.OfflineStoreCache;
import com.cloud.tmc.offline.download.utils.OfflineUtils;
import com.google.gson.reflect.TypeToken;
import com.hisavana.common.tracking.TrackingKey;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.reflect.Type;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u001e\u0010\u0007\u001a\u001a\u0012\u0004\u0012\u00020\t\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\b¢\u0006\u0002\u0010\fJ\"\u0010\u001b\u001a\u00020\u000b2\u0018\u0010\u001c\u001a\u0014\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u001dH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u00020\u000e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000fR2\u0010\u0007\u001a\u001a\u0012\u0004\u0012\u00020\t\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\bX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0005X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u0014\u0010\u0006\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001a¨\u0006\u001f"}, d2 = {"Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;", "Lcom/cloud/tmc/offline/download/task/base/BaseTask;", "_packageName", "", "_priority", "", "trigger", "onResult", "Lkotlin/Function2;", "Lcom/cloud/tmc/offline/download/task/base/ITask;", "Lcom/cloud/tmc/offline/download/model/TaskResult;", "", "(Ljava/lang/String;ILjava/lang/String;Lkotlin/jvm/functions/Function2;)V", "isIdleRunTask", "", "()Z", "getOnResult", "()Lkotlin/jvm/functions/Function2;", "setOnResult", "(Lkotlin/jvm/functions/Function2;)V", TrackingKey.PRIORITY, "getPriority", "()I", "setPriority", "(I)V", "getTrigger", "()Ljava/lang/String;", "run", "block", "Lkotlin/Function1;", "Companion", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class LoadOfflineConfigTask extends BaseTask {
    private static final String TAG = "TmcOfflineDownload: LoadOfflineConfigTask";
    private final String _packageName;
    private Function2<? super ITask, ? super TaskResult<?>, Unit> onResult;
    private int priority;
    private final String trigger;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoadOfflineConfigTask(String _packageName, int i11, String trigger, Function2<? super ITask, ? super TaskResult<?>, Unit> function2) {
        super("LoadOfflineConfigTask-" + _packageName, 0L, 2, null);
        Intrinsics.h(_packageName, "_packageName");
        Intrinsics.h(trigger, "trigger");
        this._packageName = _packageName;
        this.trigger = trigger;
        this.onResult = function2;
        this.priority = i11;
    }

    @Override // com.cloud.tmc.offline.download.task.base.BaseTask, com.cloud.tmc.offline.download.task.base.ITask
    public Function2<ITask, TaskResult<?>, Unit> getOnResult() {
        return this.onResult;
    }

    @Override // com.cloud.tmc.offline.download.task.base.BaseTask, com.cloud.tmc.offline.download.task.base.ITask
    public int getPriority() {
        return this.priority;
    }

    @Override // com.cloud.tmc.offline.download.task.base.ITask
    public String getTrigger() {
        return this.trigger;
    }

    @Override // com.cloud.tmc.offline.download.task.base.BaseTask, com.cloud.tmc.offline.download.task.base.ITask
    /* JADX INFO: renamed from: isIdleRunTask */
    public boolean getIsIdleRunTask() {
        return true;
    }

    @Override // com.cloud.tmc.offline.download.task.base.ITask
    public void run(final Function1<? super TaskResult<?>, Unit> block) {
        final long jElapsedRealtime = SystemClock.elapsedRealtime();
        long startTaskTime = jElapsedRealtime - getStartTaskTime();
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(null, OfflineDownloadAnalyseType.QUEUE_TIME, this + "，耗时：" + startTaskTime + "ms", OfflineUtils.pointCommonParams$default(OfflineUtils.INSTANCE, null, getTrigger(), Boolean.valueOf(getIsIdleRunTask()), Long.valueOf(startTaskTime), this, 1, null));
        if (!NetworkUtils.isConnected()) {
            TmcLogger.d(TAG, "Network connection is not connected!");
            if (block != null) {
                block.invoke(new TaskResult.Failure(107, "Network connection is not connected!", true));
                return;
            }
            return;
        }
        TmcLogger.d(TAG, "request config _packageName: " + this._packageName);
        TH5Update.a aVar = TH5Update.f21238c;
        TH5Update.a.m(aVar, this._packageName, null, 0, 6, null);
        Context context$com_cloud_tmc_offline_download = OfflineManager.getContext$com_cloud_tmc_offline_download();
        if (context$com_cloud_tmc_offline_download != null) {
            aVar.k(context$com_cloud_tmc_offline_download).c(new UpdateChecker(new LoadConfigCallback() { // from class: com.cloud.tmc.offline.download.task.LoadOfflineConfigTask.run.1
                @Override // com.cloud.tmc.offline.download.callback.LoadConfigCallback
                public void noNetwork(String url, int errCode, String errMsg) {
                    Intrinsics.h(url, "url");
                    TmcLogger.e(LoadOfflineConfigTask.TAG, "noNetwork: " + url + " " + errCode + " " + errMsg);
                }

                @Override // com.cloud.tmc.offline.download.callback.LoadConfigCallback
                public void onFailure(String url, int errCode, String errMsg) {
                    Intrinsics.h(url, "url");
                    TmcLogger.e(LoadOfflineConfigTask.TAG, "onFailure: " + url + " " + errCode + " " + errMsg);
                    long jElapsedRealtime2 = SystemClock.elapsedRealtime() - jElapsedRealtime;
                    ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(null, OfflineDownloadAnalyseType.DOWNLOAD_TIME, this + "，耗时：" + jElapsedRealtime2 + "ms", OfflineUtils.pointCommonParams$default(OfflineUtils.INSTANCE, null, this.getTrigger(), Boolean.valueOf(this.getIsIdleRunTask()), Long.valueOf(jElapsedRealtime2), this, 1, null));
                    Function1<TaskResult<?>, Unit> function1 = block;
                    if (function1 != null) {
                        function1.invoke(new TaskResult.Failure(112, "errCode: " + errCode + " errMsg: " + errMsg, true));
                    }
                }

                @Override // com.cloud.tmc.offline.download.callback.LoadConfigCallback
                public boolean onSuccess(String responseStr) {
                    Intrinsics.h(responseStr, "responseStr");
                    TmcLogger.d(LoadOfflineConfigTask.TAG, "responseStr: " + responseStr);
                    long jElapsedRealtime2 = SystemClock.elapsedRealtime() - jElapsedRealtime;
                    PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
                    OfflineDownloadAnalyseType offlineDownloadAnalyseType = OfflineDownloadAnalyseType.DOWNLOAD_TIME;
                    String str = this + "，耗时：" + jElapsedRealtime2 + "ms";
                    OfflineUtils offlineUtils = OfflineUtils.INSTANCE;
                    performanceAnalyseProxy.record(null, offlineDownloadAnalyseType, str, OfflineUtils.pointCommonParams$default(offlineUtils, null, this.getTrigger(), Boolean.valueOf(this.getIsIdleRunTask()), Long.valueOf(jElapsedRealtime2), this, 1, null));
                    if (responseStr.length() == 0) {
                        Function1<TaskResult<?>, Unit> function1 = block;
                        if (function1 != null) {
                            function1.invoke(new TaskResult.Failure(TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY, "responseStr is empty!", true));
                        }
                        return true;
                    }
                    try {
                        Type type = new TypeToken<BaseResponse<UpdateEntity>>() { // from class: com.cloud.tmc.offline.download.task.LoadOfflineConfigTask$run$1$onSuccess$response$1
                        }.getType();
                        Intrinsics.g(type, "object :\n               …<UpdateEntity>>() {}.type");
                        BaseResponse baseResponse = (BaseResponse) TmcGsonUtils.fromJson(responseStr, type);
                        if (baseResponse.getCode() != 0) {
                            Function1<TaskResult<?>, Unit> function2 = block;
                            if (function2 != null) {
                                function2.invoke(new TaskResult.Failure(109, "request failed with code: " + baseResponse.getCode() + " and message: " + baseResponse.getMessage(), true));
                            }
                            return true;
                        }
                        OffPkgConfig offPkgConfigGenerateOffPkgConfig = offlineUtils.generateOffPkgConfig((UpdateEntity) baseResponse.getData());
                        if (offPkgConfigGenerateOffPkgConfig == null) {
                            Function1<TaskResult<?>, Unit> function3 = block;
                            if (function3 != null) {
                                function3.invoke(new TaskResult.Failure(110, "TH5Update configure conversion offPkgConfig failed!", true));
                            }
                            return true;
                        }
                        if (offlineUtils.isNeedDownload(offPkgConfigGenerateOffPkgConfig)) {
                            OfflineStoreCache.INSTANCE.setOfflinePkgConfigCache(offPkgConfigGenerateOffPkgConfig);
                            TmcLogger.d(LoadOfflineConfigTask.TAG, "Load offline configuration successfully");
                            Function1<TaskResult<?>, Unit> function4 = block;
                            if (function4 != null) {
                                function4.invoke(new TaskResult.Success(offPkgConfigGenerateOffPkgConfig, true));
                            }
                            return true;
                        }
                        offlineUtils.diffUpdateOfflinePkgConfig(offPkgConfigGenerateOffPkgConfig);
                        Function1<TaskResult<?>, Unit> function5 = block;
                        if (function5 != null) {
                            String group = offPkgConfigGenerateOffPkgConfig.getGroup();
                            if (group == null) {
                                group = "It";
                            }
                            function5.invoke(new TaskResult.Failure(111, group + " doesn't require a download", true));
                        }
                        return true;
                    } catch (Throwable th2) {
                        TmcLogger.e(LoadOfflineConfigTask.TAG, "Exception json parse error", th2);
                        Function1<TaskResult<?>, Unit> function6 = block;
                        if (function6 != null) {
                            function6.invoke(new TaskResult.Failure(1000, th2.getMessage(), true));
                        }
                    }
                }
            })).b();
            return;
        }
        TmcLogger.d(TAG, "context is null!");
        if (block != null) {
            block.invoke(new TaskResult.Failure(0, "context is null!", false, 5, null));
        }
    }

    @Override // com.cloud.tmc.offline.download.task.base.BaseTask, com.cloud.tmc.offline.download.task.base.ITask
    public void setOnResult(Function2<? super ITask, ? super TaskResult<?>, Unit> function2) {
        this.onResult = function2;
    }

    @Override // com.cloud.tmc.offline.download.task.base.BaseTask, com.cloud.tmc.offline.download.task.base.ITask
    public void setPriority(int i11) {
        this.priority = i11;
    }
}
