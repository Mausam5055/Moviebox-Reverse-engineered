package com.cloud.hisavana.sdk;

import android.os.Bundle;
import android.text.TextUtils;
import com.cloud.hisavana.abtestkit.ABTestKit;
import com.cloud.hisavana.abtestkit.ABTestKitConfig;
import com.cloud.hisavana.abtestkit.OnInitCompleteListener;
import com.cloud.hisavana.sdk.api.listener.AdCallback;
import com.cloud.hisavana.sdk.common.constant.Constants;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.util.g;
import com.cloud.hisavana.sdk.data.bean.inapp.DefaultAdDTO;
import com.cloud.hisavana.sdk.data.bean.request.AdxImpBean;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.BidInfo;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class G implements com.cloud.hisavana.sdk.api.listener.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final e f21500a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final q3 f21501b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected boolean f21502c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected BidInfo f21503d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected AdCallback f21504e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected List f21505f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f21507h = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected J0 f21506g = new J0();

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ AdsDTO f21508a;

        a(AdsDTO adsDTO) {
            this.f21508a = adsDTO;
        }

        @Override // java.lang.Runnable
        public void run() {
            u0.f22991a.a(this.f21508a);
        }
    }

    public G(q3 q3Var) {
        this.f21500a = e.j(q3Var, this);
        this.f21501b = q3Var;
        this.f21502c = q3Var.s();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void D() {
        l.f22609a.a();
        v1.f23023a.c();
        com.cloud.hisavana.sdk.manager.b.f22711a.c();
    }

    private AdsDTO o() {
        List list = this.f21505f;
        if (list == null || list.isEmpty()) {
            return null;
        }
        return (AdsDTO) this.f21505f.get(0);
    }

    private int w() {
        if (this.f21501b.f() == null) {
            return 0;
        }
        return this.f21501b.f().getPictureDelayCloseTime();
    }

    private int y() {
        if (this.f21501b.f() == null) {
            return 0;
        }
        return this.f21501b.f().getVideoDelayCloseTime();
    }

    public boolean A() {
        AdsDTO adsDTOO = o();
        return adsDTOO != null && adsDTOO.getSource() == 4;
    }

    public boolean B() {
        AdsDTO adsDTOO = o();
        if (adsDTOO != null) {
            return adsDTOO.isMatchVulgarBrand();
        }
        return false;
    }

    public boolean C() {
        AdsDTO adsDTOO = o();
        if (adsDTOO != null) {
            return adsDTOO.isOfflineAd();
        }
        return false;
    }

    public void E() {
        this.f21500a.n();
        try {
            ABTestKit.init(com.cloud.sdk.commonutil.util.e.a(), new ABTestKitConfig.Builder().setUseTestEnvironment(g7.a.a()).setInitCompleteListener(new OnInitCompleteListener() { // from class: com.cloud.hisavana.sdk.f0
                @Override // com.cloud.hisavana.abtestkit.OnInitCompleteListener
                public final void onInitComplete() {
                    G.D();
                }
            }).build());
        } catch (Exception unused) {
        }
    }

    @Override // com.cloud.hisavana.sdk.api.listener.f
    public void b(TaErrorCode taErrorCode, Bundle bundle) {
        AdCallback adCallback = this.f21504e;
        if (adCallback != null) {
            adCallback.x(this, taErrorCode, bundle);
        }
    }

    @Override // com.cloud.hisavana.sdk.api.listener.f
    public void c(List list, List list2, Bundle bundle, AdxImpBean adxImpBean) {
        d(list, bundle);
    }

    @Override // com.cloud.hisavana.sdk.api.listener.f
    public void d(List list, Bundle bundle) {
        this.f21505f = list;
        if (list == null || list.isEmpty()) {
            b(TaErrorCode.ERROR_AD_FETCHED_AD_IS_NULL, bundle);
            return;
        }
        if (this.f21502c) {
            i((AdsDTO) list.get(0), bundle);
        } else if (this.f21504e != null) {
            e4.b().d("BaseAd", "code seat id is " + this.f21501b.i() + ": fill success ,fill time is ------》" + bundle.getLong("time_consuming"));
            this.f21504e.q(this, bundle);
        }
        k1.o().n(3);
    }

    public void f() {
        h(o());
    }

    public void g(AdCallback adCallback) {
        this.f21504e = adCallback;
    }

    public void h(AdsDTO adsDTO) {
        if (adsDTO == null || adsDTO.isOfflineAd()) {
            return;
        }
        HSScopeHelper.f23167a.g(new a(adsDTO));
    }

    protected void i(AdsDTO adsDTO, Bundle bundle) {
        if (adsDTO == null) {
            AdCallback adCallback = this.f21504e;
            if (adCallback != null) {
                adCallback.v(TaErrorCode.ERROR_AD_BIDDING_AD_IS_NULL, this, bundle);
                return;
            }
            return;
        }
        BidInfo bidInfo = new BidInfo();
        bidInfo.setPrice(adsDTO.getFirstPrice());
        bidInfo.setCodeSeatId(this.f21501b.i());
        bidInfo.setAdCreativeId(adsDTO.getAdCreativeId());
        bidInfo.setBiddingToken(this.f21501b.n());
        bidInfo.setCurrency(Constants.CURRENCY.USD);
        AdCallback adCallback2 = this.f21504e;
        if (adCallback2 != null) {
            adCallback2.w(bidInfo, this, bundle);
        }
    }

    public void j(BidInfo bidInfo) {
        BidInfo bidInfo2 = this.f21503d;
        if (bidInfo2 == null || bidInfo != bidInfo2) {
            return;
        }
        this.f21502c = false;
        this.f21500a.D(this.f21505f);
    }

    protected void k(boolean z10) {
        this.f21507h = z10;
    }

    protected int l(AdsDTO adsDTO) {
        DefaultAdDTO defaultAdDTOK;
        if (adsDTO == null) {
            return 1114;
        }
        try {
            if (g.b(adsDTO)) {
                return 1101;
            }
            if (adsDTO.isOfflineAd() && adsDTO.getSource() == 3 && g.h(adsDTO, d.f22322a.G(adsDTO))) {
                return 1103;
            }
            int iA = com.cloud.hisavana.sdk.common.util.d0.a(adsDTO.getPullNewestLive().intValue(), adsDTO.getPsPackageName(), adsDTO.getPackageName());
            if (iA == 1) {
                return 1105;
            }
            if (iA == 2) {
                return 1106;
            }
            return (adsDTO.getSource() != 4 || (defaultAdDTOK = e0.f22413a.k(adsDTO.getCodeSeatId(), adsDTO.getAdCreativeId())) == null || TextUtils.isEmpty(defaultAdDTOK.getDisplayedDate()) || !TextUtils.equals(defaultAdDTOK.getDisplayedDate(), b0.f21683a.d()) || defaultAdDTOK.getDisplayedTimes() < defaultAdDTOK.getShowMaxOfDay()) ? 0 : 1103;
        } catch (Exception e11) {
            e4.b().w("BaseAd", "getAdStatusForAdsDTO failed, error=" + e11.getMessage());
            return 0;
        }
    }

    public void m() {
        this.f21504e = null;
        J0 j11 = this.f21506g;
        if (j11 != null) {
            j11.a();
            this.f21506g = null;
        }
        e eVar = this.f21500a;
        if (eVar != null) {
            eVar.E();
        }
        AdsDTO adsDTOO = o();
        if (adsDTOO != null) {
            k4.f22600a.j(adsDTOO.getUuid());
        }
    }

    public int n(AdsDTO adsDTO) {
        if (adsDTO == null) {
            return 0;
        }
        int iW = w();
        int iY = y();
        e4.b().d("BaseAd", "picDelayTime: " + iW + ", videoDelayTime: " + iY);
        return adsDTO.isVastTypeAd() ? iY : iW;
    }

    public q3 p() {
        return this.f21501b;
    }

    public int q() {
        AdsDTO adsDTOO = o();
        if (adsDTOO != null) {
            return adsDTOO.getDspType().intValue();
        }
        return 1;
    }

    public int r() {
        int iL = l(o());
        if (a7.c.p()) {
            e4.b().i("BaseAd", "isReady(), adId=" + v2.d(o()) + ", isReady=" + iL);
        }
        return iL;
    }

    public List s() {
        return this.f21505f;
    }

    public double t() {
        AdsDTO adsDTOO = o();
        if (adsDTOO != null) {
            return adsDTOO.getFirstPrice().doubleValue();
        }
        return 0.0d;
    }

    public int u() {
        AdsDTO adsDTOO = o();
        if (adsDTOO != null) {
            return adsDTOO.isOfflineAd() ? 1 : 0;
        }
        return -1;
    }

    public J0 v() {
        return this.f21506g;
    }

    public int x() {
        if (this.f21501b.f() == null) {
            return 0;
        }
        return this.f21501b.f().getRetentionEndCardRatio();
    }

    protected boolean z() {
        return this.f21507h;
    }
}
