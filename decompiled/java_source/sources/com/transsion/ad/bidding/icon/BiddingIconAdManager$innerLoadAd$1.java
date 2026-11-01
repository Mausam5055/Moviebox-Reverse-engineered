package com.transsion.ad.bidding.icon;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.ad.bidding.icon.BiddingIconAdManager", f = "BiddingIconAdManager.kt", l = {467}, m = "innerLoadAd")
final class BiddingIconAdManager$innerLoadAd$1 extends ContinuationImpl {
    int I$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ BiddingIconAdManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BiddingIconAdManager$innerLoadAd$1(BiddingIconAdManager biddingIconAdManager, Continuation<? super BiddingIconAdManager$innerLoadAd$1> continuation) {
        super(continuation);
        this.this$0 = biddingIconAdManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.P(null, false, null, this);
    }
}
