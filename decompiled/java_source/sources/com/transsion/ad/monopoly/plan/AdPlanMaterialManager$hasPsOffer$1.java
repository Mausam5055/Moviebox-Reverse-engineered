package com.transsion.ad.monopoly.plan;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.ad.monopoly.plan.AdPlanMaterialManager", f = "AdPlanMaterialManager.kt", l = {47}, m = "hasPsOffer")
final class AdPlanMaterialManager$hasPsOffer$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ AdPlanMaterialManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AdPlanMaterialManager$hasPsOffer$1(AdPlanMaterialManager adPlanMaterialManager, Continuation<? super AdPlanMaterialManager$hasPsOffer$1> continuation) {
        super(continuation);
        this.this$0 = adPlanMaterialManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.d(null, this);
    }
}
