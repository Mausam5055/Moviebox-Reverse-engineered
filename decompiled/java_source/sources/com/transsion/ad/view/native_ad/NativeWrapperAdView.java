package com.transsion.ad.view.native_ad;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.cloud.hisavana.sdk.api.view.TNativeView;
import com.cloud.hisavana.sdk.common.bean.TaNativeInfo;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.mediation.ad.TAdNativeView;
import com.hisavana.mediation.ad.TIconView;
import com.hisavana.mediation.ad.TMediaView;
import com.hisavana.mediation.ad.TNativeAd;
import com.hisavana.mediation.ad.ViewBinder;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.base.r;
import com.transsion.ad.bidding.base.u;
import com.transsion.ad.bidding.nativead.BiddingHiSavanaNativeProvider;
import com.transsion.ad.bidding.nativead.BiddingHiSspNativeProvider;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.ad.bidding.nativead.BiddingSspNativeManager;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import z6.d;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001d\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\t\u0010\nJ\u001b\u0010\u000e\u001a\u00020\r2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u001b\u0010\u0010\u001a\u00020\r2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0002¢\u0006\u0004\b\u0010\u0010\u000fJ-\u0010\u0016\u001a\u00020\u00152\b\u0010\u0012\u001a\u0004\u0018\u00010\u00112\b\u0010\u0014\u001a\u0004\u0018\u00010\u00132\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0002¢\u0006\u0004\b\u0016\u0010\u0017J-\u0010\u0018\u001a\u00020\u00152\b\u0010\u0012\u001a\u0004\u0018\u00010\u00112\b\u0010\u0014\u001a\u0004\u0018\u00010\u00132\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0002¢\u0006\u0004\b\u0018\u0010\u0017J-\u0010\u001c\u001a\u00020\u00152\b\u0010\u0012\u001a\u0004\u0018\u00010\u00192\b\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ-\u0010\u001e\u001a\u00020\u00152\b\u0010\u0012\u001a\u0004\u0018\u00010\u00192\b\u0010\u0014\u001a\u0004\u0018\u00010\u00132\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u0015\u0010\"\u001a\u00020\u00152\u0006\u0010!\u001a\u00020 ¢\u0006\u0004\b\"\u0010#J-\u0010$\u001a\u00020\u00152\b\u0010\u0012\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00132\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b$\u0010\u0017J/\u0010&\u001a\u00020\u00152\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u001a¢\u0006\u0004\b&\u0010'J9\u0010(\u001a\u00020\u00152\b\u0010\u0012\u001a\u0004\u0018\u00010\u00192\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u001a2\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b(\u0010)R\u0018\u0010,\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010+R\u0018\u0010/\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010.R\u0018\u00102\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u00101R\u0016\u0010!\u001a\u00020 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u00103¨\u00064"}, d2 = {"Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "getClassTag", "()Ljava/lang/String;", "Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;", "maxEcpmObject", "", "e", "(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)Z", "f", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "adManager", "Lcom/transsion/ad/bidding/base/r;", "adLayoutProvider", "", "a", "(Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V", "c", "Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;", "Lcom/transsion/ad/bidding/base/u;", "layoutProvider", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "(Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;Lcom/transsion/ad/bidding/base/u;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V", "Landroid/widget/ImageView$ScaleType;", "scaleType", "setScaleType", "(Landroid/widget/ImageView$ScaleType;)V", "bindNativeView", "sspLayoutProvider", "simulatingClick", "(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/u;)V", "bindSspNativeView", "(Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/u;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V", "Lcom/transsion/ad/view/native_ad/BiddingBuyOutNativeView;", "Lcom/transsion/ad/view/native_ad/BiddingBuyOutNativeView;", "buyoutNativeView", "Lcom/hisavana/mediation/ad/TAdNativeView;", "Lcom/hisavana/mediation/ad/TAdNativeView;", "hiNativeView", "Lcom/cloud/hisavana/sdk/api/view/TNativeView;", "Lcom/cloud/hisavana/sdk/api/view/TNativeView;", "hiSspNativeView", "Landroid/widget/ImageView$ScaleType;", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class NativeWrapperAdView extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private BiddingBuyOutNativeView buyoutNativeView;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private TAdNativeView hiNativeView;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private TNativeView hiSspNativeView;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private ImageView.ScaleType scaleType;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    @JvmOverloads
    public NativeWrapperAdView(Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public NativeWrapperAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.h(context, "context");
        this.scaleType = ImageView.ScaleType.FIT_CENTER;
    }

    public /* synthetic */ NativeWrapperAdView(Context context, AttributeSet attributeSet, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private final void a(BiddingNativeManager adManager, r adLayoutProvider, BiddingIntermediateMaterialBean maxEcpmObject) {
        Boolean boolIsExpend;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        if (this.buyoutNativeView == null) {
            Context context = getContext();
            Intrinsics.g(context, "getContext(...)");
            BiddingBuyOutNativeView biddingBuyOutNativeView = new BiddingBuyOutNativeView(context, objArr2 == true ? 1 : 0, 2, objArr == true ? 1 : 0);
            this.buyoutNativeView = biddingBuyOutNativeView;
            addView(biddingBuyOutNativeView);
        }
        BiddingBuyOutNativeView biddingBuyOutNativeView2 = this.buyoutNativeView;
        if (biddingBuyOutNativeView2 != null) {
            biddingBuyOutNativeView2.isReportAdDisplay((maxEcpmObject == null || (boolIsExpend = maxEcpmObject.isExpend()) == null) ? false : boolIsExpend.booleanValue());
        }
        BiddingBuyOutNativeView biddingBuyOutNativeView3 = this.buyoutNativeView;
        if (biddingBuyOutNativeView3 != null) {
            biddingBuyOutNativeView3.setEcpmObject(maxEcpmObject);
        }
        BiddingBuyOutNativeView biddingBuyOutNativeView4 = this.buyoutNativeView;
        if (biddingBuyOutNativeView4 != null) {
            biddingBuyOutNativeView4.setSceneId(adManager != null ? adManager.getMSceneId() : null);
        }
        BiddingBuyOutNativeView biddingBuyOutNativeView5 = this.buyoutNativeView;
        if (biddingBuyOutNativeView5 != null) {
            biddingBuyOutNativeView5.setScaleType(this.scaleType);
        }
        BiddingBuyOutNativeView biddingBuyOutNativeView6 = this.buyoutNativeView;
        if (biddingBuyOutNativeView6 != null) {
            biddingBuyOutNativeView6.bindNativeView(adLayoutProvider);
        }
        BiddingBuyOutNativeView biddingBuyOutNativeView7 = this.buyoutNativeView;
        if (biddingBuyOutNativeView7 != null) {
            biddingBuyOutNativeView7.setListener(adManager);
        }
        if (adManager != null) {
            adManager.S0(this.buyoutNativeView);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private final void b(BiddingSspNativeManager adManager, r adLayoutProvider, BiddingIntermediateMaterialBean maxEcpmObject) {
        Boolean boolIsExpend;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        if (this.buyoutNativeView == null) {
            Context context = getContext();
            Intrinsics.g(context, "getContext(...)");
            BiddingBuyOutNativeView biddingBuyOutNativeView = new BiddingBuyOutNativeView(context, objArr2 == true ? 1 : 0, 2, objArr == true ? 1 : 0);
            this.buyoutNativeView = biddingBuyOutNativeView;
            addView(biddingBuyOutNativeView);
        }
        BiddingBuyOutNativeView biddingBuyOutNativeView2 = this.buyoutNativeView;
        if (biddingBuyOutNativeView2 != null) {
            biddingBuyOutNativeView2.isReportAdDisplay((maxEcpmObject == null || (boolIsExpend = maxEcpmObject.isExpend()) == null) ? false : boolIsExpend.booleanValue());
        }
        BiddingBuyOutNativeView biddingBuyOutNativeView3 = this.buyoutNativeView;
        if (biddingBuyOutNativeView3 != null) {
            biddingBuyOutNativeView3.setEcpmObject(maxEcpmObject);
        }
        BiddingBuyOutNativeView biddingBuyOutNativeView4 = this.buyoutNativeView;
        if (biddingBuyOutNativeView4 != null) {
            biddingBuyOutNativeView4.setSceneId(adManager != null ? adManager.getMSceneId() : null);
        }
        BiddingBuyOutNativeView biddingBuyOutNativeView5 = this.buyoutNativeView;
        if (biddingBuyOutNativeView5 != null) {
            biddingBuyOutNativeView5.setScaleType(this.scaleType);
        }
        BiddingBuyOutNativeView biddingBuyOutNativeView6 = this.buyoutNativeView;
        if (biddingBuyOutNativeView6 != null) {
            biddingBuyOutNativeView6.bindNativeView(adLayoutProvider);
        }
        BiddingBuyOutNativeView biddingBuyOutNativeView7 = this.buyoutNativeView;
        if (biddingBuyOutNativeView7 != null) {
            biddingBuyOutNativeView7.setListener(adManager);
        }
        if (adManager != null) {
            adManager.V0(this.buyoutNativeView);
        }
    }

    public static /* synthetic */ void bindNativeView$default(NativeWrapperAdView nativeWrapperAdView, BiddingNativeManager biddingNativeManager, r rVar, BiddingIntermediateMaterialBean biddingIntermediateMaterialBean, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            rVar = null;
        }
        nativeWrapperAdView.bindNativeView(biddingNativeManager, rVar, biddingIntermediateMaterialBean);
    }

    public static /* synthetic */ void bindSspNativeView$default(NativeWrapperAdView nativeWrapperAdView, BiddingSspNativeManager biddingSspNativeManager, r rVar, u uVar, BiddingIntermediateMaterialBean biddingIntermediateMaterialBean, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            rVar = null;
        }
        if ((i11 & 4) != 0) {
            uVar = null;
        }
        nativeWrapperAdView.bindSspNativeView(biddingSspNativeManager, rVar, uVar, biddingIntermediateMaterialBean);
    }

    private final void c(BiddingNativeManager adManager, r adLayoutProvider, BiddingIntermediateMaterialBean maxEcpmObject) {
        if (this.hiNativeView == null) {
            TAdNativeView tAdNativeView = new TAdNativeView(getContext());
            this.hiNativeView = tAdNativeView;
            addView(tAdNativeView);
        }
        if (adManager != null) {
            adManager.T0(this.hiNativeView);
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            TAdNativeInfo nativeInfo = maxEcpmObject != null ? maxEcpmObject.getNativeInfo() : null;
            if (this.hiNativeView != null && adLayoutProvider != null && nativeInfo != null) {
                ViewBinder viewBinderQ = adLayoutProvider.q(adLayoutProvider.g(), maxEcpmObject.getNativeInfo());
                BiddingHiSavanaNativeProvider biddingHiSavanaNativeProviderB = BiddingHiSavanaNativeProvider.f41983j.b(adManager != null ? adManager.getMSceneId() : null);
                TNativeAd tNativeAdL = biddingHiSavanaNativeProviderB != null ? biddingHiSavanaNativeProviderB.l() : null;
                if (tNativeAdL != null) {
                    TAdNativeView tAdNativeView2 = this.hiNativeView;
                    Intrinsics.e(tAdNativeView2);
                    tNativeAdL.bindNativeView(tAdNativeView2, nativeInfo, viewBinderQ);
                }
            }
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    private final void d(BiddingSspNativeManager adManager, u layoutProvider, BiddingIntermediateMaterialBean maxEcpmObject) {
        Object objM454constructorimpl;
        Unit unit = null;
        TaNativeInfo sspNativeInfo = maxEcpmObject != null ? maxEcpmObject.getSspNativeInfo() : null;
        if (this.hiSspNativeView == null) {
            TNativeView tNativeView = new TNativeView(getContext());
            this.hiSspNativeView = tNativeView;
            addView(tNativeView);
        }
        if (adManager != null) {
            adManager.W0(this.hiSspNativeView);
        }
        TNativeView tNativeView2 = this.hiSspNativeView;
        if (tNativeView2 == null || layoutProvider == null) {
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            BiddingHiSspNativeProvider biddingHiSspNativeProviderB = BiddingHiSspNativeProvider.f41991h.b(adManager != null ? adManager.getMSceneId() : null);
            d dVarK = biddingHiSspNativeProviderB != null ? biddingHiSspNativeProviderB.k() : null;
            Intrinsics.e(sspNativeInfo);
            List listD = layoutProvider.d(tNativeView2, sspNativeInfo);
            if (dVarK != null) {
                dVarK.y(tNativeView2, listD, sspNativeInfo);
                unit = Unit.f67061a;
            }
            objM454constructorimpl = Result.m454constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            oi.a.o(oi.a.f71022a, getClassTag(), "-----> bindNativeView --> error: " + thM457exceptionOrNullimpl.getMessage(), 0, false, 12, null);
        }
        Result.m453boximpl(objM454constructorimpl);
    }

    private final boolean e(BiddingIntermediateMaterialBean maxEcpmObject) {
        return (maxEcpmObject != null ? maxEcpmObject.getNativeInfo() : null) != null;
    }

    private final boolean f(BiddingIntermediateMaterialBean maxEcpmObject) {
        return (maxEcpmObject != null ? maxEcpmObject.getSspNativeInfo() : null) != null;
    }

    private final String getClassTag() {
        String simpleName = NativeWrapperAdView.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public static /* synthetic */ void simulatingClick$default(NativeWrapperAdView nativeWrapperAdView, BiddingIntermediateMaterialBean biddingIntermediateMaterialBean, r rVar, u uVar, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            rVar = null;
        }
        if ((i11 & 4) != 0) {
            uVar = null;
        }
        nativeWrapperAdView.simulatingClick(biddingIntermediateMaterialBean, rVar, uVar);
    }

    public final void bindNativeView(BiddingNativeManager adManager, r adLayoutProvider, BiddingIntermediateMaterialBean maxEcpmObject) {
        if (adManager == null || maxEcpmObject == null || adLayoutProvider == null) {
            oi.a.o(oi.a.f71022a, "ad_n", getClassTag() + " --> bindNativeView() --> 参数为空 --> maxEcpmObject = " + maxEcpmObject + " --> adLayoutProvider = " + adLayoutProvider, 6, false, 8, null);
            return;
        }
        if (e(maxEcpmObject)) {
            c(adManager, adLayoutProvider, maxEcpmObject);
            BiddingBuyOutNativeView biddingBuyOutNativeView = this.buyoutNativeView;
            if (biddingBuyOutNativeView != null) {
                biddingBuyOutNativeView.setVisibility(8);
            }
            TNativeView tNativeView = this.hiSspNativeView;
            if (tNativeView != null) {
                tNativeView.setVisibility(8);
            }
            TAdNativeView tAdNativeView = this.hiNativeView;
            if (tAdNativeView != null) {
                tAdNativeView.setVisibility(0);
                return;
            }
            return;
        }
        a(adManager, adLayoutProvider, maxEcpmObject);
        BiddingBuyOutNativeView biddingBuyOutNativeView2 = this.buyoutNativeView;
        if (biddingBuyOutNativeView2 != null) {
            biddingBuyOutNativeView2.setVisibility(0);
        }
        TAdNativeView tAdNativeView2 = this.hiNativeView;
        if (tAdNativeView2 != null) {
            tAdNativeView2.setVisibility(8);
        }
        TNativeView tNativeView2 = this.hiSspNativeView;
        if (tNativeView2 != null) {
            tNativeView2.setVisibility(8);
        }
    }

    public final void bindSspNativeView(BiddingSspNativeManager adManager, r adLayoutProvider, u sspLayoutProvider, BiddingIntermediateMaterialBean maxEcpmObject) {
        if (adManager == null || maxEcpmObject == null) {
            oi.a.o(oi.a.f71022a, "ad_n", getClassTag() + " --> bindSspNativeView() --> 参数为空 --> maxEcpmObject = " + maxEcpmObject, 6, false, 8, null);
            return;
        }
        if (f(maxEcpmObject)) {
            d(adManager, sspLayoutProvider, maxEcpmObject);
            BiddingBuyOutNativeView biddingBuyOutNativeView = this.buyoutNativeView;
            if (biddingBuyOutNativeView != null) {
                biddingBuyOutNativeView.setVisibility(8);
            }
            TAdNativeView tAdNativeView = this.hiNativeView;
            if (tAdNativeView != null) {
                tAdNativeView.setVisibility(8);
            }
            TNativeView tNativeView = this.hiSspNativeView;
            if (tNativeView != null) {
                tNativeView.setVisibility(0);
                return;
            }
            return;
        }
        b(adManager, adLayoutProvider, maxEcpmObject);
        BiddingBuyOutNativeView biddingBuyOutNativeView2 = this.buyoutNativeView;
        if (biddingBuyOutNativeView2 != null) {
            biddingBuyOutNativeView2.setVisibility(0);
        }
        TAdNativeView tAdNativeView2 = this.hiNativeView;
        if (tAdNativeView2 != null) {
            tAdNativeView2.setVisibility(8);
        }
        TNativeView tNativeView2 = this.hiSspNativeView;
        if (tNativeView2 != null) {
            tNativeView2.setVisibility(8);
        }
    }

    public final void setScaleType(ImageView.ScaleType scaleType) {
        Intrinsics.h(scaleType, "scaleType");
        this.scaleType = scaleType;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0023  */
    /* JADX WARN: Code duplicated, block: B:16:0x0027  */
    public final void simulatingClick(BiddingIntermediateMaterialBean maxEcpmObject, r adLayoutProvider, u sspLayoutProvider) {
        View viewF;
        TAdNativeView tAdNativeView;
        View view;
        Integer numS;
        Integer numV;
        View view2 = null;
        if (!e(maxEcpmObject)) {
            if (!f(maxEcpmObject)) {
                BiddingBuyOutNativeView biddingBuyOutNativeView = this.buyoutNativeView;
                if (biddingBuyOutNativeView != null) {
                    biddingBuyOutNativeView.onAdClick();
                    return;
                }
                return;
            }
            if (sspLayoutProvider == null || (viewF = sspLayoutProvider.g()) == null) {
                viewF = sspLayoutProvider != null ? sspLayoutProvider.f() : null;
            }
            if (viewF != null) {
                viewF.performClick();
                return;
            }
            return;
        }
        TAdNativeView tAdNativeView2 = this.hiNativeView;
        int iIntValue = 0;
        if (tAdNativeView2 == null) {
            tAdNativeView = this.hiNativeView;
            if (tAdNativeView != null) {
                if (adLayoutProvider != null && (numS = adLayoutProvider.s()) != null) {
                    iIntValue = numS.intValue();
                }
                view2 = (TIconView) tAdNativeView.findViewById(iIntValue);
            }
            view = view2;
        } else {
            view = (TMediaView) tAdNativeView2.findViewById((adLayoutProvider == null || (numV = adLayoutProvider.v()) == null) ? 0 : numV.intValue());
            if (view == null) {
                tAdNativeView = this.hiNativeView;
                if (tAdNativeView != null) {
                    if (adLayoutProvider != null) {
                        iIntValue = numS.intValue();
                    }
                    view2 = (TIconView) tAdNativeView.findViewById(iIntValue);
                }
                view = view2;
            }
        }
        if (view != null) {
            view.performClick();
        }
    }
}
