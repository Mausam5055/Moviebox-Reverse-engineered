package com.transsion.postdetail.shorttv;

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

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.postdetail.shorttv.ShortTvWatchAdDialog$loadInterstitialAd$1", f = "ShortTvWatchAdDialog.kt", l = {190}, m = "invokeSuspend")
final class ShortTvWatchAdDialog$loadInterstitialAd$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ ShortTvWatchAdDialog this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ShortTvWatchAdDialog$loadInterstitialAd$1(ShortTvWatchAdDialog shortTvWatchAdDialog, Continuation<? super ShortTvWatchAdDialog$loadInterstitialAd$1> continuation) {
        super(2, continuation);
        this.this$0 = shortTvWatchAdDialog;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ShortTvWatchAdDialog$loadInterstitialAd$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ShortTvWatchAdDialog$loadInterstitialAd$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            BiddingInterstitialManager biddingInterstitialManager = this.this$0.interstitialManager;
            if (biddingInterstitialManager != null) {
                this.label = 1;
                if (AbsAdBidding.w0(biddingInterstitialManager, 0, false, this, 3, null) == objF) {
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
