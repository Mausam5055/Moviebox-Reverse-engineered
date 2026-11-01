package com.transsion.member.promotion;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.member.promotion.PromotionManager", f = "PromotionManager.kt", l = {237}, m = "getLowestPricePromotionItem")
final class PromotionManager$getLowestPricePromotionItem$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ PromotionManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PromotionManager$getLowestPricePromotionItem$1(PromotionManager promotionManager, Continuation<? super PromotionManager$getLowestPricePromotionItem$1> continuation) {
        super(continuation);
        this.this$0 = promotionManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.n(null, this);
    }
}
