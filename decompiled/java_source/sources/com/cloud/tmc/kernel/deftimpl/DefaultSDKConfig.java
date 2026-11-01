package com.cloud.tmc.kernel.deftimpl;

import com.cloud.tmc.kernel.BuildConfig;
import com.cloud.tmc.kernel.intf.ISDKConfig;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, d2 = {"Lcom/cloud/tmc/kernel/deftimpl/DefaultSDKConfig;", "Lcom/cloud/tmc/kernel/intf/ISDKConfig;", "()V", "getAppVersion", "", "openShareTarget", "", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class DefaultSDKConfig implements ISDKConfig {
    @Override // com.cloud.tmc.kernel.intf.ISDKConfig
    public String getAppVersion() {
        return "";
    }

    @Override // com.cloud.tmc.kernel.intf.ISDKConfig
    public boolean openShareTarget() {
        return true;
    }
}
