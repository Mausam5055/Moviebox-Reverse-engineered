package com.transsion.postdetail.ad;

import android.content.Context;
import androidx.appcompat.app.AppCompatActivity;
import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.interstitial.BiddingInterstitialManager;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.postdetail.ad.BaseVideoAdHelper$loadLandPauseAd$1", f = "BaseVideoAdHelper.kt", l = {292}, m = "invokeSuspend")
@SourceDebugExtension
final class BaseVideoAdHelper$loadLandPauseAd$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function0<Unit> $callback;
    final /* synthetic */ Context $ctx;
    final /* synthetic */ Function0<Unit> $onFail;
    final /* synthetic */ String $sceneId;
    int label;
    final /* synthetic */ BaseVideoAdHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BaseVideoAdHelper$loadLandPauseAd$1(Context context, BaseVideoAdHelper baseVideoAdHelper, String str, Function0<Unit> function0, Function0<Unit> function1, Continuation<? super BaseVideoAdHelper$loadLandPauseAd$1> continuation) {
        super(2, continuation);
        this.$ctx = context;
        this.this$0 = baseVideoAdHelper;
        this.$sceneId = str;
        this.$callback = function0;
        this.$onFail = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new BaseVideoAdHelper$loadLandPauseAd$1(this.$ctx, this.this$0, this.$sceneId, this.$callback, this.$onFail, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((BaseVideoAdHelper$loadLandPauseAd$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            Context context = this.$ctx;
            AppCompatActivity appCompatActivity = null;
            AppCompatActivity appCompatActivity2 = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
            if (appCompatActivity2 != null) {
                if (!appCompatActivity2.isDestroyed() && !appCompatActivity2.isFinishing()) {
                    appCompatActivity = appCompatActivity2;
                }
                if (appCompatActivity != null) {
                    this.this$0.s1(new BiddingInterstitialManager());
                    BiddingInterstitialManager biddingInterstitialManagerU0 = this.this$0.u0();
                    if (biddingInterstitialManagerU0 != null) {
                        biddingInterstitialManagerU0.O0(this.$sceneId);
                    }
                    BiddingInterstitialManager biddingInterstitialManagerU1 = this.this$0.u0();
                    if (biddingInterstitialManagerU1 != null) {
                        biddingInterstitialManagerU1.M0(com.transsion.ad.strategy.d.f42231a.a(this.this$0.i0()));
                    }
                    BiddingInterstitialManager biddingInterstitialManagerU2 = this.this$0.u0();
                    if (biddingInterstitialManagerU2 != null) {
                        biddingInterstitialManagerU2.L0(appCompatActivity);
                    }
                    BiddingInterstitialManager biddingInterstitialManagerU3 = this.this$0.u0();
                    if (biddingInterstitialManagerU3 != null) {
                        biddingInterstitialManagerU3.N0(this.this$0.g2(this.$sceneId, this.$callback, this.$onFail));
                    }
                    BiddingInterstitialManager biddingInterstitialManagerU4 = this.this$0.u0();
                    if (biddingInterstitialManagerU4 != null) {
                        this.label = 1;
                        if (AbsAdBidding.w0(biddingInterstitialManagerU4, 0, false, this, 3, null) == objF) {
                            return objF;
                        }
                    }
                }
            }
            return Unit.f67061a;
        }
        if (i11 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        return Unit.f67061a;
    }
}
