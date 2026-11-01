package com.transsion.wrapperad.h5;

import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.interstitial.BiddingInterstitialManager;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.wrapperad.h5.H5InterstitialAdProvider$h5OpenAd$1", f = "H5InterstitialAdProvider.kt", l = {80}, m = "invokeSuspend")
final class H5InterstitialAdProvider$h5OpenAd$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $sceneId;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    H5InterstitialAdProvider$h5OpenAd$1(String str, Continuation<? super H5InterstitialAdProvider$h5OpenAd$1> continuation) {
        super(2, continuation);
        this.$sceneId = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new H5InterstitialAdProvider$h5OpenAd$1(this.$sceneId, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((H5InterstitialAdProvider$h5OpenAd$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            BiddingInterstitialManager biddingInterstitialManager = H5InterstitialAdProvider.f58167c;
            if (biddingInterstitialManager != null) {
                biddingInterstitialManager.O0(this.$sceneId);
            }
            BiddingInterstitialManager biddingInterstitialManager2 = H5InterstitialAdProvider.f58167c;
            if (biddingInterstitialManager2 != null) {
                biddingInterstitialManager2.M0(null);
            }
            BiddingInterstitialManager biddingInterstitialManager3 = H5InterstitialAdProvider.f58167c;
            if (biddingInterstitialManager3 != null) {
                biddingInterstitialManager3.N0(H5InterstitialAdProvider.f58168d);
            }
            BiddingInterstitialManager biddingInterstitialManager4 = H5InterstitialAdProvider.f58167c;
            if (biddingInterstitialManager4 != null) {
                this.label = 1;
                if (AbsAdBidding.w0(biddingInterstitialManager4, 0, false, this, 3, null) == objF) {
                    return objF;
                }
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return Unit.f67061a;
    }
}
