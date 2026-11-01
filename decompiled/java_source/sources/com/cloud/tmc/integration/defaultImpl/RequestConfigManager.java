package com.cloud.tmc.integration.defaultImpl;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.integration.model.RequestConfigBean;
import com.cloud.tmc.integration.proxy.IRequestConfigProxy;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.google.gson.Gson;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u0007\u001a\u00020\bH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/cloud/tmc/integration/defaultImpl/RequestConfigManager;", "Lcom/cloud/tmc/integration/proxy/IRequestConfigProxy;", "()V", "requestConfigBean", "Lcom/cloud/tmc/integration/model/RequestConfigBean;", "preLoadConfig", "", "repairIntToFloat", "", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class RequestConfigManager implements IRequestConfigProxy {
    private RequestConfigBean requestConfigBean;

    @Override // com.cloud.tmc.integration.proxy.IRequestConfigProxy
    public void preLoadConfig() {
        this.requestConfigBean = (RequestConfigBean) new Gson().fromJson(MiniAppConfigHelper.INSTANCE.getConfigTargetStr(LauncherMiniAppConfigHelper.KEY_REQUEST_CONFIG, MiniAppConfigHelper.DETAULT_REQUEST_CONFIG), RequestConfigBean.class);
    }

    @Override // com.cloud.tmc.integration.proxy.IRequestConfigProxy
    public boolean repairIntToFloat() {
        RequestConfigBean requestConfigBean = this.requestConfigBean;
        if (requestConfigBean != null) {
            return requestConfigBean.getRepairIntToFloat();
        }
        return true;
    }
}
