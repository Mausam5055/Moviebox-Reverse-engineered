package com.cloud.tmc.component_api_ps.ipc.constants;

import com.cloud.tmc.component_api_ps.BuildConfig;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u000f\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0010X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lcom/cloud/tmc/component_api_ps/ipc/constants/MiniAppIpcConfig;", "", "()V", "ABILITY_SDK_VERSION", "", "ABILITY_STOREAGE_CLEAN_SIZE", "IPC_ADDHOME_APP_LOGO", "IPC_ADDHOME_APP_NAME", "IPC_QUERY_APP_ID", "IPC_RESULT_JSON_DATA", "MINI_APP_MAIN_CHANNEL_SERVICE_CLS_NAME", "MINI_APP_PS_CHANNEL_PARAM_CALLBACK_ID", "MINI_APP_PS_CHANNEL_PARAM_PKG", "MINI_APP_PS_CHANNEL_SERVICE_CLS_NAME", "PALM_STORE_PACKAGE_NAME", "PERF_WARM_UP_RENDER_WORKER", "", "PERF_WARM_UP_TYPE", "PERF_WARM_UP_WEBVIEW", "TYPE_IPC_ABILITY_ADD_SHORTCUT", "TYPE_IPC_ABILITY_MINI_VERSION", "TYPE_IPC_ABILITY_PRELOAD_OFFLINE_APP", "TYPE_IPC_ABILITY_QUERY_MINI_OFFLINE", "TYPE_IPC_ABILITY_QUERY_SINGLE_MINI_OFFLINE", "TYPE_IPC_DATA_ALL_MINI_SHORTCUT", "TYPE_IPC_DATA_MINI_CLEAN_ALL_STORAGE", "TYPE_IPC_DATA_MINI_CLEAN_STORAGE", "TYPE_IPC_DATA_MINI_SHORTCUT", "TYPE_IPC_DATA_QUERY_MINI_ALL_STORAGE", "TYPE_IPC_DATA_QUERY_MINI_STORAGE", "TYPE_IPC_PERF_MINI_APPWARM_UP", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class MiniAppIpcConfig {
    public static final String ABILITY_SDK_VERSION = "sdkVersion";
    public static final String ABILITY_STOREAGE_CLEAN_SIZE = "removeStoregeSize";
    public static final MiniAppIpcConfig INSTANCE = new MiniAppIpcConfig();
    public static final String IPC_ADDHOME_APP_LOGO = "logoUrl";
    public static final String IPC_ADDHOME_APP_NAME = "appName";
    public static final String IPC_QUERY_APP_ID = "queryAppId";
    public static final String IPC_RESULT_JSON_DATA = "resultJsonData";
    public static final String MINI_APP_MAIN_CHANNEL_SERVICE_CLS_NAME = "com.cloud.tmc.component_api_ps.ipc.service.MiniAppProtocolMainService";
    public static final String MINI_APP_PS_CHANNEL_PARAM_CALLBACK_ID = "miniAppPSChannelIpcCallbackId";
    public static final String MINI_APP_PS_CHANNEL_PARAM_PKG = "miniAppPSChannelIpcPkg";
    public static final String MINI_APP_PS_CHANNEL_SERVICE_CLS_NAME = "com.cloud.tmc.miniapp.ipc.IpcMiniPSService";
    public static final String PALM_STORE_PACKAGE_NAME = "com.transsnet.store";
    public static final int PERF_WARM_UP_RENDER_WORKER = 0;
    public static final String PERF_WARM_UP_TYPE = "warmupType";
    public static final int PERF_WARM_UP_WEBVIEW = 1;
    public static final String TYPE_IPC_ABILITY_ADD_SHORTCUT = "typeMiniAppAddShortcut";
    public static final String TYPE_IPC_ABILITY_MINI_VERSION = "typeMiniAppVersion";
    public static final String TYPE_IPC_ABILITY_PRELOAD_OFFLINE_APP = "typePreloadOfflineApp";
    public static final String TYPE_IPC_ABILITY_QUERY_MINI_OFFLINE = "typeMiniAppOffline";
    public static final String TYPE_IPC_ABILITY_QUERY_SINGLE_MINI_OFFLINE = "typeSingleMiniAppOffline";
    public static final String TYPE_IPC_DATA_ALL_MINI_SHORTCUT = "typeMiniAppAllShortcut";
    public static final String TYPE_IPC_DATA_MINI_CLEAN_ALL_STORAGE = "typeMiniAppCleanAllStorage";
    public static final String TYPE_IPC_DATA_MINI_CLEAN_STORAGE = "typeMiniAppCleanStorage";
    public static final String TYPE_IPC_DATA_MINI_SHORTCUT = "typeMiniAppShortcut";
    public static final String TYPE_IPC_DATA_QUERY_MINI_ALL_STORAGE = "typeMiniAppAllStorage";
    public static final String TYPE_IPC_DATA_QUERY_MINI_STORAGE = "typeMiniAppStorage";
    public static final String TYPE_IPC_PERF_MINI_APPWARM_UP = "miniappWarmup";

    private MiniAppIpcConfig() {
    }
}
