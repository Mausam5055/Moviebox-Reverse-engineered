package com.cloud.tmc.offline.download;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import androidx.p009lifecycle.Lifecycle;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.config.utils.XLogUtil;
import com.cloud.h5update.TH5Update;
import com.cloud.h5update.bean.PreloadResource;
import com.cloud.h5update.bean.UpdateEntity;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.integration.model.AppStoreInfo;
import com.cloud.tmc.integration.utils.LatestUseUtils;
import com.cloud.tmc.integration.utils.ext.StringExtKt;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.OfflineDownloadAnalyseType;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.kernel.service.ConfigService;
import com.cloud.tmc.kernel.utils.AppDynamicBuildConfig;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.cloud.tmc.kernel.utils.NetworkUtil;
import com.cloud.tmc.kernel.utils.ProcessUtils;
import com.cloud.tmc.kernel.utils.TmcGsonUtils;
import com.cloud.tmc.kernel.utils.TmcGsonUtilsKt;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.miniutils.util.GsonUtils;
import com.cloud.tmc.offline.download.callback.OnUpdateCallback;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.cloud.tmc.offline.download.deftimpl.UpdateListenerImpl;
import com.cloud.tmc.offline.download.intf.IOfflineDownloadConfig;
import com.cloud.tmc.offline.download.model.ClearOfflineDownloadCacheData;
import com.cloud.tmc.offline.download.model.OffPkgConfig;
import com.cloud.tmc.offline.download.model.OfflineDownloadBuilder;
import com.cloud.tmc.offline.download.model.OfflinePkgCachePath;
import com.cloud.tmc.offline.download.model.OfflineZipDownloadInfo;
import com.cloud.tmc.offline.download.model.TaskResult;
import com.cloud.tmc.offline.download.model.ZipFileInfo;
import com.cloud.tmc.offline.download.resource.IOfflineResourceManagerProxy;
import com.cloud.tmc.offline.download.resource.OfflineResourceManagerProxyImpl;
import com.cloud.tmc.offline.download.resource.processor.IOfflineResourceProcessorProxy;
import com.cloud.tmc.offline.download.resource.processor.OfflineResourceProcessorProxyImpl;
import com.cloud.tmc.offline.download.resource.processor.intercept.IOfflineResourceIntercept;
import com.cloud.tmc.offline.download.task.DownloadTask;
import com.cloud.tmc.offline.download.task.LoadOfflineConfigTask;
import com.cloud.tmc.offline.download.task.PrePullAppInfoCheckTask;
import com.cloud.tmc.offline.download.task.PrePullAppInfoDownloadTask;
import com.cloud.tmc.offline.download.task.PrePullAppInfoParseTask;
import com.cloud.tmc.offline.download.task.base.ITask;
import com.cloud.tmc.offline.download.task.queue.TaskQueue;
import com.cloud.tmc.offline.download.utils.FastClickUtils;
import com.cloud.tmc.offline.download.utils.LifecycleUtils;
import com.cloud.tmc.offline.download.utils.NetworkUtils;
import com.cloud.tmc.offline.download.utils.OfflineStoreCache;
import com.cloud.tmc.offline.download.utils.OfflineUtils;
import com.cloud.tmc.offline.download.utils.TrackReportUtils;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.google.gson.reflect.TypeToken;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.lang.reflect.Type;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0091\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e*\u0001.\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001c\u0010K\u001a\u00020L2\b\u0010M\u001a\u0004\u0018\u00010\u00062\b\u0010N\u001a\u0004\u0018\u00010OH\u0007J\u0012\u0010P\u001a\u00020\n2\b\u0010M\u001a\u0004\u0018\u00010\u0006H\u0007J\u000e\u0010Q\u001a\u00020L2\u0006\u0010R\u001a\u00020SJ\u0010\u0010T\u001a\u00020L2\u0006\u0010U\u001a\u00020\u0006H\u0002J\u0010\u0010V\u001a\u00020L2\u0006\u0010U\u001a\u00020\u0006H\u0002J*\u0010W\u001a\u00020L2\u0006\u0010\u000e\u001a\u00020X2\u0018\b\u0002\u0010Y\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010[\u0012\u0004\u0012\u00020L\u0018\u00010ZH\u0007J*\u0010W\u001a\u00020L2\u0006\u0010\\\u001a\u00020]2\u0018\b\u0002\u0010Y\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010[\u0012\u0004\u0012\u00020L\u0018\u00010ZH\u0007J,\u0010W\u001a\u00020L2\b\u0010\u000e\u001a\u0004\u0018\u00010\u00062\u0018\b\u0002\u0010Y\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010[\u0012\u0004\u0012\u00020L\u0018\u00010ZH\u0007J4\u0010^\u001a\u00020L2\b\u0010_\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010`\u001a\u00020\n2\u0016\b\u0002\u0010Y\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020L\u0018\u00010ZH\u0007J\u0012\u0010a\u001a\u00020\n2\b\u0010M\u001a\u0004\u0018\u00010\u0006H\u0007J\u0010\u0010b\u001a\u00020L2\u0006\u0010c\u001a\u00020dH\u0002J\u000f\u0010e\u001a\u0004\u0018\u00010SH\u0001¢\u0006\u0002\bfJ\u001a\u0010g\u001a\n\u0012\u0004\u0012\u00020i\u0018\u00010h2\b\u0010j\u001a\u0004\u0018\u00010\u0006H\u0007J\u0012\u0010k\u001a\u0004\u0018\u00010[2\u0006\u0010j\u001a\u00020\u0006H\u0007J\u001a\u0010k\u001a\u0004\u0018\u00010[2\u0006\u0010j\u001a\u00020\u00062\u0006\u0010l\u001a\u00020\u0006H\u0007J\u0012\u0010m\u001a\u0004\u0018\u00010[2\u0006\u0010M\u001a\u00020\u0006H\u0007J\u001e\u0010n\u001a\u0004\u0018\u00010o2\b\u0010M\u001a\u0004\u0018\u00010\u00062\b\u0010l\u001a\u0004\u0018\u00010\u0006H\u0007J\u0010\u0010p\u001a\u00020L2\u0006\u0010\u0007\u001a\u00020\bH\u0007J\b\u0010q\u001a\u00020LH\u0002J\u0010\u0010r\u001a\u00020L2\u0006\u0010\u0007\u001a\u00020\bH\u0002J\b\u0010s\u001a\u00020\nH\u0002J\b\u0010t\u001a\u00020\nH\u0002J\r\u0010&\u001a\u00020\nH\u0001¢\u0006\u0002\buJ\b\u0010v\u001a\u00020\nH\u0002J>\u0010w\u001a\u00020L2\u0006\u0010x\u001a\u00020\u00062\n\b\u0002\u0010y\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010`\u001a\u00020\n2\u0016\b\u0002\u0010Y\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020L\u0018\u00010ZH\u0002J\b\u0010z\u001a\u00020LH\u0007J2\u0010{\u001a\u00020L2\u0006\u0010x\u001a\u00020\u00062\b\u0010\u000e\u001a\u0004\u0018\u00010X2\u0016\b\u0002\u0010Y\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020L\u0018\u00010ZH\u0002J\u001c\u0010|\u001a\u00020\n2\b\u0010M\u001a\u0004\u0018\u00010\u00062\b\u0010l\u001a\u0004\u0018\u00010\u0006H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u00020\n8@X\u0081\u0004¢\u0006\f\u0012\u0004\b\u000b\u0010\u0002\u001a\u0004\b\f\u0010\rR\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u000f8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\n8BX\u0083\u0004¢\u0006\f\u0012\u0004\b\u0013\u0010\u0002\u001a\u0004\b\u0014\u0010\rR\u001a\u0010\u0015\u001a\u00020\n8@X\u0081\u0004¢\u0006\f\u0012\u0004\b\u0016\u0010\u0002\u001a\u0004\b\u0017\u0010\rR\u001a\u0010\u0018\u001a\u00020\n8@X\u0081\u0004¢\u0006\f\u0012\u0004\b\u0019\u0010\u0002\u001a\u0004\b\u001a\u0010\rR\u001a\u0010\u001b\u001a\u00020\n8@X\u0081\u0004¢\u0006\f\u0012\u0004\b\u001c\u0010\u0002\u001a\u0004\b\u001d\u0010\rR\u001a\u0010\u001e\u001a\u00020\n8@X\u0081\u0004¢\u0006\f\u0012\u0004\b\u001f\u0010\u0002\u001a\u0004\b \u0010\rR\u001a\u0010!\u001a\u00020\n8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\"\u0010\u0002\u001a\u0004\b!\u0010\rR\u001a\u0010#\u001a\u00020\n8@X\u0081\u0004¢\u0006\f\u0012\u0004\b$\u0010\u0002\u001a\u0004\b%\u0010\rR\u000e\u0010&\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010'\u001a\u00020(8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b+\u0010,\u001a\u0004\b)\u0010*R\u0010\u0010-\u001a\u00020.X\u0082\u0004¢\u0006\u0004\n\u0002\u0010/R\u001a\u00100\u001a\u00020\n8BX\u0083\u0004¢\u0006\f\u0012\u0004\b1\u0010\u0002\u001a\u0004\b2\u0010\rR\u001a\u00103\u001a\u00020\u00048@X\u0081\u0004¢\u0006\f\u0012\u0004\b4\u0010\u0002\u001a\u0004\b5\u00106R\u001a\u00107\u001a\u00020\u00048@X\u0081\u0004¢\u0006\f\u0012\u0004\b8\u0010\u0002\u001a\u0004\b9\u00106R\u001a\u0010:\u001a\u00020\u00048@X\u0081\u0004¢\u0006\f\u0012\u0004\b;\u0010\u0002\u001a\u0004\b<\u00106R(\u0010?\u001a\u0004\u0018\u00010>2\b\u0010=\u001a\u0004\u0018\u00010>@@X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b@\u0010A\"\u0004\bB\u0010CR\u001a\u0010D\u001a\u00020\u00048@X\u0081\u0004¢\u0006\f\u0012\u0004\bE\u0010\u0002\u001a\u0004\bF\u00106R\u001a\u0010G\u001a\u00020\u00068@X\u0081\u0004¢\u0006\f\u0012\u0004\bH\u0010\u0002\u001a\u0004\bI\u0010J¨\u0006}"}, d2 = {"Lcom/cloud/tmc/offline/download/OfflineManager;", "", "()V", "MIN_CHECK_OFFLINE_CONFIG_DEVIATE_TIME", "", "TAG", "", MimeTypes.BASE_TYPE_APPLICATION, "Landroid/app/Application;", "checkVersionEnable", "", "getCheckVersionEnable$com_cloud_tmc_offline_download$annotations", "getCheckVersionEnable$com_cloud_tmc_offline_download", "()Z", XLogUtil.TAG, "Lcom/google/gson/JsonObject;", "getConfig$com_cloud_tmc_offline_download", "()Lcom/google/gson/JsonObject;", OfflineConstantsKt.OFFLINE_CONFIG_INIT_ENABLE, "getInitLoad$annotations", "getInitLoad", "isDisableOfflinePkgFw", "isDisableOfflinePkgFw$com_cloud_tmc_offline_download$annotations", "isDisableOfflinePkgFw$com_cloud_tmc_offline_download", "isDisableOfflineResources", "isDisableOfflineResources$com_cloud_tmc_offline_download$annotations", "isDisableOfflineResources$com_cloud_tmc_offline_download", "isEnableAhaSoFormatConvert", "isEnableAhaSoFormatConvert$com_cloud_tmc_offline_download$annotations", "isEnableAhaSoFormatConvert$com_cloud_tmc_offline_download", "isEnablePrefetchCdnAppInfo", "isEnablePrefetchCdnAppInfo$com_cloud_tmc_offline_download$annotations", "isEnablePrefetchCdnAppInfo$com_cloud_tmc_offline_download", "isEnabled", "isEnabled$annotations", "isForceRefreshPrefetchCdnAppInfo", "isForceRefreshPrefetchCdnAppInfo$com_cloud_tmc_offline_download$annotations", "isForceRefreshPrefetchCdnAppInfo$com_cloud_tmc_offline_download", "isInit", "mTaskQueue", "Lcom/cloud/tmc/offline/download/task/queue/TaskQueue;", "getMTaskQueue", "()Lcom/cloud/tmc/offline/download/task/queue/TaskQueue;", "mTaskQueue$delegate", "Lkotlin/Lazy;", "networkListener", "com/cloud/tmc/offline/download/OfflineManager$networkListener$1", "Lcom/cloud/tmc/offline/download/OfflineManager$networkListener$1;", OfflineConstantsKt.OFFLINE_CONFIG_NETWORK_ENABLE, "getNetworkLoad$annotations", "getNetworkLoad", OfflineConstantsKt.OFFLINE_CONFIG_MANIFEST_TIME_INTERVAL, "getOfflineManifestTimeInterval$com_cloud_tmc_offline_download$annotations", "getOfflineManifestTimeInterval$com_cloud_tmc_offline_download", "()J", OfflineConstantsKt.OFFLINE_CONFIG_MAX_UPDATE_TIME_INTERVAL, "getOfflineMaxUpdateTimeInterval$com_cloud_tmc_offline_download$annotations", "getOfflineMaxUpdateTimeInterval$com_cloud_tmc_offline_download", OfflineConstantsKt.OFFLINE_CONFIG_PKG_CONFIG_TIME_INTERVAL, "getOfflinePkgConfigTimeInterval$com_cloud_tmc_offline_download$annotations", "getOfflinePkgConfigTimeInterval$com_cloud_tmc_offline_download", AppMeasurementSdk.ConditionalUserProperty.VALUE, "Lcom/cloud/tmc/offline/download/callback/OnUpdateCallback;", "onUpdateCallback", "getOnUpdateCallback$com_cloud_tmc_offline_download", "()Lcom/cloud/tmc/offline/download/callback/OnUpdateCallback;", "setOnUpdateCallback$com_cloud_tmc_offline_download", "(Lcom/cloud/tmc/offline/download/callback/OnUpdateCallback;)V", "prefetchCdnAppInfoTimeInterval", "getPrefetchCdnAppInfoTimeInterval$com_cloud_tmc_offline_download$annotations", "getPrefetchCdnAppInfoTimeInterval$com_cloud_tmc_offline_download", OfflineConstantsKt.OFFLINE_CONFIG_PREFETCH_CDN_APPINFO_URL, "getPrefetchCdnAppInfoUrl$com_cloud_tmc_offline_download$annotations", "getPrefetchCdnAppInfoUrl$com_cloud_tmc_offline_download", "()Ljava/lang/String;", "addOfflineLifecycleObserver", "", "appId", RequestParameters.SUBRESOURCE_LIFECYCLE, "Landroidx/lifecycle/Lifecycle;", "checkMiniAppInDisableAntiShakeList", "clearCache", "context", "Landroid/content/Context;", "doExecutePrePullAppInfoDownloadTask", "previousStep", "doExecutePrePullAppInfoUnZipTask", "downloadPkg", "Lcom/cloud/tmc/offline/download/model/OffPkgConfig;", "callback", "Lkotlin/Function1;", "Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;", "builder", "Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;", "downloadPkgFromPlatform", "packageName", "antiShake", "enableVerifyServerFile", "execute", "task", "Lcom/cloud/tmc/offline/download/task/base/ITask;", "getContext", "getContext$com_cloud_tmc_offline_download", "getOfflinePackageDownloadInfo", "", "Lcom/cloud/tmc/offline/download/model/ZipFileInfo;", "group", "getOfflinePkgCachePath", "url", "getOfflinePkgFwCachePath", "getOfflineResources", "Ljava/io/File;", "init", "initH5Update", "initSomeThings", "isFast", "isHostFast", "isInit$com_cloud_tmc_offline_download", "isPrePullAppInfoFast", "loadConfig", "trigger", "_packageName", "prePullFeaturedAppInfo", "startDownloadTask", "verifyServerFile", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class OfflineManager {
    private static final long MIN_CHECK_OFFLINE_CONFIG_DEVIATE_TIME = 60000;
    private static final String TAG = "TmcOfflineDownload: OfflineManager";
    private static Application application;
    private static volatile boolean isInit;
    private static OnUpdateCallback onUpdateCallback;
    public static final OfflineManager INSTANCE = new OfflineManager();
    private static final OfflineManager$networkListener$1 networkListener = new NetworkUtil.NetworkListener() { // from class: com.cloud.tmc.offline.download.OfflineManager$networkListener$1
        @Override // com.cloud.tmc.kernel.utils.NetworkUtil.NetworkListener
        public void onNetworkChanged(NetworkUtil.Network ot2, NetworkUtil.Network nt2) {
            try {
                String strTransferNetworkType = NetworkUtil.transferNetworkType(nt2);
                if (Intrinsics.c(strTransferNetworkType, "none") || Intrinsics.c(strTransferNetworkType, NetworkUtil.NETWORK_TYPE_UNKNOWN) || !OfflineManager.getNetworkLoad()) {
                    return;
                }
                OfflineManager.loadConfig$default(OfflineManager.INSTANCE, OfflineConstantsKt.TRIGGER_CHANGE_NETWORK, null, false, null, 14, null);
            } catch (Throwable th2) {
                TmcLogger.e("TmcOfflineDownload: OfflineManager", "network failed!", th2);
            }
        }
    };

    /* JADX INFO: renamed from: mTaskQueue$delegate, reason: from kotlin metadata */
    private static final Lazy mTaskQueue = LazyKt.b(new Function0<TaskQueue>() { // from class: com.cloud.tmc.offline.download.OfflineManager$mTaskQueue$2
        @Override // kotlin.jvm.functions.Function0
        public final TaskQueue invoke() {
            return new TaskQueue(false, 1, null);
        }
    });

    private OfflineManager() {
    }

    @JvmStatic
    public static final void addOfflineLifecycleObserver(String appId, Lifecycle lifecycle) {
        try {
            LifecycleUtils.INSTANCE.addOfflineLifecycleObserver(appId, lifecycle);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "addOfflineLifecycleObserver", th2);
        }
    }

    @JvmStatic
    public static final boolean checkMiniAppInDisableAntiShakeList(String appId) {
        try {
            return OfflineUtils.INSTANCE.checkMiniAppInDisableAntiShakeList(appId);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "checkMiniAppInDisableAntiShakeList", th2);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void clearCache$lambda$28(Context context) {
        Intrinsics.h(context, "$context");
        Object objFromJson = GsonUtils.fromJson(MiniAppConfigHelper.INSTANCE.getConfigTargetStr(LauncherMiniAppConfigHelper.KEY_CLEAR_OFFLINE_DOWNLOAD_CACHE, MiniAppConfigHelper.DEFAULT_CLEAR_OFFLINE_DOWNLOAD_CACHE), (Class<Object>) ClearOfflineDownloadCacheData.class);
        Intrinsics.g(objFromJson, "fromJson(\n              …ava\n                    )");
        ClearOfflineDownloadCacheData clearOfflineDownloadCacheData = (ClearOfflineDownloadCacheData) objFromJson;
        long j11 = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getLong(context, OfflineConstantsKt.MMKV_APPID_LAST_CLEAR_OFFLINE_DOWNLOAD_CACHE, OfflineConstantsKt.MMKV_KEY_LAST_CLEAR_OFFLINE_DOWNLOAD_CACHE);
        long jCurrentTimeMillis = System.currentTimeMillis() / ((long) 1000);
        if (!clearOfflineDownloadCacheData.getClear() || jCurrentTimeMillis - j11 <= clearOfflineDownloadCacheData.getIntervalTime()) {
            return;
        }
        ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putLong(context, OfflineConstantsKt.MMKV_APPID_LAST_CLEAR_OFFLINE_DOWNLOAD_CACHE, OfflineConstantsKt.MMKV_KEY_LAST_CLEAR_OFFLINE_DOWNLOAD_CACHE, jCurrentTimeMillis);
        List<AppStoreInfo> latestUseApps = LatestUseUtils.getLatestUseApps();
        if (latestUseApps != null) {
            for (AppStoreInfo appStoreInfo : latestUseApps) {
                TmcLogger.i(OfflineUtils.TAG, "遍历使用过的小程序，进行清除缓存，group: " + appStoreInfo.getAppId());
                OffPkgConfig offlinePkgConfigCache = OfflineStoreCache.INSTANCE.getOfflinePkgConfigCache(appStoreInfo.getAppId());
                if (offlinePkgConfigCache != null) {
                    OfflineUtils.INSTANCE.deleteOfflineZipUnCompressDir(offlinePkgConfigCache);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void doExecutePrePullAppInfoDownloadTask(String previousStep) {
        if (isEnablePrefetchCdnAppInfo$com_cloud_tmc_offline_download()) {
            execute(new PrePullAppInfoDownloadTask(previousStep, new Function2<ITask, TaskResult<?>, Unit>() { // from class: com.cloud.tmc.offline.download.OfflineManager.doExecutePrePullAppInfoDownloadTask.1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((ITask) obj, (TaskResult<?>) obj2);
                    return Unit.f67061a;
                }

                public final void invoke(ITask iTask, TaskResult<?> result) {
                    Intrinsics.h(iTask, "<anonymous parameter 0>");
                    Intrinsics.h(result, "result");
                    Object data = result.getData();
                    String str = data instanceof String ? (String) data : null;
                    TmcLogger.d(OfflineManager.TAG, "PrePullAppInfoDownloadTask 下一步是 " + str);
                    if (Intrinsics.c(str, OfflineConstantsKt.PRE_PULL_APPINFO_STEP_UNZIP)) {
                        try {
                            OfflineManager.INSTANCE.doExecutePrePullAppInfoUnZipTask(OfflineConstantsKt.PRE_PULL_APPINFO_STEP_DOWNLOAD);
                        } catch (Throwable th2) {
                            TmcLogger.e(OfflineManager.TAG, "执行解压任务发生错误啦", th2);
                        }
                    }
                }
            }));
        } else {
            TmcLogger.d(TAG, "预拉取精选 AppInfo 能力已关闭，下载任务");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void doExecutePrePullAppInfoUnZipTask(String previousStep) {
        if (isEnablePrefetchCdnAppInfo$com_cloud_tmc_offline_download()) {
            execute(new PrePullAppInfoParseTask(previousStep, new Function2<ITask, TaskResult<?>, Unit>() { // from class: com.cloud.tmc.offline.download.OfflineManager.doExecutePrePullAppInfoUnZipTask.1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((ITask) obj, (TaskResult<?>) obj2);
                    return Unit.f67061a;
                }

                public final void invoke(ITask iTask, TaskResult<?> result) {
                    Intrinsics.h(iTask, "<anonymous parameter 0>");
                    Intrinsics.h(result, "result");
                    Object data = result.getData();
                    String str = data instanceof String ? (String) data : null;
                    TmcLogger.d(OfflineManager.TAG, "PrePullAppInfoParseTask 下一步是 " + str);
                    if (Intrinsics.c(str, OfflineConstantsKt.PRE_PULL_APPINFO_STEP_DOWNLOAD)) {
                        try {
                            OfflineManager.INSTANCE.doExecutePrePullAppInfoDownloadTask(OfflineConstantsKt.PRE_PULL_APPINFO_STEP_UNZIP);
                        } catch (Throwable th2) {
                            TmcLogger.e(OfflineManager.TAG, "执行下载任务发生错误啦", th2);
                        }
                    }
                }
            }));
        } else {
            TmcLogger.d(TAG, "预拉取精选 AppInfo 能力已关闭，解析任务");
        }
    }

    @JvmStatic
    public static final void downloadPkg(OffPkgConfig config, Function1<? super OfflinePkgCachePath, Unit> callback) {
        Intrinsics.h(config, "config");
        downloadPkg(TmcGsonUtilsKt.toJson(config), callback);
    }

    @JvmStatic
    public static final void downloadPkg(OfflineDownloadBuilder builder, Function1<? super OfflinePkgCachePath, Unit> callback) {
        Intrinsics.h(builder, "builder");
        downloadPkg(builder.build(), callback);
    }

    @JvmStatic
    public static final void downloadPkg(String config, final Function1<? super OfflinePkgCachePath, Unit> callback) {
        final OffPkgConfig offPkgConfig;
        try {
            if (!isInit) {
                if (callback != null) {
                    callback.invoke(null);
                    return;
                }
                return;
            }
            if (config != null && config.length() != 0) {
                if (!ProcessUtils.isMiniProcess()) {
                    if (callback != null) {
                        callback.invoke(null);
                        return;
                    }
                    return;
                }
                try {
                    Type type = new TypeToken<OffPkgConfig>() { // from class: com.cloud.tmc.offline.download.OfflineManager$downloadPkg$offPkgConfig$pkgConfig$1
                    }.getType();
                    Intrinsics.g(type, "object : TypeToken<OffPkgConfig?>() {}.type");
                    offPkgConfig = (OffPkgConfig) TmcGsonUtils.fromJson(config, type);
                } catch (Exception e11) {
                    TmcLogger.e(TAG, "Json parse error", e11);
                    offPkgConfig = null;
                }
                if (offPkgConfig == null) {
                    if (callback != null) {
                        callback.invoke(null);
                        return;
                    }
                    return;
                }
                if (!OfflineUtils.INSTANCE.checkParams(offPkgConfig)) {
                    if (callback != null) {
                        callback.invoke(null);
                        return;
                    }
                    return;
                }
                String strSubstring = String.valueOf(System.currentTimeMillis()).substring(0, 10);
                Intrinsics.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                long j11 = Long.parseLong(strSubstring);
                UpdateEntity updateEntity = new UpdateEntity(TmcGsonUtilsKt.toJson(offPkgConfig), "*.html", offPkgConfig.getGroup(), CollectionsKt.e(new PreloadResource(offPkgConfig.getPkgEncrypted(), Integer.valueOf((int) System.currentTimeMillis()), offPkgConfig.getPkgUrl(), offPkgConfig.getGroup(), Long.valueOf(j11))), 4, Long.valueOf(j11));
                String type2 = offPkgConfig.getType();
                if (type2 == null) {
                    type2 = "normal";
                }
                offPkgConfig.setType(type2);
                offPkgConfig.setExtraConfig(TmcGsonUtilsKt.toJson(updateEntity));
                final String str = OfflineConstantsKt.TRIGGER_API;
                INSTANCE.execute(new DownloadTask(offPkgConfig, str, false, new Function2<ITask, TaskResult<?>, Unit>() { // from class: com.cloud.tmc.offline.download.OfflineManager.downloadPkg.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                        invoke((ITask) obj, (TaskResult<?>) obj2);
                        return Unit.f67061a;
                    }

                    public final void invoke(ITask task, TaskResult<?> result) {
                        Intrinsics.h(task, "task");
                        Intrinsics.h(result, "result");
                        TmcLogger.d(OfflineManager.TAG, String.valueOf(result));
                        if (result instanceof TaskResult.Retry) {
                            return;
                        }
                        OfflineUtils.INSTANCE.startTaskTrack(offPkgConfig, task, result, str);
                        if (result instanceof TaskResult.Success) {
                            OfflineStoreCache.INSTANCE.setOfflinePkgConfigCache(offPkgConfig);
                            OfflinePkgCachePath offlinePkgCachePath = OfflineManager.getOfflinePkgCachePath(StringExtKt.orDefault(offPkgConfig.getGroup(), ""), StringExtKt.orDefault(offPkgConfig.getPkgUrl(), ""));
                            if (offlinePkgCachePath != null) {
                                Function1<OfflinePkgCachePath, Unit> function1 = callback;
                                if (function1 != null) {
                                    function1.invoke(offlinePkgCachePath);
                                    return;
                                }
                                return;
                            }
                        }
                        Function1<OfflinePkgCachePath, Unit> function2 = callback;
                        if (function2 != null) {
                            function2.invoke(null);
                        }
                    }
                }, 4, null));
                return;
            }
            if (callback != null) {
                callback.invoke(null);
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "Error downloading", th2);
        }
    }

    public static /* synthetic */ void downloadPkg$default(OffPkgConfig offPkgConfig, Function1 function1, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            function1 = null;
        }
        downloadPkg(offPkgConfig, (Function1<? super OfflinePkgCachePath, Unit>) function1);
    }

    public static /* synthetic */ void downloadPkg$default(OfflineDownloadBuilder offlineDownloadBuilder, Function1 function1, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            function1 = null;
        }
        downloadPkg(offlineDownloadBuilder, (Function1<? super OfflinePkgCachePath, Unit>) function1);
    }

    public static /* synthetic */ void downloadPkg$default(String str, Function1 function1, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            function1 = null;
        }
        downloadPkg(str, (Function1<? super OfflinePkgCachePath, Unit>) function1);
    }

    @JvmStatic
    @JvmOverloads
    public static final void downloadPkgFromPlatform(String str) {
        downloadPkgFromPlatform$default(str, false, null, 6, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void downloadPkgFromPlatform(String str, boolean z10) {
        downloadPkgFromPlatform$default(str, z10, null, 4, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void downloadPkgFromPlatform(String packageName, boolean antiShake, Function1<? super Boolean, Unit> callback) {
        TmcLogger.d(TAG, "downloadPkgFromPlatform: packageName: " + packageName + " antiShake: " + antiShake + " isInit: " + isInit);
        if (!isInit) {
            if (callback != null) {
                callback.invoke(Boolean.FALSE);
            }
        } else if (packageName != null && packageName.length() != 0) {
            INSTANCE.loadConfig(OfflineConstantsKt.TRIGGER_API, packageName, antiShake, callback);
        } else if (callback != null) {
            callback.invoke(Boolean.FALSE);
        }
    }

    public static /* synthetic */ void downloadPkgFromPlatform$default(String str, boolean z10, Function1 function1, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = true;
        }
        if ((i11 & 4) != 0) {
            function1 = null;
        }
        downloadPkgFromPlatform(str, z10, function1);
    }

    @JvmStatic
    public static final boolean enableVerifyServerFile(String appId) {
        try {
            return OfflineUtils.INSTANCE.enableVerifyServerFile(appId);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "Error enabling verify server file", th2);
            return false;
        }
    }

    private final void execute(ITask task) {
        if (isInit) {
            if (!isEnabled()) {
                TmcLogger.d(TAG, "Offline download is disabled");
                return;
            }
            if (!ProcessUtils.isMiniProcess()) {
                TmcLogger.d(TAG, "Offline download current process is not mini process，cannot execute task");
                return;
            }
            if (!NetworkUtils.isConnected()) {
                TmcLogger.d(TAG, "Network connection is not connected!");
                return;
            }
            TmcLogger.d(TAG, "execute: task: " + task + " trigger: " + task.getTrigger());
            PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
            OfflineDownloadAnalyseType offlineDownloadAnalyseType = OfflineDownloadAnalyseType.TASK_START;
            Bundle bundle = new Bundle();
            bundle.putAll(OfflineUtils.pointCommonParams$default(OfflineUtils.INSTANCE, task instanceof DownloadTask ? ((DownloadTask) task).getOffPkgConfig() : null, task.getTrigger(), Boolean.valueOf(task.getIsIdleRunTask()), null, task, 8, null));
            Unit unit = Unit.f67061a;
            performanceAnalyseProxy.record(null, offlineDownloadAnalyseType, "", bundle);
            getMTaskQueue().add(task);
        }
    }

    public static final boolean getCheckVersionEnable$com_cloud_tmc_offline_download() {
        JsonElement jsonElement;
        JsonObject config$com_cloud_tmc_offline_download = INSTANCE.getConfig$com_cloud_tmc_offline_download();
        boolean z10 = false;
        if (config$com_cloud_tmc_offline_download != null && (jsonElement = config$com_cloud_tmc_offline_download.get(OfflineConstantsKt.OFFLINE_CONFIG_CHECK_VERSION_ENABLE)) != null && jsonElement.getAsBoolean()) {
            z10 = true;
        }
        TmcLogger.d(TAG, "check version enable config is " + (z10 ? "enabled" : "disabled"));
        return z10;
    }

    @JvmStatic
    public static /* synthetic */ void getCheckVersionEnable$com_cloud_tmc_offline_download$annotations() {
    }

    @JvmStatic
    public static final Context getContext$com_cloud_tmc_offline_download() {
        Application application2 = application;
        if (application2 != null) {
            return application2.getApplicationContext();
        }
        return null;
    }

    private static final boolean getInitLoad() {
        JsonElement jsonElement;
        JsonObject config$com_cloud_tmc_offline_download = INSTANCE.getConfig$com_cloud_tmc_offline_download();
        boolean z10 = false;
        if (config$com_cloud_tmc_offline_download != null && (jsonElement = config$com_cloud_tmc_offline_download.get(OfflineConstantsKt.OFFLINE_CONFIG_INIT_ENABLE)) != null && jsonElement.getAsBoolean()) {
            z10 = true;
        }
        TmcLogger.d(TAG, "init load config is " + (z10 ? "enabled" : "disabled"));
        return z10;
    }

    @JvmStatic
    private static /* synthetic */ void getInitLoad$annotations() {
    }

    private final TaskQueue getMTaskQueue() {
        return (TaskQueue) mTaskQueue.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean getNetworkLoad() {
        JsonElement jsonElement;
        JsonObject config$com_cloud_tmc_offline_download = INSTANCE.getConfig$com_cloud_tmc_offline_download();
        boolean z10 = false;
        if (config$com_cloud_tmc_offline_download != null && (jsonElement = config$com_cloud_tmc_offline_download.get(OfflineConstantsKt.OFFLINE_CONFIG_NETWORK_ENABLE)) != null && jsonElement.getAsBoolean()) {
            z10 = true;
        }
        TmcLogger.d(TAG, "network load config is " + (z10 ? "enabled" : "disabled"));
        return z10;
    }

    @JvmStatic
    private static /* synthetic */ void getNetworkLoad$annotations() {
    }

    public static final long getOfflineManifestTimeInterval$com_cloud_tmc_offline_download() {
        JsonElement jsonElement;
        JsonObject config$com_cloud_tmc_offline_download = INSTANCE.getConfig$com_cloud_tmc_offline_download();
        long asLong = (config$com_cloud_tmc_offline_download == null || (jsonElement = config$com_cloud_tmc_offline_download.get(OfflineConstantsKt.OFFLINE_CONFIG_MANIFEST_TIME_INTERVAL)) == null) ? 3600000L : jsonElement.getAsLong();
        TmcLogger.d(TAG, "offline manifest time interval is " + asLong);
        return asLong;
    }

    @JvmStatic
    public static /* synthetic */ void getOfflineManifestTimeInterval$com_cloud_tmc_offline_download$annotations() {
    }

    public static final long getOfflineMaxUpdateTimeInterval$com_cloud_tmc_offline_download() {
        JsonElement jsonElement;
        JsonObject config$com_cloud_tmc_offline_download = INSTANCE.getConfig$com_cloud_tmc_offline_download();
        long asLong = (config$com_cloud_tmc_offline_download == null || (jsonElement = config$com_cloud_tmc_offline_download.get(OfflineConstantsKt.OFFLINE_CONFIG_MAX_UPDATE_TIME_INTERVAL)) == null) ? 86400000L : jsonElement.getAsLong();
        TmcLogger.d(TAG, "offline max update time interval is " + asLong);
        return asLong;
    }

    @JvmStatic
    public static /* synthetic */ void getOfflineMaxUpdateTimeInterval$com_cloud_tmc_offline_download$annotations() {
    }

    @JvmStatic
    public static final List<ZipFileInfo> getOfflinePackageDownloadInfo(String group) {
        try {
            return OfflineUtils.getOfflinePackageDownloadInfo$default(OfflineUtils.INSTANCE, group, null, 2, null);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "getOfflinePackageDownloadInfo", th2);
            return null;
        }
    }

    @JvmStatic
    public static final OfflinePkgCachePath getOfflinePkgCachePath(String group) {
        Intrinsics.h(group, "group");
        try {
            if (!isInit || isDisableOfflinePkgFw$com_cloud_tmc_offline_download()) {
                return null;
            }
            OfflineUtils offlineUtils = OfflineUtils.INSTANCE;
            if (!offlineUtils.checkOfflinePackageVersion(group)) {
                TmcLogger.d(TAG, "getOfflinePkgCachePath: check offline package version is not available, group: " + group);
                return null;
            }
            if (!OfflineUtils.checkOfflinePackageDownloadStatus$default(offlineUtils, group, null, 2, null)) {
                TmcLogger.i(TAG, "getOfflinePkgCachePath: 离线包当前尚未下载，稍后再请求，appId: " + group);
                return null;
            }
            OfflinePkgCachePath offlinePkgCachePath$default = OfflineUtils.getOfflinePkgCachePath$default(offlineUtils, group, null, 2, null);
            if (offlinePkgCachePath$default == null) {
                return null;
            }
            TrackReportUtils trackReportUtils = TrackReportUtils.INSTANCE;
            List<ZipFileInfo> zipFileInfo = offlinePkgCachePath$default.getZipFileInfo();
            boolean z10 = false;
            if (zipFileInfo != null && (!zipFileInfo.isEmpty())) {
                z10 = true;
            }
            trackReportUtils.reportMiniAppPackage(group, z10);
            return new OfflinePkgCachePath(offlinePkgCachePath$default.getGroup(), offlinePkgCachePath$default.getVersion(), offlinePkgCachePath$default.getZipFileInfo());
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "Unable to load offline package", th2);
            return null;
        }
    }

    @JvmStatic
    public static final OfflinePkgCachePath getOfflinePkgCachePath(String group, String url) {
        Intrinsics.h(group, "group");
        Intrinsics.h(url, "url");
        try {
            if (!isInit) {
                return null;
            }
            OffPkgConfig offPkgConfig = new OffPkgConfig(null, null, group, null, null, null, null, url, 0, null, null, null, null, null, null, null, null, null, 261755, null);
            OfflineZipDownloadInfo zipDownloadStatus = OfflineStoreCache.INSTANCE.getZipDownloadStatus(offPkgConfig, StringExtKt.orDefault(offPkgConfig.getPkgUrl(), ""));
            boolean z10 = zipDownloadStatus.getStatus() == 4;
            OfflineUtils offlineUtils = OfflineUtils.INSTANCE;
            Bundle bundlePointCommonParams$default = OfflineUtils.pointCommonParams$default(offlineUtils, offPkgConfig, OfflineConstantsKt.TRIGGER_API, null, null, null, 24, null);
            bundlePointCommonParams$default.putString(OfflineConstantsKt.TRACK_KEY_OFFLINE_PKG_SEARCH_RESOURCES_TYPE, OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_DIR);
            bundlePointCommonParams$default.putString(OfflineConstantsKt.TRACK_KEY_OFFLINE_PKG_APPID, group);
            Unit unit = Unit.f67061a;
            offlineUtils.reportOfflinePkgApiUsageStatus(z10, bundlePointCommonParams$default);
            if (z10) {
                ZipFileInfo zipFileInfo = new ZipFileInfo(null, null, null, 7, null);
                String zipUnCompressPath = zipDownloadStatus.getZipUnCompressPath();
                if (zipUnCompressPath != null) {
                    zipFileInfo.setZipUnCompressPath(zipUnCompressPath);
                }
                String url2 = zipDownloadStatus.getUrl();
                if (url2 != null) {
                    zipFileInfo.setUrl(url2);
                }
                OffPkgConfig manifest = zipDownloadStatus.getManifest();
                if (manifest != null) {
                    zipFileInfo.setManifest(manifest);
                }
                return new OfflinePkgCachePath(offPkgConfig.getGroup(), offPkgConfig.getVersion(), CollectionsKt.q(zipFileInfo));
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "Unable to download package", th2);
        }
        return null;
    }

    public static final long getOfflinePkgConfigTimeInterval$com_cloud_tmc_offline_download() {
        JsonElement jsonElement;
        JsonObject config$com_cloud_tmc_offline_download = INSTANCE.getConfig$com_cloud_tmc_offline_download();
        long asLong = (config$com_cloud_tmc_offline_download == null || (jsonElement = config$com_cloud_tmc_offline_download.get(OfflineConstantsKt.OFFLINE_CONFIG_PKG_CONFIG_TIME_INTERVAL)) == null) ? 3600000L : jsonElement.getAsLong();
        TmcLogger.d(TAG, "offline pkg config time interval is " + asLong);
        return asLong;
    }

    @JvmStatic
    public static /* synthetic */ void getOfflinePkgConfigTimeInterval$com_cloud_tmc_offline_download$annotations() {
    }

    @JvmStatic
    public static final OfflinePkgCachePath getOfflinePkgFwCachePath(String appId) {
        Intrinsics.h(appId, "appId");
        try {
            if (!isInit || isDisableOfflinePkgFw$com_cloud_tmc_offline_download()) {
                return null;
            }
            OfflineUtils offlineUtils = OfflineUtils.INSTANCE;
            if (!offlineUtils.checkOfflinePackageVersion(appId)) {
                TmcLogger.d(TAG, "getOfflinePkgFwCachePath: check offline package version is not available, appId: " + appId);
                return null;
            }
            if (OfflineUtils.checkOfflinePackageDownloadStatus$default(offlineUtils, appId, null, 2, null)) {
                OfflinePkgCachePath offlinePkgFwCachePath$default = OfflineUtils.getOfflinePkgFwCachePath$default(offlineUtils, appId, null, 2, null);
                TrackReportUtils.INSTANCE.reportMiniAppPackage(appId, offlinePkgFwCachePath$default != null);
                return offlinePkgFwCachePath$default;
            }
            TmcLogger.i(TAG, "getOfflinePkgFwCachePath: 离线包当前尚未下载，稍后再请求，appId: " + appId);
            return null;
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "Unable to load offline", th2);
            return null;
        }
    }

    @JvmStatic
    public static final File getOfflineResources(String appId, String url) {
        try {
            if (!isInit || isDisableOfflineResources$com_cloud_tmc_offline_download()) {
                return null;
            }
            OfflineUtils offlineUtils = OfflineUtils.INSTANCE;
            if (!OfflineUtils.checkOfflineResourceLegal$default(offlineUtils, appId, url, null, 4, null)) {
                TmcLogger.d(TAG, "appId: " + appId + " url: " + url + " is not valid");
                return null;
            }
            if (!offlineUtils.checkOfflinePackageVersion(appId)) {
                TmcLogger.d(TAG, "getOfflineResources: check offline package version is not available, appId: " + appId + ", url: " + url);
                return null;
            }
            if (OfflineUtils.checkOfflinePackageDownloadStatus$default(offlineUtils, appId, null, 2, null)) {
                Object body = ((IOfflineResourceProcessorProxy) TmcProxy.get(IOfflineResourceProcessorProxy.class)).getResultWithInterceptorChain(new IOfflineResourceIntercept.Params(appId, url)).getBody();
                TrackReportUtils.INSTANCE.trackResourceRecord(appId, body instanceof File, url);
                if (body instanceof File) {
                    return (File) body;
                }
                return null;
            }
            TmcLogger.i(TAG, "getOfflineResources: 离线包当前尚未下载，稍后再请求，appId: " + appId + ", url: " + url);
            return null;
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "getOfflineResources", th2);
        }
    }

    public static final long getPrefetchCdnAppInfoTimeInterval$com_cloud_tmc_offline_download() {
        JsonElement jsonElement;
        JsonObject config$com_cloud_tmc_offline_download = INSTANCE.getConfig$com_cloud_tmc_offline_download();
        long asLong = (config$com_cloud_tmc_offline_download == null || (jsonElement = config$com_cloud_tmc_offline_download.get(OfflineConstantsKt.OFFLINE_CONFIG_PREFETCH_CDN_APPINFO_INTERVALS)) == null) ? OfflineConstantsKt.OFFLINE_GET_PRE_PULL_APPINFO_TIME_INTERVAL : jsonElement.getAsLong();
        TmcLogger.d(TAG, "prefetch cdn appInfo time interval is " + asLong);
        return asLong;
    }

    @JvmStatic
    public static /* synthetic */ void getPrefetchCdnAppInfoTimeInterval$com_cloud_tmc_offline_download$annotations() {
    }

    public static final String getPrefetchCdnAppInfoUrl$com_cloud_tmc_offline_download() {
        JsonElement jsonElement;
        JsonObject config$com_cloud_tmc_offline_download = INSTANCE.getConfig$com_cloud_tmc_offline_download();
        String strOrDefault = StringExtKt.orDefault((config$com_cloud_tmc_offline_download == null || (jsonElement = config$com_cloud_tmc_offline_download.get(OfflineConstantsKt.OFFLINE_CONFIG_PREFETCH_CDN_APPINFO_URL)) == null) ? null : jsonElement.getAsString(), OfflineConstantsKt.PRE_PULL_APPINFO_DEFAULT_URL);
        TmcLogger.d(TAG, "prefetch cdn appInfo url is " + strOrDefault);
        return strOrDefault;
    }

    @JvmStatic
    public static /* synthetic */ void getPrefetchCdnAppInfoUrl$com_cloud_tmc_offline_download$annotations() {
    }

    @JvmStatic
    public static final void init(final Application application2) {
        Intrinsics.h(application2, "application");
        final Function0<Unit> function0 = new Function0<Unit>() { // from class: com.cloud.tmc.offline.download.OfflineManager$init$block$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Object invoke() {
                m259invoke();
                return Unit.f67061a;
            }

            /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
            public final void m259invoke() {
                try {
                    TmcLogger.d("TmcOfflineDownload: OfflineManager", "init called with initSomeThings on thread: " + Thread.currentThread().getName());
                    OfflineManager.INSTANCE.initSomeThings(application2);
                } catch (Throwable th2) {
                    TmcLogger.e("TmcOfflineDownload: OfflineManager", "init failed!", th2);
                }
            }
        };
        try {
            boolean zIsMainThread = OfflineUtils.INSTANCE.isMainThread();
            TmcLogger.d(TAG, "init is main thread: " + zIsMainThread);
            if (zIsMainThread) {
                ExecutorUtils.execute(ExecutorType.IO, new Runnable() { // from class: com.cloud.tmc.offline.download.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        OfflineManager.init$lambda$15(function0);
                    }
                });
            } else {
                function0.invoke();
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2.getMessage(), th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void init$lambda$15(Function0 block) {
        Intrinsics.h(block, "$block");
        block.invoke();
    }

    private final void initH5Update() {
        int i11;
        try {
            TH5Update.a aVar = TH5Update.f21238c;
            aVar.r(new UpdateListenerImpl(onUpdateCallback));
            String offline_download_mode = AppDynamicBuildConfig.getOFFLINE_DOWNLOAD_MODE();
            TmcLogger.d(TAG, "离线配置模式为：" + offline_download_mode);
            int i12 = 3;
            if (Intrinsics.c(offline_download_mode, OfflineConstantsKt.OFFLINE_DOWNLOAD_MODE_TEST)) {
                i11 = 3;
            } else {
                i11 = Intrinsics.c(offline_download_mode, OfflineConstantsKt.OFFLINE_DOWNLOAD_MODE_PRE) ? 2 : 1;
            }
            if (!AppDynamicBuildConfig.isAppDebugAble()) {
                i12 = i11;
            }
            TmcLogger.d(TAG, "离线下载模式为：" + i12 + " (1:online;2:pre;3:test)");
            Context context$com_cloud_tmc_offline_download = getContext$com_cloud_tmc_offline_download();
            if (context$com_cloud_tmc_offline_download != null) {
                aVar.d().r(i12).n((Application) context$com_cloud_tmc_offline_download, (110 & 2) != 0, (110 & 4) != 0 ? null : null, (110 & 8) == 0 ? null : null, (110 & 16) != 0 ? false : true, (110 & 32) != 0 ? "" : null, (110 & 64) == 0 ? 0 : 0);
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "Offline init H5 update failed!", th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void initSomeThings(Application application2) {
        try {
            if (!isEnabled()) {
                TmcLogger.d(TAG, "OfflineManager init fails! Params is disabled");
                return;
            }
            if (isInit) {
                TmcLogger.d(TAG, "OfflineManager is initialized");
                return;
            }
            application = application2;
            try {
                TmcProxy.setLazy(IOfflineResourceProcessorProxy.class, new TmcProxy.LazyGetter() { // from class: com.cloud.tmc.offline.download.c
                    @Override // com.cloud.tmc.kernel.proxy.TmcProxy.LazyGetter
                    public final Object get() {
                        return OfflineManager.initSomeThings$lambda$16();
                    }
                });
                TmcProxy.setLazy(IOfflineResourceManagerProxy.class, new TmcProxy.LazyGetter() { // from class: com.cloud.tmc.offline.download.d
                    @Override // com.cloud.tmc.kernel.proxy.TmcProxy.LazyGetter
                    public final Object get() {
                        return OfflineManager.initSomeThings$lambda$17();
                    }
                });
                if (((IOfflineDownloadConfig) TmcProxy.get(IOfflineDownloadConfig.class)).enableNetworkListener() && getNetworkLoad()) {
                    NetworkUtil.addListener(application2, networkListener);
                }
                initH5Update();
                isInit = true;
                TmcLogger.d(TAG, "OfflineManager initialized");
                if (getInitLoad()) {
                    loadConfig$default(this, "init", null, false, null, 14, null);
                }
            } catch (Throwable th2) {
                TmcLogger.e(TAG, "Offline init failed", th2);
            }
        } catch (Throwable th3) {
            throw th3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IOfflineResourceProcessorProxy initSomeThings$lambda$16() {
        return new OfflineResourceProcessorProxyImpl();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IOfflineResourceManagerProxy initSomeThings$lambda$17() {
        return new OfflineResourceManagerProxyImpl();
    }

    public static final boolean isDisableOfflinePkgFw$com_cloud_tmc_offline_download() {
        JsonElement jsonElement;
        JsonObject config$com_cloud_tmc_offline_download = INSTANCE.getConfig$com_cloud_tmc_offline_download();
        boolean z10 = false;
        if (config$com_cloud_tmc_offline_download != null && (jsonElement = config$com_cloud_tmc_offline_download.get(OfflineConstantsKt.OFFLINE_CONFIG_OFFLINE_PKG_FW_ENABLE)) != null && !jsonElement.getAsBoolean()) {
            z10 = true;
        }
        TmcLogger.d(TAG, "offlinePkgFw config is " + (z10 ? "disable" : OfflineConstantsKt.OFFLINE_CONFIG_ENABLE));
        return z10;
    }

    @JvmStatic
    public static /* synthetic */ void isDisableOfflinePkgFw$com_cloud_tmc_offline_download$annotations() {
    }

    public static final boolean isDisableOfflineResources$com_cloud_tmc_offline_download() {
        JsonElement jsonElement;
        JsonObject config$com_cloud_tmc_offline_download = INSTANCE.getConfig$com_cloud_tmc_offline_download();
        boolean z10 = false;
        if (config$com_cloud_tmc_offline_download != null && (jsonElement = config$com_cloud_tmc_offline_download.get(OfflineConstantsKt.OFFLINE_CONFIG_OFFLINE_RESOURCES_ENABLE)) != null && !jsonElement.getAsBoolean()) {
            z10 = true;
        }
        TmcLogger.d(TAG, "offlineResources config is " + (z10 ? "disable" : OfflineConstantsKt.OFFLINE_CONFIG_ENABLE));
        return z10;
    }

    @JvmStatic
    public static /* synthetic */ void isDisableOfflineResources$com_cloud_tmc_offline_download$annotations() {
    }

    public static final boolean isEnableAhaSoFormatConvert$com_cloud_tmc_offline_download() {
        JsonElement jsonElement;
        JsonObject config$com_cloud_tmc_offline_download = INSTANCE.getConfig$com_cloud_tmc_offline_download();
        boolean z10 = false;
        if (config$com_cloud_tmc_offline_download != null && (jsonElement = config$com_cloud_tmc_offline_download.get(OfflineConstantsKt.OFFLINE_CONFIG_AHA_SO_FORMAT_CONVERT_ENABLE)) != null && jsonElement.getAsBoolean()) {
            z10 = true;
        }
        TmcLogger.d(TAG, "ahaSoFormatConvert config is " + (z10 ? "enabled" : "disabled"));
        return z10;
    }

    @JvmStatic
    public static /* synthetic */ void isEnableAhaSoFormatConvert$com_cloud_tmc_offline_download$annotations() {
    }

    public static final boolean isEnablePrefetchCdnAppInfo$com_cloud_tmc_offline_download() {
        JsonElement jsonElement;
        JsonObject config$com_cloud_tmc_offline_download = INSTANCE.getConfig$com_cloud_tmc_offline_download();
        boolean z10 = false;
        if (config$com_cloud_tmc_offline_download != null && (jsonElement = config$com_cloud_tmc_offline_download.get(OfflineConstantsKt.OFFLINE_CONFIG_PREFETCH_CDN_APPINFO_ENABLE)) != null && jsonElement.getAsBoolean()) {
            z10 = true;
        }
        TmcLogger.d(TAG, "prefetch cdn appInfo enable config is " + (z10 ? "enabled" : "disabled"));
        return z10;
    }

    @JvmStatic
    public static /* synthetic */ void isEnablePrefetchCdnAppInfo$com_cloud_tmc_offline_download$annotations() {
    }

    public static final boolean isEnabled() {
        JsonElement jsonElement;
        JsonObject config$com_cloud_tmc_offline_download = INSTANCE.getConfig$com_cloud_tmc_offline_download();
        boolean z10 = false;
        if (config$com_cloud_tmc_offline_download != null && (jsonElement = config$com_cloud_tmc_offline_download.get(OfflineConstantsKt.OFFLINE_CONFIG_ENABLE)) != null && jsonElement.getAsBoolean()) {
            z10 = true;
        }
        TmcLogger.d(TAG, "离线模块总开关是 " + (z10 ? "enabled" : "disabled"));
        return z10;
    }

    @JvmStatic
    public static /* synthetic */ void isEnabled$annotations() {
    }

    private final boolean isFast() {
        return FastClickUtils.isFastDoubleClick(OfflineConstantsKt.OFFLINE_DOWNLOAD_IS_FAST, 60000L);
    }

    public static final boolean isForceRefreshPrefetchCdnAppInfo$com_cloud_tmc_offline_download() {
        JsonElement jsonElement;
        JsonObject config$com_cloud_tmc_offline_download = INSTANCE.getConfig$com_cloud_tmc_offline_download();
        boolean z10 = false;
        if (config$com_cloud_tmc_offline_download != null && (jsonElement = config$com_cloud_tmc_offline_download.get(OfflineConstantsKt.OFFLINE_CONFIG_FORCE_REFRESH_PREFETCH_CDN_APPINFO_ENABLE)) != null && jsonElement.getAsBoolean()) {
            z10 = true;
        }
        TmcLogger.d(TAG, "force refresh prefetch cdn appInfo enable config is " + (z10 ? "enabled" : "disabled"));
        return z10;
    }

    @JvmStatic
    public static /* synthetic */ void isForceRefreshPrefetchCdnAppInfo$com_cloud_tmc_offline_download$annotations() {
    }

    private final boolean isHostFast() {
        return FastClickUtils.isFastDoubleClick(OfflineConstantsKt.OFFLINE_DOWNLOAD_IS_HOST_FAST, 60000L);
    }

    private final boolean isPrePullAppInfoFast() {
        return FastClickUtils.isFastDoubleClick(OfflineConstantsKt.OFFLINE_DOWNLOAD_IS_PRE_PULL_APPINFO_FAST, 60000L);
    }

    /* JADX WARN: Code duplicated, block: B:30:0x007e  */
    /* JADX WARN: Code duplicated, block: B:32:0x0084  */
    /* JADX WARN: Code duplicated, block: B:34:0x009a  */
    /* JADX WARN: Code duplicated, block: B:59:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:32:0x0084, please report this as an issue */
    private final void loadConfig(final String trigger, String _packageName, boolean antiShake, final Function1<? super Boolean, Unit> callback) {
        if (!isInit) {
            if (callback != null) {
                callback.invoke(Boolean.FALSE);
                return;
            }
            return;
        }
        TmcLogger.d(TAG, "antiShake switch is " + (antiShake ? OfflineConstantsKt.OFFLINE_CONFIG_ENABLE : "disabled"));
        if (antiShake) {
            String str = "Loading configuration time is too short, try later! trigger: " + trigger;
            if (_packageName != null && _packageName.length() != 0) {
                Context context$com_cloud_tmc_offline_download = getContext$com_cloud_tmc_offline_download();
                if (Intrinsics.c(_packageName, context$com_cloud_tmc_offline_download != null ? context$com_cloud_tmc_offline_download.getPackageName() : null)) {
                    if (isHostFast()) {
                        TmcLogger.d(TAG, str + " host is fast");
                        if (callback != null) {
                            callback.invoke(Boolean.FALSE);
                            return;
                        }
                        return;
                    }
                } else if (isFast()) {
                    TmcLogger.d(TAG, str + " packageName: " + _packageName);
                    if (callback != null) {
                        callback.invoke(Boolean.FALSE);
                        return;
                    }
                    return;
                }
            } else if (isHostFast()) {
                TmcLogger.d(TAG, str + " host is fast");
                if (callback != null) {
                    callback.invoke(Boolean.FALSE);
                    return;
                }
                return;
            }
        }
        if (_packageName == null) {
            Context context$com_cloud_tmc_offline_download2 = getContext$com_cloud_tmc_offline_download();
            _packageName = context$com_cloud_tmc_offline_download2 != null ? context$com_cloud_tmc_offline_download2.getPackageName() : null;
        }
        if (_packageName == null || _packageName.length() == 0) {
            TmcLogger.d(TAG, "packageName is null or empty!");
            if (callback != null) {
                callback.invoke(Boolean.FALSE);
                return;
            }
            return;
        }
        TmcLogger.d(TAG, "loadConfig: trigger: " + trigger + " packageName: " + _packageName);
        if (OfflineUtils.INSTANCE.checkOfflineLoadMiniAppLegal(_packageName)) {
            execute(new LoadOfflineConfigTask(_packageName, 0, trigger, new Function2<ITask, TaskResult<?>, Unit>() { // from class: com.cloud.tmc.offline.download.OfflineManager.loadConfig.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((ITask) obj, (TaskResult<?>) obj2);
                    return Unit.f67061a;
                }

                public final void invoke(ITask task, TaskResult<?> result) {
                    Intrinsics.h(task, "task");
                    Intrinsics.h(result, "result");
                    TmcLogger.d(OfflineManager.TAG, String.valueOf(result));
                    OfflineUtils.INSTANCE.startTaskTrack(null, task, result, trigger);
                    if (result instanceof TaskResult.Success) {
                        OfflineManager offlineManager = OfflineManager.INSTANCE;
                        String str2 = trigger;
                        Object data = result.getData();
                        offlineManager.startDownloadTask(str2, data instanceof OffPkgConfig ? (OffPkgConfig) data : null, callback);
                        return;
                    }
                    Function1<Boolean, Unit> function1 = callback;
                    if (function1 != null) {
                        function1.invoke(Boolean.FALSE);
                    }
                }
            }));
            return;
        }
        TmcLogger.d(TAG, "loadConfig: " + ("packageName: " + _packageName + " is not valid, unable to load config"));
        if (callback != null) {
            callback.invoke(Boolean.FALSE);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void loadConfig$default(OfflineManager offlineManager, String str, String str2, boolean z10, Function1 function1, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            str2 = null;
        }
        if ((i11 & 4) != 0) {
            z10 = true;
        }
        if ((i11 & 8) != 0) {
            function1 = null;
        }
        offlineManager.loadConfig(str, str2, z10, function1);
    }

    @JvmStatic
    public static final void prePullFeaturedAppInfo() {
        try {
            OfflineManager offlineManager = INSTANCE;
            if (offlineManager.isPrePullAppInfoFast()) {
                TmcLogger.d(TAG, "预拉取 AppInfo 跑的太快了！");
            } else if (isEnablePrefetchCdnAppInfo$com_cloud_tmc_offline_download()) {
                offlineManager.execute(new PrePullAppInfoCheckTask(new Function2<ITask, TaskResult<?>, Unit>() { // from class: com.cloud.tmc.offline.download.OfflineManager.prePullFeaturedAppInfo.1
                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                        invoke((ITask) obj, (TaskResult<?>) obj2);
                        return Unit.f67061a;
                    }

                    public final void invoke(ITask iTask, TaskResult<?> result) {
                        Intrinsics.h(iTask, "<anonymous parameter 0>");
                        Intrinsics.h(result, "result");
                        Object data = result.getData();
                        String str = data instanceof String ? (String) data : null;
                        TmcLogger.d(OfflineManager.TAG, "PrePullAppInfoCheckTask 下一步是 " + str);
                        if (Intrinsics.c(str, OfflineConstantsKt.PRE_PULL_APPINFO_STEP_DOWNLOAD)) {
                            try {
                                OfflineManager.INSTANCE.doExecutePrePullAppInfoDownloadTask(OfflineConstantsKt.PRE_PULL_APPINFO_STEP_CHECK);
                                return;
                            } catch (Throwable th2) {
                                TmcLogger.e(OfflineManager.TAG, "执行下载任务发生错误", th2);
                                return;
                            }
                        }
                        if (Intrinsics.c(str, OfflineConstantsKt.PRE_PULL_APPINFO_STEP_UNZIP)) {
                            try {
                                OfflineManager.INSTANCE.doExecutePrePullAppInfoUnZipTask(OfflineConstantsKt.PRE_PULL_APPINFO_STEP_CHECK);
                            } catch (Throwable th3) {
                                TmcLogger.e(OfflineManager.TAG, "执行解压任务发生错误", th3);
                            }
                        }
                    }
                }));
            } else {
                TmcLogger.d(TAG, "预拉取精选 AppInfo 能力已关闭");
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "prePullFeaturedAppInfo failed", th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startDownloadTask(final String trigger, OffPkgConfig config, final Function1<? super Boolean, Unit> callback) {
        if (!isInit) {
            if (callback != null) {
                callback.invoke(Boolean.FALSE);
                return;
            }
            return;
        }
        final OffPkgConfig offlinePkgConfigCache = OfflineStoreCache.INSTANCE.getOfflinePkgConfigCache(config != null ? config.getGroup() : null);
        if (offlinePkgConfigCache == null) {
            if (callback != null) {
                callback.invoke(Boolean.FALSE);
                return;
            }
            return;
        }
        boolean zC = Intrinsics.c(offlinePkgConfigCache.getDownloadModel(), OfflineConstantsKt.TRIGGER_STARTUP);
        TmcLogger.d(TAG, "startDownloadTask: trigger: " + trigger + " isStartUp: " + zC);
        execute(new DownloadTask(offlinePkgConfigCache, trigger, zC ^ true, new Function2<ITask, TaskResult<?>, Unit>() { // from class: com.cloud.tmc.offline.download.OfflineManager.startDownloadTask.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                invoke((ITask) obj, (TaskResult<?>) obj2);
                return Unit.f67061a;
            }

            public final void invoke(ITask task, TaskResult<?> result) {
                Intrinsics.h(task, "task");
                Intrinsics.h(result, "result");
                TmcLogger.d(OfflineManager.TAG, "startDownloadTask: " + result);
                OfflineUtils.INSTANCE.startTaskTrack(offlinePkgConfigCache, task, result, trigger);
                if (result instanceof TaskResult.Success) {
                    Function1<Boolean, Unit> function1 = callback;
                    if (function1 != null) {
                        function1.invoke(Boolean.TRUE);
                        return;
                    }
                    return;
                }
                Function1<Boolean, Unit> function2 = callback;
                if (function2 != null) {
                    function2.invoke(Boolean.FALSE);
                }
            }
        }));
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void startDownloadTask$default(OfflineManager offlineManager, String str, OffPkgConfig offPkgConfig, Function1 function1, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            function1 = null;
        }
        offlineManager.startDownloadTask(str, offPkgConfig, function1);
    }

    @JvmStatic
    public static final boolean verifyServerFile(String appId, String url) {
        try {
            return OfflineUtils.INSTANCE.verifyServerFile(appId, url);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "Verify server file", th2);
            return false;
        }
    }

    public final void clearCache(final Context context) {
        Intrinsics.h(context, "context");
        try {
            ExecutorUtils.execute(ExecutorType.IO, new Runnable() { // from class: com.cloud.tmc.offline.download.a
                @Override // java.lang.Runnable
                public final void run() {
                    OfflineManager.clearCache$lambda$28(context);
                }
            });
        } catch (Throwable th2) {
            TmcLogger.e("clearCache error:" + th2);
        }
    }

    public final JsonObject getConfig$com_cloud_tmc_offline_download() {
        try {
            ConfigService configService = (ConfigService) TmcProxy.get(ConfigService.class);
            MiniAppConfigHelper miniAppConfigHelper = MiniAppConfigHelper.INSTANCE;
            JsonObject configJsonObject = configService.getConfigJsonObject(miniAppConfigHelper.getKEY_OFFLINE_CONFIG());
            return configJsonObject == null ? JsonParser.parseString(miniAppConfigHelper.getDEFAULT_OFFLINE_DOWNLOAD()).getAsJsonObject() : configJsonObject;
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            return null;
        }
    }

    public final OnUpdateCallback getOnUpdateCallback$com_cloud_tmc_offline_download() {
        return onUpdateCallback;
    }

    public final void setOnUpdateCallback$com_cloud_tmc_offline_download(OnUpdateCallback onUpdateCallback2) {
        try {
            TH5Update.a aVar = TH5Update.f21238c;
            t6.b bVarJ = aVar.j();
            Unit unit = null;
            UpdateListenerImpl updateListenerImpl = bVarJ instanceof UpdateListenerImpl ? (UpdateListenerImpl) bVarJ : null;
            if (updateListenerImpl != null) {
                updateListenerImpl.setOnUpdateCallback(onUpdateCallback2);
                unit = Unit.f67061a;
            }
            if (unit == null) {
                aVar.r(new UpdateListenerImpl(onUpdateCallback2));
            }
            onUpdateCallback = onUpdateCallback2;
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "set update callback failed!", th2);
        }
    }
}
