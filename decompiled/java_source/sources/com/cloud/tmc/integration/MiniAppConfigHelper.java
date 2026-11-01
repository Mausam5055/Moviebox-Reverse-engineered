package com.cloud.tmc.integration;

import android.content.Context;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.network.IConfigStrategyProxy;
import com.tencent.mmkv.MMKV;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.ref.WeakReference;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\bU\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010m\u001a\u00020e2\u0006\u0010n\u001a\u00020oJ\u0018\u0010p\u001a\u00020\u000e2\b\u0010q\u001a\u0004\u0018\u00010\u00042\u0006\u0010r\u001a\u00020\u000eJ\u0018\u0010s\u001a\u00020\u00072\b\u0010q\u001a\u0004\u0018\u00010\u00042\u0006\u0010r\u001a\u00020\u0007J\u0018\u0010t\u001a\u00020u2\b\u0010q\u001a\u0004\u0018\u00010\u00042\u0006\u0010r\u001a\u00020uJ\u0018\u0010v\u001a\u00020\u00042\b\u0010q\u001a\u0004\u0018\u00010\u00042\u0006\u0010r\u001a\u00020\u0004J\n\u0010w\u001a\u0004\u0018\u00010lH\u0007J\u0006\u0010x\u001a\u00020yR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000eX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u000eX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u000eX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u000eX\u0086T¢\u0006\u0002\n\u0000R\u0014\u0010\u001e\u001a\u00020\u000eX\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u000e\u0010!\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010'\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020\u000eX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020\u000eX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u00020\u000eX\u0086T¢\u0006\u0002\n\u0000R\u000e\u00100\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00101\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00102\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00103\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00104\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00105\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00106\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00107\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00108\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00109\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010:\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010;\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010<\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010=\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010>\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010?\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010@\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010A\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010B\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010C\u001a\u00020\u000eX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010D\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010E\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u001b\u0010F\u001a\u00020\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\bI\u0010J\u001a\u0004\bG\u0010HR\u000e\u0010K\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010L\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010M\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010N\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010O\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010P\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010Q\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010R\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010S\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010T\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0014\u0010U\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\bV\u0010HR\u000e\u0010W\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010X\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010Y\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010Z\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010[\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\\\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010]\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010^\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010_\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u001b\u0010`\u001a\u00020\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\bb\u0010J\u001a\u0004\ba\u0010HR\u0016\u0010c\u001a\n\u0012\u0004\u0012\u00020e\u0018\u00010dX\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010f\u001a\b\u0012\u0004\u0012\u00020h0gX\u0082\u0004¢\u0006\u0004\n\u0002\u0010iR\u000e\u0010j\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010k\u001a\u0004\u0018\u00010lX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006z"}, d2 = {"Lcom/cloud/tmc/integration/MiniAppConfigHelper;", "", "()V", "CAMERA_SLOW_AUTO_FOCUS_DEVICE_WHITE_LIST_WILDCARD", "", "DEFAULT_ADD_HOME_WHITE_LIST", "DEFAULT_APPINFO_REFRESH_INTERVAL", "", "DEFAULT_ATHENA_REPORT_PATHS", "DEFAULT_BYTEBRIDGE", "DEFAULT_CAMERA_SLOW_AUTO_FOCUS_DEVICE_WHITE_LIST", "DEFAULT_CLEAR_OFFLINE_DOWNLOAD_CACHE", "DEFAULT_CLEAR_USAGE_DATA_INTERVAL_TIME_DAY", "DEFAULT_CLOSE_MINI_APP_SDK", "", "DEFAULT_ENABLE_USE_OXYGEN_BUS", "DEFAULT_FPS", "DEFAULT_FW_REFRESH_INTERVAL", "DEFAULT_FW_UPDATE_COMPARE", "DEFAULT_GO_HOME_ALLOW_ID", "DEFAULT_INJECT_JS_CONFIG", "DEFAULT_INNER_WARMUP", "DEFAULT_INNER_WEBVIEW_WARMUP_V3", "DEFAULT_INTERVAL_TIME", "DEFAULT_JS_API_PERMISSION", "DEFAULT_JUMP_STORE_DEEPLINK", "DEFAULT_KEY_CORS_LIST", "DEFAULT_KEY_ENABLE_SUBPACKAGE", "DEFAULT_KEY_GAME_PERFORMANCE_MONITOR_STR", "DEFAULT_KEY_GAME_PERFORMANCE_MONITOR_STR_UES_LOCAL", "DEFAULT_KEY_LAYER_HARDWARE", "getDEFAULT_KEY_LAYER_HARDWARE", "()Z", "DEFAULT_KEY_LOADING_PROGRESS_CONFIG", "DEFAULT_KEY_MINI_QUERY_PRIORITY_LIST", "DEFAULT_KEY_OFF_SCREEN_RENDER", "DEFAULT_LOGIN_PRIVACY_URL", "DEFAULT_LOGIN_USER_AGREEMENT_URL", "DEFAULT_LOG_E_REPORT", "DEFAULT_MINIAPP_ALL_DATA_MAX_SIZE", "DEFAULT_MINIAPP_DATA_MAX_SIZE", "DEFAULT_MINIAPP_FILE_PATH_VALID", "DEFAULT_MINIAPP_STORAGE_ENABLE", "DEFAULT_MINIAPP_WHITE_LIST_DATA_MAX_SIZE", "DEFAULT_MINI_ANIM_MEMORY_SIZE", "DEFAULT_MINI_APPINFO_CDN_CONFIG", "DEFAULT_MINI_CAMERA_ENABLE", "DEFAULT_MINI_CARD_ENABLE", "DEFAULT_MINI_CARD_LIMIT_NUM", "DEFAULT_MINI_CARD_TARGET_APP_URL", "DEFAULT_MINI_FEEDBACK_ID", "DEFAULT_MINI_LOGO_ANIMATE_ENABLE", "DEFAULT_MINI_MUTIPLE_TASK", "DEFAULT_MINI_NATIVE_WEBVIEW_DOWNLOAD_CONFIG", "DEFAULT_MINI_NETWORK_IMPROVE_NUM", "DEFAULT_MINI_OFFLINE_DOWNLOAD_DISABLE_ANTI_SHAKE", "DEFAULT_MINI_PERMISSION_IGNORE_ID", "DEFAULT_MINI_POPWINDOW_ADD_HOME_DELAY", "DEFAULT_MINI_POPWINDOW_ADD_HOME_FORBID_ID", "DEFAULT_MINI_POPWINDOW_INTERVAL_TIME", "DEFAULT_MINI_POPWINDOW_MSG_BUBBLE_DELAY", "DEFAULT_MINI_POPWINDOW_MSG_BUBBLE_FORBID_ID", "DEFAULT_MINI_POPWINDOW_TIME", "DEFAULT_MINI_PRE_UNZIP_ID", "DEFAULT_MINI_PRIVACY_URL", "DEFAULT_MINI_SCOPE_CONFIG", "DEFAULT_MINI_SCOPE_REQUEST_DIFF", "DEFAULT_MINI_SEARCH_DESC_ENABLED", "DEFAULT_MINI_START_RECORD_FORBID_ID", "DEFAULT_MINI_WARM_UP_ENTRANCE_CONFIG", "DEFAULT_OFFLINE_DOWNLOAD", "getDEFAULT_OFFLINE_DOWNLOAD", "()Ljava/lang/String;", "DEFAULT_OFFLINE_DOWNLOAD$delegate", "Lkotlin/Lazy;", "DEFAULT_PRIVACY_AGREEMENT_ADD_HOME_DIALOG_FORCE_LIST", "DEFAULT_PRIVACY_AGREEMENT_DIALOG_WHITE_LIST", "DEFAULT_RENDER_WARM_UP", "DEFAULT_SCAN_CODE_CONFIG", "DEFAULT_SHARE_PREFIX_URL", "DEFAULT_SHARE_TARGET", "DEFAULT_SHARP_NEWS_HOST_LIST", "DEFAULT_SHELL_PATH_FILTER", "DEFAULT_SHELL_SCHEME_FILTER", "DEFAULT_SHORT_SHARE_URL", "DEFAULT_TARGET_PROCESS", "getDEFAULT_TARGET_PROCESS", "DEFAULT_TWO_IN_ONE_AUTO_SELECT", "DEFAULT_UPDATE_PACKAGE_SIZE", "DEFAULT_WARMUP_SETTING", "DEFAULT_WEBVIEW_CACHE_STRATEGY", "DEFAULT_WHITE_SCREEN", "DEFAULT_WORKER_WARM_UP", "DETAULT_ENABLE_ADSENSE", "DETAULT_MINIAPP_DATA_WHITE_LIST", "DETAULT_REQUEST_CONFIG", "KEY_OFFLINE_CONFIG", "getKEY_OFFLINE_CONFIG", "KEY_OFFLINE_CONFIG$delegate", "appConfig", "Ljava/lang/ref/WeakReference;", "Lcom/cloud/tmc/integration/MiniAppConfigStore;", "lock", "", "", "[Ljava/lang/Byte;", "mmkvInitFlag", "multiMMKV", "Lcom/tencent/mmkv/MMKV;", "getConfigStoreInstance", "context", "Landroid/content/Context;", "getConfigTargetBool", "key", "defaultValue", "getConfigTargetInt", "getConfigTargetLong", "", "getConfigTargetStr", "getMultiMMKVInstance", "warmUpConfigMMKV", "", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class MiniAppConfigHelper {
    public static final String CAMERA_SLOW_AUTO_FOCUS_DEVICE_WHITE_LIST_WILDCARD = "*";
    public static final String DEFAULT_ADD_HOME_WHITE_LIST = "[\"1000497027976413184\"]";
    public static final int DEFAULT_APPINFO_REFRESH_INTERVAL = 3600;
    public static final String DEFAULT_ATHENA_REPORT_PATHS = "{\"testPath\": \"www.test.com\"}";
    public static final String DEFAULT_BYTEBRIDGE = "{\"open\":false}";
    public static final String DEFAULT_CAMERA_SLOW_AUTO_FOCUS_DEVICE_WHITE_LIST = "";
    public static final String DEFAULT_CLEAR_OFFLINE_DOWNLOAD_CACHE = "{\"clear\":false,\"intervalTime\":604800}";
    public static final int DEFAULT_CLEAR_USAGE_DATA_INTERVAL_TIME_DAY = 30;
    public static final boolean DEFAULT_CLOSE_MINI_APP_SDK = false;
    public static final boolean DEFAULT_ENABLE_USE_OXYGEN_BUS = true;
    public static final String DEFAULT_FPS = "{\"grayScale\": 0,\"jankThreshold\": 200,\"traceInterval\": 50}";
    public static final int DEFAULT_FW_REFRESH_INTERVAL = 3600;
    public static final boolean DEFAULT_FW_UPDATE_COMPARE = true;
    public static final String DEFAULT_GO_HOME_ALLOW_ID = "[\"1000616124851466240\"]";
    public static final String DEFAULT_INJECT_JS_CONFIG = "[{\"jsName\":\"bgm_fix_min.js\",\"jsPath\":\"http://app-oss.byte-app.com/common/js/bgm_fix_min.js\",\"appIdBlackList\":[],\"appIdWhiteList\":[\"1000355985110831104\",\"5000321129995288576\"],\"injectStrategy\":[\"pageStart\"]},{\"jsName\":\"game_preformance_monitor_1_min.js\",\"jsPath\":\"http://app-oss.byte-app.com/common/js/game_preformance_monitor_1_min.js\",\"appIdBlackList\":[],\"appIdWhiteList\":[\"5*\",\"1000355985110831104\",\"3000289718657171456\"],\"injectStrategy\":[\"pageStart\"]},{\"jsName\":\"byteh5monitor.aio.min.js\",\"jsPath\":\"http://app-oss.byte-app.com/common/js/byteh5monitor.aio.min.js\",\"appIdBlackList\":[\"3000376718002012160\"],\"appIdWhiteList\":[\"3*\",\"1000497027976413184\"],\"injectStrategy\":[\"pageStart\"]},{\"jsName\":\"byteh5privacy.aio.min.js\",\"jsPath\":\"http://app-oss.byte-app.com/common/js/byteh5privacy.aio.min.js\",\"appIdBlackList\":[\"3000376718002012160\"],\"appIdWhiteList\":[\"3*\",\"5*\",\"1000355985110831104\",\"1000788264193941504\"],\"injectStrategy\":[\"pageStart\"]}]";
    public static final String DEFAULT_INNER_WARMUP = "{\"innerWarmUpRenderEnable\": true, \"innerWarmUpWorkerEnable\": true, \"renderMaxWarmupSize\": 1, \"workerMaxWarmupSize\": 1}";
    public static final String DEFAULT_INNER_WEBVIEW_WARMUP_V3 = "{\"innerWarmUpWebviewEnable\": true, \"webviewMaxWarmupSize\": 1}";
    public static final int DEFAULT_INTERVAL_TIME = 604800;
    public static final String DEFAULT_JS_API_PERMISSION = "{\"setClipboard\":{\"groups\":[\"partner\",\"external\",\"internal\"]}}";
    public static final String DEFAULT_JUMP_STORE_DEEPLINK = "market://details?id=";
    public static final String DEFAULT_KEY_CORS_LIST = "{}";
    public static final boolean DEFAULT_KEY_ENABLE_SUBPACKAGE = true;
    public static final String DEFAULT_KEY_GAME_PERFORMANCE_MONITOR_STR = "eyJodHRwczovL3d3dy5xeXhnYW1lLmNvbS9SZXNjdWVfVGhlX0xvdmVyL2luZGV4Lmh0bWw/dXRtX3NvdXJjZT1sYXVuY2hlcl9pbnN0YW50YXBwODg0NzciOnsidGFyZ2V0RWxlbWVudElkIjoiI2xvYWRpbmciLCJvdmVyYWxsSWRsZUxvYWRUaW1lVEgiOi0xfSwiaHR0cHM6Ly93d3cueGlhb3l0Z2FtZS5jb20vVGVtcGxlUnVuXzIvaW5kZXguaHRtbD91dG1fc291cmNlPWxhdW5jaGVyX2luc3RhbnRhcHA4ODQ3NyI6eyJ0YXJnZXRFbGVtZW50SWQiOiIucHJvZ3Jlc3MtdGV4dCIsInJlbmRlclJlYWR5SWRsZUxvYWRUaW1lVEgiOjk5OSwib3ZlcmFsbElkbGVMb2FkVGltZVRIIjotMX0sImh0dHBzOi8vd3d3Lm9vcHBnYW1lLmNvbS9Qb3VsdHJ5X0Zhcm0vaW5kZXguaHRtbD91dG1fc291cmNlPWxhdW5jaGVyX2luc3RhbnRhcHA4ODE4OCI6eyJ0YXJnZXRWZWN0ZXhQcmVGcmFtZSI6NTAwMCwicmVuZGVyUmVhZHlJZGxlTG9hZFRpbWVUSCI6OTk5LCJvdmVyYWxsSWRsZUxvYWRUaW1lVEgiOi0xfSwiaHR0cHM6Ly93d3cuamx5eWdhbWUuY29tL0NoaWxkcmVuX0RvY3Rvcl9EZW50aXN0L2luZGV4Lmh0bWw/dXRtX3NvdXJjZT1sYXVuY2hlcl9pbnN0YW50YXBwODg0NzciOnsidGFyZ2V0VmVjdGV4UHJlRnJhbWUiOjMwMCwicmVuZGVyUmVhZHlJZGxlTG9hZFRpbWVUSCI6OTk5LCJvdmVyYWxsSWRsZUxvYWRUaW1lVEgiOi0xfSwiaHR0cHM6Ly93d3cuaHpzZGdhbWUuY29tL1BhdGhfQ29sb3JfTGluZS9pbmRleC5odG1sP3V0bV9zb3VyY2U9bGF1bmNoZXJfaW5zdGFudGFwcDg4NDc2NyI6eyJ0YXJnZXRWZWN0ZXhQcmVGcmFtZSI6MzAwLCJyZW5kZXJSZWFkeUlkbGVMb2FkVGltZVRIIjo5OTksIm92ZXJhbGxJZGxlTG9hZFRpbWVUSCI6LTF9LCJodHRwczovL3d3dy5vb3BwZ2FtZS5jb20vQnJpZGdlX0J1aWxkZXIvaW5kZXguaHRtbD91dG1fc291cmNlPWxhdW5jaGVyX2luc3RhbnRhcHA4ODQ3NiI6eyJ0YXJnZXRWZWN0ZXhQcmVGcmFtZSI6MTAwMCwicmVuZGVyUmVhZHlJZGxlTG9hZFRpbWVUSCI6OTk5LCJvdmVyYWxsSWRsZUxvYWRUaW1lVEgiOi0xfSwiaHR0cHM6Ly93d3cuYWZhbnRhaWdhbWUuY29tL0tpbGxlcl9Bc3Nhc3Npbi9pbmRleC5odG1sP3V0bV9zb3VyY2U9bGF1bmNoZXJfaW5zdGFudGFwcDg4NDc2Ijp7InRhcmdldFZlY3RleFByZUZyYW1lIjo1MDAsInJlbmRlclJlYWR5SWRsZUxvYWRUaW1lVEgiOjk5OSwib3ZlcmFsbElkbGVMb2FkVGltZVRIIjotMX0sImh0dHBzOi8vd3d3LmJoamdhbWUuY29tL1N1YndheV9TdXJmZXJfU2VvdWwvaW5kZXguaHRtbD91dG1fc291cmNlPWxhdW5jaGVyX2luc3RhbnRhcHA4ODQ3NyI6eyJ0YXJnZXRWZWN0ZXhQcmVGcmFtZSI6MTAwMDAsInJlbmRlclJlYWR5SWRsZUxvYWRUaW1lVEgiOjk5OSwib3ZlcmFsbElkbGVMb2FkVGltZVRIIjotMX0sImh0dHBzOi8vd3d3LmptYmlsZWdhbWUuY29tL0YxX3J1c2gvaW5kZXguaHRtbCI6eyJ0YXJnZXRWZWN0ZXhQcmVGcmFtZSI6MTAwMDAsInJlbmRlclJlYWR5SWRsZUxvYWRUaW1lVEgiOjk5OSwib3ZlcmFsbElkbGVMb2FkVGltZVRIIjotMX0sImh0dHBzOi8vd3d3LmptYmlsZWdhbWUuY29tL0ljZWNyZWFtL2luZGV4Lmh0bWwiOnsidGFyZ2V0VmVjdGV4UHJlRnJhbWUiOjEyMCwicmVuZGVyUmVhZHlJZGxlTG9hZFRpbWVUSCI6OTk5LCJvdmVyYWxsSWRsZUxvYWRUaW1lVEgiOi0xfSwiaHR0cHM6Ly93d3cuemh4aWFrZW1hb2dhbWUuY29tL0xhc3RfTmlnaHQvaW5kZXguaHRtbD91dG1fc291cmNlPWxhdW5jaGVyX2luc3RhbnRhcHA4ODQ3NyI6eyJ0YXJnZXRWZWN0ZXhQcmVGcmFtZSI6NDUwLCJyZW5kZXJSZWFkeUlkbGVMb2FkVGltZVRIIjo5OTksIm92ZXJhbGxJZGxlTG9hZFRpbWVUSCI6LTF9fQ==";
    public static final boolean DEFAULT_KEY_GAME_PERFORMANCE_MONITOR_STR_UES_LOCAL = true;
    private static final boolean DEFAULT_KEY_LAYER_HARDWARE = false;
    public static final String DEFAULT_KEY_LOADING_PROGRESS_CONFIG = "{\"creatRender\":97,\"decompress\":95,\"download\":93,\"finishAnimationDuration\":100,\"firstDuration\":3000,\"firstProgress\":90,\"loadRender\":99,\"secondDuration\":1000}";
    public static final String DEFAULT_KEY_MINI_QUERY_PRIORITY_LIST = "[\"1000827142865809408\",\"1000091930789543936\",\"1000263325676503040\",\"1000497027976413184\"]";
    public static final String DEFAULT_KEY_OFF_SCREEN_RENDER = "{\"enable\":false,\"maxSize\":0,\"grayScale\":0}";
    public static final String DEFAULT_LOGIN_PRIVACY_URL = "https://h5.dlight-app.com/outside/privacy-policy";
    public static final String DEFAULT_LOGIN_USER_AGREEMENT_URL = "https://h5.dlight-app.com/outside/user-agreement";
    public static final String DEFAULT_LOG_E_REPORT = "{\"grayScale\": 0}";
    public static final int DEFAULT_MINIAPP_ALL_DATA_MAX_SIZE = 290;
    public static final int DEFAULT_MINIAPP_DATA_MAX_SIZE = 20;
    public static final String DEFAULT_MINIAPP_FILE_PATH_VALID = "[\\\\:*?\"<>|]";
    public static final boolean DEFAULT_MINIAPP_STORAGE_ENABLE = true;
    public static final int DEFAULT_MINIAPP_WHITE_LIST_DATA_MAX_SIZE = 100;
    public static final int DEFAULT_MINI_ANIM_MEMORY_SIZE = 4;
    public static final String DEFAULT_MINI_APPINFO_CDN_CONFIG = "{\"enableCdnRequest\":true,\"cdnConfigToken\":\"1\",\"grayScale\":0.5}";
    public static final boolean DEFAULT_MINI_CAMERA_ENABLE = true;
    public static final boolean DEFAULT_MINI_CARD_ENABLE = true;
    public static final int DEFAULT_MINI_CARD_LIMIT_NUM = 5;
    public static final String DEFAULT_MINI_CARD_TARGET_APP_URL = "launcherdlt://miniapp?appId=1000886706715795456";
    public static final String DEFAULT_MINI_FEEDBACK_ID = "1000391591855976448";
    public static final String DEFAULT_MINI_LOGO_ANIMATE_ENABLE = "{\"miniAnimateEnable\":true,\"loadingAnimMemorySize\":2}";
    public static final int DEFAULT_MINI_MUTIPLE_TASK = 2;
    public static final String DEFAULT_MINI_NATIVE_WEBVIEW_DOWNLOAD_CONFIG = "[\".pdf\",\".jpg\",\".png\",\".mp3\",\".mp4\",\".apk\",\".txt\",\".zip\"]";
    public static final int DEFAULT_MINI_NETWORK_IMPROVE_NUM = 0;
    public static final String DEFAULT_MINI_OFFLINE_DOWNLOAD_DISABLE_ANTI_SHAKE = "[\"1000886706715795456\"]";
    public static final String DEFAULT_MINI_PERMISSION_IGNORE_ID = "[\"1000391591855976448\",\"1000886706715795456\",\"100000\",\"666666\"]";
    public static final int DEFAULT_MINI_POPWINDOW_ADD_HOME_DELAY = 180000;
    public static final String DEFAULT_MINI_POPWINDOW_ADD_HOME_FORBID_ID = "[\"1000886706715795456\",\"1000391591855976448\",\"1000497027976413184\"]";
    public static final int DEFAULT_MINI_POPWINDOW_INTERVAL_TIME = 30000;
    public static final int DEFAULT_MINI_POPWINDOW_MSG_BUBBLE_DELAY = 60000;
    public static final String DEFAULT_MINI_POPWINDOW_MSG_BUBBLE_FORBID_ID = "[\"1000391591855976448\",\"1000886706715795456\"]";
    public static final int DEFAULT_MINI_POPWINDOW_TIME = 5000;
    public static final String DEFAULT_MINI_PRE_UNZIP_ID = "[\"100000\"]";
    public static final String DEFAULT_MINI_PRIVACY_URL = "https://h5.dlight-app.com/outside/privacy-policy";
    public static final String DEFAULT_MINI_SCOPE_CONFIG = "[]";
    public static final int DEFAULT_MINI_SCOPE_REQUEST_DIFF = 604800000;
    public static final boolean DEFAULT_MINI_SEARCH_DESC_ENABLED = false;
    public static final String DEFAULT_MINI_START_RECORD_FORBID_ID = "[\"1000391591855976448\"]";
    public static final String DEFAULT_MINI_WARM_UP_ENTRANCE_CONFIG = "{\"enableWarmUp\":false,\"configToken\":\"1\",\"grayScale\":0}";
    public static final String DEFAULT_PRIVACY_AGREEMENT_ADD_HOME_DIALOG_FORCE_LIST = "[]";
    public static final String DEFAULT_PRIVACY_AGREEMENT_DIALOG_WHITE_LIST = "[]";
    public static final String DEFAULT_RENDER_WARM_UP = "{\"open\":false,\"cacheSize\":1,\"lazyLoad\":true}";
    public static final String DEFAULT_SCAN_CODE_CONFIG = "{\"decode_1D_product\":false,\"decode_1D_industrial\":false,\"decode_QR\":true,\"decode_Data_Matrix\":false,\"decode_Aztec\":false,\"decode_PDF417\":false}";
    public static final String DEFAULT_SHARE_PREFIX_URL = "https://h5.dlight-app.com/outside";
    public static final String DEFAULT_SHARE_TARGET = "{\"com.cloud.tmc.miniapp\":\"byte\",\"com.talpa.image.encryption\":\"ms\",\"com.transsion.hilauncher\":\"hi\"}";
    public static final String DEFAULT_SHARP_NEWS_HOST_LIST = "[\"feed-search.rhino-news.com\",\"feed-sharp.rhino-news.com\",\"feed-instant.rhino-news.com\",\"feed.rhino-news.com\",\"www.rhino-news.com\"]";
    public static final String DEFAULT_SHELL_PATH_FILTER = "[]";
    public static final String DEFAULT_SHELL_SCHEME_FILTER = "[\"whatsapp\",\"sms\",\"tel\"]";
    public static final String DEFAULT_SHORT_SHARE_URL = "[\"nz.vip\",\"nx.vip\"]";
    public static final String DEFAULT_TWO_IN_ONE_AUTO_SELECT = "310,311,312,313,314,315,316,302,232,206,284,280,230,219,238,248,244,208,262,202,216,272,222,247,246,270,278,204,260,268,231,293,214,240,234,235,286,274,242,228,259,250,404,405";
    public static final int DEFAULT_UPDATE_PACKAGE_SIZE = 550;
    public static final String DEFAULT_WARMUP_SETTING = "{\"renderWaitTime\":1500,\"workerWaitTime\":1500}";
    public static final String DEFAULT_WEBVIEW_CACHE_STRATEGY = "{\"systemWebView\": true, \"shellWebView\": true}";
    public static final String DEFAULT_WHITE_SCREEN = "{\"grayScale\": 0,\"checkNowDelay\": 1000,\"checkIntervalArray\": [5, 10, 15, 20]}";
    public static final String DEFAULT_WORKER_WARM_UP = "{\"open\":false,\"cacheSize\":1,\"lazyLoad\":true}";
    public static final String DETAULT_ENABLE_ADSENSE = "{\"open\":true}";
    public static final String DETAULT_MINIAPP_DATA_WHITE_LIST = "[\"1000938677585735680\"]";
    public static final String DETAULT_REQUEST_CONFIG = "{\"repairIntToFloat\":true}";
    private static WeakReference<MiniAppConfigStore> appConfig;
    private static volatile boolean mmkvInitFlag;
    private static MMKV multiMMKV;
    public static final MiniAppConfigHelper INSTANCE = new MiniAppConfigHelper();
    private static final Byte[] lock = new Byte[0];

    /* JADX INFO: renamed from: KEY_OFFLINE_CONFIG$delegate, reason: from kotlin metadata */
    private static final Lazy KEY_OFFLINE_CONFIG = LazyKt.b(new Function0<String>() { // from class: com.cloud.tmc.integration.MiniAppConfigHelper$KEY_OFFLINE_CONFIG$2
        @Override // kotlin.jvm.functions.Function0
        public final String invoke() {
            return ((IConfigStrategyProxy) TmcProxy.get(IConfigStrategyProxy.class)).getOfflineConfigKey();
        }
    });
    private static final String DEFAULT_TARGET_PROCESS = ":mini";

    /* JADX INFO: renamed from: DEFAULT_OFFLINE_DOWNLOAD$delegate, reason: from kotlin metadata */
    private static final Lazy DEFAULT_OFFLINE_DOWNLOAD = LazyKt.b(new Function0<String>() { // from class: com.cloud.tmc.integration.MiniAppConfigHelper$DEFAULT_OFFLINE_DOWNLOAD$2
        @Override // kotlin.jvm.functions.Function0
        public final String invoke() {
            return ((IConfigStrategyProxy) TmcProxy.get(IConfigStrategyProxy.class)).getOfflineConfigDefaultValue();
        }
    });

    private MiniAppConfigHelper() {
    }

    @JvmStatic
    public static final MMKV getMultiMMKVInstance() {
        try {
            if (!mmkvInitFlag) {
                synchronized (lock) {
                    try {
                        if (!mmkvInitFlag) {
                            multiMMKV = MMKV.J("MiniAppConfigMMKV", 2);
                            mmkvInitFlag = true;
                        }
                        Unit unit = Unit.f67061a;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        } catch (Throwable th3) {
            TmcLogger.e("getMultiMMKV", th3);
        }
        return multiMMKV;
    }

    public final MiniAppConfigStore getConfigStoreInstance(Context context) {
        Intrinsics.h(context, "context");
        WeakReference<MiniAppConfigStore> weakReference = appConfig;
        MiniAppConfigStore miniAppConfigStore = weakReference != null ? weakReference.get() : null;
        if (miniAppConfigStore != null) {
            return miniAppConfigStore;
        }
        MiniAppConfigStore miniAppConfigStore2 = new MiniAppConfigStore(context);
        appConfig = new WeakReference<>(miniAppConfigStore2);
        return miniAppConfigStore2;
    }

    public final boolean getConfigTargetBool(String key, boolean defaultValue) {
        try {
            MMKV multiMMKVInstance = getMultiMMKVInstance();
            String string = multiMMKVInstance != null ? multiMMKVInstance.getString(key, String.valueOf(defaultValue)) : null;
            if (string != null && string.length() != 0) {
                return Boolean.parseBoolean(string);
            }
            return defaultValue;
        } catch (Exception unused) {
            return defaultValue;
        }
    }

    public final int getConfigTargetInt(String key, int defaultValue) {
        String string;
        try {
            MMKV multiMMKVInstance = getMultiMMKVInstance();
            if (multiMMKVInstance != null) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(defaultValue);
                string = multiMMKVInstance.getString(key, sb2.toString());
            } else {
                string = null;
            }
            if (string != null && string.length() != 0) {
                return Integer.parseInt(string);
            }
            return defaultValue;
        } catch (Exception unused) {
            return defaultValue;
        }
    }

    public final long getConfigTargetLong(String key, long defaultValue) {
        String string;
        try {
            MMKV multiMMKVInstance = getMultiMMKVInstance();
            if (multiMMKVInstance != null) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(defaultValue);
                string = multiMMKVInstance.getString(key, sb2.toString());
            } else {
                string = null;
            }
            if (string != null && string.length() != 0) {
                return Long.parseLong(string);
            }
            return defaultValue;
        } catch (Exception unused) {
            return defaultValue;
        }
    }

    public final String getConfigTargetStr(String key, String defaultValue) {
        Intrinsics.h(defaultValue, "defaultValue");
        try {
            MMKV multiMMKVInstance = getMultiMMKVInstance();
            String string = multiMMKVInstance != null ? multiMMKVInstance.getString(key, defaultValue) : null;
            return (string == null || string.length() == 0) ? defaultValue : string;
        } catch (Exception unused) {
            return defaultValue;
        }
    }

    public final boolean getDEFAULT_KEY_LAYER_HARDWARE() {
        return DEFAULT_KEY_LAYER_HARDWARE;
    }

    public final String getDEFAULT_OFFLINE_DOWNLOAD() {
        return (String) DEFAULT_OFFLINE_DOWNLOAD.getValue();
    }

    public final String getDEFAULT_TARGET_PROCESS() {
        return DEFAULT_TARGET_PROCESS;
    }

    public final String getKEY_OFFLINE_CONFIG() {
        return (String) KEY_OFFLINE_CONFIG.getValue();
    }

    public final void warmUpConfigMMKV() {
        try {
            getMultiMMKVInstance();
        } catch (Throwable th2) {
            TmcLogger.e("warmUpConfigMMKV", th2);
        }
    }
}
