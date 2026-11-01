package com.cloud.tmc.integration.proxy;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.proxy.Proxiable;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\f\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003H&J\f\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0003H&J\f\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0003H&¨\u0006\u0006"}, d2 = {"Lcom/cloud/tmc/integration/proxy/IAdActivityGetProxy;", "Lcom/cloud/tmc/kernel/proxy/Proxiable;", "getAdFormActivity", "Ljava/lang/Class;", "getAdLandingPageActivity", "getAdPersonalizationActivity", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface IAdActivityGetProxy extends Proxiable {
    Class<?> getAdFormActivity();

    Class<?> getAdLandingPageActivity();

    Class<?> getAdPersonalizationActivity();
}
