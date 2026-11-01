package com.cloud.tmc.kernel.framework;

import com.cloud.tmc.kernel.BuildConfig;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u001b\n\u0002\u0010\t\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Lcom/cloud/tmc/kernel/framework/FrameworkConstants;", "", "()V", "APP_MANAGER_APPID", "", "BASE_HOST", "FRAMEWORK_APPID", "FRAMEWORK_JS", "GLOBAL_DATA_KEY_APP_JSON", "GLOBAL_DATA_KEY_APP_PATH", "GLOBAL_DATA_KEY_DELTA", "GLOBAL_DATA_KEY_EXITED_RENDER_ID", "GLOBAL_DATA_KEY_HOMEPAGE_RENDER_ID", "GLOBAL_DATA_KEY_HOMEPAGE_URL", "GLOBAL_DATA_KEY_IS_MIXED_PAGE", "GLOBAL_DATA_KEY_NEED_TO_EXIT_NUM", "GLOBAL_DATA_KEY_PAGE_PATH", "GLOBAL_DATA_KEY_PRE_RENDER_ID", "GLOBAL_DATA_KEY_RENDER_ID", "GLOBAL_DATA_KEY_ROUTE_TYPE", "GLOBAL_DATA_KEY_SCENE", "GLOBAL_DATA_KEY_TAB_CREATED", "GLOBAL_DATA_KEY_URL", "GLOBAL_DATA_KEY_WORKER_TYPE", "GLOBAL_KEY_APP_READY", "GLOBAL_KEY_GLOBAL", "GLOBAL_KEY_LOADED", "SCHEME_HTTPS", "TEMPLATE_URL", "TMP_WARMUP_RENDER_ID_PREFIX", "TMP_WARMUP_WORKER_ID_PREFIX", "TMP_WARMUP_WORKER_START_TOKEN", "", "VHOST_ENDFIX", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class FrameworkConstants {
    public static final String APP_MANAGER_APPID = "99999";
    public static final String BASE_HOST = "https://100000.miniapp.transsion.com";
    public static final String FRAMEWORK_APPID = "100000";
    public static final String FRAMEWORK_JS = "https://100000.miniapp.transsion.com/master.js";
    public static final String GLOBAL_DATA_KEY_APP_JSON = "appJson";
    public static final String GLOBAL_DATA_KEY_APP_PATH = "appPath";
    public static final String GLOBAL_DATA_KEY_DELTA = "delta";
    public static final String GLOBAL_DATA_KEY_EXITED_RENDER_ID = "exitedRenderId";
    public static final String GLOBAL_DATA_KEY_HOMEPAGE_RENDER_ID = "homepageRenderId";
    public static final String GLOBAL_DATA_KEY_HOMEPAGE_URL = "homepageUrl";
    public static final String GLOBAL_DATA_KEY_IS_MIXED_PAGE = "isMixedPage";
    public static final String GLOBAL_DATA_KEY_NEED_TO_EXIT_NUM = "needToExitNum";
    public static final String GLOBAL_DATA_KEY_PAGE_PATH = "pagePath";
    public static final String GLOBAL_DATA_KEY_PRE_RENDER_ID = "preRenderId";
    public static final String GLOBAL_DATA_KEY_RENDER_ID = "renderId";
    public static final String GLOBAL_DATA_KEY_ROUTE_TYPE = "routeType";
    public static final String GLOBAL_DATA_KEY_SCENE = "scene";
    public static final String GLOBAL_DATA_KEY_TAB_CREATED = "tabCreated";
    public static final String GLOBAL_DATA_KEY_URL = "url";
    public static final String GLOBAL_DATA_KEY_WORKER_TYPE = "workerType";
    public static final String GLOBAL_KEY_APP_READY = "__appReady";
    public static final String GLOBAL_KEY_GLOBAL = "global";
    public static final String GLOBAL_KEY_LOADED = "__tmcLoaded";
    public static final FrameworkConstants INSTANCE = new FrameworkConstants();
    public static final String SCHEME_HTTPS = "https://";
    public static final String TEMPLATE_URL = "https://100000.miniapp.transsion.com/index.html";
    public static final String TMP_WARMUP_RENDER_ID_PREFIX = "warmup_render_id_";
    public static final String TMP_WARMUP_WORKER_ID_PREFIX = "warmup_worker_id_";
    public static final long TMP_WARMUP_WORKER_START_TOKEN = -1;
    public static final String VHOST_ENDFIX = ".miniapp.transsion.com";

    private FrameworkConstants() {
    }
}
