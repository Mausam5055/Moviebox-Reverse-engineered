package com.transsion.ad.bidding.nativead;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.ad.bidding.nativead.BiddingHiSspNativeProvider", f = "BiddingHiSspNativeProvider.kt", l = {246}, m = "preLoadAd")
final class BiddingHiSspNativeProvider$preLoadAd$1 extends ContinuationImpl {
    int I$0;
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ BiddingHiSspNativeProvider this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BiddingHiSspNativeProvider$preLoadAd$1(BiddingHiSspNativeProvider biddingHiSspNativeProvider, Continuation<? super BiddingHiSspNativeProvider$preLoadAd$1> continuation) {
        super(continuation);
        this.this$0 = biddingHiSspNativeProvider;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.q(null, 0, null, this);
    }
}
