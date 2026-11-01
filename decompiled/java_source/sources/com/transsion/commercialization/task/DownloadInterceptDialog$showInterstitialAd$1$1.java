package com.transsion.commercialization.task;

import android.content.Context;
import androidx.appcompat.app.AppCompatActivity;
import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.interstitial.BiddingInterstitialManager;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.commercialization.task.DownloadInterceptDialog$showInterstitialAd$1$1", f = "DownloadInterceptDialog.kt", l = {}, m = "invokeSuspend")
final class DownloadInterceptDialog$showInterstitialAd$1$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Context $it;
    final /* synthetic */ BiddingIntermediateMaterialBean $maxEcpmObject;
    int label;
    final /* synthetic */ DownloadInterceptDialog this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadInterceptDialog$showInterstitialAd$1$1(DownloadInterceptDialog downloadInterceptDialog, Context context, BiddingIntermediateMaterialBean biddingIntermediateMaterialBean, Continuation<? super DownloadInterceptDialog$showInterstitialAd$1$1> continuation) {
        super(2, continuation);
        this.this$0 = downloadInterceptDialog;
        this.$it = context;
        this.$maxEcpmObject = biddingIntermediateMaterialBean;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadInterceptDialog$showInterstitialAd$1$1(this.this$0, this.$it, this.$maxEcpmObject, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DownloadInterceptDialog$showInterstitialAd$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        BiddingInterstitialManager biddingInterstitialManager = this.this$0.interstitialAdManager;
        if (biddingInterstitialManager != null) {
            Context context = this.$it;
            Intrinsics.f(context, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
            AbsAdBidding.R0(biddingInterstitialManager, (AppCompatActivity) context, this.$maxEcpmObject, false, 4, null);
        }
        return Unit.f67061a;
    }
}
