package com.cloud.tmc.integration.proxy;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.annotation.DefaultImpl;
import com.cloud.tmc.kernel.proxy.Proxiable;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@DefaultImpl("com.cloud.tmc.miniapp.defaultimpl.AnimtionProxyImpl")
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\bg\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J\b\u0010\u0005\u001a\u00020\u0003H&¨\u0006\u0006"}, d2 = {"Lcom/cloud/tmc/integration/proxy/AnimtionProxy;", "Lcom/cloud/tmc/kernel/proxy/Proxiable;", "enableAnimation", "", "enableLoadingAnimation", "isLowClient", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface AnimtionProxy extends Proxiable {
    boolean enableAnimation();

    boolean enableLoadingAnimation();

    boolean isLowClient();
}
