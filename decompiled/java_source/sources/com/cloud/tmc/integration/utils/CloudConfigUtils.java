package com.cloud.tmc.integration.utils;

import android.content.Context;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.integration.model.ConfigCdnBean;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.network.INetWorkProxy;
import com.cloud.tmc.kernel.proxy.network.IResponseCallback;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.launcherlib.LauncherFrameworkConstants;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.miniutils.util.GsonUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Cookie;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0018\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0004H\u0002J.\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u00162\b\u0010\u001a\u001a\u0004\u0018\u00010\u00042\u0014\u0010\u001b\u001a\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u001cJ\u0010\u0010\u001e\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0010\u0010\u001f\u001a\u00020\u001d2\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u001e\u0010 \u001a\u00020\u001d2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u000fJ \u0010\"\u001a\u00020\u001d2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010#\u001a\u00020\u000f2\u0006\u0010$\u001a\u00020\u000fH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001d\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000f0\u0011¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006%"}, d2 = {"Lcom/cloud/tmc/integration/utils/CloudConfigUtils;", "", "()V", "DEFAULT_QUERY_KEY", "", "TAG", "getTAG", "()Ljava/lang/String;", "cloudConfigRequestInterval", "", "getCloudConfigRequestInterval", "()J", "setCloudConfigRequestInterval", "(J)V", "isRequesting", "", "requestingMap", "Ljava/util/concurrent/ConcurrentHashMap;", "getRequestingMap", "()Ljava/util/concurrent/ConcurrentHashMap;", "checkAllowCloudConfigRequest", "context", "Landroid/content/Context;", "checkCloudConfigRequestInterval", "requestKey", "checkEnableConfigRequest", "queryKey", CampaignEx.JSON_NATIVE_VIDEO_COMPLETE, "Lkotlin/Function1;", "", "checkUseSuccessCallback", "updateCdnConfig", "updateCloudConfigRequestStatus", NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, "updateCloudConfigStatus", NotificationCompat.CATEGORY_STATUS, "intervalBySuccess", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class CloudConfigUtils {
    public static final String DEFAULT_QUERY_KEY = "defaultKey";
    private static long cloudConfigRequestInterval;
    private static volatile boolean isRequesting;
    public static final CloudConfigUtils INSTANCE = new CloudConfigUtils();
    private static final String TAG = "CloudConfigUtils";
    private static final ConcurrentHashMap<String, Boolean> requestingMap = new ConcurrentHashMap<>();

    private CloudConfigUtils() {
    }

    private final boolean checkAllowCloudConfigRequest(Context context) {
        try {
            updateCdnConfig(context);
            return ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getBoolean(context, LauncherFrameworkConstants.LAUNCHER_GLOBAL_KEYS, LauncherFrameworkConstants.KEY_ENABLE_REQUEST_CLOUD_CONFIG, true);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "checkAllowCloudConfigRequest", th2);
            return true;
        }
    }

    private final boolean checkCloudConfigRequestInterval(Context context, String requestKey) {
        try {
            cloudConfigRequestInterval = MiniAppConfigHelper.INSTANCE.getConfigTargetLong(LauncherMiniAppConfigHelper.KEY_CLOUD_CONFIG_REQUEST_INTERVAL, TmcConstants.MINI_POPWINDOW_MSG_BUBBLE_INTERVAL);
            long j11 = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getLong(context, LauncherFrameworkConstants.LAUNCHER_GLOBAL_KEYS, "latestRequestTime_" + requestKey);
            long jCurrentTimeMillis = System.currentTimeMillis() - j11;
            long j12 = cloudConfigRequestInterval;
            if (jCurrentTimeMillis >= j12) {
                TmcLogger.d(TAG, "cloud config request interval is over,latestReuestTime->" + j11 + ",cloudConfigRequestInterval->" + j12);
                return true;
            }
            TmcLogger.d(TAG, "cloud config request interval is not over,currentTime->" + System.currentTimeMillis() + ",latestReuestTime->" + j11 + ",cloudConfigRequestInterval->" + cloudConfigRequestInterval);
            return false;
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "checkCloudConfigRequestInterval error", th2);
            return true;
        }
    }

    private final boolean checkUseSuccessCallback(Context context) {
        try {
            return ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getBoolean(context, LauncherFrameworkConstants.LAUNCHER_GLOBAL_KEYS, LauncherFrameworkConstants.KEY_CLOUD_CONFIG_BY_SUCCESS, true);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "updateCloudConfigStatus", th2);
            return false;
        }
    }

    private final void updateCdnConfig(final Context context) {
        if (isRequesting) {
            TmcLogger.d(TAG, "updateCdnConfig isRequesting->" + isRequesting);
            return;
        }
        isRequesting = true;
        if (System.currentTimeMillis() - ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getLong(context, LauncherFrameworkConstants.LAUNCHER_GLOBAL_KEYS, LauncherFrameworkConstants.KEY_CLOUD_CONFIG_CDN_LATEST_TIME) >= MiniAppConfigHelper.INSTANCE.getConfigTargetLong(LauncherMiniAppConfigHelper.KEY_CLOUD_CDN_INTERVAL, TmcConstants.MINI_POPWINDOW_MSG_BUBBLE_INTERVAL)) {
            ((INetWorkProxy) TmcProxy.get(INetWorkProxy.class)).get("https://cloud-config-oss.shalltry.com/cloudconfig/config/onoff/miniapp_cloudconfig_onoff.json", new LinkedHashMap(), new LinkedHashMap(), Boolean.FALSE, new IResponseCallback() { // from class: com.cloud.tmc.integration.utils.CloudConfigUtils.updateCdnConfig.1
                @Override // com.cloud.tmc.kernel.proxy.network.IResponseCallback
                public void onFailure(String errCode, String errMsg, String callbackId) {
                    CloudConfigUtils.isRequesting = false;
                    if (MiniAppConfigHelper.INSTANCE.getConfigTargetBool(LauncherMiniAppConfigHelper.KEY_CLOUD_CDN_USE_SUCCESS_CALLBACK, false)) {
                        return;
                    }
                    ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putLong(context, LauncherFrameworkConstants.LAUNCHER_GLOBAL_KEYS, LauncherFrameworkConstants.KEY_CLOUD_CONFIG_CDN_LATEST_TIME, System.currentTimeMillis());
                }

                @Override // com.cloud.tmc.kernel.proxy.network.IResponseCallback
                public void onSuccess(int responseCode, String responseStr, Map<String, String> headers, List<Cookie> cookies, String callbackId) {
                    try {
                        CloudConfigUtils cloudConfigUtils = CloudConfigUtils.INSTANCE;
                        TmcLogger.d(cloudConfigUtils.getTAG(), "getMyByteAppRecommendList onSuccess: " + responseStr);
                        if (responseStr != null && responseStr.length() != 0) {
                            ConfigCdnBean configCdnBean = (ConfigCdnBean) GsonUtils.fromJson(responseStr, ConfigCdnBean.class);
                            String s11 = configCdnBean.getS();
                            String str = "";
                            if (s11 == null) {
                                s11 = "";
                            }
                            boolean z10 = Intrinsics.c(s11, "0") || !Intrinsics.c(s11, "1");
                            String a11 = configCdnBean.getA();
                            if (a11 != null) {
                                str = a11;
                            }
                            cloudConfigUtils.updateCloudConfigStatus(context, z10, !Intrinsics.c(str, "0") && Intrinsics.c(str, "1"));
                            ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putLong(context, LauncherFrameworkConstants.LAUNCHER_GLOBAL_KEYS, LauncherFrameworkConstants.KEY_CLOUD_CONFIG_CDN_LATEST_TIME, System.currentTimeMillis());
                            CloudConfigUtils.isRequesting = false;
                        }
                    } catch (Throwable th2) {
                        CloudConfigUtils.isRequesting = false;
                        TmcLogger.d(CloudConfigUtils.INSTANCE.getTAG(), "getCloudConfig error " + th2);
                    }
                }
            });
            return;
        }
        TmcLogger.d(TAG, "updateCdnConfig isRequesting->" + isRequesting);
        isRequesting = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateCloudConfigStatus(Context context, boolean status, boolean intervalBySuccess) {
        try {
            ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putBoolean(context, LauncherFrameworkConstants.LAUNCHER_GLOBAL_KEYS, LauncherFrameworkConstants.KEY_ENABLE_REQUEST_CLOUD_CONFIG, status);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "updateCloudConfigStatus", th2);
        }
        try {
            ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putBoolean(context, LauncherFrameworkConstants.LAUNCHER_GLOBAL_KEYS, LauncherFrameworkConstants.KEY_CLOUD_CONFIG_BY_SUCCESS, intervalBySuccess);
        } catch (Throwable th3) {
            TmcLogger.e(TAG, "updateCloudConfigStatus", th3);
        }
    }

    public final boolean checkEnableConfigRequest(Context context, String queryKey, Function1<? super Boolean, Unit> complete) {
        Intrinsics.h(context, "context");
        if (queryKey != null) {
            try {
                if (queryKey.length() == 0) {
                    queryKey = DEFAULT_QUERY_KEY;
                }
            } catch (Throwable th2) {
                TmcLogger.e(TAG, "checkEnableConfigRequest", th2);
                return true;
            }
        } else {
            queryKey = DEFAULT_QUERY_KEY;
        }
        ConcurrentHashMap<String, Boolean> concurrentHashMap = requestingMap;
        Boolean bool = concurrentHashMap.get(queryKey);
        if (bool == null) {
            bool = Boolean.FALSE;
        }
        if (bool.booleanValue()) {
            TmcLogger.d(TAG, "cloud config request is requesting, key: " + queryKey);
            if (complete != null) {
                complete.invoke(Boolean.TRUE);
            }
            return false;
        }
        Boolean bool2 = Boolean.TRUE;
        concurrentHashMap.put(queryKey, bool2);
        if (!checkAllowCloudConfigRequest(context)) {
            TmcLogger.d(TAG, "cloud config request is not enable");
            concurrentHashMap.put(queryKey, Boolean.FALSE);
            if (complete != null) {
                complete.invoke(bool2);
            }
            return false;
        }
        if (checkCloudConfigRequestInterval(context, queryKey)) {
            return true;
        }
        concurrentHashMap.put(queryKey, Boolean.FALSE);
        if (complete != null) {
            complete.invoke(bool2);
        }
        return false;
    }

    public final long getCloudConfigRequestInterval() {
        return cloudConfigRequestInterval;
    }

    public final ConcurrentHashMap<String, Boolean> getRequestingMap() {
        return requestingMap;
    }

    public final String getTAG() {
        return TAG;
    }

    public final void setCloudConfigRequestInterval(long j11) {
        cloudConfigRequestInterval = j11;
    }

    public final void updateCloudConfigRequestStatus(Context context, String requestKey, boolean success) {
        Intrinsics.h(context, "context");
        Intrinsics.h(requestKey, "requestKey");
        try {
            requestingMap.put(requestKey, Boolean.FALSE);
            if (!success && !checkUseSuccessCallback(context)) {
                return;
            }
            ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putLong(context, LauncherFrameworkConstants.LAUNCHER_GLOBAL_KEYS, "latestRequestTime_" + requestKey, System.currentTimeMillis());
            TmcLogger.d(TAG, "updateCloudConfigRequestStatus requestKey: " + requestKey);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "updateCloudConfigRequestStatus error: ", th2);
        }
    }
}
