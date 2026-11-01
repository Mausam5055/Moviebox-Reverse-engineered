package com.hisavana.adxlibrary.excuter;

import a7.c;
import android.app.Activity;
import android.content.Context;
import com.cloud.hisavana.sdk.api.listener.d;
import com.cloud.hisavana.sdk.common.bean.AdActiveInfo;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.hisavana.common.base.BaseInterstitial;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.utils.AdLogUtil;
import com.transsion.push.PushConstants;
import z6.b;

/* JADX INFO: loaded from: classes4.dex */
public class AdxInterstitia extends BaseInterstitial {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public b f33138a;

    public class a extends d {
        public a() {
        }

        @Override // com.cloud.hisavana.sdk.api.listener.d
        public void onAdActivate(AdActiveInfo adActiveInfo) {
            AdxInterstitia.this.adActivate(adActiveInfo);
        }

        @Override // com.cloud.hisavana.sdk.api.listener.d
        public void onAdClicked() {
            AdLogUtil.Log().d("AdxInterstitia", "interstitial is click" + AdxInterstitia.this.getLogString());
            AdxInterstitia.this.adClicked(null);
        }

        @Override // com.cloud.hisavana.sdk.api.listener.d
        public void onAdClosed() {
            AdLogUtil.Log().d("AdxInterstitia", "interstitial is closed" + AdxInterstitia.this.getLogString());
            AdxInterstitia.this.adClosed();
        }

        @Override // com.cloud.hisavana.sdk.api.listener.d
        public void onAdLoaded() {
            AdLogUtil.Log().d("AdxInterstitia", "interstitial is Loaded" + AdxInterstitia.this.getLogString());
            if (AdxInterstitia.this.f33138a != null) {
                double dF = AdxInterstitia.this.f33138a.f();
                if (dF > 0.0d) {
                    AdxInterstitia.this.setEcpmPrice(dF);
                }
            }
            AdxInterstitia.this.adLoaded();
        }

        @Override // com.cloud.hisavana.sdk.api.listener.d
        public void onAdShow() {
            AdLogUtil.Log().d("AdxInterstitia", "interstitial is onAdShow" + AdxInterstitia.this.getLogString());
            AdxInterstitia.this.adImpression(null);
        }

        @Override // com.cloud.hisavana.sdk.api.listener.d
        public void onError(TaErrorCode taErrorCode) {
            AdLogUtil.Log().w("AdxInterstitia", "interstitial onError:errorCode:" + taErrorCode.getErrorCode() + ",errorMessage:" + taErrorCode.getErrorMessage() + AdxInterstitia.this.getLogString());
            AdxInterstitia.this.adFailedToLoad(new TAdErrorCode(taErrorCode.getErrorCode(), taErrorCode.getErrorMessage()));
        }
    }

    public AdxInterstitia(Context context, Network network) {
        super(context, network);
    }

    @Override // com.hisavana.common.base.BaseInterstitial, com.hisavana.common.interfacz.IadInterstitial
    public boolean canShow() {
        b bVar = this.f33138a;
        if (bVar == null) {
            return super.canShow();
        }
        try {
            return bVar.d() == 0;
        } catch (Throwable th2) {
            AdLogUtil.Log().e("AdxInterstitia", "canShow failed: " + th2.getMessage());
            return false;
        }
    }

    @Override // com.hisavana.common.base.BaseInterstitial, com.hisavana.common.base.BaseAd, com.hisavana.common.interfacz.ICacheAd
    public void destroyAd() {
        super.destroyAd();
        b bVar = this.f33138a;
        if (bVar != null) {
            bVar.c();
            this.f33138a = null;
        }
        AdLogUtil.Log().d("AdxInterstitia", PushConstants.PROVIDER_FIELD_DESTROY + getLogString());
    }

    @Override // com.hisavana.common.base.BaseInterstitial
    public void initInterstitial() {
        Network network;
        if (this.f33138a != null || (network = this.mNetwork) == null) {
            return;
        }
        this.f33138a = new b(network.getCodeSeatId());
        c.f365b = this.mNetwork.getApplicationId();
        a aVar = new a();
        this.f33138a.r(b7.a.a().a());
        this.f33138a.p(aVar);
        this.f33138a.q(this.mNetwork.getCodeSeatId());
    }

    @Override // com.hisavana.common.base.BaseAd, com.hisavana.common.interfacz.ICacheAd
    public boolean isAdxAd() {
        b bVar = this.f33138a;
        return bVar != null && bVar.e() == 2;
    }

    @Override // com.hisavana.common.base.BaseAd, com.hisavana.common.interfacz.ICacheAd
    public boolean isEwAd() {
        b bVar = this.f33138a;
        return bVar != null && bVar.e() == 1;
    }

    @Override // com.hisavana.common.base.BaseAd, com.hisavana.common.interfacz.ICacheAd
    public boolean isExpired() {
        if (super.isExpired()) {
            return true;
        }
        b bVar = this.f33138a;
        if (bVar == null) {
            setExpireReason(1115);
            return true;
        }
        try {
            int iD = bVar.d();
            setExpireReason(iD);
            return iD != 0;
        } catch (Throwable th2) {
            AdLogUtil.Log().e("AdxInterstitia", "isExpired failed: " + th2.getMessage());
            setExpireReason(1115);
            return true;
        }
    }

    @Override // com.hisavana.common.base.BaseAd, com.hisavana.common.interfacz.ICacheAd
    public boolean isInternalAd() {
        b bVar = this.f33138a;
        return bVar != null && bVar.i();
    }

    @Override // com.hisavana.common.interfacz.IadInterstitial
    public boolean isLoaded() {
        b bVar = this.f33138a;
        return bVar != null && bVar.j();
    }

    @Override // com.hisavana.common.base.BaseAd, com.hisavana.common.interfacz.ICacheAd
    public boolean isMatchVulgarBrand() {
        b bVar = this.f33138a;
        return bVar != null && bVar.k();
    }

    @Override // com.hisavana.common.base.BaseInterstitial, com.hisavana.common.interfacz.ICacheAd
    public boolean isOfflineAd() {
        b bVar = this.f33138a;
        return bVar != null && bVar.g() == 1;
    }

    @Override // com.hisavana.common.base.BaseInterstitial
    public void onInterstitialShow(Activity activity) {
        b bVar = this.f33138a;
        if (bVar == null || bVar.h() == null) {
            onAdShowError(TAdErrorCode.ERROR_SHOW_EXCEPTION);
            AdLogUtil.Log().e("AdxInterstitia", "onInterstitialShow ad or listener is null");
            return;
        }
        if (this.secondPrice != 0.0d) {
            b7.a aVarH = this.f33138a.h();
            aVarH.h(this.secondPrice);
            this.f33138a.r(aVarH);
        }
        this.f33138a.t();
    }

    @Override // com.hisavana.common.base.BaseInterstitial
    public void onInterstitialStartLoad() {
        b bVar = this.f33138a;
        if (bVar == null || bVar.j() || this.f33138a.h() == null) {
            return;
        }
        b7.a aVarH = this.f33138a.h();
        aVarH.k(this.requestType);
        aVarH.l("hisa-" + this.mTriggerId);
        aVarH.j("hisa-" + this.mRequestId);
        aVarH.i(getSupportHisavanaFlag() >= 2);
        this.f33138a.r(aVarH);
        this.f33138a.m(this.isContainVulgarContent);
        this.f33138a.l(this.mGameName, this.mGameScene, this.mExtInfo);
        this.f33138a.n(this.mCurrActivityFullscreen);
        this.f33138a.s();
    }
}
