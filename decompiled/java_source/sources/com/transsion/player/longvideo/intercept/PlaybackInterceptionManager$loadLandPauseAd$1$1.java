package com.transsion.player.longvideo.intercept;

import android.content.Context;
import androidx.appcompat.app.AppCompatActivity;
import com.hisavana.common.bean.TAdErrorCode;
import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.interstitial.BiddingInterstitialManager;
import com.transsion.moviedetailapi.bean.Subject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.tools.zip.UnixStat;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.player.longvideo.intercept.PlaybackInterceptionManager$loadLandPauseAd$1$1", f = "PlaybackInterceptionManager.kt", l = {UnixStat.DEFAULT_DIR_PERM}, m = "invokeSuspend")
@SourceDebugExtension
final class PlaybackInterceptionManager$loadLandPauseAd$1$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ go.a $bean;
    final /* synthetic */ AppCompatActivity $compatActivity;
    final /* synthetic */ PlaybackInterceptAdView $startView;
    int label;
    final /* synthetic */ PlaybackInterceptionManager this$0;

    public static final class a extends di.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ PlaybackInterceptAdView f48081d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ PlaybackInterceptionManager f48082e;

        a(PlaybackInterceptAdView playbackInterceptAdView, PlaybackInterceptionManager playbackInterceptionManager) {
            this.f48081d = playbackInterceptAdView;
            this.f48082e = playbackInterceptionManager;
        }

        @Override // di.a
        public void i(TAdErrorCode tAdErrorCode) {
            super.i(tAdErrorCode);
            BiddingInterstitialManager biddingInterstitialManager = this.f48082e.f48065p;
            if (biddingInterstitialManager != null) {
                biddingInterstitialManager.V();
            }
            this.f48082e.f48065p = null;
        }

        @Override // di.a
        public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            BiddingInterstitialManager biddingInterstitialManager;
            super.j(biddingIntermediateMaterialBean);
            Context context = this.f48081d.getContext();
            if (context == null || (biddingInterstitialManager = this.f48082e.f48065p) == null) {
                return;
            }
            AbsAdBidding.R0(biddingInterstitialManager, (AppCompatActivity) context, biddingIntermediateMaterialBean, false, 4, null);
        }

        @Override // di.a
        public void m(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.m(biddingIntermediateMaterialBean);
            BiddingInterstitialManager biddingInterstitialManager = this.f48082e.f48065p;
            if (biddingInterstitialManager != null) {
                biddingInterstitialManager.V();
            }
            this.f48082e.f48065p = null;
        }

        @Override // di.a
        public void p(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.p(biddingIntermediateMaterialBean);
            BiddingInterstitialManager biddingInterstitialManager = this.f48082e.f48065p;
            if (biddingInterstitialManager != null) {
                biddingInterstitialManager.V();
            }
            this.f48082e.f48065p = null;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PlaybackInterceptionManager$loadLandPauseAd$1$1(AppCompatActivity appCompatActivity, PlaybackInterceptionManager playbackInterceptionManager, go.a aVar, PlaybackInterceptAdView playbackInterceptAdView, Continuation<? super PlaybackInterceptionManager$loadLandPauseAd$1$1> continuation) {
        super(2, continuation);
        this.$compatActivity = appCompatActivity;
        this.this$0 = playbackInterceptionManager;
        this.$bean = aVar;
        this.$startView = playbackInterceptAdView;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PlaybackInterceptionManager$loadLandPauseAd$1$1(this.$compatActivity, this.this$0, this.$bean, this.$startView, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PlaybackInterceptionManager$loadLandPauseAd$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Subject subjectM;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            AppCompatActivity appCompatActivity = this.$compatActivity;
            String genre = null;
            if (appCompatActivity.isDestroyed() || appCompatActivity.isFinishing()) {
                appCompatActivity = null;
            }
            if (appCompatActivity == null) {
                return Unit.f67061a;
            }
            this.this$0.f48065p = new BiddingInterstitialManager();
            BiddingInterstitialManager biddingInterstitialManager = this.this$0.f48065p;
            if (biddingInterstitialManager != null) {
                biddingInterstitialManager.O0("LandscapePauseSceneNew");
            }
            BiddingInterstitialManager biddingInterstitialManager2 = this.this$0.f48065p;
            if (biddingInterstitialManager2 != null) {
                com.transsion.ad.strategy.d dVar = com.transsion.ad.strategy.d.f42231a;
                go.a aVar = this.$bean;
                if (aVar != null && (subjectM = aVar.m()) != null) {
                    genre = subjectM.getGenre();
                }
                biddingInterstitialManager2.M0(dVar.a(genre));
            }
            BiddingInterstitialManager biddingInterstitialManager3 = this.this$0.f48065p;
            if (biddingInterstitialManager3 != null) {
                biddingInterstitialManager3.L0(appCompatActivity);
            }
            BiddingInterstitialManager biddingInterstitialManager4 = this.this$0.f48065p;
            if (biddingInterstitialManager4 != null) {
                biddingInterstitialManager4.N0(new a(this.$startView, this.this$0));
            }
            BiddingInterstitialManager biddingInterstitialManager5 = this.this$0.f48065p;
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
