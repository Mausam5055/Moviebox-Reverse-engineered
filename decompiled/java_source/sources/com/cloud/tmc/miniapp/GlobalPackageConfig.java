package com.cloud.tmc.miniapp;

import android.app.Application;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.intf.IPackageConfig;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.kernel.utils.AppDynamicBuildConfig;
import com.cloud.tmc.launcherlib.LauncherFrameworkConstants;
import com.cloud.tmc.miniutils.util.Utils;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class GlobalPackageConfig implements IPackageConfig {
    private static final String BRAND_VERSION_PREFIX = "1";
    private static String appId;
    private static String frameworkVersion;
    public static final Companion Companion = new Companion(null);
    private static final String SDK_BRAND_VERSION = "1." + AppDynamicBuildConfig.getSDK_VERSION();
    private static final String SDK_DEV_VERSION = AppDynamicBuildConfig.getSDK_VERSION();
    private static final String SDK_BUILD_VARIANT_TYPE = AppDynamicBuildConfig.getSDK_BUILD_VARIANT_TYPE();

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String getAppId() {
            return GlobalPackageConfig.appId;
        }

        public final String getFrameworkVersion() {
            return GlobalPackageConfig.frameworkVersion;
        }

        public final String getSDK_BRAND_VERSION() {
            return GlobalPackageConfig.SDK_BRAND_VERSION;
        }

        public final String getSDK_BUILD_VARIANT_TYPE() {
            return GlobalPackageConfig.SDK_BUILD_VARIANT_TYPE;
        }

        public final String getSDK_DEV_VERSION() {
            return GlobalPackageConfig.SDK_DEV_VERSION;
        }

        public final void setAppId(String str) {
            GlobalPackageConfig.appId = str;
        }

        public final void setFrameworkVersion(String str) {
            GlobalPackageConfig.frameworkVersion = str;
        }
    }

    private final void saveValueForLauncher(String str, String str2) {
        try {
            KVStorageProxy kVStorageProxy = (KVStorageProxy) TmcProxy.get(KVStorageProxy.class);
            Application app = Utils.getApp();
            if (str2 == null) {
                str2 = "";
            }
            kVStorageProxy.putString(app, LauncherFrameworkConstants.LAUNCHER_GLOBAL_KEYS, str, str2);
        } catch (Throwable th2) {
            TmcLogger.e("[GlobalPackageConfig] saveValueForLauncher", th2);
        }
    }

    @Override // com.cloud.tmc.kernel.intf.IPackageConfig
    public String getAppId() {
        String str = appId;
        return str == null ? "" : str;
    }

    @Override // com.cloud.tmc.kernel.intf.IPackageConfig
    public String getDevSDKVersion() {
        return SDK_DEV_VERSION;
    }

    @Override // com.cloud.tmc.kernel.intf.IPackageConfig
    public String getFrameworkVersion() {
        return frameworkVersion;
    }

    @Override // com.cloud.tmc.kernel.intf.IPackageConfig
    public boolean getOpenMutipleTask() {
        try {
            return ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getBoolean(Utils.getApp(), LauncherFrameworkConstants.LAUNCHER_GLOBAL_KEYS, TmcConstants.MINI_MUTIPLE_TASK, true);
        } catch (Throwable th2) {
            TmcLogger.e("[GlobalPackageConfig] getMutipleTaskStatus", th2);
            return false;
        }
    }

    @Override // com.cloud.tmc.kernel.intf.IPackageConfig
    public String getSDKVersion() {
        return SDK_BRAND_VERSION;
    }

    @Override // com.cloud.tmc.kernel.intf.IPackageConfig
    public void setAppId(String id2) {
        Intrinsics.h(id2, "id");
        saveValueForLauncher(LauncherFrameworkConstants.KEY_MINI_HOST_APP_ID, id2);
        appId = id2;
    }

    @Override // com.cloud.tmc.kernel.intf.IPackageConfig
    public void setFrameworkVersion(String str) {
        saveValueForLauncher(LauncherFrameworkConstants.KEY_MINI_HOST_FW_VERSION, str);
        frameworkVersion = str;
    }

    @Override // com.cloud.tmc.kernel.intf.IPackageConfig
    public void setOpenMutipleTask(boolean z10) {
        try {
            ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putBoolean(Utils.getApp(), LauncherFrameworkConstants.LAUNCHER_GLOBAL_KEYS, TmcConstants.MINI_MUTIPLE_TASK, z10);
        } catch (Throwable th2) {
            TmcLogger.e("[GlobalPackageConfig] setOpenMutipleTask", th2);
        }
    }
}
