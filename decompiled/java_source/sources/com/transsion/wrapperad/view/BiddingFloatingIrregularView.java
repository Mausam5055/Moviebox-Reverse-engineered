package com.transsion.wrapperad.view;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.p009lifecycle.LifecycleCoroutineScope;
import androidx.p009lifecycle.v;
import com.blankj.utilcode.util.a0;
import com.google.android.material.card.MaterialCardView;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.mediation.ad.TIconView;
import com.hisavana.mediation.ad.TMediaView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.ad.R$mipmap;
import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.base.r;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsion.push.PushConstants;
import com.transsion.wrapperad.R$id;
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
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import ti.q;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000m\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\b\u0005*\u00015\u0018\u00002\u00020\u0001B\u001d\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000b\u0010\nJ\u000f\u0010\f\u001a\u00020\bH\u0002¢\u0006\u0004\b\f\u0010\nJ\r\u0010\r\u001a\u00020\b¢\u0006\u0004\b\r\u0010\nJ\r\u0010\u000e\u001a\u00020\b¢\u0006\u0004\b\u000e\u0010\nJ\r\u0010\u000f\u001a\u00020\b¢\u0006\u0004\b\u000f\u0010\nR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\u001dR\u0016\u0010\"\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0016\u0010#\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010!R\u0014\u0010&\u001a\u00020$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010%R\u0018\u0010*\u001a\u0004\u0018\u00010'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0016\u0010.\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-R\u001b\u00104\u001a\u00020/8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b0\u00101\u001a\u0004\b2\u00103R\u0014\u00108\u001a\u0002058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b6\u00107¨\u00069"}, d2 = {"Lcom/transsion/wrapperad/view/BiddingFloatingIrregularView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "()V", "f", "g", "loadAd", "showAd", PushConstants.PROVIDER_FIELD_DESTROY, "", "a", "Ljava/lang/String;", "sceneId", "Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;", "nativeWrapperAdView", "Lcom/transsion/ad/bidding/base/r;", "c", "Lcom/transsion/ad/bidding/base/r;", "nativeViewBinder", "Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;", "Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;", "mMaxEcpmObject", "", "e", "Z", "hiSceneOff", "hiPlacementNon", "Landroid/widget/ImageView;", "Landroid/widget/ImageView;", "closeImg", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "h", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "adManager", "", "i", "J", "lastRefreshTime", "", "j", "Lkotlin/Lazy;", "getLoadInterval", "()I", "loadInterval", "com/transsion/wrapperad/view/BiddingFloatingIrregularView$a", CampaignEx.JSON_KEY_AD_K, "Lcom/transsion/wrapperad/view/BiddingFloatingIrregularView$a;", "adListener", "wrapperad_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class BiddingFloatingIrregularView extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final String sceneId;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final NativeWrapperAdView nativeWrapperAdView;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private r nativeViewBinder;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private BiddingIntermediateMaterialBean mMaxEcpmObject;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private boolean hiSceneOff;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private boolean hiPlacementNon;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private final ImageView closeImg;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private BiddingNativeManager adManager;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private long lastRefreshTime;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private final Lazy loadInterval;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private final a adListener;

    public static final class a extends di.a {
        a() {
        }

        @Override // di.a
        public void i(TAdErrorCode tAdErrorCode) {
            super.i(tAdErrorCode);
            BiddingFloatingIrregularView.this.g();
        }

        @Override // di.a
        public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.j(biddingIntermediateMaterialBean);
            BiddingFloatingIrregularView.this.mMaxEcpmObject = biddingIntermediateMaterialBean;
            BiddingFloatingIrregularView.this.showAd();
        }

        @Override // di.a
        public void l(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.l(biddingIntermediateMaterialBean);
            BiddingFloatingIrregularView.this.mMaxEcpmObject = null;
            BiddingFloatingIrregularView.this.lastRefreshTime = 0L;
        }

        @Override // di.a
        public void p(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.p(biddingIntermediateMaterialBean);
            BiddingFloatingIrregularView.this.g();
        }
    }

    /* JADX INFO: renamed from: com.transsion.wrapperad.view.BiddingFloatingIrregularView$loadAd$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.wrapperad.view.BiddingFloatingIrregularView$loadAd$1", f = "BiddingFloatingIrregularView.kt", l = {138}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return BiddingFloatingIrregularView.this.new AnonymousClass1(continuation);
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
                BiddingNativeManager biddingNativeManager = BiddingFloatingIrregularView.this.adManager;
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
    public BiddingFloatingIrregularView(Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public BiddingFloatingIrregularView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.h(context, "context");
        this.sceneId = "TrendingFloatIrregularAd";
        NativeWrapperAdView nativeWrapperAdView = new NativeWrapperAdView(context, null, 2, null);
        this.nativeWrapperAdView = nativeWrapperAdView;
        this.hiSceneOff = true;
        this.hiPlacementNon = true;
        this.closeImg = new ImageView(context);
        this.loadInterval = LazyKt.b(new Function0() { // from class: com.transsion.wrapperad.view.f
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Integer.valueOf(BiddingFloatingIrregularView.h(this.f58356a));
            }
        });
        this.adListener = new a();
        this.hiSceneOff = com.transsion.ad.scene.c.b(com.transsion.ad.scene.c.f42203a, "TrendingFloatIrregularAd", false, 2, null);
        this.hiPlacementNon = TextUtils.isEmpty(com.transsion.ad.scene.a.f42201a.h("TrendingFloatIrregularAd"));
        addView(nativeWrapperAdView, new FrameLayout.LayoutParams(-1, -1));
        d();
    }

    public /* synthetic */ BiddingFloatingIrregularView(Context context, AttributeSet attributeSet, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet);
    }

    private final void d() {
        this.closeImg.setImageResource(R$mipmap.ad_irregular_close);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(a0.a(16.0f), a0.a(16.0f));
        layoutParams.gravity = MaterialCardView.CHECKED_ICON_GRAVITY_TOP_END;
        this.closeImg.setVisibility(8);
        this.closeImg.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.wrapperad.view.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BiddingFloatingIrregularView.e(this.f58358a, view);
            }
        });
        q.f76267a.a(this.closeImg);
        addView(this.closeImg, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(BiddingFloatingIrregularView biddingFloatingIrregularView, View view) {
        biddingFloatingIrregularView.destroy();
        biddingFloatingIrregularView.lastRefreshTime = 0L;
    }

    private final void f() {
        BiddingNativeManager biddingNativeManager = this.adManager;
        if (biddingNativeManager != null) {
            biddingNativeManager.V();
        }
        this.adManager = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void g() {
        this.mMaxEcpmObject = null;
        setVisibility(8);
        this.closeImg.setVisibility(8);
    }

    private final int getLoadInterval() {
        return ((Number) this.loadInterval.getValue()).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int h(BiddingFloatingIrregularView biddingFloatingIrregularView) {
        return com.transsion.ad.scene.a.f42201a.n(biddingFloatingIrregularView.sceneId) * 1000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(BiddingFloatingIrregularView biddingFloatingIrregularView) {
        biddingFloatingIrregularView.closeImg.setVisibility(0);
    }

    public final void destroy() {
        f();
        g();
    }

    public final void loadAd() {
        LifecycleCoroutineScope lifecycleCoroutineScopeA;
        if ((this.hiSceneOff || this.hiPlacementNon) && this.mMaxEcpmObject != null) {
            return;
        }
        if (System.currentTimeMillis() - this.lastRefreshTime < getLoadInterval()) {
            lg.a.C0828a.f(lg.a.f68839a, "Floating", "--> The refresh interval has not arrived", false, 4, null);
            return;
        }
        this.lastRefreshTime = System.currentTimeMillis();
        f();
        BiddingNativeManager biddingNativeManager = new BiddingNativeManager();
        this.adManager = biddingNativeManager;
        biddingNativeManager.O0(this.sceneId);
        BiddingNativeManager biddingNativeManager2 = this.adManager;
        if (biddingNativeManager2 != null) {
            biddingNativeManager2.N0(this.adListener);
        }
        Context context = getContext();
        AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
        if (appCompatActivity == null || (lifecycleCoroutineScopeA = v.a(appCompatActivity)) == null) {
            return;
        }
        kotlinx.coroutines.k.d(lifecycleCoroutineScopeA, null, null, new AnonymousClass1(null), 3, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0034, code lost:
    
        if (r3 == null) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void showAd() {
        TAdNativeInfo nativeInfo;
        TAdNativeInfo.Image icon;
        TAdNativeInfo nativeInfo2;
        BiddingNativeManager biddingNativeManager = this.adManager;
        boolean zU0 = biddingNativeManager != null ? biddingNativeManager.U0() : false;
        if (zU0) {
            BiddingIntermediateMaterialBean biddingIntermediateMaterialBean = this.mMaxEcpmObject;
            String url = null;
            if (((biddingIntermediateMaterialBean == null || (nativeInfo2 = biddingIntermediateMaterialBean.getNativeInfo()) == null) ? null : nativeInfo2.getIcon()) != null) {
                BiddingIntermediateMaterialBean biddingIntermediateMaterialBean2 = this.mMaxEcpmObject;
                if (biddingIntermediateMaterialBean2 != null && (nativeInfo = biddingIntermediateMaterialBean2.getNativeInfo()) != null && (icon = nativeInfo.getIcon()) != null) {
                    url = icon.getUrl();
                }
            }
            g();
            return;
        }
        if (this.nativeViewBinder == null) {
            cy.b bVar = cy.b.f60940a;
            Context context = getContext();
            Intrinsics.g(context, "getContext(...)");
            this.nativeViewBinder = bVar.a(context, this.sceneId);
        }
        this.nativeWrapperAdView.bindNativeView(this.adManager, this.nativeViewBinder, this.mMaxEcpmObject);
        if (zU0) {
            TMediaView tMediaView = (TMediaView) this.nativeWrapperAdView.findViewById(R$id.ad_media);
            if (tMediaView != null) {
                jg.c.g(tMediaView);
            }
        } else {
            TIconView tIconView = (TIconView) this.nativeWrapperAdView.findViewById(R$id.ad_icon);
            if (tIconView != null) {
                jg.c.g(tIconView);
            }
        }
        this.closeImg.postDelayed(new Runnable() { // from class: com.transsion.wrapperad.view.g
            @Override // java.lang.Runnable
            public final void run() {
                BiddingFloatingIrregularView.i(this.f58357a);
            }
        }, ((long) com.transsion.ad.scene.a.f42201a.e(this.sceneId)) * 1000);
        setVisibility(0);
    }
}
