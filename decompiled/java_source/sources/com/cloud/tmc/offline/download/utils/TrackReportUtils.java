package com.cloud.tmc.offline.download.utils;

import android.content.Context;
import android.os.Bundle;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.utils.WarmupUtils;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.OfflineDownloadAnalyseType;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.utils.TmcGsonUtilsKt;
import com.cloud.tmc.offline.download.OfflineManager;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0007\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0004J\u0018\u0010\u0010\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0013\u001a\u00020\u000eJ\u0010\u0010\u0014\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0004JC\u0010\u0015\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00042\b\u0010\u0016\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0017\u001a\u00020\u00122\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u001b\u001a\u00020\u001c¢\u0006\u0002\u0010\u001dJ<\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u00192\b\u0010\u0016\u001a\u0004\u0018\u00010\u00042\b\u0010\u0018\u001a\u0004\u0018\u00010\u00042\b\u0010\u001a\u001a\u0004\u0018\u00010\u0004J$\u0010\"\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0011\u001a\u00020\u00122\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000Rb\u0010\u0005\u001aV\u0012\u0004\u0012\u00020\u0004\u0012L\u0012J\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\b\u0018\u00010\u0007j.\u0012(\u0012&\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\bj\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001`\n\u0018\u0001`\t0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R>\u0010\u000b\u001a2\u0012\u0004\u0012\u00020\u0004\u0012(\u0012&\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\bj\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001`\n0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000Rb\u0010\f\u001aV\u0012\u0004\u0012\u00020\u0004\u0012L\u0012J\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\b\u0018\u00010\u0007j.\u0012(\u0012&\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\bj\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001`\n\u0018\u0001`\t0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;", "", "()V", "TAG", "", "downloadTrackMap", "Ljava/util/concurrent/ConcurrentHashMap;", "Ljava/util/ArrayList;", "Ljava/util/HashMap;", "Lkotlin/collections/ArrayList;", "Lkotlin/collections/HashMap;", "prePullIAppInfoTrackMap", "resTrackMap", "reportDownloadRecord", "", "appId", "reportMiniAppPackage", "hitStatus", "", "reportPrePullCdnRecord", "reportResourceRecord", "trackDownloadRecord", "url", "isSuccess", "errorCode", "", "errorMsg", EventConstants.EVENT_CONSUME_TIME, "", "(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;J)V", "trackPrePullCdnRecord", "currentStep", "previousStep", NotificationCompat.CATEGORY_STATUS, "trackResourceRecord", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TrackReportUtils {
    private static final String TAG = "TmcOfflineDownload: TrackReportUtils";
    public static final TrackReportUtils INSTANCE = new TrackReportUtils();
    private static final ConcurrentHashMap<String, ArrayList<HashMap<String, Object>>> resTrackMap = new ConcurrentHashMap<>();
    private static final ConcurrentHashMap<String, ArrayList<HashMap<String, Object>>> downloadTrackMap = new ConcurrentHashMap<>();
    private static final ConcurrentHashMap<String, HashMap<String, Object>> prePullIAppInfoTrackMap = new ConcurrentHashMap<>();

    private TrackReportUtils() {
    }

    public static /* synthetic */ void trackResourceRecord$default(TrackReportUtils trackReportUtils, String str, boolean z10, String str2, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            str2 = null;
        }
        trackReportUtils.trackResourceRecord(str, z10, str2);
    }

    public final void reportDownloadRecord(String appId) {
        ArrayList<HashMap<String, Object>> arrayListRemove;
        if (appId != null) {
            try {
                if (appId.length() == 0 || (arrayListRemove = downloadTrackMap.remove(appId)) == null) {
                    return;
                }
                Bundle bundle = new Bundle();
                bundle.putString(OfflineConstantsKt.TRACK_KEY_OFFLINE_PKG_APPID, appId);
                bundle.putString(OfflineConstantsKt.TRACK_KEY_OFFLINE_PKG_DATA, TmcGsonUtilsKt.toJson(arrayListRemove));
                TmcLogger.i(TAG, "reportDownloadRecord: " + bundle);
                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(appId, OfflineDownloadAnalyseType.OFFLINE_PKG_DOWNLOAD_STATUS, "", bundle);
            } catch (Throwable th2) {
                TmcLogger.e(TAG, "reportDownloadRecord", th2);
            }
        }
    }

    public final void reportMiniAppPackage(String appId, boolean hitStatus) {
        if (appId != null) {
            try {
                if (appId.length() == 0) {
                    return;
                }
                Bundle bundle = new Bundle();
                OfflineDownloadAnalyseType offlineDownloadAnalyseType = OfflineDownloadAnalyseType.OFFLINE_PKG_USAGE_STATUS;
                bundle.putInt(offlineDownloadAnalyseType.getObjectNameEn(), hitStatus ? 1 : 0);
                bundle.putString(OfflineConstantsKt.TRACK_KEY_OFFLINE_PKG_APPID, appId);
                TmcLogger.i(TAG, "reportMiniAppPackage: " + bundle);
                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(appId, offlineDownloadAnalyseType, "", bundle);
            } catch (Throwable th2) {
                TmcLogger.e(TAG, "reportMiniAppPackage", th2);
            }
        }
    }

    public final void reportPrePullCdnRecord() {
        try {
            ConcurrentHashMap<String, HashMap<String, Object>> concurrentHashMap = prePullIAppInfoTrackMap;
            if (concurrentHashMap.isEmpty()) {
                TmcLogger.d(TAG, "reportPrePullCdnRecord 数据记录为 empty 不允许上报");
                return;
            }
            Bundle bundle = new Bundle();
            for (Map.Entry<String, HashMap<String, Object>> entry : concurrentHashMap.entrySet()) {
                String key = entry.getKey();
                HashMap<String, Object> value = entry.getValue();
                bundle.putString(key, value != null ? TmcGsonUtilsKt.toJson(value) : null);
            }
            prePullIAppInfoTrackMap.clear();
            TmcLogger.i(TAG, "reportPrePullCdnRecord: " + bundle);
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(WarmupUtils.appId, OfflineDownloadAnalyseType.PREFETCH_CDN_APPINFO_STATUS, "", bundle);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "reportPrePullCdnRecord", th2);
        }
    }

    public final void reportResourceRecord(String appId) {
        ArrayList<HashMap<String, Object>> arrayListRemove;
        if (appId != null) {
            try {
                if (appId.length() == 0 || (arrayListRemove = resTrackMap.remove(appId)) == null) {
                    return;
                }
                Bundle bundle = new Bundle();
                bundle.putString(OfflineConstantsKt.TRACK_KEY_OFFLINE_PKG_APPID, appId);
                bundle.putString(OfflineConstantsKt.TRACK_KEY_OFFLINE_PKG_DATA, TmcGsonUtilsKt.toJson(arrayListRemove));
                TmcLogger.i(TAG, "reportResourceRecord: " + bundle);
                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(appId, OfflineDownloadAnalyseType.OFFLINE_RES_USAGE_STATUS, "", bundle);
            } catch (Throwable th2) {
                TmcLogger.e(TAG, "reportResourceRecord", th2);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0043  */
    /* JADX WARN: Code duplicated, block: B:24:0x0049  */
    /* JADX WARN: Code duplicated, block: B:25:0x004c  */
    public final void trackDownloadRecord(String appId, String url, boolean isSuccess, Integer errorCode, String errorMsg, long consumeTime) {
        String str;
        String packageName;
        if (appId == null || appId.length() == 0) {
            return;
        }
        ConcurrentHashMap<String, ArrayList<HashMap<String, Object>>> concurrentHashMap = downloadTrackMap;
        ArrayList<HashMap<String, Object>> arrayList = concurrentHashMap.get(appId);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            concurrentHashMap.put(appId, arrayList);
        }
        Context context$com_cloud_tmc_offline_download = OfflineManager.getContext$com_cloud_tmc_offline_download();
        if (context$com_cloud_tmc_offline_download != null && (packageName = context$com_cloud_tmc_offline_download.getPackageName()) != null && packageName.length() > 0) {
            Context context$com_cloud_tmc_offline_download2 = OfflineManager.getContext$com_cloud_tmc_offline_download();
            if (Intrinsics.c(appId, context$com_cloud_tmc_offline_download2 != null ? context$com_cloud_tmc_offline_download2.getPackageName() : null)) {
                str = OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_SDK;
            } else if (appId.length() > 0) {
                str = "app";
            } else {
                str = OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER;
            }
        } else if (appId.length() > 0) {
            str = "app";
        } else {
            str = OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER;
        }
        arrayList.add(MapsKt.j(TuplesKt.a(OfflineDownloadAnalyseType.OFFLINE_PKG_DOWNLOAD_STATUS.getObjectNameEn(), Integer.valueOf(isSuccess ? 1 : 0)), TuplesKt.a(OfflineConstantsKt.TRACK_KEY_OFFLINE_PKG_URL, url), TuplesKt.a(OfflineConstantsKt.TRACK_KEY_OFFLINE_PKG_CONSUME_TIME, Long.valueOf(consumeTime)), TuplesKt.a(OfflineConstantsKt.TRACK_KEY_OFFLINE_PKG_CHANNEL, str), TuplesKt.a(OfflineConstantsKt.TRACK_KEY_OFFLINE_PKG_ERROR_CODE, errorCode), TuplesKt.a(OfflineConstantsKt.TRACK_KEY_OFFLINE_PKG_ERROR_MSG, errorMsg)));
    }

    public final void trackPrePullCdnRecord(String currentStep, String previousStep, int status, String url, String errorCode, String errorMsg) {
        Intrinsics.h(currentStep, "currentStep");
        Intrinsics.h(previousStep, "previousStep");
        int iHashCode = currentStep.hashCode();
        if (iHashCode == -1707681637) {
            if (currentStep.equals(OfflineConstantsKt.PRE_PULL_APPINFO_STEP_DOWNLOAD)) {
                prePullIAppInfoTrackMap.put(OfflineConstantsKt.PRE_PULL_APPINFO_STEP_DOWNLOAD, MapsKt.j(TuplesKt.a(OfflineConstantsKt.TRACK_KEY_PRE_DOWNLOAD_STATUS, Integer.valueOf(status)), TuplesKt.a("url", url), TuplesKt.a("error_code", errorCode), TuplesKt.a(OfflineConstantsKt.TRACK_KEY_PRE_ERROR_MSG, errorMsg), TuplesKt.a(OfflineConstantsKt.TRACK_KEY_PRE_PREVIOUS_STEP, previousStep), TuplesKt.a(OfflineConstantsKt.TRACK_KEY_PRE_FORCE_REFRESH, Boolean.valueOf(OfflineManager.isForceRefreshPrefetchCdnAppInfo$com_cloud_tmc_offline_download()))));
            }
        } else if (iHashCode == -1257948288) {
            if (currentStep.equals(OfflineConstantsKt.PRE_PULL_APPINFO_STEP_PARSE)) {
                prePullIAppInfoTrackMap.put(OfflineConstantsKt.PRE_PULL_APPINFO_STEP_PARSE, MapsKt.j(TuplesKt.a(OfflineConstantsKt.TRACK_KEY_PRE_PARSE_STATUS, Integer.valueOf(status)), TuplesKt.a("url", url), TuplesKt.a("error_code", errorCode), TuplesKt.a(OfflineConstantsKt.TRACK_KEY_PRE_ERROR_MSG, errorMsg), TuplesKt.a(OfflineConstantsKt.TRACK_KEY_PRE_PREVIOUS_STEP, previousStep), TuplesKt.a(OfflineConstantsKt.TRACK_KEY_PRE_FORCE_REFRESH, Boolean.valueOf(OfflineManager.isForceRefreshPrefetchCdnAppInfo$com_cloud_tmc_offline_download()))));
            }
        } else if (iHashCode == -1252936011 && currentStep.equals(OfflineConstantsKt.PRE_PULL_APPINFO_STEP_UNZIP)) {
            prePullIAppInfoTrackMap.put(OfflineConstantsKt.PRE_PULL_APPINFO_STEP_UNZIP, MapsKt.j(TuplesKt.a(OfflineConstantsKt.TRACK_KEY_PRE_UNZIP_STATUS, Integer.valueOf(status)), TuplesKt.a("url", url), TuplesKt.a("error_code", errorCode), TuplesKt.a(OfflineConstantsKt.TRACK_KEY_PRE_ERROR_MSG, errorMsg), TuplesKt.a(OfflineConstantsKt.TRACK_KEY_PRE_PREVIOUS_STEP, previousStep), TuplesKt.a(OfflineConstantsKt.TRACK_KEY_PRE_FORCE_REFRESH, Boolean.valueOf(OfflineManager.isForceRefreshPrefetchCdnAppInfo$com_cloud_tmc_offline_download()))));
        }
    }

    public final void trackResourceRecord(String appId, boolean hitStatus, String url) {
        if (appId == null || appId.length() == 0) {
            return;
        }
        ConcurrentHashMap<String, ArrayList<HashMap<String, Object>>> concurrentHashMap = resTrackMap;
        ArrayList<HashMap<String, Object>> arrayList = concurrentHashMap.get(appId);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            concurrentHashMap.put(appId, arrayList);
        }
        arrayList.add(MapsKt.j(TuplesKt.a(OfflineDownloadAnalyseType.OFFLINE_RES_USAGE_STATUS.getObjectNameEn(), Integer.valueOf(hitStatus ? 1 : 0)), TuplesKt.a(OfflineConstantsKt.TRACK_KEY_OFFLINE_PKG_URL, url)));
    }
}
