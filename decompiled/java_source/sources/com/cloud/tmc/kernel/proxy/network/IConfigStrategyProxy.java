package com.cloud.tmc.kernel.proxy.network;

import android.content.Context;
import com.cloud.tmc.kernel.BuildConfig;
import com.cloud.tmc.kernel.annotation.DefaultImpl;
import com.cloud.tmc.kernel.proxy.Proxiable;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@DefaultImpl("com.cloud.tmc.miniapp.ConfigImpl")
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\bg\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H&J\b\u0010\b\u001a\u00020\u0007H&J\u0010\u0010\t\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0007H&J\b\u0010\f\u001a\u00020\u0007H&J\b\u0010\r\u001a\u00020\u0007H&J\b\u0010\u000e\u001a\u00020\u0007H&J\b\u0010\u000f\u001a\u00020\u0007H&J\b\u0010\u0010\u001a\u00020\u0007H&¨\u0006\u0011"}, d2 = {"Lcom/cloud/tmc/kernel/proxy/network/IConfigStrategyProxy;", "Lcom/cloud/tmc/kernel/proxy/Proxiable;", "checkAddHomeHost", "", "context", "Landroid/content/Context;", "packageName", "", "getAbilitiesCdnUrl", "getConfigKey", "getMiniAppVersion", "version", "getMyByteAppRecommendListCdnUrl", "getOfflineConfigDefaultValue", "getOfflineConfigKey", "getPreStrategyCdnUrl", "getPreStrategyConfigFilePath", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface IConfigStrategyProxy extends Proxiable {
    boolean checkAddHomeHost(Context context, String packageName);

    String getAbilitiesCdnUrl();

    String getConfigKey(Context context);

    String getMiniAppVersion(String version);

    String getMyByteAppRecommendListCdnUrl();

    String getOfflineConfigDefaultValue();

    String getOfflineConfigKey();

    String getPreStrategyCdnUrl();

    String getPreStrategyConfigFilePath();
}
