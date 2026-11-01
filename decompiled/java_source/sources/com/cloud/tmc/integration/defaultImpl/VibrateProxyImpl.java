package com.cloud.tmc.integration.defaultImpl;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.proxy.VibrateProxy;
import com.cloud.tmc.miniutils.util.VibrateUtils;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, d2 = {"Lcom/cloud/tmc/integration/defaultImpl/VibrateProxyImpl;", "Lcom/cloud/tmc/integration/proxy/VibrateProxy;", "()V", "vibration", "", EventConstants.KEY_TIME, "", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class VibrateProxyImpl implements VibrateProxy {
    @Override // com.cloud.tmc.integration.proxy.VibrateProxy
    public void vibration(long time) {
        VibrateUtils.vibrate(time);
    }
}
