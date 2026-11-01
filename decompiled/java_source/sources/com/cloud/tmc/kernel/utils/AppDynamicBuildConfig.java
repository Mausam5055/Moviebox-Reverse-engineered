package com.cloud.tmc.kernel.utils;

import android.app.Application;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.cloud.tmc.kernel.BuildConfig;
import com.cloud.tmc.kernel.constants.SdkBuildVariantType;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.network.IChangeUrlProxy;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.miniutils.util.Utils;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b!\n\u0002\u0010\u000b\n\u0002\b:\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010n\u001a\u0004\u0018\u00010\u00012\u0006\u0010o\u001a\u00020\u0004H\u0002R!\u0010\u0003\u001a\u00020\u00048FX\u0087\u0084\u0002¢\u0006\u0012\n\u0004\b\b\u0010\t\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007R!\u0010\n\u001a\u00020\u00048FX\u0087\u0084\u0002¢\u0006\u0012\n\u0004\b\r\u0010\t\u0012\u0004\b\u000b\u0010\u0002\u001a\u0004\b\f\u0010\u0007R!\u0010\u000e\u001a\u00020\u00048FX\u0087\u0084\u0002¢\u0006\u0012\n\u0004\b\u0011\u0010\t\u0012\u0004\b\u000f\u0010\u0002\u001a\u0004\b\u0010\u0010\u0007R\u001c\u0010\u0012\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0013\u0010\u0002\u001a\u0004\b\u0014\u0010\u0007R!\u0010\u0015\u001a\u00020\u00048FX\u0087\u0084\u0002¢\u0006\u0012\n\u0004\b\u0018\u0010\t\u0012\u0004\b\u0016\u0010\u0002\u001a\u0004\b\u0017\u0010\u0007R!\u0010\u0019\u001a\u00020\u00048FX\u0087\u0084\u0002¢\u0006\u0012\n\u0004\b\u001c\u0010\t\u0012\u0004\b\u001a\u0010\u0002\u001a\u0004\b\u001b\u0010\u0007R!\u0010\u001d\u001a\u00020\u00048FX\u0087\u0084\u0002¢\u0006\u0012\n\u0004\b \u0010\t\u0012\u0004\b\u001e\u0010\u0002\u001a\u0004\b\u001f\u0010\u0007R!\u0010!\u001a\u00020\u00048FX\u0087\u0084\u0002¢\u0006\u0012\n\u0004\b$\u0010\t\u0012\u0004\b\"\u0010\u0002\u001a\u0004\b#\u0010\u0007R!\u0010%\u001a\u00020&8FX\u0087\u0084\u0002¢\u0006\u0012\n\u0004\b*\u0010\t\u0012\u0004\b'\u0010\u0002\u001a\u0004\b(\u0010)R\u001c\u0010+\u001a\u00020&8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b,\u0010\u0002\u001a\u0004\b-\u0010)R!\u0010.\u001a\u00020&8FX\u0087\u0084\u0002¢\u0006\u0012\n\u0004\b1\u0010\t\u0012\u0004\b/\u0010\u0002\u001a\u0004\b0\u0010)R!\u00102\u001a\u00020\u00048FX\u0087\u0084\u0002¢\u0006\u0012\n\u0004\b5\u0010\t\u0012\u0004\b3\u0010\u0002\u001a\u0004\b4\u0010\u0007R!\u00106\u001a\u00020\u00048FX\u0087\u0084\u0002¢\u0006\u0012\n\u0004\b9\u0010\t\u0012\u0004\b7\u0010\u0002\u001a\u0004\b8\u0010\u0007R!\u0010:\u001a\u00020\u00048FX\u0087\u0084\u0002¢\u0006\u0012\n\u0004\b=\u0010\t\u0012\u0004\b;\u0010\u0002\u001a\u0004\b<\u0010\u0007R!\u0010>\u001a\u00020\u00048FX\u0087\u0084\u0002¢\u0006\u0012\n\u0004\bA\u0010\t\u0012\u0004\b?\u0010\u0002\u001a\u0004\b@\u0010\u0007R!\u0010B\u001a\u00020\u00048FX\u0087\u0084\u0002¢\u0006\u0012\n\u0004\bE\u0010\t\u0012\u0004\bC\u0010\u0002\u001a\u0004\bD\u0010\u0007R!\u0010F\u001a\u00020\u00048FX\u0087\u0084\u0002¢\u0006\u0012\n\u0004\bI\u0010\t\u0012\u0004\bG\u0010\u0002\u001a\u0004\bH\u0010\u0007R!\u0010J\u001a\u00020\u00048FX\u0087\u0084\u0002¢\u0006\u0012\n\u0004\bM\u0010\t\u0012\u0004\bK\u0010\u0002\u001a\u0004\bL\u0010\u0007R\u001c\u0010N\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bO\u0010\u0002\u001a\u0004\bP\u0010\u0007R!\u0010Q\u001a\u00020\u00048FX\u0087\u0084\u0002¢\u0006\u0012\n\u0004\bT\u0010\t\u0012\u0004\bR\u0010\u0002\u001a\u0004\bS\u0010\u0007R!\u0010U\u001a\u00020\u00048FX\u0087\u0084\u0002¢\u0006\u0012\n\u0004\bX\u0010\t\u0012\u0004\bV\u0010\u0002\u001a\u0004\bW\u0010\u0007R\u000e\u0010Y\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u001c\u0010Z\u001a\u00020&8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b[\u0010\u0002\u001a\u0004\b\\\u0010)R\u001c\u0010]\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b^\u0010\u0002\u001a\u0004\b_\u0010\u0007R\u0016\u0010`\u001a\u0004\u0018\u00010a8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bb\u0010cR\u001c\u0010d\u001a\u00020&8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\be\u0010\u0002\u001a\u0004\bd\u0010)R\u001c\u0010f\u001a\u00020&8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bg\u0010\u0002\u001a\u0004\bh\u0010)R\u0010\u0010i\u001a\u0004\u0018\u00010jX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010k\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bl\u0010\u0002\u001a\u0004\bm\u0010\u0007¨\u0006p"}, d2 = {"Lcom/cloud/tmc/kernel/utils/AppDynamicBuildConfig;", "", "()V", "BASE_LOGIN_API_HOST", "", "getBASE_LOGIN_API_HOST$annotations", "getBASE_LOGIN_API_HOST", "()Ljava/lang/String;", "BASE_LOGIN_API_HOST$delegate", "Lkotlin/Lazy;", "BASE_LOGIN_API_URL", "getBASE_LOGIN_API_URL$annotations", "getBASE_LOGIN_API_URL", "BASE_LOGIN_API_URL$delegate", "BASE_OSS_URL", "getBASE_OSS_URL$annotations", "getBASE_OSS_URL", "BASE_OSS_URL$delegate", "BASE_SUBMIT_FORM", "getBASE_SUBMIT_FORM$annotations", "getBASE_SUBMIT_FORM", "BASE_UPLOAD_URL", "getBASE_UPLOAD_URL$annotations", "getBASE_UPLOAD_URL", "BASE_UPLOAD_URL$delegate", "BASE_V8_URL", "getBASE_V8_URL$annotations", "getBASE_V8_URL", "BASE_V8_URL$delegate", "CONFIG_BASE_API_HOST", "getCONFIG_BASE_API_HOST$annotations", "getCONFIG_BASE_API_HOST", "CONFIG_BASE_API_HOST$delegate", "CONFIG_BASE_URL", "getCONFIG_BASE_URL$annotations", "getCONFIG_BASE_URL", "CONFIG_BASE_URL$delegate", "CONFIG_DEV_MODE", "", "getCONFIG_DEV_MODE$annotations", "getCONFIG_DEV_MODE", "()Z", "CONFIG_DEV_MODE$delegate", "DEV", "getDEV$annotations", "getDEV", "DEV_MODE", "getDEV_MODE$annotations", "getDEV_MODE", "DEV_MODE$delegate", "MINI_API_WORK_MODE", "getMINI_API_WORK_MODE$annotations", "getMINI_API_WORK_MODE", "MINI_API_WORK_MODE$delegate", "MINI_APPINFO_CDN_URL", "getMINI_APPINFO_CDN_URL$annotations", "getMINI_APPINFO_CDN_URL", "MINI_APPINFO_CDN_URL$delegate", "MINI_APP_BASE_URL", "getMINI_APP_BASE_URL$annotations", "getMINI_APP_BASE_URL", "MINI_APP_BASE_URL$delegate", "MINI_APP_HOST_URL", "getMINI_APP_HOST_URL$annotations", "getMINI_APP_HOST_URL", "MINI_APP_HOST_URL$delegate", "MINI_APP_STATIC_URL", "getMINI_APP_STATIC_URL$annotations", "getMINI_APP_STATIC_URL", "MINI_APP_STATIC_URL$delegate", "MINI_CDN_URL", "getMINI_CDN_URL$annotations", "getMINI_CDN_URL", "MINI_CDN_URL$delegate", "OFFLINE_DOWNLOAD_MODE", "getOFFLINE_DOWNLOAD_MODE$annotations", "getOFFLINE_DOWNLOAD_MODE", "OFFLINE_DOWNLOAD_MODE$delegate", "SDK_BUILD_VARIANT_TYPE", "getSDK_BUILD_VARIANT_TYPE$annotations", "getSDK_BUILD_VARIANT_TYPE", "SDK_VERSION", "getSDK_VERSION$annotations", "getSDK_VERSION", "SDK_VERSION$delegate", "SDK_VERSION_NUM", "getSDK_VERSION_NUM$annotations", "getSDK_VERSION_NUM", "SDK_VERSION_NUM$delegate", "TAG", "TCTP", "getTCTP$annotations", "getTCTP", "WORKER_TYPE", "getWORKER_TYPE$annotations", "getWORKER_TYPE", "applicationContext", "Landroid/app/Application;", "getApplicationContext", "()Landroid/app/Application;", "isAppDebugAble", "isAppDebugAble$annotations", LauncherMiniAppConfigHelper.KEY_LAYER_HARDWARE, "getLayerHardware$annotations", "getLayerHardware", "metaData", "Landroid/os/Bundle;", "miniProcess", "getMiniProcess$annotations", "getMiniProcess", "getConfigValue", "key", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class AppDynamicBuildConfig {

    /* JADX INFO: renamed from: BASE_LOGIN_API_HOST$delegate, reason: from kotlin metadata */
    private static final Lazy BASE_LOGIN_API_HOST;

    /* JADX INFO: renamed from: BASE_LOGIN_API_URL$delegate, reason: from kotlin metadata */
    private static final Lazy BASE_LOGIN_API_URL;

    /* JADX INFO: renamed from: BASE_OSS_URL$delegate, reason: from kotlin metadata */
    private static final Lazy BASE_OSS_URL;
    private static final String BASE_SUBMIT_FORM;

    /* JADX INFO: renamed from: BASE_UPLOAD_URL$delegate, reason: from kotlin metadata */
    private static final Lazy BASE_UPLOAD_URL;

    /* JADX INFO: renamed from: BASE_V8_URL$delegate, reason: from kotlin metadata */
    private static final Lazy BASE_V8_URL;

    /* JADX INFO: renamed from: CONFIG_BASE_API_HOST$delegate, reason: from kotlin metadata */
    private static final Lazy CONFIG_BASE_API_HOST;

    /* JADX INFO: renamed from: CONFIG_BASE_URL$delegate, reason: from kotlin metadata */
    private static final Lazy CONFIG_BASE_URL;

    /* JADX INFO: renamed from: CONFIG_DEV_MODE$delegate, reason: from kotlin metadata */
    private static final Lazy CONFIG_DEV_MODE;
    private static final boolean DEV;

    /* JADX INFO: renamed from: DEV_MODE$delegate, reason: from kotlin metadata */
    private static final Lazy DEV_MODE;
    public static final AppDynamicBuildConfig INSTANCE;

    /* JADX INFO: renamed from: MINI_API_WORK_MODE$delegate, reason: from kotlin metadata */
    private static final Lazy MINI_API_WORK_MODE;

    /* JADX INFO: renamed from: MINI_APPINFO_CDN_URL$delegate, reason: from kotlin metadata */
    private static final Lazy MINI_APPINFO_CDN_URL;

    /* JADX INFO: renamed from: MINI_APP_BASE_URL$delegate, reason: from kotlin metadata */
    private static final Lazy MINI_APP_BASE_URL;

    /* JADX INFO: renamed from: MINI_APP_HOST_URL$delegate, reason: from kotlin metadata */
    private static final Lazy MINI_APP_HOST_URL;

    /* JADX INFO: renamed from: MINI_APP_STATIC_URL$delegate, reason: from kotlin metadata */
    private static final Lazy MINI_APP_STATIC_URL;

    /* JADX INFO: renamed from: MINI_CDN_URL$delegate, reason: from kotlin metadata */
    private static final Lazy MINI_CDN_URL;

    /* JADX INFO: renamed from: OFFLINE_DOWNLOAD_MODE$delegate, reason: from kotlin metadata */
    private static final Lazy OFFLINE_DOWNLOAD_MODE;
    private static final String SDK_BUILD_VARIANT_TYPE;

    /* JADX INFO: renamed from: SDK_VERSION$delegate, reason: from kotlin metadata */
    private static final Lazy SDK_VERSION;

    /* JADX INFO: renamed from: SDK_VERSION_NUM$delegate, reason: from kotlin metadata */
    private static final Lazy SDK_VERSION_NUM;
    public static final String TAG = "TmcKernel:AppDynamicBuildConfig";
    private static final boolean TCTP;
    private static final String WORKER_TYPE;
    private static final boolean isAppDebugAble;
    private static final boolean layerHardware;
    private static Bundle metaData;
    private static final String miniProcess;

    static {
        ApplicationInfo applicationInfo;
        ApplicationInfo applicationInfo2;
        AppDynamicBuildConfig appDynamicBuildConfig = new AppDynamicBuildConfig();
        INSTANCE = appDynamicBuildConfig;
        try {
            Application applicationContext = appDynamicBuildConfig.getApplicationContext();
            if (applicationContext != null) {
                PackageManager packageManager = applicationContext.getPackageManager();
                metaData = (packageManager == null || (applicationInfo2 = packageManager.getApplicationInfo(applicationContext.getPackageName(), 128)) == null) ? null : applicationInfo2.metaData;
            }
        } catch (Throwable th2) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("not found ");
            Application applicationContext2 = INSTANCE.getApplicationContext();
            sb2.append(applicationContext2 != null ? applicationContext2.getPackageName() : null);
            TmcLogger.e(TAG, sb2.toString(), th2);
        }
        Application applicationContext3 = INSTANCE.getApplicationContext();
        isAppDebugAble = !((applicationContext3 == null || (applicationInfo = applicationContext3.getApplicationInfo()) == null || (applicationInfo.flags & 2) != 0) ? false : true);
        Bundle bundle = metaData;
        Object obj = bundle != null ? bundle.get("miniProcess") : null;
        String str = obj instanceof String ? (String) obj : null;
        if (str == null) {
            str = ":mini";
        }
        miniProcess = str;
        Bundle bundle2 = metaData;
        Object obj2 = bundle2 != null ? bundle2.get(LauncherMiniAppConfigHelper.KEY_LAYER_HARDWARE) : null;
        Boolean bool = obj2 instanceof Boolean ? (Boolean) obj2 : null;
        layerHardware = bool != null ? bool.booleanValue() : false;
        Bundle bundle3 = metaData;
        Object obj3 = bundle3 != null ? bundle3.get("WORKER_TYPE") : null;
        String str2 = obj3 instanceof String ? (String) obj3 : null;
        if (str2 == null) {
            str2 = "webview";
        }
        WORKER_TYPE = str2;
        Bundle bundle4 = metaData;
        Object obj4 = bundle4 != null ? bundle4.get("DEV") : null;
        Boolean bool2 = obj4 instanceof Boolean ? (Boolean) obj4 : null;
        DEV = bool2 != null ? bool2.booleanValue() : false;
        Bundle bundle5 = metaData;
        Object obj5 = bundle5 != null ? bundle5.get("TCTP") : null;
        Boolean bool3 = obj5 instanceof Boolean ? (Boolean) obj5 : null;
        TCTP = bool3 != null ? bool3.booleanValue() : false;
        Bundle bundle6 = metaData;
        Object obj6 = bundle6 != null ? bundle6.get("SDK_BUILD_VARIANT_TYPE") : null;
        String type = obj6 instanceof String ? (String) obj6 : null;
        if (type == null) {
            type = SdkBuildVariantType.ONLINE.getType();
        }
        SDK_BUILD_VARIANT_TYPE = type;
        CONFIG_BASE_API_HOST = LazyKt.b(new Function0<String>() { // from class: com.cloud.tmc.kernel.utils.AppDynamicBuildConfig$CONFIG_BASE_API_HOST$2
            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                Object configValue = AppDynamicBuildConfig.INSTANCE.getConfigValue("MINI_CONFIG_BASE_API_HOST");
                String str3 = configValue instanceof String ? (String) configValue : null;
                return str3 == null ? "" : str3;
            }
        });
        CONFIG_BASE_URL = LazyKt.b(new Function0<String>() { // from class: com.cloud.tmc.kernel.utils.AppDynamicBuildConfig$CONFIG_BASE_URL$2
            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                Object configValue = AppDynamicBuildConfig.INSTANCE.getConfigValue("MINI_CONFIG_BASE_URL");
                String str3 = configValue instanceof String ? (String) configValue : null;
                return str3 == null ? "" : str3;
            }
        });
        MINI_APP_BASE_URL = LazyKt.b(new Function0<String>() { // from class: com.cloud.tmc.kernel.utils.AppDynamicBuildConfig$MINI_APP_BASE_URL$2
            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                Object configValue = AppDynamicBuildConfig.INSTANCE.getConfigValue("MINI_APP_BASE_URL");
                String str3 = configValue instanceof String ? (String) configValue : null;
                return str3 == null ? "" : str3;
            }
        });
        MINI_APP_HOST_URL = LazyKt.b(new Function0<String>() { // from class: com.cloud.tmc.kernel.utils.AppDynamicBuildConfig$MINI_APP_HOST_URL$2
            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                Object configValue = AppDynamicBuildConfig.INSTANCE.getConfigValue("MINI_APP_HOST_URL");
                String str3 = configValue instanceof String ? (String) configValue : null;
                return str3 == null ? "" : str3;
            }
        });
        BASE_V8_URL = LazyKt.b(new Function0<String>() { // from class: com.cloud.tmc.kernel.utils.AppDynamicBuildConfig$BASE_V8_URL$2
            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                Object configValue = AppDynamicBuildConfig.INSTANCE.getConfigValue("MINI_BASE_V8_URL");
                String str3 = configValue instanceof String ? (String) configValue : null;
                return str3 == null ? "" : str3;
            }
        });
        BASE_LOGIN_API_HOST = LazyKt.b(new Function0<String>() { // from class: com.cloud.tmc.kernel.utils.AppDynamicBuildConfig$BASE_LOGIN_API_HOST$2
            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                Object configValue = AppDynamicBuildConfig.INSTANCE.getConfigValue("MINI_BASE_LOGIN_API_HOST");
                String str3 = configValue instanceof String ? (String) configValue : null;
                return str3 == null ? "" : str3;
            }
        });
        BASE_LOGIN_API_URL = LazyKt.b(new Function0<String>() { // from class: com.cloud.tmc.kernel.utils.AppDynamicBuildConfig$BASE_LOGIN_API_URL$2
            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                Object configValue = AppDynamicBuildConfig.INSTANCE.getConfigValue("MINI_BASE_LOGIN_API_URL");
                String str3 = configValue instanceof String ? (String) configValue : null;
                return str3 == null ? "" : str3;
            }
        });
        BASE_UPLOAD_URL = LazyKt.b(new Function0<String>() { // from class: com.cloud.tmc.kernel.utils.AppDynamicBuildConfig$BASE_UPLOAD_URL$2
            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                Object configValue = AppDynamicBuildConfig.INSTANCE.getConfigValue("MINI_BASE_UPLOAD_URL");
                String str3 = configValue instanceof String ? (String) configValue : null;
                return str3 == null ? "" : str3;
            }
        });
        BASE_OSS_URL = LazyKt.b(new Function0<String>() { // from class: com.cloud.tmc.kernel.utils.AppDynamicBuildConfig$BASE_OSS_URL$2
            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                Object configValue = AppDynamicBuildConfig.INSTANCE.getConfigValue("MINI_BASE_OSS_URL");
                String str3 = configValue instanceof String ? (String) configValue : null;
                return str3 == null ? "" : str3;
            }
        });
        MINI_CDN_URL = LazyKt.b(new Function0<String>() { // from class: com.cloud.tmc.kernel.utils.AppDynamicBuildConfig$MINI_CDN_URL$2
            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                Object configValue = AppDynamicBuildConfig.INSTANCE.getConfigValue("MINI_CDN_URL");
                String str3 = configValue instanceof String ? (String) configValue : null;
                return str3 == null ? "" : str3;
            }
        });
        Bundle bundle7 = metaData;
        Object obj7 = bundle7 != null ? bundle7.get("AD_SUBMIT_FORM") : null;
        String str3 = obj7 instanceof String ? (String) obj7 : null;
        if (str3 == null) {
            str3 = "";
        }
        BASE_SUBMIT_FORM = str3;
        DEV_MODE = LazyKt.b(new Function0<Boolean>() { // from class: com.cloud.tmc.kernel.utils.AppDynamicBuildConfig$DEV_MODE$2
            @Override // kotlin.jvm.functions.Function0
            public final Boolean invoke() {
                Object configValue = AppDynamicBuildConfig.INSTANCE.getConfigValue("DEV_MODE");
                Boolean bool4 = configValue instanceof Boolean ? (Boolean) configValue : null;
                return Boolean.valueOf(bool4 != null ? bool4.booleanValue() : false);
            }
        });
        MINI_API_WORK_MODE = LazyKt.b(new Function0<String>() { // from class: com.cloud.tmc.kernel.utils.AppDynamicBuildConfig$MINI_API_WORK_MODE$2
            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                Object configValue = AppDynamicBuildConfig.INSTANCE.getConfigValue("MINI_API_WORK_MODE");
                String str4 = configValue instanceof String ? (String) configValue : null;
                return str4 == null ? "" : str4;
            }
        });
        SDK_VERSION = LazyKt.b(new Function0<String>() { // from class: com.cloud.tmc.kernel.utils.AppDynamicBuildConfig$SDK_VERSION$2
            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                Object configValue = AppDynamicBuildConfig.INSTANCE.getConfigValue("SDK_VERSION");
                String str4 = configValue instanceof String ? (String) configValue : null;
                return str4 == null ? BuildConfig.SDK_VERSION : str4;
            }
        });
        MINI_APP_STATIC_URL = LazyKt.b(new Function0<String>() { // from class: com.cloud.tmc.kernel.utils.AppDynamicBuildConfig$MINI_APP_STATIC_URL$2
            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                Object configValue = AppDynamicBuildConfig.INSTANCE.getConfigValue("MINI_APP_STATIC_URL");
                String str4 = configValue instanceof String ? (String) configValue : null;
                return str4 == null ? "" : str4;
            }
        });
        OFFLINE_DOWNLOAD_MODE = LazyKt.b(new Function0<String>() { // from class: com.cloud.tmc.kernel.utils.AppDynamicBuildConfig$OFFLINE_DOWNLOAD_MODE$2
            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                Object configValue = AppDynamicBuildConfig.INSTANCE.getConfigValue("OFFLINE_DOWNLOAD_MODE");
                String str4 = configValue instanceof String ? (String) configValue : null;
                return str4 == null ? "online" : str4;
            }
        });
        MINI_APPINFO_CDN_URL = LazyKt.b(new Function0<String>() { // from class: com.cloud.tmc.kernel.utils.AppDynamicBuildConfig$MINI_APPINFO_CDN_URL$2
            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                Object configValue = AppDynamicBuildConfig.INSTANCE.getConfigValue("MINI_APPINFO_CDN_URL");
                String str4 = configValue instanceof String ? (String) configValue : null;
                return str4 == null ? BuildConfig.SDK_VERSION : str4;
            }
        });
        CONFIG_DEV_MODE = LazyKt.b(new Function0<Boolean>() { // from class: com.cloud.tmc.kernel.utils.AppDynamicBuildConfig$CONFIG_DEV_MODE$2
            @Override // kotlin.jvm.functions.Function0
            public final Boolean invoke() {
                Object configValue = AppDynamicBuildConfig.INSTANCE.getConfigValue("CONFIG_DEV_MODE");
                Boolean bool4 = configValue instanceof Boolean ? (Boolean) configValue : null;
                return Boolean.valueOf(bool4 != null ? bool4.booleanValue() : false);
            }
        });
        SDK_VERSION_NUM = LazyKt.b(new Function0<String>() { // from class: com.cloud.tmc.kernel.utils.AppDynamicBuildConfig$SDK_VERSION_NUM$2
            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                return BuildConfig.MINI_SDK_VERSION_NUM;
            }
        });
    }

    private AppDynamicBuildConfig() {
    }

    private final Application getApplicationContext() {
        try {
            return Utils.getApp();
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            return null;
        }
    }

    public static final String getBASE_LOGIN_API_HOST() {
        return (String) BASE_LOGIN_API_HOST.getValue();
    }

    @JvmStatic
    public static /* synthetic */ void getBASE_LOGIN_API_HOST$annotations() {
    }

    public static final String getBASE_LOGIN_API_URL() {
        return (String) BASE_LOGIN_API_URL.getValue();
    }

    @JvmStatic
    public static /* synthetic */ void getBASE_LOGIN_API_URL$annotations() {
    }

    public static final String getBASE_OSS_URL() {
        return (String) BASE_OSS_URL.getValue();
    }

    @JvmStatic
    public static /* synthetic */ void getBASE_OSS_URL$annotations() {
    }

    public static final String getBASE_SUBMIT_FORM() {
        return BASE_SUBMIT_FORM;
    }

    @JvmStatic
    public static /* synthetic */ void getBASE_SUBMIT_FORM$annotations() {
    }

    public static final String getBASE_UPLOAD_URL() {
        return (String) BASE_UPLOAD_URL.getValue();
    }

    @JvmStatic
    public static /* synthetic */ void getBASE_UPLOAD_URL$annotations() {
    }

    public static final String getBASE_V8_URL() {
        return (String) BASE_V8_URL.getValue();
    }

    @JvmStatic
    public static /* synthetic */ void getBASE_V8_URL$annotations() {
    }

    public static final String getCONFIG_BASE_API_HOST() {
        return (String) CONFIG_BASE_API_HOST.getValue();
    }

    @JvmStatic
    public static /* synthetic */ void getCONFIG_BASE_API_HOST$annotations() {
    }

    public static final String getCONFIG_BASE_URL() {
        return (String) CONFIG_BASE_URL.getValue();
    }

    @JvmStatic
    public static /* synthetic */ void getCONFIG_BASE_URL$annotations() {
    }

    public static final boolean getCONFIG_DEV_MODE() {
        return ((Boolean) CONFIG_DEV_MODE.getValue()).booleanValue();
    }

    @JvmStatic
    public static /* synthetic */ void getCONFIG_DEV_MODE$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object getConfigValue(String key) {
        return ((IChangeUrlProxy) TmcProxy.get(IChangeUrlProxy.class)).getConfigValue(metaData, key);
    }

    public static final boolean getDEV() {
        return DEV;
    }

    @JvmStatic
    public static /* synthetic */ void getDEV$annotations() {
    }

    public static final boolean getDEV_MODE() {
        return ((Boolean) DEV_MODE.getValue()).booleanValue();
    }

    @JvmStatic
    public static /* synthetic */ void getDEV_MODE$annotations() {
    }

    public static final boolean getLayerHardware() {
        return layerHardware;
    }

    @JvmStatic
    public static /* synthetic */ void getLayerHardware$annotations() {
    }

    public static final String getMINI_API_WORK_MODE() {
        return (String) MINI_API_WORK_MODE.getValue();
    }

    @JvmStatic
    public static /* synthetic */ void getMINI_API_WORK_MODE$annotations() {
    }

    public static final String getMINI_APPINFO_CDN_URL() {
        return (String) MINI_APPINFO_CDN_URL.getValue();
    }

    @JvmStatic
    public static /* synthetic */ void getMINI_APPINFO_CDN_URL$annotations() {
    }

    public static final String getMINI_APP_BASE_URL() {
        return (String) MINI_APP_BASE_URL.getValue();
    }

    @JvmStatic
    public static /* synthetic */ void getMINI_APP_BASE_URL$annotations() {
    }

    public static final String getMINI_APP_HOST_URL() {
        return (String) MINI_APP_HOST_URL.getValue();
    }

    @JvmStatic
    public static /* synthetic */ void getMINI_APP_HOST_URL$annotations() {
    }

    public static final String getMINI_APP_STATIC_URL() {
        return (String) MINI_APP_STATIC_URL.getValue();
    }

    @JvmStatic
    public static /* synthetic */ void getMINI_APP_STATIC_URL$annotations() {
    }

    public static final String getMINI_CDN_URL() {
        return (String) MINI_CDN_URL.getValue();
    }

    @JvmStatic
    public static /* synthetic */ void getMINI_CDN_URL$annotations() {
    }

    public static final String getMiniProcess() {
        return miniProcess;
    }

    @JvmStatic
    public static /* synthetic */ void getMiniProcess$annotations() {
    }

    public static final String getOFFLINE_DOWNLOAD_MODE() {
        return (String) OFFLINE_DOWNLOAD_MODE.getValue();
    }

    @JvmStatic
    public static /* synthetic */ void getOFFLINE_DOWNLOAD_MODE$annotations() {
    }

    public static final String getSDK_BUILD_VARIANT_TYPE() {
        return SDK_BUILD_VARIANT_TYPE;
    }

    @JvmStatic
    public static /* synthetic */ void getSDK_BUILD_VARIANT_TYPE$annotations() {
    }

    public static final String getSDK_VERSION() {
        return (String) SDK_VERSION.getValue();
    }

    @JvmStatic
    public static /* synthetic */ void getSDK_VERSION$annotations() {
    }

    public static final String getSDK_VERSION_NUM() {
        return (String) SDK_VERSION_NUM.getValue();
    }

    @JvmStatic
    public static /* synthetic */ void getSDK_VERSION_NUM$annotations() {
    }

    public static final boolean getTCTP() {
        return TCTP;
    }

    @JvmStatic
    public static /* synthetic */ void getTCTP$annotations() {
    }

    public static final String getWORKER_TYPE() {
        return WORKER_TYPE;
    }

    @JvmStatic
    public static /* synthetic */ void getWORKER_TYPE$annotations() {
    }

    public static final boolean isAppDebugAble() {
        return isAppDebugAble;
    }

    @JvmStatic
    public static /* synthetic */ void isAppDebugAble$annotations() {
    }
}
