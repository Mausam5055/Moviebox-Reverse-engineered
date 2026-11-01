package com.cloud.tmc.offline.download.task;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.proxy.IAppInfoManagerProxy;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.offline.download.OfflineManager;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.cloud.tmc.offline.download.model.OffPkgConfig;
import com.cloud.tmc.offline.download.model.OfflineZipDownloadInfo;
import com.cloud.tmc.offline.download.model.PrePullAppInfo;
import com.cloud.tmc.offline.download.model.TaskResult;
import com.cloud.tmc.offline.download.task.base.BaseTask;
import com.cloud.tmc.offline.download.task.base.ITask;
import com.cloud.tmc.offline.download.utils.PrePullAppInfoUtils;
import com.cloud.tmc.offline.download.utils.TrackReportUtils;
import com.transsion.mpush.core.config.MsgShowStatus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u001e\u0010\u0004\u001a\u001a\u0012\u0004\u0012\u00020\u0006\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0007\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005¢\u0006\u0002\u0010\tJ2\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00032\u0018\u0010\u0015\u001a\u0014\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0007\u0012\u0004\u0012\u00020\b\u0018\u00010\u0016H\u0002J\"\u0010\u0017\u001a\u00020\b2\u0018\u0010\u0015\u001a\u0014\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0007\u0012\u0004\u0012\u00020\b\u0018\u00010\u0016H\u0002J\"\u0010\u0018\u001a\u00020\b2\u0018\u0010\u0015\u001a\u0014\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0007\u0012\u0004\u0012\u00020\b\u0018\u00010\u0016H\u0016R2\u0010\u0004\u001a\u001a\u0012\u0004\u0012\u00020\u0006\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0007\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u001a"}, d2 = {"Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask;", "Lcom/cloud/tmc/offline/download/task/base/BaseTask;", "previousStep", "", "onResult", "Lkotlin/Function2;", "Lcom/cloud/tmc/offline/download/task/base/ITask;", "Lcom/cloud/tmc/offline/download/model/TaskResult;", "", "(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V", "getOnResult", "()Lkotlin/jvm/functions/Function2;", "setOnResult", "(Lkotlin/jvm/functions/Function2;)V", "trigger", "getTrigger", "()Ljava/lang/String;", "parseAppInfo", "offPkgConfig", "Lcom/cloud/tmc/offline/download/model/OffPkgConfig;", "zipUnCompressPath", "block", "Lkotlin/Function1;", "parseFailure", "run", "Companion", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PrePullAppInfoParseTask extends BaseTask {
    private static final String TAG = "PrePullAppInfoParseTask";
    private Function2<? super ITask, ? super TaskResult<?>, Unit> onResult;
    private final String previousStep;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PrePullAppInfoParseTask(String previousStep, Function2<? super ITask, ? super TaskResult<?>, Unit> function2) {
        super(TAG, 0L, 2, null);
        Intrinsics.h(previousStep, "previousStep");
        this.previousStep = previousStep;
        this.onResult = function2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void parseAppInfo(OffPkgConfig offPkgConfig, String zipUnCompressPath, Function1<? super TaskResult<?>, Unit> block) {
        PrePullAppInfoUtils prePullAppInfoUtils = PrePullAppInfoUtils.INSTANCE;
        prePullAppInfoUtils.setZipDownloadStatus(new OfflineZipDownloadInfo(offPkgConfig.getPkgUrl(), null, 6, null, 10, null));
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        ArrayList<PrePullAppInfo> arrayListLoadCdnAppInfo = prePullAppInfoUtils.loadCdnAppInfo(zipUnCompressPath, new Function1<Throwable, Unit>() { // from class: com.cloud.tmc.offline.download.task.PrePullAppInfoParseTask$parseAppInfo$loadCdnAppInfo$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((Throwable) obj);
                return Unit.f67061a;
            }

            /* JADX WARN: Multi-variable type inference failed */
            public final void invoke(Throwable e11) {
                Intrinsics.h(e11, "e");
                objectRef.element = e11;
            }
        });
        int i11 = arrayListLoadCdnAppInfo == null ? 0 : 1;
        String str = arrayListLoadCdnAppInfo == null ? "107" : MsgShowStatus.STATUS_OK;
        String stackTraceString = arrayListLoadCdnAppInfo == null ? Log.getStackTraceString((Throwable) objectRef.element) : NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS;
        Intrinsics.g(stackTraceString, "if (loadCdnAppInfo == nu…arseError) else \"success\"");
        TrackReportUtils.INSTANCE.trackPrePullCdnRecord(OfflineConstantsKt.PRE_PULL_APPINFO_STEP_PARSE, this.previousStep, i11, offPkgConfig.getPkgUrl(), str, stackTraceString);
        if (arrayListLoadCdnAppInfo == null) {
            prePullAppInfoUtils.setZipDownloadStatus(new OfflineZipDownloadInfo(offPkgConfig.getPkgUrl(), null, 5, null, 10, null));
            TmcLogger.d(TAG, "loadCdnAppInfo is not valid");
            parseFailure(block);
            return;
        }
        if (Build.VERSION.SDK_INT == 29 ? MiniAppConfigHelper.INSTANCE.getConfigTargetBool(LauncherMiniAppConfigHelper.KEY_ANDROID_10_APPINFO_OFFLINE, true) : true) {
            Iterator<PrePullAppInfo> it = arrayListLoadCdnAppInfo.iterator();
            Intrinsics.g(it, "loadCdnAppInfo.iterator()");
            while (it.hasNext()) {
                PrePullAppInfo next = it.next();
                Intrinsics.g(next, "iterator.next()");
                PrePullAppInfo prePullAppInfo = next;
                String appId = prePullAppInfo.getAppId();
                AppModel appInfo = prePullAppInfo.getAppInfo();
                if (!(appId == null || appId.length() == 0)) {
                    TmcLogger.d(TAG, "解析存储 appId: " + appId);
                    Context context$com_cloud_tmc_offline_download = OfflineManager.getContext$com_cloud_tmc_offline_download();
                    if (context$com_cloud_tmc_offline_download != null) {
                        ((IAppInfoManagerProxy) TmcProxy.get(IAppInfoManagerProxy.class)).updateAppModelByOffline(context$com_cloud_tmc_offline_download, appInfo, appId + "_cdn");
                    }
                }
            }
        }
        TmcLogger.d(TAG, "解析完成，解析数量：" + arrayListLoadCdnAppInfo.size());
        PrePullAppInfoUtils.INSTANCE.setZipDownloadStatus(new OfflineZipDownloadInfo(offPkgConfig.getPkgUrl(), null, 7, null, 10, null));
        TrackReportUtils.INSTANCE.reportPrePullCdnRecord();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void parseFailure(Function1<? super TaskResult<?>, Unit> block) {
        if (!Intrinsics.c(this.previousStep, OfflineConstantsKt.PRE_PULL_APPINFO_STEP_CHECK)) {
            TrackReportUtils.INSTANCE.reportPrePullCdnRecord();
            return;
        }
        boolean zIsAllowRequest = PrePullAppInfoUtils.INSTANCE.isAllowRequest();
        TmcLogger.d(TAG, "检查间隔时间是否允许: " + zIsAllowRequest);
        if (!zIsAllowRequest || block == null) {
            return;
        }
        block.invoke(new TaskResult.Success(OfflineConstantsKt.PRE_PULL_APPINFO_STEP_DOWNLOAD, false, 2, null));
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
        TmcLogger.d(TAG, "previousStep: " + this.previousStep);
        PrePullAppInfoUtils prePullAppInfoUtils = PrePullAppInfoUtils.INSTANCE;
        if (!prePullAppInfoUtils.isDownloaded()) {
            TmcLogger.d(TAG, "当前尚未下载，不执行解析");
            parseFailure(block);
            return;
        }
        final OffPkgConfig offPkgConfigGeneratePrePullAppInfoOffPkgConfig = prePullAppInfoUtils.generatePrePullAppInfoOffPkgConfig();
        final File fileGenerateDownloadFile = prePullAppInfoUtils.generateDownloadFile(offPkgConfigGeneratePrePullAppInfoOffPkgConfig);
        if (fileGenerateDownloadFile == null) {
            TmcLogger.d(TAG, "Generating download file failed");
            parseFailure(block);
            return;
        }
        File parentFile = fileGenerateDownloadFile.getParentFile();
        if (parentFile == null) {
            TmcLogger.d(TAG, "parentFile is null");
            parseFailure(block);
            return;
        }
        if (!parentFile.exists()) {
            TmcLogger.d(TAG, "unzip path is not exists");
            parentFile.mkdirs();
        }
        prePullAppInfoUtils.setZipDownloadStatus(new OfflineZipDownloadInfo(offPkgConfigGeneratePrePullAppInfoOffPkgConfig.getPkgUrl(), null, 3, null, 10, null));
        String absolutePath = parentFile.getAbsolutePath();
        Intrinsics.g(absolutePath, "parentFile.absolutePath");
        prePullAppInfoUtils.checkCdnAppInfoFileAndDelete(absolutePath);
        String absolutePath2 = parentFile.getAbsolutePath();
        Intrinsics.g(absolutePath2, "parentFile.absolutePath");
        prePullAppInfoUtils.unzipFile(fileGenerateDownloadFile, absolutePath2, new Function3<Boolean, String, Throwable, Unit>() { // from class: com.cloud.tmc.offline.download.task.PrePullAppInfoParseTask.run.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
                invoke(((Boolean) obj).booleanValue(), (String) obj2, (Throwable) obj3);
                return Unit.f67061a;
            }

            public final void invoke(boolean z10, String zipUnCompressPath, Throwable th2) {
                Intrinsics.h(zipUnCompressPath, "zipUnCompressPath");
                TrackReportUtils.INSTANCE.trackPrePullCdnRecord(OfflineConstantsKt.PRE_PULL_APPINFO_STEP_UNZIP, PrePullAppInfoParseTask.this.previousStep, z10 ? 1 : 0, offPkgConfigGeneratePrePullAppInfoOffPkgConfig.getPkgUrl(), z10 ? MsgShowStatus.STATUS_OK : "105", Log.getStackTraceString(th2));
                if (!z10) {
                    PrePullAppInfoUtils.INSTANCE.setZipDownloadStatus(new OfflineZipDownloadInfo(offPkgConfigGeneratePrePullAppInfoOffPkgConfig.getPkgUrl(), null, 5, null, 10, null));
                    TmcLogger.d(PrePullAppInfoParseTask.TAG, "解压文件失败，targetFile: " + fileGenerateDownloadFile);
                    PrePullAppInfoParseTask.this.parseFailure(block);
                    return;
                }
                PrePullAppInfoUtils.INSTANCE.setZipDownloadStatus(new OfflineZipDownloadInfo(offPkgConfigGeneratePrePullAppInfoOffPkgConfig.getPkgUrl(), null, 4, null, 10, null));
                TmcLogger.d(PrePullAppInfoParseTask.TAG, "解压成功，zipUnCompressPath is " + zipUnCompressPath);
                try {
                    PrePullAppInfoParseTask.this.parseAppInfo(offPkgConfigGeneratePrePullAppInfoOffPkgConfig, zipUnCompressPath, block);
                } catch (Throwable th3) {
                    TmcLogger.e(PrePullAppInfoParseTask.TAG, "解析失败", th3);
                    PrePullAppInfoParseTask.this.parseFailure(block);
                }
            }
        });
    }

    @Override // com.cloud.tmc.offline.download.task.base.BaseTask, com.cloud.tmc.offline.download.task.base.ITask
    public void setOnResult(Function2<? super ITask, ? super TaskResult<?>, Unit> function2) {
        this.onResult = function2;
    }
}
