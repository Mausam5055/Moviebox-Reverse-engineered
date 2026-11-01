package com.transsion.ad.bidding.nativead;

import com.cloud.hisavana.sdk.api.view.TNativeView;
import com.cloud.hisavana.sdk.common.bean.TaNativeInfo;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.gemini.AbsBiddingBuyOutGemini;
import com.transsion.ad.monopoly.manager.AdPlansStorageManager;
import com.transsion.ad.monopoly.model.AdPlans;
import com.transsion.ad.monopoly.plan.AdPlanSourceManager;
import com.transsion.ad.monopoly.plan.AdPlanUtil;
import com.transsion.ad.ps.model.RecommendInfo;
import com.transsion.ad.view.native_ad.BiddingBuyOutNativeView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
public final class BiddingSspNativeManager extends AbsAdBidding {
    public static final Companion A = new Companion(null);

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f42023y;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private List f42020v = new ArrayList();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private Set f42021w = new LinkedHashSet();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private Set f42022x = new LinkedHashSet();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final a f42024z = new a();

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
            k.d(o0.a(y0.b()), null, null, new BiddingSspNativeManager$Companion$preload$1(sceneId, map, null), 3, null);
        }
    }

    public static final class a extends com.cloud.hisavana.sdk.api.listener.d {
        a() {
        }

        @Override // com.cloud.hisavana.sdk.api.listener.d
        public void onNativeAdClick(TaNativeInfo taNativeInfo) {
            Object next;
            AdsDTO adItem;
            TaNativeInfo sspNativeInfo;
            super.onNativeAdClick(taNativeInfo);
            Iterator it = BiddingSspNativeManager.this.f42020v.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                } else {
                    next = it.next();
                    sspNativeInfo = ((BiddingIntermediateMaterialBean) next).getSspNativeInfo();
                }
            } while (!Intrinsics.c(sspNativeInfo != null ? sspNativeInfo.getUuid() : null, taNativeInfo != null ? taNativeInfo.getUuid() : null));
            BiddingIntermediateMaterialBean biddingIntermediateMaterialBean = (BiddingIntermediateMaterialBean) next;
            if (biddingIntermediateMaterialBean != null) {
                ri.c cVar = ri.c.f74535a;
                String strP0 = BiddingSspNativeManager.this.p0();
                String mSceneId = BiddingSspNativeManager.this.getMSceneId();
                AdPlans plans = biddingIntermediateMaterialBean.getPlans();
                String id2 = plans != null ? plans.getId() : null;
                String codeSeatId = (taNativeInfo == null || (adItem = taNativeInfo.getAdItem()) == null) ? null : adItem.getCodeSeatId();
                int iA0 = BiddingSspNativeManager.this.a0();
                RecommendInfo recommendInfoC = AdPlanUtil.f42167a.c(biddingIntermediateMaterialBean.getPlans());
                Double ecpm = biddingIntermediateMaterialBean.getEcpm();
                String strO0 = BiddingSspNativeManager.this.o0();
                AdPlans plans2 = biddingIntermediateMaterialBean.getPlans();
                cVar.a((128 & 1) != 0 ? "" : strP0, mSceneId, id2, 0, codeSeatId, iA0, (128 & 64) != 0 ? false : false, (128 & 128) != 0 ? MapsKt.h() : null, recommendInfoC, (128 & 512) != 0 ? null : ecpm, (128 & 1024) != 0 ? null : null, (128 & 2048) != 0 ? null : strO0, plans2 != null ? plans2.getAdSource() : null);
                BiddingSspNativeManager.this.l(biddingIntermediateMaterialBean);
            }
        }

        @Override // com.cloud.hisavana.sdk.api.listener.d
        public void onNativeAdShow(TaNativeInfo taNativeInfo) {
            Object next;
            AdsDTO adItem;
            TaNativeInfo sspNativeInfo;
            super.onNativeAdShow(taNativeInfo);
            Iterator it = BiddingSspNativeManager.this.f42020v.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                } else {
                    next = it.next();
                    sspNativeInfo = ((BiddingIntermediateMaterialBean) next).getSspNativeInfo();
                }
            } while (!Intrinsics.c(sspNativeInfo != null ? sspNativeInfo.getUuid() : null, taNativeInfo != null ? taNativeInfo.getUuid() : null));
            BiddingIntermediateMaterialBean biddingIntermediateMaterialBean = (BiddingIntermediateMaterialBean) next;
            if (biddingIntermediateMaterialBean != null) {
                ri.c cVar = ri.c.f74535a;
                String strP0 = BiddingSspNativeManager.this.p0();
                String mSceneId = BiddingSspNativeManager.this.getMSceneId();
                AdPlans plans = biddingIntermediateMaterialBean.getPlans();
                String id2 = plans != null ? plans.getId() : null;
                String codeSeatId = (taNativeInfo == null || (adItem = taNativeInfo.getAdItem()) == null) ? null : adItem.getCodeSeatId();
                int iA0 = BiddingSspNativeManager.this.a0();
                RecommendInfo recommendInfoC = AdPlanUtil.f42167a.c(biddingIntermediateMaterialBean.getPlans());
                Double ecpm = biddingIntermediateMaterialBean.getEcpm();
                String strO0 = BiddingSspNativeManager.this.o0();
                AdPlans plans2 = biddingIntermediateMaterialBean.getPlans();
                cVar.g((128 & 1) != 0 ? "" : strP0, mSceneId, id2, 0, codeSeatId, iA0, (128 & 64) != 0 ? false : false, (128 & 128) != 0 ? MapsKt.h() : null, recommendInfoC, (128 & 512) != 0 ? null : ecpm, (128 & 1024) != 0 ? null : null, (128 & 2048) != 0 ? null : strO0, plans2 != null ? plans2.getAdSource() : null);
                BiddingSspNativeManager.this.n(biddingIntermediateMaterialBean);
            }
        }
    }

    @Override // com.transsion.ad.bidding.base.AbsAdBidding
    public void S(List biddingPlan, AdPlans adPlans, int i11) {
        BiddingHiSspNativeProvider biddingHiSspNativeProviderB;
        AdPlans adPlans2 = adPlans;
        Intrinsics.h(biddingPlan, "biddingPlan");
        Intrinsics.h(adPlans2, "adPlans");
        BiddingHiSspNativeProvider biddingHiSspNativeProviderB2 = BiddingHiSspNativeProvider.f41991h.b(getMSceneId());
        List<TaNativeInfo> listI = biddingHiSspNativeProviderB2 != null ? biddingHiSspNativeProviderB2.i(com.transsion.ad.scene.a.f42201a.g(getMSceneId()), this.f42023y) : null;
        if (listI != null) {
            for (TaNativeInfo taNativeInfo : listI) {
                if (u0(adPlans2)) {
                    adPlans2.setBidEcpmCent(Double.valueOf(taNativeInfo.getBidPrice()));
                }
                if (!com.transsion.ad.strategy.d.f42231a.d(g0()) || !taNativeInfo.isMatchVulgarBrand()) {
                    biddingPlan.add(new BiddingIntermediateMaterialBean(adPlans.getBidEcpmCent(), adPlans, null, taNativeInfo, null, null, null, Boolean.FALSE, getMSceneId(), null, null, 103, 1652, null));
                }
                adPlans2 = adPlans;
            }
        }
        this.f42020v.clear();
        this.f42020v.addAll(biddingPlan);
        if (listI == null || !(!listI.isEmpty()) || (biddingHiSspNativeProviderB = BiddingHiSspNativeProvider.f41991h.b(getMSceneId())) == null) {
            return;
        }
        biddingHiSspNativeProviderB.h(this.f42024z);
    }

    @Override // com.transsion.ad.bidding.base.AbsAdBidding
    public void V() {
        super.V();
        BiddingHiSspNativeProvider biddingHiSspNativeProviderB = BiddingHiSspNativeProvider.f41991h.b(getMSceneId());
        if (biddingHiSspNativeProviderB != null) {
            biddingHiSspNativeProviderB.r(this.f42024z);
        }
        for (TNativeView tNativeView : this.f42021w) {
            if (tNativeView != null) {
                tNativeView.destroy();
            }
        }
        this.f42021w.clear();
        for (BiddingBuyOutNativeView biddingBuyOutNativeView : this.f42022x) {
            if (biddingBuyOutNativeView != null) {
                biddingBuyOutNativeView.destroy();
            }
        }
        this.f42022x.clear();
        Iterator it = this.f42020v.iterator();
        while (it.hasNext()) {
            TaNativeInfo sspNativeInfo = ((BiddingIntermediateMaterialBean) it.next()).getSspNativeInfo();
            if (sspNativeInfo != null) {
                sspNativeInfo.destroy();
            }
        }
    }

    public final void V0(BiddingBuyOutNativeView biddingBuyOutNativeView) {
        this.f42022x.add(biddingBuyOutNativeView);
    }

    public final void W0(TNativeView tNativeView) {
        this.f42021w.add(tNativeView);
    }

    public final void X0(boolean z10) {
        this.f42023y = z10;
    }

    @Override // com.transsion.ad.bidding.base.AbsAdBidding
    public int a0() {
        return 2;
    }

    @Override // com.transsion.ad.bidding.base.AbsAdBidding
    public Object b0(Continuation continuation) {
        return AdPlansStorageManager.f42153a.h(getMSceneId(), g0(), getLogTag(), new AdPlanSourceManager.AdPlanEnum[0], continuation);
    }

    @Override // oi.b
    public String getLogTag() {
        return "ad_n";
    }

    @Override // com.transsion.ad.bidding.base.AbsAdBidding
    public AbsBiddingBuyOutGemini h0() {
        return null;
    }

    @Override // com.transsion.ad.bidding.base.AbsAdBidding
    public boolean r0() {
        return false;
    }

    @Override // com.transsion.ad.bidding.base.AbsAdBidding
    public void x0(String str) {
        BiddingHiSspNativeProvider biddingHiSspNativeProviderB = BiddingHiSspNativeProvider.f41991h.b(getMSceneId());
        if (biddingHiSspNativeProviderB != null) {
            biddingHiSspNativeProviderB.n();
        }
    }
}
