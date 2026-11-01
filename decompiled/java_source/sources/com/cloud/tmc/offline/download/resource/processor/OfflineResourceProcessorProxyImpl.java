package com.cloud.tmc.offline.download.resource.processor;

import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.offline.download.resource.processor.intercept.IOfflineResourceIntercept;
import com.cloud.tmc.offline.download.resource.processor.intercept.RealOfflineResourceInterceptChain;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016¨\u0006\u000b"}, d2 = {"Lcom/cloud/tmc/offline/download/resource/processor/OfflineResourceProcessorProxyImpl;", "Lcom/cloud/tmc/offline/download/resource/processor/IOfflineResourceProcessorProxy;", "()V", "getInterceptors", "", "Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept;", "getResultWithInterceptorChain", "Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Result;", "params", "Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Params;", "Companion", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class OfflineResourceProcessorProxyImpl implements IOfflineResourceProcessorProxy {
    private static final String TAG = "TmcOfflineDownload: OfflineResourceProcessor";

    private final List<IOfflineResourceIntercept> getInterceptors() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new AhaSoFileFormatConvertResourcesIntercept());
        arrayList.add(new FileResourceIntercept());
        return arrayList;
    }

    @Override // com.cloud.tmc.offline.download.resource.processor.IOfflineResourceProcessorProxy
    public IOfflineResourceIntercept.Result getResultWithInterceptorChain(IOfflineResourceIntercept.Params params) {
        Intrinsics.h(params, "params");
        ArrayList arrayList = new ArrayList();
        CollectionsKt.B(arrayList, getInterceptors());
        arrayList.add(new FinalResourcesIntercept());
        try {
            return new RealOfflineResourceInterceptChain(arrayList, 0, params).proceed(params);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "Proceeding to offline resource", th2);
            return new IOfflineResourceIntercept.Result(null, 1, null);
        }
    }
}
