package com.cloud.tmc.render.proxy;

import com.cloud.tmc.kernel.annotation.DefaultImpl;
import com.cloud.tmc.kernel.proxy.Proxiable;
import com.cloud.tmc.render.BuildConfig;
import com.cloud.tmc.render.bean.InjectStrategy;
import com.cloud.tmc.render.bean.JSConfig;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@DefaultImpl("com.cloud.tmc.integration.defaultImpl.InjectJSProxyImp")
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00032\u0006\u0010\u0006\u001a\u00020\u0004H&J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u0006\u001a\u00020\u0004H&¨\u0006\n"}, d2 = {"Lcom/cloud/tmc/render/proxy/InjectJSProxy;", "Lcom/cloud/tmc/kernel/proxy/Proxiable;", "getInjectStrategy", "", "", "Lcom/cloud/tmc/render/bean/InjectStrategy;", "appId", "getTartgetInjectJSData", "", "Lcom/cloud/tmc/render/bean/JSConfig;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface InjectJSProxy extends Proxiable {
    Map<String, InjectStrategy> getInjectStrategy(String appId);

    List<JSConfig> getTartgetInjectJSData(String appId);
}
