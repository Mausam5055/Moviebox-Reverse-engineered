package com.transsion.wrapperad.view.secondfloor;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.util.Property;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.p009lifecycle.LifecycleCoroutineScope;
import androidx.p009lifecycle.v;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.hisavana.common.bean.TAdErrorCode;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.base.r;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.ad.strategy.AdOverridePendingTransitionManager;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsion.push.PushConstants;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
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
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000w\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\b\u0005*\u0001X\u0018\u00002\u00020\u0001B\u001d\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J;\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010\r\u001a\u00020\f2\u0010\b\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\r\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0017\u001a\u00020\u000f2\b\b\u0002\u0010\u0016\u001a\u00020\u0013¢\u0006\u0004\b\u0017\u0010\u0018J\r\u0010\u0019\u001a\u00020\u000f¢\u0006\u0004\b\u0019\u0010\u001aJ\r\u0010\u001b\u001a\u00020\u000f¢\u0006\u0004\b\u001b\u0010\u001aJ\r\u0010\u001c\u001a\u00020\u000f¢\u0006\u0004\b\u001c\u0010\u001aJ\r\u0010\u001d\u001a\u00020\u000f¢\u0006\u0004\b\u001d\u0010\u001aJ\r\u0010\u001e\u001a\u00020\u000f¢\u0006\u0004\b\u001e\u0010\u001aJ2\u0010$\u001a\u00020\u000f2#\u0010#\u001a\u001f\u0012\u0013\u0012\u00110\u0013¢\u0006\f\b \u0012\b\b!\u0012\u0004\b\b(\"\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u001f¢\u0006\u0004\b$\u0010%J\u001d\u0010&\u001a\u00020\u000f2\u000e\u0010#\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e¢\u0006\u0004\b&\u0010'J\u0015\u0010)\u001a\u00020\u000f2\u0006\u0010(\u001a\u00020\n¢\u0006\u0004\b)\u0010*J\r\u0010+\u001a\u00020\u000f¢\u0006\u0004\b+\u0010\u001aJ\r\u0010,\u001a\u00020\u000f¢\u0006\u0004\b,\u0010\u001aR\u001b\u00101\u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b-\u0010.\u001a\u0004\b/\u00100R\"\u00109\u001a\u0002028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b3\u00104\u001a\u0004\b5\u00106\"\u0004\b7\u00108R\u0018\u0010=\u001a\u0004\u0018\u00010:8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010<R\u0018\u0010@\u001a\u0004\u0018\u00010>8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010?R\u0018\u0010D\u001a\u0004\u0018\u00010A8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010CR3\u0010G\u001a\u001f\u0012\u0013\u0012\u00110\u0013¢\u0006\f\b \u0012\b\b!\u0012\u0004\b\b(\"\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010FR\u001e\u0010J\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010IR\u0016\u0010M\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010LR\u0016\u0010O\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010LR\u0016\u0010R\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bP\u0010QR\u001b\u0010W\u001a\u00020S8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bT\u0010.\u001a\u0004\bU\u0010VR\u0014\u0010[\u001a\u00020X8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bY\u0010Z¨\u0006\\"}, d2 = {"Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", "targetAlpha", "", "duration", "Lkotlin/Function0;", "", "onEnd", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "(Landroid/view/View;FJLkotlin/jvm/functions/Function0;)V", "", "hasAd", "()Z", "ignoreInterval", "loadAd", "(Z)V", "showAd", "()V", "adClick", "resetAd", "destroyAd", PushConstants.PROVIDER_FIELD_DESTROY, "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, "callback", "setLoadCallback", "(Lkotlin/jvm/functions/Function1;)V", "setClickCallback", "(Lkotlin/jvm/functions/Function0;)V", "adHoverHalfHeight", "hoverHalfTrigger", "(F)V", "refreshing", "idleTrigger", "a", "Lkotlin/Lazy;", "getDensity", "()F", "density", "Ley/f;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ley/f;", "getBinding", "()Ley/f;", "setBinding", "(Ley/f;)V", "binding", "Lcom/transsion/ad/bidding/base/r;", "c", "Lcom/transsion/ad/bidding/base/r;", "nativeViewBinder", "Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;", "Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;", "mMaxEcpmObject", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "e", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "adManager", "f", "Lkotlin/jvm/functions/Function1;", "loadedCallback", "g", "Lkotlin/jvm/functions/Function0;", "clickCallback", "h", "Z", "isAdBind", "i", "isAdLoading", "j", "J", "lastRefreshTime", "", CampaignEx.JSON_KEY_AD_K, "getLoadInterval", "()I", "loadInterval", "com/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView$a", "l", "Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView$a;", "adListener", "wrapperad_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TrendingTwoLevelIrregularView extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final Lazy density;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private ey.f binding;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private r nativeViewBinder;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private BiddingIntermediateMaterialBean mMaxEcpmObject;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private BiddingNativeManager adManager;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private Function1 loadedCallback;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private Function0 clickCallback;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private boolean isAdBind;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private boolean isAdLoading;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private long lastRefreshTime;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private final Lazy loadInterval;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private final a adListener;

    public static final class a extends di.a {
        a() {
        }

        @Override // di.a
        public void i(TAdErrorCode tAdErrorCode) {
            super.i(tAdErrorCode);
            TrendingTwoLevelIrregularView.this.mMaxEcpmObject = null;
            TrendingTwoLevelIrregularView.this.isAdLoading = false;
            Function1 function1 = TrendingTwoLevelIrregularView.this.loadedCallback;
            if (function1 != null) {
                function1.invoke(Boolean.FALSE);
            }
        }

        @Override // di.a
        public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.j(biddingIntermediateMaterialBean);
            TrendingTwoLevelIrregularView.this.mMaxEcpmObject = biddingIntermediateMaterialBean;
            TrendingTwoLevelIrregularView.this.isAdLoading = false;
            Function1 function1 = TrendingTwoLevelIrregularView.this.loadedCallback;
            if (function1 != null) {
                function1.invoke(Boolean.TRUE);
            }
        }

        @Override // di.a
        public void l(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.l(biddingIntermediateMaterialBean);
            Function0 function0 = TrendingTwoLevelIrregularView.this.clickCallback;
            if (function0 != null) {
                function0.invoke();
            }
        }

        @Override // di.a
        public void p(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.p(biddingIntermediateMaterialBean);
            TrendingTwoLevelIrregularView.this.mMaxEcpmObject = null;
        }
    }

    public static final class b extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Function0 f58389a;

        b(Function0 function0) {
            this.f58389a = function0;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            Intrinsics.h(animation, "animation");
            super.onAnimationEnd(animation);
            Function0 function0 = this.f58389a;
            if (function0 != null) {
                function0.invoke();
            }
        }
    }

    /* JADX INFO: renamed from: com.transsion.wrapperad.view.secondfloor.TrendingTwoLevelIrregularView$loadAd$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.wrapperad.view.secondfloor.TrendingTwoLevelIrregularView$loadAd$1", f = "TrendingTwoLevelIrregularView.kt", l = {Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return TrendingTwoLevelIrregularView.this.new AnonymousClass1(continuation);
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
                BiddingNativeManager biddingNativeManager = TrendingTwoLevelIrregularView.this.adManager;
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
    /* JADX WARN: Multi-variable type inference failed */
    @JvmOverloads
    public TrendingTwoLevelIrregularView(Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public TrendingTwoLevelIrregularView(final Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.h(context, "context");
        this.density = LazyKt.b(new Function0() { // from class: com.transsion.wrapperad.view.secondfloor.h
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Float.valueOf(TrendingTwoLevelIrregularView.f(context));
            }
        });
        ey.f fVarC = ey.f.c(LayoutInflater.from(context), this, true);
        Intrinsics.g(fVarC, "inflate(...)");
        this.binding = fVarC;
        this.loadInterval = LazyKt.b(new Function0() { // from class: com.transsion.wrapperad.view.secondfloor.i
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Integer.valueOf(TrendingTwoLevelIrregularView.h());
            }
        });
        this.adListener = new a();
    }

    public /* synthetic */ TrendingTwoLevelIrregularView(Context context, AttributeSet attributeSet, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet);
    }

    private final void d(View view, float targetAlpha, long duration, Function0 onEnd) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.ALPHA, view.getAlpha(), targetAlpha);
        objectAnimatorOfFloat.setDuration(duration);
        objectAnimatorOfFloat.addListener(new b(onEnd));
        objectAnimatorOfFloat.start();
    }

    static /* synthetic */ void e(TrendingTwoLevelIrregularView trendingTwoLevelIrregularView, View view, float f11, long j11, Function0 function0, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            j11 = 400;
        }
        long j12 = j11;
        if ((i11 & 8) != 0) {
            function0 = null;
        }
        trendingTwoLevelIrregularView.d(view, f11, j12, function0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float f(Context context) {
        return context.getResources().getDisplayMetrics().density;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit g(CardView cardView) {
        Intrinsics.e(cardView);
        jg.c.g(cardView);
        return Unit.f67061a;
    }

    private final float getDensity() {
        return ((Number) this.density.getValue()).floatValue();
    }

    private final int getLoadInterval() {
        return ((Number) this.loadInterval.getValue()).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int h() {
        return com.transsion.ad.scene.a.f42201a.n("TrendingTwoLevelloftScene") * 1000;
    }

    public static /* synthetic */ void loadAd$default(TrendingTwoLevelIrregularView trendingTwoLevelIrregularView, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = false;
        }
        trendingTwoLevelIrregularView.loadAd(z10);
    }

    public final void adClick() {
        NativeWrapperAdView.simulatingClick$default(this.binding.f62099d, this.mMaxEcpmObject, this.nativeViewBinder, null, 4, null);
    }

    public final void destroy() {
        destroyAd();
        this.loadedCallback = null;
        this.clickCallback = null;
    }

    public final void destroyAd() {
        BiddingNativeManager biddingNativeManager = this.adManager;
        if (biddingNativeManager != null) {
            biddingNativeManager.V();
        }
        this.adManager = null;
    }

    public final ey.f getBinding() {
        return this.binding;
    }

    public final boolean hasAd() {
        return this.mMaxEcpmObject != null;
    }

    public final void hoverHalfTrigger(float adHoverHalfHeight) {
        final CardView cardView = this.binding.f62098c;
        Intrinsics.e(cardView);
        e(this, cardView, 0.0f, 0L, new Function0() { // from class: com.transsion.wrapperad.view.secondfloor.g
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TrendingTwoLevelIrregularView.g(cardView);
            }
        }, 4, null);
        CardView cardView2 = this.binding.f62097b;
        ViewGroup.LayoutParams layoutParams = cardView2.getLayoutParams();
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
        ((ViewGroup.MarginLayoutParams) bVar).topMargin = (int) ((adHoverHalfHeight - ((ViewGroup.MarginLayoutParams) bVar).height) - (getDensity() * 12.0f));
        cardView2.setAlpha(0.0f);
        Intrinsics.e(cardView2);
        jg.c.k(cardView2);
        e(this, cardView2, 1.0f, 0L, null, 12, null);
    }

    public final void idleTrigger() {
        CardView adDetailBtn = this.binding.f62098c;
        Intrinsics.g(adDetailBtn, "adDetailBtn");
        jg.c.g(adDetailBtn);
        CardView adDetailArrow = this.binding.f62097b;
        Intrinsics.g(adDetailArrow, "adDetailArrow");
        jg.c.g(adDetailArrow);
    }

    public final void loadAd(boolean ignoreInterval) {
        LifecycleCoroutineScope lifecycleCoroutineScopeA;
        this.isAdBind = false;
        if (this.isAdLoading || hasAd()) {
            lg.a.C0828a.f(lg.a.f68839a, CustomSwipeRefreshLayout.TAG, "--> isAdLoading: " + this.isAdLoading + ", hasAd: " + hasAd(), false, 4, null);
            return;
        }
        if (!ignoreInterval && System.currentTimeMillis() - this.lastRefreshTime < getLoadInterval()) {
            lg.a.C0828a.f(lg.a.f68839a, CustomSwipeRefreshLayout.TAG, "--> The refresh interval has not arrived", false, 4, null);
            return;
        }
        this.lastRefreshTime = System.currentTimeMillis();
        this.isAdLoading = true;
        destroyAd();
        BiddingNativeManager biddingNativeManager = new BiddingNativeManager();
        this.adManager = biddingNativeManager;
        biddingNativeManager.O0("TrendingTwoLevelloftScene");
        BiddingNativeManager biddingNativeManager2 = this.adManager;
        if (biddingNativeManager2 != null) {
            biddingNativeManager2.N0(this.adListener);
        }
        BiddingNativeManager biddingNativeManager3 = this.adManager;
        if (biddingNativeManager3 != null) {
            biddingNativeManager3.J0(AdOverridePendingTransitionManager.AdOverridePendingTransitionEnum.OVERRIDE_PENDING_TRANSITION_1);
        }
        Context context = getContext();
        AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
        if (appCompatActivity == null || (lifecycleCoroutineScopeA = v.a(appCompatActivity)) == null) {
            return;
        }
        k.d(lifecycleCoroutineScopeA, null, null, new AnonymousClass1(null), 3, null);
    }

    public final void refreshing() {
        CardView cardView = this.binding.f62098c;
        cardView.setAlpha(0.0f);
        Intrinsics.e(cardView);
        jg.c.k(cardView);
        e(this, cardView, 1.0f, 0L, null, 12, null);
        CardView adDetailArrow = this.binding.f62097b;
        Intrinsics.g(adDetailArrow, "adDetailArrow");
        jg.c.g(adDetailArrow);
    }

    public final void resetAd() {
        this.mMaxEcpmObject = null;
    }

    public final void setBinding(ey.f fVar) {
        Intrinsics.h(fVar, "<set-?>");
        this.binding = fVar;
    }

    public final void setClickCallback(Function0<Unit> callback) {
        this.clickCallback = callback;
    }

    public final void setLoadCallback(Function1<? super Boolean, Unit> callback) {
        this.loadedCallback = callback;
    }

    public final void showAd() {
        if (this.isAdBind) {
            return;
        }
        this.isAdBind = true;
        if (this.nativeViewBinder == null) {
            cy.b bVar = cy.b.f60940a;
            Context context = getContext();
            Intrinsics.g(context, "getContext(...)");
            this.nativeViewBinder = bVar.a(context, "TrendingTwoLevelloftScene");
        }
        this.binding.f62099d.setScaleType(ImageView.ScaleType.CENTER_CROP);
        this.binding.f62099d.bindNativeView(this.adManager, this.nativeViewBinder, this.mMaxEcpmObject);
    }
}
