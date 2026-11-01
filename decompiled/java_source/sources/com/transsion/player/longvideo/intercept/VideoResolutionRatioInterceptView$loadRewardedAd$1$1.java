package com.transsion.player.longvideo.intercept;

import androidx.appcompat.app.AppCompatActivity;
import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.video.BiddingVideoManager;
import com.vungle.ads.internal.protos.Sdk$SDKError;
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
@DebugMetadata(c = "com.transsion.player.longvideo.intercept.VideoResolutionRatioInterceptView$loadRewardedAd$1$1", f = "VideoResolutionRatioInterceptView.kt", l = {Sdk$SDKError.Reason.PLACEMENT_AD_TYPE_MISMATCH_VALUE}, m = "invokeSuspend")
final class VideoResolutionRatioInterceptView$loadRewardedAd$1$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ AppCompatActivity $activity;
    int label;
    final /* synthetic */ VideoResolutionRatioInterceptView this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    VideoResolutionRatioInterceptView$loadRewardedAd$1$1(VideoResolutionRatioInterceptView videoResolutionRatioInterceptView, AppCompatActivity appCompatActivity, Continuation<? super VideoResolutionRatioInterceptView$loadRewardedAd$1$1> continuation) {
        super(2, continuation);
        this.this$0 = videoResolutionRatioInterceptView;
        this.$activity = appCompatActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new VideoResolutionRatioInterceptView$loadRewardedAd$1$1(this.this$0, this.$activity, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((VideoResolutionRatioInterceptView$loadRewardedAd$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            if (this.this$0.rewardedAdManager == null) {
                this.this$0.rewardedAdManager = new BiddingVideoManager();
                BiddingVideoManager biddingVideoManager = this.this$0.rewardedAdManager;
                if (biddingVideoManager != null) {
                    biddingVideoManager.O0("StreamVideoInterceptRewarded");
                }
                BiddingVideoManager biddingVideoManager2 = this.this$0.rewardedAdManager;
                if (biddingVideoManager2 != null) {
                    biddingVideoManager2.M0(com.transsion.ad.strategy.d.f42231a.a(this.this$0.genre));
                }
                BiddingVideoManager biddingVideoManager3 = this.this$0.rewardedAdManager;
                if (biddingVideoManager3 != null) {
                    biddingVideoManager3.L0(this.$activity);
                }
                BiddingVideoManager biddingVideoManager4 = this.this$0.rewardedAdManager;
                if (biddingVideoManager4 != null) {
                    biddingVideoManager4.N0(this.this$0.rewardInterceptListener);
                }
            }
            BiddingVideoManager biddingVideoManager5 = this.this$0.rewardedAdManager;
            if (biddingVideoManager5 != null) {
                this.label = 1;
                if (AbsAdBidding.w0(biddingVideoManager5, 0, false, this, 3, null) == objF) {
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
