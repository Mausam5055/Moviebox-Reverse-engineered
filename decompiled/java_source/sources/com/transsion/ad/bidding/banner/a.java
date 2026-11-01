package com.transsion.ad.bidding.banner;

import android.content.Context;
import com.hisavana.common.bean.AdditionalInfo;
import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.gemini.AbsBiddingBuyOutGemini;
import com.transsion.ad.monopoly.model.AdPlans;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class a extends AbsAdBidding {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private BiddingHiSavanaBannerProvider f41790v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private BiddingBuyOutBannerView f41791w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private AdditionalInfo f41792x;

    @Override // com.transsion.ad.bidding.base.AbsAdBidding
    public void S(List biddingPlan, AdPlans adPlans, int i11) {
        Intrinsics.h(biddingPlan, "biddingPlan");
        Intrinsics.h(adPlans, "adPlans");
        if (this.f41792x != null) {
            if (u0(adPlans)) {
                AdditionalInfo additionalInfo = this.f41792x;
                adPlans.setBidEcpmCent(additionalInfo != null ? additionalInfo.getECPM() : null);
            }
            biddingPlan.add(new BiddingIntermediateMaterialBean(adPlans.getBidEcpmCent(), adPlans, null, null, this.f41790v, null, null, Boolean.FALSE, getMSceneId(), null, null, 103, 1644, null));
        }
    }

    public final void S0() {
        BiddingBuyOutBannerView biddingBuyOutBannerView = this.f41791w;
        if (biddingBuyOutBannerView != null) {
            biddingBuyOutBannerView.showAd();
        }
    }

    @Override // com.transsion.ad.bidding.base.AbsAdBidding
    public boolean U() {
        return true;
    }

    @Override // com.transsion.ad.bidding.base.AbsAdBidding
    public void V() {
        super.V();
        BiddingBuyOutBannerView biddingBuyOutBannerView = this.f41791w;
        if (biddingBuyOutBannerView != null) {
            biddingBuyOutBannerView.destroy();
        }
        this.f41791w = null;
        BiddingHiSavanaBannerProvider biddingHiSavanaBannerProvider = this.f41790v;
        if (biddingHiSavanaBannerProvider != null) {
            biddingHiSavanaBannerProvider.b();
        }
        this.f41790v = null;
        this.f41792x = null;
    }

    @Override // com.transsion.ad.bidding.base.AbsAdBidding
    public int a0() {
        return 1;
    }

    @Override // oi.b
    public String getLogTag() {
        return "ad_b";
    }

    @Override // com.transsion.ad.bidding.base.AbsAdBidding
    public AbsBiddingBuyOutGemini h0() {
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0032  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [android.util.AttributeSet, kotlin.jvm.internal.DefaultConstructorMarker] */
    /* JADX WARN: Type inference failed for: r0v1, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r9v0, types: [com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean] */
    @Override // com.transsion.ad.bidding.base.AbsAdBidding, di.a
    public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        ?? r11 = 0;
        Unit unit = null;
        if ((biddingIntermediateMaterialBean != 0 ? biddingIntermediateMaterialBean.getHiSavanaBannerProvider() : null) == null) {
            Context contextF0 = f0();
            if (contextF0 != null) {
                BiddingBuyOutBannerView biddingBuyOutBannerView = new BiddingBuyOutBannerView(contextF0, r11, 2, r11);
                this.f41791w = biddingBuyOutBannerView;
                biddingBuyOutBannerView.setEcpmObject(biddingIntermediateMaterialBean);
                BiddingBuyOutBannerView biddingBuyOutBannerView2 = this.f41791w;
                if (biddingBuyOutBannerView2 != null) {
                    biddingBuyOutBannerView2.setSceneId(getMSceneId());
                }
                BiddingBuyOutBannerView biddingBuyOutBannerView3 = this.f41791w;
                if (biddingBuyOutBannerView3 != null) {
                    biddingBuyOutBannerView3.setListener(this);
                    unit = Unit.f67061a;
                }
                if (unit == null) {
                    oi.b.a.c(this, 6, "getContext() is null", null, false, 12, null);
                }
            } else {
                oi.b.a.c(this, 6, "getContext() is null", null, false, 12, null);
            }
            if (biddingIntermediateMaterialBean != 0) {
                biddingIntermediateMaterialBean.setBannerView(this.f41791w);
            }
        } else {
            BiddingHiSavanaBannerProvider biddingHiSavanaBannerProvider = this.f41790v;
            biddingIntermediateMaterialBean.setBannerView(biddingHiSavanaBannerProvider != null ? biddingHiSavanaBannerProvider.d() : 0);
        }
        super.j(biddingIntermediateMaterialBean);
    }

    @Override // com.transsion.ad.bidding.base.AbsAdBidding, com.hisavana.common.interfacz.TAdditionalListener
    public void onLoadSuccess(AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
        super.onLoadSuccess(additionalInfo);
        this.f41792x = additionalInfo;
    }

    @Override // com.transsion.ad.bidding.base.AbsAdBidding
    public boolean r0() {
        return false;
    }

    @Override // com.transsion.ad.bidding.base.AbsAdBidding
    public void x0(String str) {
        if (this.f41790v == null) {
            BiddingHiSavanaBannerProvider biddingHiSavanaBannerProvider = new BiddingHiSavanaBannerProvider();
            this.f41790v = biddingHiSavanaBannerProvider;
            biddingHiSavanaBannerProvider.m(getMSceneId());
            BiddingHiSavanaBannerProvider biddingHiSavanaBannerProvider2 = this.f41790v;
            if (biddingHiSavanaBannerProvider2 != null) {
                biddingHiSavanaBannerProvider2.k(g0());
            }
            BiddingHiSavanaBannerProvider biddingHiSavanaBannerProvider3 = this.f41790v;
            if (biddingHiSavanaBannerProvider3 != null) {
                biddingHiSavanaBannerProvider3.j(f0());
            }
            BiddingHiSavanaBannerProvider biddingHiSavanaBannerProvider4 = this.f41790v;
            if (biddingHiSavanaBannerProvider4 != null) {
                biddingHiSavanaBannerProvider4.l(this);
            }
        }
        BiddingHiSavanaBannerProvider biddingHiSavanaBannerProvider5 = this.f41790v;
        if (biddingHiSavanaBannerProvider5 != null) {
            biddingHiSavanaBannerProvider5.h();
        }
        BiddingHiSavanaBannerProvider biddingHiSavanaBannerProvider6 = this.f41790v;
        if (biddingHiSavanaBannerProvider6 != null) {
            biddingHiSavanaBannerProvider6.c(getMSceneId());
        }
    }
}
