package com.wecloud.load.lib;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.wecloud.load.lib.StProbeIntegration", f = "StProbeIntegration.kt", l = {373}, m = "probeAllFromStProbeAndReport")
final class StProbeIntegration$probeAllFromStProbeAndReport$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ StProbeIntegration this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    StProbeIntegration$probeAllFromStProbeAndReport$1(StProbeIntegration stProbeIntegration, Continuation<? super StProbeIntegration$probeAllFromStProbeAndReport$1> continuation) {
        super(continuation);
        this.this$0 = stProbeIntegration;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.j(false, 0, this);
    }
}
