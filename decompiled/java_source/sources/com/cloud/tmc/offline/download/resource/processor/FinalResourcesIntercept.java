package com.cloud.tmc.offline.download.resource.processor;

import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.offline.download.resource.processor.intercept.IOfflineResourceIntercept;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\b"}, d2 = {"Lcom/cloud/tmc/offline/download/resource/processor/FinalResourcesIntercept;", "Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept;", "()V", "intercept", "Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Result;", "chain", "Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Chain;", "Companion", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class FinalResourcesIntercept implements IOfflineResourceIntercept {
    private static final String TAG = "TmcOfflineDownload: FinalResourcesIntercept";

    @Override // com.cloud.tmc.offline.download.resource.processor.intercept.IOfflineResourceIntercept
    public IOfflineResourceIntercept.Result intercept(IOfflineResourceIntercept.Chain chain) {
        Intrinsics.h(chain, "chain");
        TmcLogger.i(TAG, "No found for resources: " + chain.getParams());
        return new IOfflineResourceIntercept.Result(null, 1, null);
    }
}
