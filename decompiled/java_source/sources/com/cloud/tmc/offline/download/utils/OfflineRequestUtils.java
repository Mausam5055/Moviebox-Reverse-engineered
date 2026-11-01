package com.cloud.tmc.offline.download.utils;

import android.content.Context;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.integration.utils.CloudConfigUtils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.launcherlib.LauncherFrameworkConstants;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0004J\u0018\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0004H\u0002J\u0018\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0004H\u0002J\u001e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u000fR\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0006R\u0014\u0010\t\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u0006R\u001a\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/cloud/tmc/offline/download/utils/OfflineRequestUtils;", "", "()V", "STATUS_ALLOW", "", "getSTATUS_ALLOW", "()Ljava/lang/String;", "STATUS_REFUSE_INTERVAL", "getSTATUS_REFUSE_INTERVAL", "STATUS_REFUSE_REQUESTING", "getSTATUS_REFUSE_REQUESTING", "TAG", "getTAG", "requestingMap", "Ljava/util/concurrent/ConcurrentHashMap;", "", "checkEnableOfflineRequest", "context", "Landroid/content/Context;", "requestKey", "checkUseFailCallback", "checkofflineRequestInterval", "updateOfflineRequestStatus", "", NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class OfflineRequestUtils {
    public static final OfflineRequestUtils INSTANCE = new OfflineRequestUtils();
    private static final String TAG = "OfflineRequestUtils";
    private static final ConcurrentHashMap<String, Boolean> requestingMap = new ConcurrentHashMap<>();
    private static final String STATUS_REFUSE_REQUESTING = "1";
    private static final String STATUS_REFUSE_INTERVAL = "2";
    private static final String STATUS_ALLOW = "3";

    private OfflineRequestUtils() {
    }

    private final boolean checkUseFailCallback(Context context, String requestKey) {
        try {
            return Intrinsics.c(requestKey, context.getPackageName()) ? MiniAppConfigHelper.INSTANCE.getConfigTargetBool(LauncherMiniAppConfigHelper.KEY_OFFLINE_USE_REQUEST_HOST_SUCCESS, true) : MiniAppConfigHelper.INSTANCE.getConfigTargetBool(LauncherMiniAppConfigHelper.KEY_OFFLINE_USE_REQUEST_MINIAPP_SUCCESS, false);
        } catch (Throwable th2) {
            TmcLogger.e(CloudConfigUtils.INSTANCE.getTAG(), "checkUseFailCallback", th2);
            return false;
        }
    }

    private final boolean checkofflineRequestInterval(Context context, String requestKey) {
        try {
            long configTargetLong = Intrinsics.c(requestKey, context.getPackageName()) ? MiniAppConfigHelper.INSTANCE.getConfigTargetLong(LauncherMiniAppConfigHelper.KEY_OFFLINE_HOST_REQUEST_INTERVAL, TmcConstants.MINI_POPWINDOW_MSG_BUBBLE_INTERVAL) : MiniAppConfigHelper.INSTANCE.getConfigTargetLong(LauncherMiniAppConfigHelper.KEY_OFFLINE_REQUEST_INTERVAL, TmcConstants.MINI_POPWINDOW_MSG_BUBBLE_INTERVAL);
            long j11 = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getLong(context, LauncherFrameworkConstants.LAUNCHER_GLOBAL_KEYS, "latestRequestTime_" + requestKey);
            if (System.currentTimeMillis() - j11 >= configTargetLong) {
                TmcLogger.d(TAG, "requestKey -> " + requestKey + ",offline request interval is over,latestReuestTime->" + j11 + ",cloudConfigRequestInterval->" + configTargetLong);
                return true;
            }
            TmcLogger.d(TAG, "requestKey -> " + requestKey + ",offline request interval is not over,currentTime->" + System.currentTimeMillis() + ",latestReuestTime->" + j11 + ",requestInterval->" + configTargetLong);
            return false;
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "checkOfflineRequestInterval error", th2);
            return true;
        }
    }

    public final String checkEnableOfflineRequest(Context context, String requestKey) {
        Intrinsics.h(context, "context");
        Intrinsics.h(requestKey, "requestKey");
        try {
            ConcurrentHashMap<String, Boolean> concurrentHashMap = requestingMap;
            Boolean bool = concurrentHashMap.get(requestKey);
            if (bool == null) {
                bool = Boolean.FALSE;
            }
            if (!bool.booleanValue()) {
                concurrentHashMap.put(requestKey, Boolean.TRUE);
                if (checkofflineRequestInterval(context, requestKey)) {
                    return STATUS_ALLOW;
                }
                concurrentHashMap.remove(requestKey);
                return STATUS_REFUSE_INTERVAL;
            }
            TmcLogger.d(TAG, "offline request is requesting, key: " + requestKey);
            return STATUS_REFUSE_REQUESTING;
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "checkEnableOfflineRequest", th2);
            return STATUS_ALLOW;
        }
    }

    public final String getSTATUS_ALLOW() {
        return STATUS_ALLOW;
    }

    public final String getSTATUS_REFUSE_INTERVAL() {
        return STATUS_REFUSE_INTERVAL;
    }

    public final String getSTATUS_REFUSE_REQUESTING() {
        return STATUS_REFUSE_REQUESTING;
    }

    public final String getTAG() {
        return TAG;
    }

    public final void updateOfflineRequestStatus(Context context, String requestKey, boolean success) {
        Intrinsics.h(context, "context");
        Intrinsics.h(requestKey, "requestKey");
        try {
            requestingMap.remove(requestKey);
            if (success || checkUseFailCallback(context, requestKey)) {
                ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putLong(context, LauncherFrameworkConstants.LAUNCHER_GLOBAL_KEYS, "latestRequestTime_" + requestKey, System.currentTimeMillis());
                TmcLogger.d(TAG, "updateOfflineRequestStatus requestKey: " + requestKey + " ,success: " + success);
            } else {
                TmcLogger.d(TAG, "not updateOfflineRequestStatus requestKey: " + requestKey + ",success: " + success);
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "updateOfflineRequestStatus error: ", th2);
        }
    }
}
