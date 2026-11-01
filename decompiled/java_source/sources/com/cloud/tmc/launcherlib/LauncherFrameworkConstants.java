package com.cloud.tmc.launcherlib;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000e\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/cloud/tmc/launcherlib/LauncherFrameworkConstants;", "", "()V", "FRAMEWORK_APPID", "", "KEY_CLOUD_CONFIG_BY_SUCCESS", "KEY_CLOUD_CONFIG_CDN_LATEST_TIME", "KEY_CLOUD_CONFIG_LATEST_REQUEST_TIME", "KEY_ENABLE_REQUEST_CLOUD_CONFIG", "KEY_LAUNCHER_MINI_APP_VERSION", "KEY_LAUNCHER_MINI_SDK_VERSION", "KEY_MINI_AUTO_UPDATE_STATUS", "KEY_MINI_HOST_APP_ID", "KEY_MINI_HOST_FW_VERSION", "KEY_MINI_PREFETCH_STATE", "KEY_MINI_PREFETCH_TIMESTAMP", "KEY_OFFLINE_LATEST_REQUEST_TIME", "LAUNCHER_GLOBAL_KEYS", "com.cloud.tmc.minilauncherlib"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class LauncherFrameworkConstants {
    public static final String FRAMEWORK_APPID = "100000";
    public static final LauncherFrameworkConstants INSTANCE = new LauncherFrameworkConstants();
    public static final String KEY_CLOUD_CONFIG_BY_SUCCESS = "requestIntervalBySuccess";
    public static final String KEY_CLOUD_CONFIG_CDN_LATEST_TIME = "laterestRequestCdnTime";
    public static final String KEY_CLOUD_CONFIG_LATEST_REQUEST_TIME = "latestRequestTime";
    public static final String KEY_ENABLE_REQUEST_CLOUD_CONFIG = "enableRequestConfig";
    public static final String KEY_LAUNCHER_MINI_APP_VERSION = "miniHostAppVersion";
    public static final String KEY_LAUNCHER_MINI_SDK_VERSION = "miniHostSDKVersion";
    public static final String KEY_MINI_AUTO_UPDATE_STATUS = "miniAutoUpdateStatus";
    public static final String KEY_MINI_HOST_APP_ID = "miniHostAppId";
    public static final String KEY_MINI_HOST_FW_VERSION = "miniHostFwVersion";
    public static final String KEY_MINI_PREFETCH_STATE = "miniPrefetchStatus";
    public static final String KEY_MINI_PREFETCH_TIMESTAMP = "miniPrefetchTimestamp";
    public static final String KEY_OFFLINE_LATEST_REQUEST_TIME = "latestRequestTime";
    public static final String LAUNCHER_GLOBAL_KEYS = "miniLauncherGlobal";

    private LauncherFrameworkConstants() {
    }
}
