package com.cloud.tmc.miniapp;

import android.content.Context;
import com.cloud.tmc.integration.utils.AppUtils;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.network.IConfigStrategyProxy;
import com.cloud.tmc.kernel.utils.AppDynamicBuildConfig;
import com.cloud.tmc.miniapp.utils.MiniAppLaunch;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class ConfigImpl implements IConfigStrategyProxy {
    private final String TAG = "ConfigImpl";

    @Override // com.cloud.tmc.kernel.proxy.network.IConfigStrategyProxy
    public boolean checkAddHomeHost(Context context, String str) {
        return Intrinsics.c(str, context != null ? context.getPackageName() : null);
    }

    @Override // com.cloud.tmc.kernel.proxy.network.IConfigStrategyProxy
    public String getAbilitiesCdnUrl() {
        return AppDynamicBuildConfig.getMINI_CDN_URL() + "SDK/AbilityConfig.json";
    }

    @Override // com.cloud.tmc.kernel.proxy.network.IConfigStrategyProxy
    public String getConfigKey(Context context) {
        Intrinsics.h(context, "context");
        String str = "config_" + AppUtils.INSTANCE.getConfigKey(context);
        TmcLogger.d(this.TAG, "getConfigKey: " + str);
        return str;
    }

    @Override // com.cloud.tmc.kernel.proxy.network.IConfigStrategyProxy
    public String getMiniAppVersion(String version) {
        Intrinsics.h(version, "version");
        return version;
    }

    @Override // com.cloud.tmc.kernel.proxy.network.IConfigStrategyProxy
    public String getMyByteAppRecommendListCdnUrl() {
        return AppDynamicBuildConfig.getMINI_CDN_URL() + "SDK/myByteAppRecommendListV2.json";
    }

    @Override // com.cloud.tmc.kernel.proxy.network.IConfigStrategyProxy
    public String getOfflineConfigDefaultValue() {
        return "{\"enable\":false,\"initLoad\":false,\"networkLoad\":false,\"ahaSoFormatConvert\":false,\"checkVersion\":false,\"enablePrefetchCdnAppInfo\":false,\"forceRefreshPrefetchCdnAppInfo\":false}";
    }

    @Override // com.cloud.tmc.kernel.proxy.network.IConfigStrategyProxy
    public String getOfflineConfigKey() {
        return "offlineDownload_OnlineV2";
    }

    @Override // com.cloud.tmc.kernel.proxy.network.IConfigStrategyProxy
    public String getPreStrategyCdnUrl() {
        return MiniAppLaunch.INSTANCE.getConfigCdnUrl(AppDynamicBuildConfig.getMINI_CDN_URL() + "SDK/preStrategyConfig.json");
    }

    @Override // com.cloud.tmc.kernel.proxy.network.IConfigStrategyProxy
    public String getPreStrategyConfigFilePath() {
        return "preStrategyConfig.json";
    }

    public final String getTAG() {
        return this.TAG;
    }
}
