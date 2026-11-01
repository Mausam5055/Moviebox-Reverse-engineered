package com.transsion.ad.strategy;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.ad.strategy.NationalInformationManager", f = "NationalInformationManager.kt", l = {105}, m = "getNationalInformation")
final class NationalInformationManager$getNationalInformation$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ NationalInformationManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    NationalInformationManager$getNationalInformation$1(NationalInformationManager nationalInformationManager, Continuation<? super NationalInformationManager$getNationalInformation$1> continuation) {
        super(continuation);
        this.this$0 = nationalInformationManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.g(null, this);
    }
}
