package com.cloud.tmc.integration.defaultImpl;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.integration.model.AdsenseBean;
import com.cloud.tmc.integration.proxy.IAdsenseProxy;
import com.google.gson.Gson;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016¨\u0006\u0005"}, d2 = {"Lcom/cloud/tmc/integration/defaultImpl/AdsenseManager;", "Lcom/cloud/tmc/integration/proxy/IAdsenseProxy;", "()V", "adsenseEnable", "", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class AdsenseManager implements IAdsenseProxy {
    @Override // com.cloud.tmc.integration.proxy.IAdsenseProxy
    public boolean adsenseEnable() {
        try {
            return ((AdsenseBean) new Gson().fromJson(MiniAppConfigHelper.INSTANCE.getConfigTargetStr("enableAdsense", MiniAppConfigHelper.DETAULT_ENABLE_ADSENSE), AdsenseBean.class)).getOpen();
        } catch (Throwable unused) {
            return true;
        }
    }
}
