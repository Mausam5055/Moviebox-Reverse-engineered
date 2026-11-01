package com.cloud.tmc.offline.download.resource.processor;

import com.cloud.tmc.kernel.annotation.DefaultImpl;
import com.cloud.tmc.kernel.proxy.Proxiable;
import com.cloud.tmc.offline.download.resource.processor.intercept.IOfflineResourceIntercept;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@DefaultImpl("com.cloud.tmc.offline.download.resource.processor.OfflineResourceProcessorProxyImpl")
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/cloud/tmc/offline/download/resource/processor/IOfflineResourceProcessorProxy;", "Lcom/cloud/tmc/kernel/proxy/Proxiable;", "getResultWithInterceptorChain", "Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Result;", "params", "Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Params;", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface IOfflineResourceProcessorProxy extends Proxiable {
    IOfflineResourceIntercept.Result getResultWithInterceptorChain(IOfflineResourceIntercept.Params params);
}
