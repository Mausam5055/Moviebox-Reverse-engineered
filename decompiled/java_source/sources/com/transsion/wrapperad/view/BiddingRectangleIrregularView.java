package com.transsion.wrapperad.view;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.p009lifecycle.LifecycleCoroutineScope;
import androidx.p009lifecycle.v;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.mediation.ad.TIconView;
import com.hisavana.mediation.ad.TMediaView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.base.r;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsion.wrapperad.R$id;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000]\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0005*\u00012\u0018\u00002\u00020\u0001B\u001d\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\r\u0010\t\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\b2\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\r\u0010\u000eJ\u0015\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\r\u0010\u0013\u001a\u00020\b¢\u0006\u0004\b\u0013\u0010\nJ\r\u0010\u0014\u001a\u00020\b¢\u0006\u0004\b\u0014\u0010\nJ\r\u0010\u0015\u001a\u00020\b¢\u0006\u0004\b\u0015\u0010\nR\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0018\u0010!\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0018\u0010$\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u0016\u0010(\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'R\u0016\u0010*\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010'R\u0018\u0010-\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u0018\u00101\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R\u0014\u00105\u001a\u0002028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b3\u00104¨\u00066"}, d2 = {"Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "showAd", "()V", "Ldi/a;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setIrregularAdListener", "(Ldi/a;)V", "", "sceneId", "setSceneId", "(Ljava/lang/String;)V", "onAdViewDestroy", "destroyAd", "loadAd", "Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;", "a", "Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;", "nativeWrapperAdView", "Lcom/transsion/ad/bidding/base/r;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/ad/bidding/base/r;", "nativeViewBinder", "Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;", "c", "Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;", "mMaxEcpmObject", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/lang/String;", "mSceneId", "", "e", "Z", "hiSceneOff", "f", "hiPlacementNon", "g", "Ldi/a;", "mIrregularAdListener", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "h", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "adNativeManager", "com/transsion/wrapperad/view/BiddingRectangleIrregularView$a", "i", "Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView$a;", "adNativeListener", "wrapperad_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class BiddingRectangleIrregularView extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final NativeWrapperAdView nativeWrapperAdView;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private r nativeViewBinder;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private BiddingIntermediateMaterialBean mMaxEcpmObject;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private String mSceneId;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private boolean hiSceneOff;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private boolean hiPlacementNon;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private di.a mIrregularAdListener;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private BiddingNativeManager adNativeManager;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private final a adNativeListener;

    public static final class a extends di.a {
        a() {
        }

        @Override // di.a
        public void i(TAdErrorCode tAdErrorCode) {
            super.i(tAdErrorCode);
            BiddingRectangleIrregularView.this.mMaxEcpmObject = null;
            BiddingRectangleIrregularView.this.setVisibility(8);
            di.a aVar = BiddingRectangleIrregularView.this.mIrregularAdListener;
            if (aVar != null) {
                aVar.i(tAdErrorCode);
            }
        }

        @Override // di.a
        public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.j(biddingIntermediateMaterialBean);
            BiddingRectangleIrregularView.this.mMaxEcpmObject = biddingIntermediateMaterialBean;
            BiddingRectangleIrregularView.this.showAd();
        }
    }

    /* JADX INFO: renamed from: com.transsion.wrapperad.view.BiddingRectangleIrregularView$loadAd$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.wrapperad.view.BiddingRectangleIrregularView$loadAd$1", f = "BiddingRectangleIrregularView.kt", l = {154}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return BiddingRectangleIrregularView.this.new AnonymousClass1(continuation);
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
                BiddingNativeManager biddingNativeManager = BiddingRectangleIrregularView.this.adNativeManager;
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
    public BiddingRectangleIrregularView(Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public BiddingRectangleIrregularView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.h(context, "context");
        NativeWrapperAdView nativeWrapperAdView = new NativeWrapperAdView(context, null, 2, null);
        this.nativeWrapperAdView = nativeWrapperAdView;
        this.hiSceneOff = true;
        this.hiPlacementNon = true;
        this.adNativeListener = new a();
        addView(nativeWrapperAdView);
    }

    public /* synthetic */ BiddingRectangleIrregularView(Context context, AttributeSet attributeSet, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet);
    }

    public final void destroyAd() {
        BiddingNativeManager biddingNativeManager = this.adNativeManager;
        if (biddingNativeManager != null) {
            biddingNativeManager.V();
        }
        this.adNativeManager = null;
    }

    public final void loadAd() {
        LifecycleCoroutineScope lifecycleCoroutineScopeA;
        if (((this.hiSceneOff || this.hiPlacementNon) && this.mMaxEcpmObject != null) || TextUtils.isEmpty(this.mSceneId)) {
            return;
        }
        destroyAd();
        BiddingNativeManager biddingNativeManager = new BiddingNativeManager();
        this.adNativeManager = biddingNativeManager;
        biddingNativeManager.O0(this.mSceneId);
        BiddingNativeManager biddingNativeManager2 = this.adNativeManager;
        if (biddingNativeManager2 != null) {
            biddingNativeManager2.N0(this.adNativeListener);
        }
        Context context = getContext();
        AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
        if (appCompatActivity == null || (lifecycleCoroutineScopeA = v.a(appCompatActivity)) == null) {
            return;
        }
        kotlinx.coroutines.k.d(lifecycleCoroutineScopeA, null, null, new AnonymousClass1(null), 3, null);
    }

    public final void onAdViewDestroy() {
        destroyAd();
        this.adNativeManager = null;
        this.mMaxEcpmObject = null;
        removeAllViews();
    }

    public final void setIrregularAdListener(di.a listener) {
        this.mIrregularAdListener = listener;
    }

    public final void setSceneId(String sceneId) {
        Intrinsics.h(sceneId, "sceneId");
        this.mSceneId = sceneId;
        this.hiSceneOff = com.transsion.ad.scene.c.b(com.transsion.ad.scene.c.f42203a, sceneId, false, 2, null);
        this.hiPlacementNon = TextUtils.isEmpty(com.transsion.ad.scene.a.f42201a.h(sceneId));
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
        BiddingNativeManager biddingNativeManager = this.adNativeManager;
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
            setVisibility(8);
            di.a aVar = this.mIrregularAdListener;
            if (aVar != null) {
                aVar.i(new TAdErrorCode(0, "ignore hisavana adx"));
                return;
            }
            return;
        }
        if (this.nativeViewBinder == null) {
            cy.b bVar = cy.b.f60940a;
            Context context = getContext();
            Intrinsics.g(context, "getContext(...)");
            this.nativeViewBinder = bVar.a(context, this.mSceneId);
        }
        this.nativeWrapperAdView.bindNativeView(this.adNativeManager, this.nativeViewBinder, this.mMaxEcpmObject);
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
        setVisibility(0);
        di.a aVar2 = this.mIrregularAdListener;
        if (aVar2 != null) {
            aVar2.j(this.mMaxEcpmObject);
        }
    }
}
