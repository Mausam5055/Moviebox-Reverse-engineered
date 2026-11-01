package com.transsion.ad.bidding.icon;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.mediation.ad.TAdNativeView;
import com.hisavana.mediation.ad.TIconView;
import com.hisavana.mediation.ad.TNativeAd;
import com.hisavana.mediation.ad.ViewBinder;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.ad.bidding.base.r;
import com.transsion.ad.view.native_ad.BiddingIconView;
import com.transsion.push.PushConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ti.q;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001d\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\r\u0010\t\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ!\u0010\u000f\u001a\u00020\b2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u000f\u0010\u0010J)\u0010\u0014\u001a\u00020\b2\b\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u0013\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u0014\u0010\u0015R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006\u001e"}, d2 = {"Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", PushConstants.PROVIDER_FIELD_DESTROY, "()V", "Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;", "data", "Lcom/transsion/ad/bidding/base/r;", "viewBinder", "onClick", "(Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;Lcom/transsion/ad/bidding/base/r;)V", "Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;", "adManager", "absAdLayoutProvider", "showData", "(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;Lcom/transsion/ad/bidding/base/r;)V", "Lcom/transsion/ad/view/native_ad/BiddingIconView;", "a", "Lcom/transsion/ad/view/native_ad/BiddingIconView;", "biddingIconView", "Lcom/hisavana/mediation/ad/TAdNativeView;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/hisavana/mediation/ad/TAdNativeView;", "tAdNativeView", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class BiddingWrapperIconView extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private BiddingIconView biddingIconView;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private TAdNativeView tAdNativeView;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    @JvmOverloads
    public BiddingWrapperIconView(Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public BiddingWrapperIconView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.h(context, "context");
    }

    public /* synthetic */ BiddingWrapperIconView(Context context, AttributeSet attributeSet, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet);
    }

    public final void destroy() {
        BiddingIconView biddingIconView = this.biddingIconView;
        if (biddingIconView != null) {
            biddingIconView.destroy();
        }
        TAdNativeView tAdNativeView = this.tAdNativeView;
        if (tAdNativeView != null) {
            tAdNativeView.release();
        }
    }

    public final void onClick(BiddingWrapperIconBean data, r viewBinder) {
        TAdNativeView tAdNativeView;
        Integer numS;
        Integer numValueOf = data != null ? Integer.valueOf(data.getType()) : null;
        if (numValueOf != null && numValueOf.intValue() == 1) {
            BiddingIconView biddingIconView = this.biddingIconView;
            if (biddingIconView != null) {
                biddingIconView.iconPerformClick();
                return;
            }
            return;
        }
        if (numValueOf == null || numValueOf.intValue() != 2 || (tAdNativeView = this.tAdNativeView) == null) {
            return;
        }
        TIconView tIconView = (TIconView) tAdNativeView.findViewById((viewBinder == null || (numS = viewBinder.s()) == null) ? 0 : numS.intValue());
        if (tIconView != null) {
            tIconView.performClick();
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
    public final void showData(BiddingIconAdManager adManager, BiddingWrapperIconBean data, r absAdLayoutProvider) {
        ViewBinder viewBinderQ;
        TNativeAd tNativeAdM;
        BiddingIconView biddingIconView;
        Intrinsics.h(data, "data");
        if (adManager != null) {
            adManager.E(this);
        }
        int i11 = 2;
        if (data.getType() != 1) {
            if (data.getType() == 2) {
                TAdNativeView tAdNativeView = this.tAdNativeView;
                if (tAdNativeView != null) {
                    tAdNativeView.release();
                }
                q.f76267a.a(this.tAdNativeView);
                TAdNativeView tAdNativeView2 = new TAdNativeView(getContext());
                this.tAdNativeView = tAdNativeView2;
                TAdNativeInfo nativeInfo = data.getNativeInfo();
                if (nativeInfo != null && absAdLayoutProvider != null && (viewBinderQ = absAdLayoutProvider.q(absAdLayoutProvider.g(), nativeInfo)) != null && adManager != null && (tNativeAdM = adManager.M()) != null) {
                    tNativeAdM.bindNativeView(tAdNativeView2, nativeInfo, viewBinderQ);
                }
                BiddingIconView biddingIconView2 = this.biddingIconView;
                if (biddingIconView2 != null) {
                    biddingIconView2.setVisibility(8);
                }
                TAdNativeView tAdNativeView3 = this.tAdNativeView;
                if (tAdNativeView3 != null) {
                    tAdNativeView3.setVisibility(0);
                }
                addView(this.tAdNativeView);
                return;
            }
            return;
        }
        BiddingIconView biddingIconView3 = this.biddingIconView;
        if (biddingIconView3 != null) {
            biddingIconView3.destroy();
        }
        q.f76267a.a(this.biddingIconView);
        Context context = getContext();
        Intrinsics.g(context, "getContext(...)");
        this.biddingIconView = new BiddingIconView(context, 0 == true ? 1 : 0, i11, 0 == true ? 1 : 0);
        if (data.isDisplay() && (biddingIconView = this.biddingIconView) != null) {
            biddingIconView.isReportAdDisplay(true);
        }
        BiddingIconView biddingIconView4 = this.biddingIconView;
        if (biddingIconView4 != null) {
            biddingIconView4.setSceneId(adManager != null ? adManager.getSceneId() : null);
        }
        BiddingIconView biddingIconView5 = this.biddingIconView;
        if (biddingIconView5 != null) {
            biddingIconView5.setListener(adManager != null ? adManager.K() : null);
        }
        BiddingIconView biddingIconView6 = this.biddingIconView;
        if (biddingIconView6 != null) {
            biddingIconView6.setRecommendInfo(data.getRecommendInfo());
        }
        BiddingIconView biddingIconView7 = this.biddingIconView;
        if (biddingIconView7 != null) {
            biddingIconView7.bindIconView(absAdLayoutProvider);
        }
        TAdNativeView tAdNativeView4 = this.tAdNativeView;
        if (tAdNativeView4 != null) {
            tAdNativeView4.setVisibility(8);
        }
        BiddingIconView biddingIconView8 = this.biddingIconView;
        if (biddingIconView8 != null) {
            biddingIconView8.setVisibility(0);
        }
        addView(this.biddingIconView);
    }
}
