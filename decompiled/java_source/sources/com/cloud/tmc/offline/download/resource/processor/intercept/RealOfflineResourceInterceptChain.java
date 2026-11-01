package com.cloud.tmc.offline.download.resource.processor.intercept;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B#\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\u001c\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bH\u0002J\b\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\bH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/cloud/tmc/offline/download/resource/processor/intercept/RealOfflineResourceInterceptChain;", "Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Chain;", "interceptors", "", "Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept;", "index", "", "params", "Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Params;", "(Ljava/util/List;ILcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Params;)V", "copy", "proceed", "Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Result;", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class RealOfflineResourceInterceptChain implements IOfflineResourceIntercept.Chain {
    private final int index;
    private final List<IOfflineResourceIntercept> interceptors;
    private final IOfflineResourceIntercept.Params params;

    /* JADX WARN: Multi-variable type inference failed */
    public RealOfflineResourceInterceptChain(List<? extends IOfflineResourceIntercept> interceptors, int i11, IOfflineResourceIntercept.Params params) {
        Intrinsics.h(interceptors, "interceptors");
        Intrinsics.h(params, "params");
        this.interceptors = interceptors;
        this.index = i11;
        this.params = params;
    }

    private final RealOfflineResourceInterceptChain copy(int index, IOfflineResourceIntercept.Params params) {
        return new RealOfflineResourceInterceptChain(this.interceptors, index, params);
    }

    static /* synthetic */ RealOfflineResourceInterceptChain copy$default(RealOfflineResourceInterceptChain realOfflineResourceInterceptChain, int i11, IOfflineResourceIntercept.Params params, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i11 = realOfflineResourceInterceptChain.index;
        }
        if ((i12 & 2) != 0) {
            params = realOfflineResourceInterceptChain.params;
        }
        return realOfflineResourceInterceptChain.copy(i11, params);
    }

    @Override // com.cloud.tmc.offline.download.resource.processor.intercept.IOfflineResourceIntercept.Chain
    /* JADX INFO: renamed from: params, reason: from getter */
    public IOfflineResourceIntercept.Params getParams() {
        return this.params;
    }

    @Override // com.cloud.tmc.offline.download.resource.processor.intercept.IOfflineResourceIntercept.Chain
    public IOfflineResourceIntercept.Result proceed(IOfflineResourceIntercept.Params params) {
        Intrinsics.h(params, "params");
        if (this.index >= this.interceptors.size()) {
            return new IOfflineResourceIntercept.Result(null, 1, null);
        }
        return this.interceptors.get(this.index).intercept(copy(this.index + 1, params));
    }
}
