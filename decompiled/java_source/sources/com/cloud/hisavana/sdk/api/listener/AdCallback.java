package com.cloud.hisavana.sdk.api.listener;

import android.os.Bundle;
import android.text.TextUtils;
import com.cloud.hisavana.sdk.G;
import com.cloud.hisavana.sdk.api.adx.TBannerView;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.athena.SSPTrackingHelper;
import com.cloud.hisavana.sdk.common.bean.AdActiveInfo;
import com.cloud.hisavana.sdk.common.bean.AdImage;
import com.cloud.hisavana.sdk.common.bean.TaNativeInfo;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.BidInfo;
import com.cloud.hisavana.sdk.e4;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class AdCallback {
    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void h(d dVar) {
        if (dVar != null) {
            dVar.onAdClosed();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void i(d dVar, TBannerView tBannerView) {
        if (dVar != null) {
            dVar.onAdClosed(tBannerView);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void j(d dVar, TaNativeInfo taNativeInfo) {
        if (dVar != null) {
            dVar.onAdClosed(taNativeInfo);
        }
    }

    public void A() {
        d dVarD = d();
        if (dVarD != null) {
            dVarD.onRewarded();
        }
    }

    public void B() {
        g gVarF = f();
        if (gVarF != null) {
            gVarF.onClick();
        }
    }

    public void C() {
        g gVarF = f();
        if (gVarF != null) {
            gVarF.a();
        }
    }

    public void D(G g11) {
    }

    public abstract d d();

    public abstract String e();

    public g f() {
        return null;
    }

    public abstract String g();

    public void k(AdsDTO adsDTO) {
        l(adsDTO, null);
    }

    public void l(AdsDTO adsDTO, AdImage adImage) {
        d dVarD;
        if (adsDTO == null) {
            return;
        }
        String adPackageName = adsDTO.getAdPackageName();
        e4.b().d("ssp", "onAdActivate --> packageName = " + adPackageName);
        if (TextUtils.isEmpty(adPackageName) || (dVarD = d()) == null) {
            return;
        }
        AdActiveInfo adActiveInfo = new AdActiveInfo();
        adActiveInfo.setPackageName(adPackageName);
        adActiveInfo.setEcpm(adsDTO.getFirstPrice());
        if (adImage != null) {
            adActiveInfo.setImageUrl(adImage.getImgUrl());
        }
        dVarD.onAdActivate(adActiveInfo);
    }

    public void m() {
        d dVarD = d();
        if (dVarD != null) {
            dVarD.onAdClicked();
        }
    }

    public void n(final TBannerView tBannerView, AdsDTO adsDTO) {
        AthenaTracker.e0(adsDTO);
        final d dVarD = d();
        HSScopeHelper.f23167a.h(new Runnable() { // from class: com.cloud.hisavana.sdk.api.listener.b
            @Override // java.lang.Runnable
            public final void run() {
                AdCallback.i(dVarD, tBannerView);
            }
        });
    }

    public void o(final TaNativeInfo taNativeInfo, AdsDTO adsDTO) {
        AthenaTracker.e0(adsDTO);
        final d dVarD = d();
        HSScopeHelper.f23167a.h(new Runnable() { // from class: com.cloud.hisavana.sdk.api.listener.c
            @Override // java.lang.Runnable
            public final void run() {
                AdCallback.j(dVarD, taNativeInfo);
            }
        });
    }

    public void p(AdsDTO adsDTO) {
        AthenaTracker.e0(adsDTO);
        final d dVarD = d();
        HSScopeHelper.f23167a.h(new Runnable() { // from class: com.cloud.hisavana.sdk.api.listener.a
            @Override // java.lang.Runnable
            public final void run() {
                AdCallback.h(dVarD);
            }
        });
    }

    public void q(G g11, Bundle bundle) {
        d dVarD = d();
        try {
            SSPTrackingHelper.f21953a.A(0, g11.p(), g11.s(), bundle.getString("offline_ad_status"), bundle.getString("default_ad_status"), bundle.getInt("cache_offline_ad_count"), bundle.getLong("time_consuming"), dVarD == null ? 3 : 1);
        } catch (Throwable unused) {
        }
        if (dVarD != null) {
            dVarD.onAdLoaded();
        }
    }

    public void r(G g11, List list, Bundle bundle) {
        d dVarD = d();
        int i11 = dVarD == null ? 3 : 1;
        try {
            if (bundle.getInt("s_recommend_req", 0) == 1) {
                ArrayList arrayList = new ArrayList();
                if (list != null) {
                    try {
                        if (list.get(0) != null) {
                            arrayList.addAll(((TaNativeInfo) list.get(0)).getRecommendInfos());
                        }
                    } catch (Throwable unused) {
                    }
                }
                SSPTrackingHelper.f21953a.G(g11.p(), arrayList, bundle.getLong("time_consuming"), bundle.getBoolean("s_rec_temp_data", false));
            } else {
                SSPTrackingHelper.f21953a.A(0, g11.p(), g11.s(), bundle.getString("offline_ad_status"), bundle.getString("default_ad_status"), bundle.getInt("cache_offline_ad_count"), bundle.getLong("time_consuming"), i11);
            }
        } catch (Throwable unused2) {
        }
        if (dVarD != null) {
            dVarD.onAdLoaded(list);
        }
    }

    public void s() {
        d dVarD = d();
        if (dVarD != null) {
            dVarD.onAdShow();
        }
    }

    public void t(TaErrorCode taErrorCode, G g11) {
        d dVarD = d();
        SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.f21953a;
        sSPTrackingHelper.M(Integer.valueOf(taErrorCode.getErrorCode()), g(), e(), sSPTrackingHelper.m(g11));
        if (dVarD != null) {
            dVarD.onAdShowError(taErrorCode);
        }
    }

    public void u(TaErrorCode taErrorCode, G g11, Bundle bundle) {
        SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.f21953a;
        sSPTrackingHelper.N(Integer.valueOf(taErrorCode.getErrorCode()), g(), e(), sSPTrackingHelper.m(g11), bundle);
    }

    public void v(TaErrorCode taErrorCode, G g11, Bundle bundle) {
        d dVarD = d();
        SSPTrackingHelper.f21953a.B(taErrorCode.getErrorCode(), g11.p(), g11.s(), bundle.getString("offline_ad_status"), bundle.getString("default_ad_status"), bundle.getInt("cache_offline_ad_count"), bundle.getLong("time_consuming"), dVarD == null ? 3 : 1, true);
        if (dVarD != null) {
            dVarD.onBiddingFailed(taErrorCode);
        }
    }

    public void w(BidInfo bidInfo, G g11, Bundle bundle) {
        d dVarD = d();
        try {
            SSPTrackingHelper.f21953a.B(0, g11.p(), g11.s(), bundle.getString("offline_ad_status"), bundle.getString("default_ad_status"), bundle.getInt("cache_offline_ad_count"), bundle.getLong("time_consuming"), dVarD == null ? 3 : 1, true);
        } catch (Throwable unused) {
        }
        if (dVarD != null) {
            dVarD.onBiddingSuccess(bidInfo);
        }
    }

    public void x(G g11, TaErrorCode taErrorCode, Bundle bundle) {
        d dVarD = d();
        SSPTrackingHelper.f21953a.A(taErrorCode.getErrorCode(), g11.p(), g11.s(), bundle.getString("offline_ad_status"), bundle.getString("default_ad_status"), bundle.getInt("cache_offline_ad_count"), bundle.getLong("time_consuming"), dVarD == null ? 3 : 1);
        if (dVarD != null) {
            dVarD.onError(taErrorCode);
        }
    }

    public void y(TaNativeInfo taNativeInfo) {
        d dVarD = d();
        if (dVarD != null) {
            dVarD.onNativeAdClick(taNativeInfo);
            l(taNativeInfo.getAdItem(), taNativeInfo.getImage());
        }
    }

    public void z(final TaNativeInfo taNativeInfo) {
        final d dVarD = d();
        if (dVarD != null) {
            HSScopeHelper.f23167a.h(new Runnable() { // from class: com.cloud.hisavana.sdk.api.listener.AdCallback.1
                @Override // java.lang.Runnable
                public void run() {
                    dVarD.onNativeAdShow(taNativeInfo);
                }
            });
        }
    }
}
