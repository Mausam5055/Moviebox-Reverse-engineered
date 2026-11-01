package com.transsion.ad.bidding.interstitial;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.ad.bidding.interstitial.BiddingH5InterstitialProvider$Companion", f = "BiddingH5InterstitialProvider.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE, Sdk$SDKMetric.SDKMetricType.INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE, 74}, m = "preloadWebview")
final class BiddingH5InterstitialProvider$Companion$preloadWebview$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ BiddingH5InterstitialProvider.Companion this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BiddingH5InterstitialProvider$Companion$preloadWebview$1(BiddingH5InterstitialProvider.Companion companion, Continuation<? super BiddingH5InterstitialProvider$Companion$preloadWebview$1> continuation) {
        super(continuation);
        this.this$0 = companion;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.a(null, this);
    }
}
