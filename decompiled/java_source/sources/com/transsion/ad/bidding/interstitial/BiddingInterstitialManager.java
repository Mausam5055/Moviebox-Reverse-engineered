package com.transsion.ad.bidding.interstitial;

import com.hisavana.common.bean.AdditionalInfo;
import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.gemini.AbsBiddingBuyOutGemini;
import com.transsion.ad.monopoly.model.AdPlans;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
public final class BiddingInterstitialManager extends AbsAdBidding {

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final Companion f41965w = new Companion(null);

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final ei.a f41966v = new ei.a();

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void b(Companion companion, String str, Map map, int i11, Object obj) {
            if ((i11 & 2) != 0) {
                map = null;
            }
            companion.a(str, map);
        }

        public final void a(String sceneId, Map map) {
            Intrinsics.h(sceneId, "sceneId");
            kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new BiddingInterstitialManager$Companion$preLoadAd$1(sceneId, map, null), 3, null);
        }
    }

    @Override // com.transsion.ad.bidding.base.AbsAdBidding
    public void S(List biddingPlan, AdPlans adPlans, int i11) {
        Intrinsics.h(biddingPlan, "biddingPlan");
        Intrinsics.h(adPlans, "adPlans");
        l lVarB = l.f41980j.b(getMSceneId());
        if (lVarB != null) {
            lVarB.d(getMSceneId());
        }
        AdditionalInfo additionalInfoG = lVarB != null ? lVarB.g() : null;
        if (additionalInfoG == null) {
            oi.b.a.c(this, 6, "addHiSavanaProvider() --> 插屏广告同步获取失败 --> additionalInfo == null", null, false, 4, null);
            return;
        }
        if (u0(adPlans)) {
            adPlans.setBidEcpmCent(additionalInfoG.getECPM());
        }
        biddingPlan.add(new BiddingIntermediateMaterialBean(adPlans.getBidEcpmCent(), adPlans, null, null, null, null, lVarB, Boolean.FALSE, getMSceneId(), null, null, 103, 1592, null));
    }

    @Override // com.transsion.ad.bidding.base.AbsAdBidding
    public int a0() {
        return 4;
    }

    @Override // oi.b
    public String getLogTag() {
        return "ad_int";
    }

    @Override // com.transsion.ad.bidding.base.AbsAdBidding
    public AbsBiddingBuyOutGemini h0() {
        return this.f41966v;
    }

    @Override // com.transsion.ad.bidding.base.AbsAdBidding
    public boolean r0() {
        Boolean boolJ;
        l lVarB = l.f41980j.b(getMSceneId());
        if (lVarB == null || (boolJ = lVarB.j()) == null) {
            return false;
        }
        return boolJ.booleanValue();
    }

    @Override // com.transsion.ad.bidding.base.AbsAdBidding
    public void x0(String str) {
        l lVarB = l.f41980j.b(getMSceneId());
        if (lVarB != null) {
            lVarB.p(this);
        }
        if (lVarB != null) {
            lVarB.b();
        }
    }
}
