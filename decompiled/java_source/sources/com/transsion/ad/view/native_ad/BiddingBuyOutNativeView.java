package com.transsion.ad.view.native_ad;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestManager;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.ad.bidding.base.AbsBiddingBuyOutView;
import com.transsion.ad.bidding.base.r;
import com.transsion.ad.bidding.base.w;
import com.transsion.ad.monopoly.model.AdMaterialList;
import com.transsion.ad.monopoly.model.AdPlans;
import com.transsion.ad.monopoly.model.MbAdImage;
import com.transsion.ad.strategy.i;
import com.transsion.ad.view.AdTagView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ti.g;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u001d\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0011\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u0011\u0010\u000b\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u000b\u0010\nJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0015\u001a\u00020\u00142\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\u0015\u0010\u0016R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001d\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006\u001e"}, d2 = {"Lcom/transsion/ad/view/native_ad/BiddingBuyOutNativeView;", "Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "Landroid/widget/FrameLayout;", "getMediaContainer", "()Landroid/widget/FrameLayout;", "getVolumeContainer", "", "isShowVolumeIcon", "()Z", "", "getLogTag", "()Ljava/lang/String;", "Lcom/transsion/ad/bidding/base/r;", "adLayoutProvider", "", "bindNativeView", "(Lcom/transsion/ad/bidding/base/r;)V", "Lcom/transsion/ad/bidding/base/w;", TtmlNode.TAG_P, "Lcom/transsion/ad/bidding/base/w;", "adProviderBean", CampaignEx.JSON_KEY_AD_Q, "Z", "mIsShowVolumeIcon", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class BiddingBuyOutNativeView extends AbsBiddingBuyOutView {

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private w adProviderBean;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private boolean mIsShowVolumeIcon;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    @JvmOverloads
    public BiddingBuyOutNativeView(Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public BiddingBuyOutNativeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.h(context, "context");
        this.mIsShowVolumeIcon = true;
    }

    public /* synthetic */ BiddingBuyOutNativeView(Context context, AttributeSet attributeSet, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit k(BiddingBuyOutNativeView biddingBuyOutNativeView, View it) {
        Intrinsics.h(it, "it");
        biddingBuyOutNativeView.onAdClick();
        return Unit.f67061a;
    }

    public final void bindNativeView(r adLayoutProvider) {
        Integer numE;
        MbAdImage image;
        MbAdImage image2;
        MbAdImage image3;
        AdMaterialList mAdMaterialList;
        if (getMAdPlans() == null || adLayoutProvider == null) {
            return;
        }
        Context context = getContext();
        String path = null;
        Activity activity = context instanceof Activity ? (Activity) context : null;
        if (activity != null && activity.isDestroyed()) {
            oi.b.a.c(this, 5, "bindNativeView() --> 当前Activity销毁，广告就不需要展示了", null, false, 4, null);
            return;
        }
        w wVarG = adLayoutProvider.g();
        this.adProviderBean = wVarG;
        this.mIsShowVolumeIcon = adLayoutProvider.B();
        Integer numL = wVarG.l();
        if (numL != null) {
            TextView textView = (TextView) wVarG.i().findViewById(numL.intValue());
            if (textView != null) {
                AdMaterialList mAdMaterialList2 = getMAdMaterialList();
                textView.setText(mAdMaterialList2 != null ? mAdMaterialList2.getTitle() : null);
            }
        }
        Integer numG = wVarG.g();
        if (numG != null) {
            TextView textView2 = (TextView) wVarG.i().findViewById(numG.intValue());
            if (textView2 != null) {
                AdMaterialList mAdMaterialList3 = getMAdMaterialList();
                textView2.setText(mAdMaterialList3 != null ? mAdMaterialList3.getDesc() : null);
            }
        }
        Integer numF = wVarG.f();
        if (numF != null) {
            TextView textView3 = (TextView) wVarG.i().findViewById(numF.intValue());
            if (textView3 != null) {
                AdMaterialList mAdMaterialList4 = getMAdMaterialList();
                if (TextUtils.isEmpty(mAdMaterialList4 != null ? mAdMaterialList4.getButtonText() : null) && (mAdMaterialList = getMAdMaterialList()) != null) {
                    mAdMaterialList.setButtonText("GO");
                }
                AdMaterialList mAdMaterialList5 = getMAdMaterialList();
                textView3.setText(mAdMaterialList5 != null ? mAdMaterialList5.getButtonText() : null);
                textView3.setOnClickListener(new g(0L, new Function1() { // from class: com.transsion.ad.view.native_ad.a
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return BiddingBuyOutNativeView.k(this.f42437a, (View) obj);
                    }
                }, 1, null));
            }
        }
        Integer numH = wVarG.h();
        if (numH != null) {
            FrameLayout frameLayout = (FrameLayout) wVarG.i().findViewById(numH.intValue());
            if (frameLayout != null) {
                frameLayout.removeAllViews();
                ImageView imageView = new ImageView(frameLayout.getContext());
                imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
                AdPlans mAdPlans = getMAdPlans();
                if (TextUtils.isEmpty(mAdPlans != null ? mAdPlans.getAdvertiserAvatarPath() : null)) {
                    RequestManager requestManagerWith = Glide.with(frameLayout.getContext());
                    AdPlans mAdPlans2 = getMAdPlans();
                    requestManagerWith.load2(mAdPlans2 != null ? mAdPlans2.getAdvertiserAvatar() : null).fitCenter().into(imageView);
                } else {
                    RequestManager requestManagerWith2 = Glide.with(frameLayout.getContext());
                    AdPlans mAdPlans3 = getMAdPlans();
                    requestManagerWith2.load2(mAdPlans3 != null ? mAdPlans3.getAdvertiserAvatarPath() : null).fitCenter().into(imageView);
                }
                frameLayout.addView(imageView);
            }
        }
        AdMaterialList mAdMaterialList6 = getMAdMaterialList();
        if (Intrinsics.c(mAdMaterialList6 != null ? mAdMaterialList6.getType() : null, AdMaterialList.NON_AD_TYPE_TEXT) && (numE = wVarG.e()) != null) {
            ImageView imageView2 = (ImageView) wVarG.i().findViewById(numE.intValue());
            imageView2.setScaleType(ImageView.ScaleType.CENTER_CROP);
            AdMaterialList mAdMaterialList7 = getMAdMaterialList();
            if (TextUtils.isEmpty((mAdMaterialList7 == null || (image3 = mAdMaterialList7.getImage()) == null) ? null : image3.getPath())) {
                AdMaterialList mAdMaterialList8 = getMAdMaterialList();
                if (mAdMaterialList8 != null && (image2 = mAdMaterialList8.getImage()) != null) {
                    path = image2.getUrl();
                }
            } else {
                AdMaterialList mAdMaterialList9 = getMAdMaterialList();
                if (mAdMaterialList9 != null && (image = mAdMaterialList9.getImage()) != null) {
                    path = image.getPath();
                }
            }
            Glide.with(getContext()).load2(path).transform(new wi.a(25)).into(imageView2);
        }
        Integer numC = wVarG.c();
        if (numC != null) {
            AdTagView adTagView = (AdTagView) wVarG.i().findViewById(numC.intValue());
            if (adTagView != null) {
                i.f42235a.a(adTagView);
            }
        }
        showMedia();
        removeAllViews();
        addView(wVarG.i(), new FrameLayout.LayoutParams(-1, -1));
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingBuyOutView, oi.b
    public String getLogTag() {
        return "ad_n";
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingBuyOutView
    public FrameLayout getMediaContainer() {
        Integer numH;
        View viewI;
        Integer numJ;
        View viewI2;
        w wVar = this.adProviderBean;
        if (wVar != null && (numJ = wVar.j()) != null) {
            int iIntValue = numJ.intValue();
            w wVar2 = this.adProviderBean;
            if (wVar2 == null || (viewI2 = wVar2.i()) == null) {
                return null;
            }
            return (FrameLayout) viewI2.findViewById(iIntValue);
        }
        w wVar3 = this.adProviderBean;
        if (wVar3 == null || (numH = wVar3.h()) == null) {
            return null;
        }
        int iIntValue2 = numH.intValue();
        w wVar4 = this.adProviderBean;
        if (wVar4 == null || (viewI = wVar4.i()) == null) {
            return null;
        }
        return (FrameLayout) viewI.findViewById(iIntValue2);
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingBuyOutView
    public FrameLayout getVolumeContainer() {
        Integer numM;
        View viewI;
        w wVar = this.adProviderBean;
        if (wVar == null || (numM = wVar.m()) == null) {
            return null;
        }
        int iIntValue = numM.intValue();
        w wVar2 = this.adProviderBean;
        if (wVar2 == null || (viewI = wVar2.i()) == null) {
            return null;
        }
        return (FrameLayout) viewI.findViewById(iIntValue);
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingBuyOutView
    /* JADX INFO: renamed from: isShowVolumeIcon, reason: from getter */
    public boolean getMIsShowVolumeIcon() {
        return this.mIsShowVolumeIcon;
    }
}
