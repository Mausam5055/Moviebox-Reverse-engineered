package com.cloud.tmc.offline.download.task;

import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.integration.bridge.NativeRequestBridge;
import com.cloud.tmc.integration.utils.GenerateIdUtils;
import com.cloud.tmc.integration.utils.ext.StringExtKt;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.network.INetWorkProxy;
import com.cloud.tmc.kernel.proxy.network.OnFileDownloadCallback;
import com.cloud.tmc.kernel.proxy.network.a;
import com.cloud.tmc.miniutils.util.FileUtils;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.cloud.tmc.offline.download.model.OffPkgConfig;
import com.cloud.tmc.offline.download.model.OfflineZipDownloadInfo;
import com.cloud.tmc.offline.download.model.TaskResult;
import com.cloud.tmc.offline.download.task.base.BaseTask;
import com.cloud.tmc.offline.download.task.base.ITask;
import com.cloud.tmc.offline.download.utils.NetworkUtils;
import com.cloud.tmc.offline.download.utils.OfflineStoreCache;
import com.cloud.tmc.offline.download.utils.PrePullAppInfoUtils;
import com.cloud.tmc.offline.download.utils.TrackReportUtils;
import com.transsion.mpush.api.LocalPushMessage;
import com.transsion.mpush.core.config.MsgShowStatus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Headers;
import okhttp3.MediaType;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u001e\u0010\u0004\u001a\u001a\u0012\u0004\u0012\u00020\u0006\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0007\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005¢\u0006\u0002\u0010\tJV\u0010\u0011\u001a\u00020\b2\b\u0010\u0012\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0013\u001a\u00020\u00032\u0010\b\u0002\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00152(\b\u0002\u0010\u0016\u001a\"\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0018\u0012\u0004\u0012\u00020\b\u0018\u00010\u0017H\u0002J\"\u0010\u0019\u001a\u00020\b2\u0018\u0010\u001a\u001a\u0014\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0007\u0012\u0004\u0012\u00020\b\u0018\u00010\u001bH\u0016R2\u0010\u0004\u001a\u001a\u0012\u0004\u0012\u00020\u0006\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0007\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u001d"}, d2 = {"Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask;", "Lcom/cloud/tmc/offline/download/task/base/BaseTask;", "previousStep", "", "onResult", "Lkotlin/Function2;", "Lcom/cloud/tmc/offline/download/task/base/ITask;", "Lcom/cloud/tmc/offline/download/model/TaskResult;", "", "(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V", "getOnResult", "()Lkotlin/jvm/functions/Function2;", "setOnResult", "(Lkotlin/jvm/functions/Function2;)V", "trigger", "getTrigger", "()Ljava/lang/String;", "downloadFile", "downloadUrl", NativeRequestBridge.KEY_FILE_PATH, NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, "Lkotlin/Function0;", "error", "Lkotlin/Function3;", "Ljava/io/IOException;", "run", "block", "Lkotlin/Function1;", "Companion", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PrePullAppInfoDownloadTask extends BaseTask {
    private static final String TAG = "PrePullAppInfoDownloadTask";
    private Function2<? super ITask, ? super TaskResult<?>, Unit> onResult;
    private final String previousStep;

    /* JADX INFO: renamed from: com.cloud.tmc.offline.download.task.PrePullAppInfoDownloadTask$downloadFile$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000E\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u001c\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00072\b\u0010\u0013\u001a\u0004\u0018\u00010\u0007H\u0016J:\u0010\u0014\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00072\b\u0010\u0015\u001a\u0004\u0018\u00010\u00072\b\u0010\u0016\u001a\u0004\u0018\u00010\u00072\b\u0010\u0017\u001a\u0004\u0018\u00010\u00182\b\u0010\u0013\u001a\u0004\u0018\u00010\u0007H\u0016J\u001c\u0010\u0019\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00072\b\u0010\u0013\u001a\u0004\u0018\u00010\u0007H\u0016J\u001c\u0010\u001a\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00072\b\u0010\u0013\u001a\u0004\u0018\u00010\u0007H\u0016J$\u0010\u001b\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u001c\u001a\u00020\u001d2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0007H\u0016J\u0010\u0010\u001e\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020 H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u0005R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006!"}, d2 = {"com/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$downloadFile$1", "Lcom/cloud/tmc/kernel/proxy/network/OnFileDownloadCallback;", "offPkgConfig", "Lcom/cloud/tmc/offline/download/model/OffPkgConfig;", "getOffPkgConfig", "()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;", "serverLastModify", "", "getServerLastModify", "()Ljava/lang/String;", "setServerLastModify", "(Ljava/lang/String;)V", "contentType", "", "contextType", "Lokhttp3/MediaType;", "onCancel", "", "url", "callbackId", "onFailed", "errorCode", "errorMsg", "e", "Ljava/io/IOException;", "onFinish", "onPrepare", "onProgress", NotificationCompat.CATEGORY_PROGRESS, "", "responseHeader", "headers", "Lokhttp3/Headers;", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class AnonymousClass1 implements OnFileDownloadCallback {
        final /* synthetic */ String $downloadUrl;
        final /* synthetic */ Function3<String, String, IOException, Unit> $error;
        final /* synthetic */ String $filePath;
        final /* synthetic */ Function0<Unit> $success;
        private final OffPkgConfig offPkgConfig = PrePullAppInfoUtils.INSTANCE.generatePrePullAppInfoOffPkgConfig();
        private String serverLastModify;
        final /* synthetic */ PrePullAppInfoDownloadTask this$0;

        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(String str, Function3<? super String, ? super String, ? super IOException, Unit> function3, Function0<Unit> function0, PrePullAppInfoDownloadTask prePullAppInfoDownloadTask, String str2) {
            this.$downloadUrl = str;
            this.$error = function3;
            this.$success = function0;
            this.this$0 = prePullAppInfoDownloadTask;
            this.$filePath = str2;
        }

        @Override // com.cloud.tmc.kernel.proxy.network.OnFileDownloadCallback
        public boolean contentType(MediaType contextType) {
            TmcLogger.d(PrePullAppInfoDownloadTask.TAG, "contentType: " + contextType);
            return true;
        }

        public final OffPkgConfig getOffPkgConfig() {
            return this.offPkgConfig;
        }

        public final String getServerLastModify() {
            return this.serverLastModify;
        }

        @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
        public void onCancel(String url, String callbackId) {
            TmcLogger.d(PrePullAppInfoDownloadTask.TAG, "onCancel url: " + url + " callbackId: " + callbackId);
            Function3<String, String, IOException, Unit> function3 = this.$error;
            if (function3 != null) {
                function3.invoke("106", "cancel download", null);
            }
        }

        @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
        public void onFailed(String url, String errorCode, String errorMsg, IOException e11, String callbackId) {
            TmcLogger.e(PrePullAppInfoDownloadTask.TAG, "onFailed url: " + url + " errorCode: " + errorCode + " errorMsg: " + errorMsg + " callbackId: " + callbackId);
            if (!CollectionsKt.b0(CollectionsKt.o("D008", "D009"), errorCode)) {
                FileUtils.delete(this.$filePath);
                Function3<String, String, IOException, Unit> function3 = this.$error;
                if (function3 != null) {
                    function3.invoke(errorCode, errorMsg, e11);
                    return;
                }
                return;
            }
            OfflineStoreCache.INSTANCE.setLastUpdateTime(this.offPkgConfig);
            String stackTraceString = Log.getStackTraceString(e11);
            Intrinsics.g(stackTraceString, "getStackTraceString(e)");
            if (stackTraceString.length() == 0) {
                stackTraceString = StringExtKt.orDefault(errorMsg, "No new version available");
            }
            String str = stackTraceString;
            TrackReportUtils trackReportUtils = TrackReportUtils.INSTANCE;
            trackReportUtils.trackPrePullCdnRecord(OfflineConstantsKt.PRE_PULL_APPINFO_STEP_DOWNLOAD, this.this$0.previousStep, 2, this.offPkgConfig.getPkgUrl(), LocalPushMessage.STYLE_VERTICAL_TYPE, str);
            trackReportUtils.reportPrePullCdnRecord();
        }

        @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
        public void onFinish(String url, String callbackId) {
            TmcLogger.d(PrePullAppInfoDownloadTask.TAG, "onFinish url: " + url + " callbackId: " + callbackId);
            String str = this.serverLastModify;
            if (str != null) {
                OfflineStoreCache.INSTANCE.setLastModify(this.offPkgConfig, str);
            }
            Function0<Unit> function0 = this.$success;
            if (function0 != null) {
                function0.invoke();
            }
        }

        @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
        public void onPrepare(String url, String callbackId) {
            TmcLogger.d(PrePullAppInfoDownloadTask.TAG, "onPrepare url: " + url + " callbackId: " + callbackId);
        }

        @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
        public void onProgress(String url, int progress, String callbackId) {
            TmcLogger.d(PrePullAppInfoDownloadTask.TAG, "onProgress url: " + url + " progress: " + progress + " callbackId: " + callbackId);
        }

        @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
        public /* synthetic */ void progressUpdate(String str, int i11, String str2, long j11, long j12) {
            a.a(this, str, i11, str2, j11, j12);
        }

        @Override // com.cloud.tmc.kernel.proxy.network.OnFileDownloadCallback
        public boolean responseHeader(Headers headers) {
            Intrinsics.h(headers, "headers");
            PrePullAppInfoUtils prePullAppInfoUtils = PrePullAppInfoUtils.INSTANCE;
            boolean zCheckResponseHeader = prePullAppInfoUtils.checkResponseHeader(headers, new Function1<String, Unit>() { // from class: com.cloud.tmc.offline.download.task.PrePullAppInfoDownloadTask$downloadFile$1$responseHeader$isEquals$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    invoke((String) obj);
                    return Unit.f67061a;
                }

                public final void invoke(String serverLastModify) {
                    Intrinsics.h(serverLastModify, "serverLastModify");
                    this.this$0.setServerLastModify(serverLastModify);
                }
            });
            if (!zCheckResponseHeader) {
                prePullAppInfoUtils.setZipDownloadStatus(new OfflineZipDownloadInfo(this.$downloadUrl, null, 1, null, 10, null));
            }
            return !zCheckResponseHeader;
        }

        public final void setServerLastModify(String str) {
            this.serverLastModify = str;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PrePullAppInfoDownloadTask(String previousStep, Function2<? super ITask, ? super TaskResult<?>, Unit> function2) {
        super(TAG, 0L, 2, null);
        Intrinsics.h(previousStep, "previousStep");
        this.previousStep = previousStep;
        this.onResult = function2;
    }

    private final void downloadFile(String downloadUrl, String filePath, Function0<Unit> success, Function3<? super String, ? super String, ? super IOException, Unit> error) {
        if (downloadUrl != null) {
            try {
                if (downloadUrl.length() != 0) {
                    String strGenerateRandomId = GenerateIdUtils.INSTANCE.generateRandomId();
                    ((INetWorkProxy) TmcProxy.get(INetWorkProxy.class)).downloadPackage(strGenerateRandomId, downloadUrl, filePath, new HashMap(), strGenerateRandomId, new AnonymousClass1(downloadUrl, error, success, this, filePath));
                    return;
                }
            } catch (Throwable th2) {
                TmcLogger.e(TAG, th2);
                return;
            }
        }
        TmcLogger.d(TAG, "下载链接为 null");
        if (error != null) {
            error.invoke("101", "下载链接为 null", null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void downloadFile$default(PrePullAppInfoDownloadTask prePullAppInfoDownloadTask, String str, String str2, Function0 function0, Function3 function3, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            function0 = null;
        }
        if ((i11 & 8) != 0) {
            function3 = null;
        }
        prePullAppInfoDownloadTask.downloadFile(str, str2, function0, function3);
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
        if (!NetworkUtils.isConnected()) {
            TmcLogger.d(TAG, "Network is not connected");
            return;
        }
        PrePullAppInfoUtils prePullAppInfoUtils = PrePullAppInfoUtils.INSTANCE;
        final OffPkgConfig offPkgConfigGeneratePrePullAppInfoOffPkgConfig = prePullAppInfoUtils.generatePrePullAppInfoOffPkgConfig();
        File fileGenerateDownloadFile = prePullAppInfoUtils.generateDownloadFile(offPkgConfigGeneratePrePullAppInfoOffPkgConfig);
        if (fileGenerateDownloadFile == null) {
            TmcLogger.d(TAG, "Generating download file failed");
            return;
        }
        String pkgUrl = offPkgConfigGeneratePrePullAppInfoOffPkgConfig.getPkgUrl();
        String absolutePath = fileGenerateDownloadFile.getAbsolutePath();
        Intrinsics.g(absolutePath, "targetFile.absolutePath");
        downloadFile(pkgUrl, absolutePath, new Function0<Unit>() { // from class: com.cloud.tmc.offline.download.task.PrePullAppInfoDownloadTask.run.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Object invoke() {
                m277invoke();
                return Unit.f67061a;
            }

            /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
            public final void m277invoke() {
                PrePullAppInfoUtils.INSTANCE.setZipDownloadStatus(new OfflineZipDownloadInfo(offPkgConfigGeneratePrePullAppInfoOffPkgConfig.getPkgUrl(), null, 2, null, 10, null));
                TrackReportUtils.INSTANCE.trackPrePullCdnRecord(OfflineConstantsKt.PRE_PULL_APPINFO_STEP_DOWNLOAD, this.previousStep, 1, offPkgConfigGeneratePrePullAppInfoOffPkgConfig.getPkgUrl(), MsgShowStatus.STATUS_OK, NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS);
                Function1<TaskResult<?>, Unit> function1 = block;
                if (function1 != null) {
                    function1.invoke(new TaskResult.Success(OfflineConstantsKt.PRE_PULL_APPINFO_STEP_UNZIP, false, 2, null));
                }
            }
        }, new Function3<String, String, IOException, Unit>() { // from class: com.cloud.tmc.offline.download.task.PrePullAppInfoDownloadTask.run.2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
                invoke((String) obj, (String) obj2, (IOException) obj3);
                return Unit.f67061a;
            }

            public final void invoke(String str, String str2, IOException iOException) {
                String str3;
                PrePullAppInfoUtils.INSTANCE.setZipDownloadStatus(new OfflineZipDownloadInfo(offPkgConfigGeneratePrePullAppInfoOffPkgConfig.getPkgUrl(), null, 0, null, 10, null));
                String stackTraceString = Log.getStackTraceString(iOException);
                Intrinsics.g(stackTraceString, "getStackTraceString(e)");
                if (stackTraceString.length() == 0) {
                    if (str2 == null) {
                        str2 = "";
                    }
                    str3 = str2;
                } else {
                    str3 = stackTraceString;
                }
                TrackReportUtils trackReportUtils = TrackReportUtils.INSTANCE;
                trackReportUtils.trackPrePullCdnRecord(OfflineConstantsKt.PRE_PULL_APPINFO_STEP_DOWNLOAD, this.previousStep, 0, offPkgConfigGeneratePrePullAppInfoOffPkgConfig.getPkgUrl(), str, str3);
                trackReportUtils.reportPrePullCdnRecord();
            }
        });
    }

    @Override // com.cloud.tmc.offline.download.task.base.BaseTask, com.cloud.tmc.offline.download.task.base.ITask
    public void setOnResult(Function2<? super ITask, ? super TaskResult<?>, Unit> function2) {
        this.onResult = function2;
    }
}
