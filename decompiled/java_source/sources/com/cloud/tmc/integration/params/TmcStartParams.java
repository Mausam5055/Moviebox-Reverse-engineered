package com.cloud.tmc.integration.params;

import com.cloud.tmc.integration.BuildConfig;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b9\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010'\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00100\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00101\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00102\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00103\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00104\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00105\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00106\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00107\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00108\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00109\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010:\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010;\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010<\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010=\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010>\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010?\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006@"}, d2 = {"Lcom/cloud/tmc/integration/params/TmcStartParams;", "", "()V", "BACK_BEHAVIOR_BACK", "", "BACK_BEHAVIOR_POP", "DEFAULT_LONG_FULLSCREEN", "", "DEFAULT_LONG_LANDSCAPE", "FRAGMENT_TYPE_SUB_TAB", "FROM_TYPE_PUSH_RELAUNCH", "FROM_TYPE_PUSH_WINDOW", "KEY_ACCPKG_RES", "KEY_APP_ID", "KEY_APP_VERSION", "KEY_BACKGROUND_COLOR", "KEY_BACKGROUND_IMAGE_URL", "KEY_BACK_BEHAVIOR", "KEY_CHANNEL_ID", "KEY_CHINFO", "KEY_CLOSE_ALL_ACTIVITY_ANIMATION", "KEY_ENABLE_KEEP_ALIVE", "KEY_ENABLE_MULTI_PROCESS", "KEY_ENABLE_POLYFILL_WORKER", "KEY_ENABLE_SNAPSHOT", "KEY_ENABLE_TABBAR", "KEY_FRAGMENT_TYPE", "KEY_FROM_RELAUNCH", "KEY_FROM_TYPE", "KEY_FULLSCREEN", "KEY_FULLSCREEN_SHORT", "KEY_GAME_MODE", "KEY_IS_REMOTE_DEBUG_MODE", "KEY_LANDSCAPE", "KEY_LANDSCAPE_SHORT", "KEY_LAUNCH_PARAMS_TAG", "KEY_ONLINE_HOST", "KEY_PAGE", "KEY_RESTART", "KEY_RESTART_FROM_LPID", "KEY_RESTART_FROM_TOKEN", "KEY_START_SCENE", "KEY_SUPER_SPLASH", "KEY_TABBARJSON", "KEY_TABITEM_COUNT", "KEY_TEMPLATE_FLAG", "KEY_TEMPLATE_ID", "KEY_TEMPLATE_TABBAR", "KEY_TINY_RES", "KEY_TRANSPARENT", "KEY_TRANSPARENT_TITLE", "KEY_TRANS_ANIMATE", "KEY_URL", "KEY_URL_SHORT", "KEY_USE_DYNAMIC_PLUGIN", "KEY_VERSION", "LONG_NB_OFFLINE", "LONG_NB_UPDATE", "LONG_NB_URL", "LONG_NB_VERSION", "START_SCENE_START_APP", "TRANSPARENT_TITLE_ALWAYS", "TRANSPARENT_TITLE_AUTO", "TRANSPARENT_TITLE_NONE", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TmcStartParams {
    public static final String BACK_BEHAVIOR_BACK = "back";
    public static final String BACK_BEHAVIOR_POP = "pop";
    public static final boolean DEFAULT_LONG_FULLSCREEN = false;
    public static final String DEFAULT_LONG_LANDSCAPE = "";
    public static final String FRAGMENT_TYPE_SUB_TAB = "subtab";
    public static final String FROM_TYPE_PUSH_RELAUNCH = "relaunch";
    public static final String FROM_TYPE_PUSH_WINDOW = "pushWindow";
    public static final TmcStartParams INSTANCE = new TmcStartParams();
    public static final String KEY_ACCPKG_RES = "nbpkgres";
    public static final String KEY_APP_ID = "appId";
    public static final String KEY_APP_VERSION = "appVersion";
    public static final String KEY_BACKGROUND_COLOR = "backgroundColor";
    public static final String KEY_BACKGROUND_IMAGE_URL = "backgroundImageUrl";
    public static final String KEY_BACK_BEHAVIOR = "backBehavior";
    public static final String KEY_CHANNEL_ID = "channelId";
    public static final String KEY_CHINFO = "chInfo";
    public static final String KEY_CLOSE_ALL_ACTIVITY_ANIMATION = "closeAllActivityAnimation";
    public static final String KEY_ENABLE_KEEP_ALIVE = "enableKeepAlive";
    public static final String KEY_ENABLE_MULTI_PROCESS = "enableMultiProcess";
    public static final String KEY_ENABLE_POLYFILL_WORKER = "enablePolyfillWorker";
    public static final String KEY_ENABLE_SNAPSHOT = "snapshot";
    public static final String KEY_ENABLE_TABBAR = "enableTabBar";
    public static final String KEY_FRAGMENT_TYPE = "fragmentType";
    public static final String KEY_FROM_RELAUNCH = "fromRelaunch";
    public static final String KEY_FROM_TYPE = "fromType";
    public static final String KEY_FULLSCREEN = "fullscreen";
    public static final String KEY_FULLSCREEN_SHORT = "fs";
    public static final String KEY_GAME_MODE = "paladinMode";
    public static final String KEY_IS_REMOTE_DEBUG_MODE = "isRemoteDebug";
    public static final String KEY_LANDSCAPE = "landscape";
    public static final String KEY_LANDSCAPE_SHORT = "ls";
    public static final String KEY_LAUNCH_PARAMS_TAG = "launchParamsTag";
    public static final String KEY_ONLINE_HOST = "onlineHost";
    public static final String KEY_PAGE = "page";
    public static final String KEY_RESTART = "isRestart";
    public static final String KEY_RESTART_FROM_LPID = "restartFromLpid";
    public static final String KEY_RESTART_FROM_TOKEN = "restartFromToken";
    public static final String KEY_START_SCENE = "startScene";
    public static final String KEY_SUPER_SPLASH = "superSplash";
    public static final String KEY_TABBARJSON = "tabBarJson";
    public static final String KEY_TABITEM_COUNT = "tabItemCount";
    public static final String KEY_TEMPLATE_FLAG = "templateApp";
    public static final String KEY_TEMPLATE_ID = "templateAppId";
    public static final String KEY_TEMPLATE_TABBAR = "tabBarItems";
    public static final String KEY_TINY_RES = "tinyPubRes";
    public static final String KEY_TRANSPARENT = "transparent";
    public static final String KEY_TRANSPARENT_TITLE = "transparentTitle";
    public static final String KEY_TRANS_ANIMATE = "transAnimate";
    public static final String KEY_URL = "url";
    public static final String KEY_URL_SHORT = "u";
    public static final String KEY_USE_DYNAMIC_PLUGIN = "useDynamicPlugins";
    public static final String KEY_VERSION = "version";
    public static final String LONG_NB_OFFLINE = "nboffline";
    public static final String LONG_NB_UPDATE = "nbupdate";
    public static final String LONG_NB_URL = "nburl";
    public static final String LONG_NB_VERSION = "nbversion";
    public static final String START_SCENE_START_APP = "startApp";
    public static final String TRANSPARENT_TITLE_ALWAYS = "always";
    public static final String TRANSPARENT_TITLE_AUTO = "auto";
    public static final String TRANSPARENT_TITLE_NONE = "none";

    private TmcStartParams() {
    }
}
