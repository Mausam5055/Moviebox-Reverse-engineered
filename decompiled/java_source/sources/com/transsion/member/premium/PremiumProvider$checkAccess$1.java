package com.transsion.member.premium;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.member.premium.PremiumProvider", f = "PremiumProvider.kt", l = {268, 278}, m = "checkAccess")
final class PremiumProvider$checkAccess$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ PremiumProvider this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PremiumProvider$checkAccess$1(PremiumProvider premiumProvider, Continuation<? super PremiumProvider$checkAccess$1> continuation) {
        super(continuation);
        this.this$0 = premiumProvider;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.q(null, null, this);
    }
}
