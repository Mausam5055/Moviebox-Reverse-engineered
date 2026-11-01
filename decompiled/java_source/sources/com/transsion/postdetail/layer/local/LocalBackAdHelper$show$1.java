package com.transsion.postdetail.layer.local;

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

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.postdetail.layer.local.LocalBackAdHelper$show$1", f = "LocalBackAdHelper.kt", l = {140}, m = "invokeSuspend")
final class LocalBackAdHelper$show$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $genre;
    int label;
    final /* synthetic */ LocalBackAdHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LocalBackAdHelper$show$1(LocalBackAdHelper localBackAdHelper, String str, Continuation<? super LocalBackAdHelper$show$1> continuation) {
        super(2, continuation);
        this.this$0 = localBackAdHelper;
        this.$genre = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LocalBackAdHelper$show$1(this.this$0, this.$genre, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((LocalBackAdHelper$show$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            BiddingInterstitialManager biddingInterstitialManager = this.this$0.f48936f;
            if (biddingInterstitialManager != null) {
                biddingInterstitialManager.V();
            }
            this.this$0.f48936f = new BiddingInterstitialManager();
            BiddingInterstitialManager biddingInterstitialManager2 = this.this$0.f48936f;
            if (biddingInterstitialManager2 != null) {
                biddingInterstitialManager2.O0(this.this$0.f48931a);
            }
            BiddingInterstitialManager biddingInterstitialManager3 = this.this$0.f48936f;
            if (biddingInterstitialManager3 != null) {
                biddingInterstitialManager3.N0(this.this$0.n());
            }
            BiddingInterstitialManager biddingInterstitialManager4 = this.this$0.f48936f;
            if (biddingInterstitialManager4 != null) {
                biddingInterstitialManager4.M0(com.transsion.ad.strategy.d.f42231a.a(this.$genre));
            }
            BiddingInterstitialManager biddingInterstitialManager5 = this.this$0.f48936f;
            if (biddingInterstitialManager5 != null) {
                this.label = 1;
                if (AbsAdBidding.w0(biddingInterstitialManager5, 0, false, this, 3, null) == objF) {
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
