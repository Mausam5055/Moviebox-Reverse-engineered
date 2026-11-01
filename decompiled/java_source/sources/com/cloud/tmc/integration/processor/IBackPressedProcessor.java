package com.cloud.tmc.integration.processor;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.processor.intercept.IBackPressedIntercept;
import com.cloud.tmc.kernel.proxy.Proxiable;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007H&J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH&¨\u0006\r"}, d2 = {"Lcom/cloud/tmc/integration/processor/IBackPressedProcessor;", "Lcom/cloud/tmc/kernel/proxy/Proxiable;", "addInterceptors", "", "intercept", "Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;", "getInterceptors", "", "removeInterceptors", "startBackPressedInterceptorChain", "Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;", "params", "Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface IBackPressedProcessor extends Proxiable {
    void addInterceptors(IBackPressedIntercept intercept);

    List<IBackPressedIntercept> getInterceptors();

    void removeInterceptors(IBackPressedIntercept intercept);

    IBackPressedIntercept.Result startBackPressedInterceptorChain(IBackPressedIntercept.Params params);
}
