package com.cloud.tmc.kernel.proxy.performanceanalyse;

import com.cloud.tmc.kernel.BuildConfig;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0014\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u001f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0002\u0010\u0007R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0006\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\tj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017¨\u0006\u0018"}, d2 = {"Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;", "", "Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;", "objectId", "", "objectNameEn", "objectNameZh", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getObjectId", "()Ljava/lang/String;", "getObjectNameEn", "getObjectNameZh", "TASK_START", "TASK_FAIL", "TASK_FINISH", "QUEUE_TIME", "DOWNLOAD_TIME", "OFFLINE_PKG_API_USAGE_STATUS", "OFFLINE_RESOURCE_URL_CHANGE", "OFFLINE_VERIFY_SERVER_FILE", "OFFLINE_RES_USAGE_STATUS", "OFFLINE_PKG_USAGE_STATUS", "OFFLINE_PKG_DOWNLOAD_STATUS", "PREFETCH_CDN_APPINFO_STATUS", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public enum OfflineDownloadAnalyseType implements IPerformanceAnalyseType {
    TASK_START("500", "task_start", "离线下载任务启动"),
    TASK_FAIL("501", "task_fail", "离线下载任务失败"),
    TASK_FINISH("502", "task_finish", "离线下载任务完成"),
    QUEUE_TIME("503", "queue_time", "离线包任务排队时长"),
    DOWNLOAD_TIME("504", "download_time", "离线包任务下载时长"),
    OFFLINE_PKG_API_USAGE_STATUS("505", "offline_pkg_api_usage_status", "离线包获取请求状态"),
    OFFLINE_RESOURCE_URL_CHANGE("506", "offline_resource_url_change", "离线资源服务端文件变化App重新启动"),
    OFFLINE_VERIFY_SERVER_FILE("507", "offline_verify_server_file", "离线资源校验服务端文件"),
    OFFLINE_RES_USAGE_STATUS("508", "offline_res_usage_status", "离线资源命中状态"),
    OFFLINE_PKG_USAGE_STATUS("509", "offline_pkg_usage_status", "离线小程序包命中状态"),
    OFFLINE_PKG_DOWNLOAD_STATUS("510", "offline_download_status", "离线资源包下载状态"),
    PREFETCH_CDN_APPINFO_STATUS("520", "prefetch_cdn_appinfo_status", "预拉取 CDN AppInfo 状态");

    private final String objectId;
    private final String objectNameEn;
    private final String objectNameZh;

    OfflineDownloadAnalyseType(String str, String str2, String str3) {
        this.objectId = str;
        this.objectNameEn = str2;
        this.objectNameZh = str3;
    }

    public final String getObjectId() {
        return this.objectId;
    }

    public final String getObjectNameEn() {
        return this.objectNameEn;
    }

    public final String getObjectNameZh() {
        return this.objectNameZh;
    }
}
