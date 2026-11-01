package com.transsion.ad.bidding.splash;

import com.hisavana.common.bean.AdditionalInfo;
import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.gemini.AbsBiddingBuyOutGemini;
import com.transsion.ad.monopoly.model.AdPlans;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class b extends AbsAdBidding {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final ei.b f42040v = new ei.b();

    /* JADX INFO: Access modifiers changed from: private */
    public static final void T0(b bVar) {
        bVar.V();
    }

    @Override // com.transsion.ad.bidding.base.AbsAdBidding
    public void S(List biddingPlan, AdPlans adPlans, int i11) {
        Intrinsics.h(biddingPlan, "biddingPlan");
        Intrinsics.h(adPlans, "adPlans");
        a aVarA = a.f42032n.a(getMSceneId());
        if (aVarA != null) {
            aVarA.d(getMSceneId());
        }
        AdditionalInfo additionalInfoG = aVarA != null ? aVarA.g() : null;
        if (additionalInfoG == null) {
            oi.b.a.c(this, 6, "addHiSavanaProvider() --> 开屏广告同步获取失败 --> additionalInfo == null", null, false, 4, null);
            return;
        }
        if (u0(adPlans)) {
            adPlans.setBidEcpmCent(additionalInfoG.getECPM());
        }
        biddingPlan.add(new BiddingIntermediateMaterialBean(adPlans.getBidEcpmCent(), adPlans, null, null, null, null, aVarA, Boolean.FALSE, getMSceneId(), null, null, 103, 1592, null));
    }

    @Override // com.transsion.ad.bidding.base.AbsAdBidding
    public int a0() {
        return 5;
    }

    @Override // oi.b
    public String getLogTag() {
        return "ad_s";
    }

    @Override // com.transsion.ad.bidding.base.AbsAdBidding
    public AbsBiddingBuyOutGemini h0() {
        return this.f42040v;
    }

    @Override // com.transsion.ad.bidding.base.AbsAdBidding, di.a
    public void m(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        super.m(biddingIntermediateMaterialBean);
        k0().post(new Runnable() { // from class: gi.e
            @Override // java.lang.Runnable
            public final void run() {
                com.transsion.ad.bidding.splash.b.T0(this.f63622a);
            }
        });
    }

    @Override // com.transsion.ad.bidding.base.AbsAdBidding
    public boolean r0() {
        return false;
    }

    @Override // com.transsion.ad.bidding.base.AbsAdBidding
    public void x0(String str) {
        a aVarA = a.f42032n.a(getMSceneId());
        if (aVarA != null) {
            aVarA.p(this);
        }
        if (aVarA != null) {
            aVarA.l();
        }
    }
}
