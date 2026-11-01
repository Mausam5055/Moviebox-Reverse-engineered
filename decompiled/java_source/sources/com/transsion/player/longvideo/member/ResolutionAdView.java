package com.transsion.player.longvideo.member;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.LinearInterpolator;
import androidx.cardview.widget.CardView;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.hisavana.common.bean.TAdErrorCode;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsion.memberapi.AdModule;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import ho.s;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
@Deprecated
@Metadata(d1 = {"\u0000\u007f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0005*\u0001B\b\u0007\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\nH\u0002¢\u0006\u0004\b\r\u0010\fJ\r\u0010\u000e\u001a\u00020\n¢\u0006\u0004\b\u000e\u0010\fJ\u0017\u0010\u0011\u001a\u00020\n2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u0011\u0010\u0012J!\u0010\u0016\u001a\u00020\n2\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\n0\u0013¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u001a\u001a\u00020\n2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001e\u001a\u00020\n2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c¢\u0006\u0004\b\u001e\u0010\u001fJ\r\u0010 \u001a\u00020\n¢\u0006\u0004\b \u0010\fR$\u0010#\u001a\u0010\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\n\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010&R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010'R\u0014\u0010+\u001a\u00020(8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u0016\u0010/\u001a\u00020,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.R\u0014\u00103\u001a\u0002008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u00102R\u0018\u00107\u001a\u0004\u0018\u0001048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R\u001b\u0010=\u001a\u0002088BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b9\u0010:\u001a\u0004\b;\u0010<R\u0018\u0010A\u001a\u0004\u0018\u00010>8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@R\u0014\u0010E\u001a\u00020B8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bC\u0010D¨\u0006F"}, d2 = {"Lcom/transsion/player/longvideo/member/ResolutionAdView;", "Landroidx/cardview/widget/CardView;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "l", "()V", "m", "onDestroy", "Lok/b;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setListener", "(Lok/b;)V", "Lkotlin/Function1;", "", "callback", "setAdCallback", "(Lkotlin/jvm/functions/Function1;)V", "", "genre", "setGenre", "(Ljava/lang/String;)V", "Lcom/transsion/memberapi/AdModule;", "adModule", "setAdModule", "(Lcom/transsion/memberapi/AdModule;)V", "loadAd", "j", "Lkotlin/jvm/functions/Function1;", "adCallback", CampaignEx.JSON_KEY_AD_K, "Lok/b;", "Ljava/lang/String;", "Lcom/transsion/memberapi/AdModule;", "Lho/s;", "n", "Lho/s;", "binding", "Ljava/util/concurrent/atomic/AtomicBoolean;", "o", "Ljava/util/concurrent/atomic/AtomicBoolean;", "isLoading", "Lcom/transsion/player/longvideo/member/e;", TtmlNode.TAG_P, "Lcom/transsion/player/longvideo/member/e;", "viewBinder", "Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;", CampaignEx.JSON_KEY_AD_Q, "Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;", "maxEcpmObject", "Landroid/animation/ObjectAnimator;", CampaignEx.JSON_KEY_AD_R, "Lkotlin/Lazy;", "getRefreshAnimator", "()Landroid/animation/ObjectAnimator;", "refreshAnimator", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "s", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "nativeManager", "com/transsion/player/longvideo/member/ResolutionAdView$a", "t", "Lcom/transsion/player/longvideo/member/ResolutionAdView$a;", "nativeListener", "LongVideo_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ResolutionAdView extends CardView {

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private Function1 adCallback;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private ok.b listener;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private String genre;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private AdModule adModule;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private final s binding;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private AtomicBoolean isLoading;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private final e viewBinder;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private BiddingIntermediateMaterialBean maxEcpmObject;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private final Lazy refreshAnimator;

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    private BiddingNativeManager nativeManager;

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    private final a nativeListener;

    public static final class a extends di.a {
        a() {
        }

        @Override // di.a
        public void i(TAdErrorCode tAdErrorCode) {
            super.i(tAdErrorCode);
            ResolutionAdView.this.isLoading.set(false);
            ResolutionAdView.this.m();
        }

        @Override // di.a
        public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.j(biddingIntermediateMaterialBean);
            ResolutionAdView.this.maxEcpmObject = biddingIntermediateMaterialBean;
            ResolutionAdView.this.binding.f64714h.bindNativeView(ResolutionAdView.this.nativeManager, ResolutionAdView.this.viewBinder, biddingIntermediateMaterialBean);
            ResolutionAdView.this.isLoading.set(false);
            ResolutionAdView.this.m();
            Function1 function1 = ResolutionAdView.this.adCallback;
            if (function1 != null) {
                function1.invoke(Boolean.TRUE);
            }
        }

        @Override // di.a
        public void l(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.l(biddingIntermediateMaterialBean);
            ok.b bVar = ResolutionAdView.this.listener;
            if (bVar != null) {
                bVar.onSuccess();
            }
        }
    }

    /* JADX INFO: renamed from: com.transsion.player.longvideo.member.ResolutionAdView$loadAd$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.player.longvideo.member.ResolutionAdView$loadAd$1", f = "ResolutionAdView.kt", l = {162}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ResolutionAdView.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                BiddingNativeManager biddingNativeManager = ResolutionAdView.this.nativeManager;
                if (biddingNativeManager != null) {
                    this.label = 1;
                    if (AbsAdBidding.w0(biddingNativeManager, 0, false, this, 3, null) == objF) {
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

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public ResolutionAdView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public ResolutionAdView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public ResolutionAdView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        s sVarC = s.c(LayoutInflater.from(context), this, true);
        Intrinsics.g(sVarC, "inflate(...)");
        this.binding = sVarC;
        sVarC.f64712f.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.player.longvideo.member.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ResolutionAdView.g(this.f48220a, view);
            }
        });
        sVarC.f64713g.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.player.longvideo.member.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ResolutionAdView.h(this.f48221a, view);
            }
        });
        sVarC.f64715i.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.player.longvideo.member.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ResolutionAdView.i(this.f48222a, view);
            }
        });
        sVarC.f64716j.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.player.longvideo.member.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ResolutionAdView.j(this.f48223a, view);
            }
        });
        this.isLoading = new AtomicBoolean(false);
        this.viewBinder = new e(context);
        this.refreshAnimator = LazyKt.b(new Function0() { // from class: com.transsion.player.longvideo.member.j
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ResolutionAdView.k(this.f48224a);
            }
        });
        this.nativeListener = new a();
    }

    public /* synthetic */ ResolutionAdView(Context context, AttributeSet attributeSet, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(ResolutionAdView resolutionAdView, View view) {
        resolutionAdView.loadAd();
    }

    private final ObjectAnimator getRefreshAnimator() {
        Object value = this.refreshAnimator.getValue();
        Intrinsics.g(value, "getValue(...)");
        return (ObjectAnimator) value;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(ResolutionAdView resolutionAdView, View view) {
        resolutionAdView.loadAd();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(ResolutionAdView resolutionAdView, View view) {
        NativeWrapperAdView.simulatingClick$default(resolutionAdView.binding.f64714h, resolutionAdView.maxEcpmObject, resolutionAdView.viewBinder, null, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(ResolutionAdView resolutionAdView, View view) {
        NativeWrapperAdView.simulatingClick$default(resolutionAdView.binding.f64714h, resolutionAdView.maxEcpmObject, resolutionAdView.viewBinder, null, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObjectAnimator k(ResolutionAdView resolutionAdView) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(resolutionAdView.binding.f64708b, "rotation", 0.0f, 360.0f);
        objectAnimatorOfFloat.setDuration(800L);
        objectAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        objectAnimatorOfFloat.setRepeatCount(-1);
        return objectAnimatorOfFloat;
    }

    private final void l() {
        if (getRefreshAnimator().isRunning()) {
            return;
        }
        getRefreshAnimator().start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m() {
        getRefreshAnimator().cancel();
        this.binding.f64708b.setRotation(0.0f);
    }

    public final void loadAd() {
        if (this.nativeManager == null) {
            BiddingNativeManager biddingNativeManager = new BiddingNativeManager();
            this.nativeManager = biddingNativeManager;
            biddingNativeManager.O0("TreasureNativeAdScene");
            BiddingNativeManager biddingNativeManager2 = this.nativeManager;
            if (biddingNativeManager2 != null) {
                biddingNativeManager2.M0(com.transsion.ad.strategy.d.f42231a.a(this.genre));
            }
            BiddingNativeManager biddingNativeManager3 = this.nativeManager;
            if (biddingNativeManager3 != null) {
                biddingNativeManager3.N0(this.nativeListener);
            }
        }
        if (this.isLoading.get()) {
            return;
        }
        this.isLoading.set(true);
        l();
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new AnonymousClass1(null), 3, null);
    }

    public final void onDestroy() {
        getRefreshAnimator().cancel();
        BiddingNativeManager biddingNativeManager = this.nativeManager;
        if (biddingNativeManager != null) {
            biddingNativeManager.V();
        }
    }

    public final void setAdCallback(Function1<? super Boolean, Unit> callback) {
        Intrinsics.h(callback, "callback");
        this.adCallback = callback;
    }

    public final void setAdModule(AdModule adModule) {
        this.adModule = adModule;
        String adStyle = adModule != null ? adModule.getAdStyle() : null;
        if (Intrinsics.c(adStyle, "THREE_IN_ONE_AD_BUTTON_STYLE_VERTICAL")) {
            this.binding.f64711e.setVisibility(0);
        } else if (Intrinsics.c(adStyle, "THREE_IN_ONE_AD_BUTTON_STYLE_SMALL")) {
            this.binding.f64710d.setVisibility(0);
        }
    }

    public final void setGenre(String genre) {
        this.genre = genre;
    }

    public final void setListener(ok.b listener) {
        this.listener = listener;
    }
}
