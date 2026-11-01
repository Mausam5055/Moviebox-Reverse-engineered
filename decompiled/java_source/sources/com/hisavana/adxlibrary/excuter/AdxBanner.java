package com.hisavana.adxlibrary.excuter;

import a7.c;
import android.content.Context;
import com.cloud.hisavana.sdk.api.adx.TBannerView;
import com.cloud.hisavana.sdk.api.listener.d;
import com.cloud.hisavana.sdk.common.bean.AdActiveInfo;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.sdk.commonutil.util.e;
import com.hisavana.common.base.BaseBanner;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.utils.AdLogUtil;
import com.transsion.push.PushConstants;

/* JADX INFO: loaded from: classes4.dex */
public class AdxBanner extends BaseBanner<TBannerView> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public TBannerView f33136a;

    public class a extends d {
        public a() {
        }

        @Override // com.cloud.hisavana.sdk.api.listener.d
        public void onAdActivate(AdActiveInfo adActiveInfo) {
            AdxBanner.this.adActivate(adActiveInfo);
        }

        @Override // com.cloud.hisavana.sdk.api.listener.d
        public void onAdClicked() {
            AdLogUtil.Log().d("AdxBanner", "banner is click" + AdxBanner.this.getLogString());
            AdxBanner.this.adClicked(null);
        }

        @Override // com.cloud.hisavana.sdk.api.listener.d
        public void onAdClosed(TBannerView tBannerView) {
            AdLogUtil.Log().d("AdxBanner", "banner onAdClosed" + AdxBanner.this.getLogString());
            AdxBanner.this.adClosed();
        }

        @Override // com.cloud.hisavana.sdk.api.listener.d
        public void onAdLoaded() {
            AdLogUtil.Log().d("AdxBanner", "banner is Loaded" + AdxBanner.this.getLogString());
            if (AdxBanner.this.f33136a != null) {
                double bidPrice = AdxBanner.this.f33136a.getBidPrice();
                if (bidPrice > 0.0d) {
                    AdxBanner.this.setEcpmPrice(bidPrice);
                }
            }
            AdxBanner.this.adLoaded();
        }

        @Override // com.cloud.hisavana.sdk.api.listener.d
        public void onAdShow() {
            AdLogUtil.Log().d("AdxBanner", "banner onAdShow" + AdxBanner.this.getLogString());
            AdxBanner.this.adImpression(null);
        }

        @Override // com.cloud.hisavana.sdk.api.listener.d
        public void onAdShowError(TaErrorCode taErrorCode) {
            AdLogUtil.Log().d("AdxBanner", "banner onAdShowError" + AdxBanner.this.getLogString());
            AdxBanner.this.onAdShowError(taErrorCode != null ? new TAdErrorCode(taErrorCode.getErrorCode(), taErrorCode.getErrorMessage()) : TAdErrorCode.ERROR_SHOW_EXCEPTION);
        }

        @Override // com.cloud.hisavana.sdk.api.listener.d
        public void onError(TaErrorCode taErrorCode) {
            AdLogUtil.Log().w("AdxBanner", "banner is Load error:" + taErrorCode.getErrorCode() + " msg:" + taErrorCode.getErrorMessage() + AdxBanner.this.getLogString());
            AdxBanner.this.adFailedToLoad(new TAdErrorCode(taErrorCode.getErrorCode(), taErrorCode.getErrorMessage()));
        }
    }

    public AdxBanner(Context context, Network network, int i11) {
        super(context, network);
        AdLogUtil.Log().d("AdxBanner", "bannerSize:=" + i11 + getLogString());
    }

    @Override // com.hisavana.common.base.BaseBanner, com.hisavana.common.interfacz.IadView
    public boolean canShow() {
        TBannerView tBannerView = this.f33136a;
        if (tBannerView == null) {
            return super.canShow();
        }
        try {
            return tBannerView.getAdReadyStatusWithoutTracking() == 0;
        } catch (Throwable th2) {
            AdLogUtil.Log().e("AdxBanner", "canShow failed: " + th2.getMessage());
            return false;
        }
    }

    @Override // com.hisavana.common.base.BaseBanner, com.hisavana.common.base.BaseAd, com.hisavana.common.interfacz.ICacheAd
    public void destroyAd() {
        super.destroyAd();
        AdLogUtil.Log().d("AdxBanner", PushConstants.PROVIDER_FIELD_DESTROY + getLogString());
    }

    @Override // com.hisavana.common.base.BaseBanner
    public TBannerView getBanner() {
        Network network;
        AdLogUtil.Log().d("AdxBanner", "getBanner " + this.requestType);
        if (this.f33136a == null && (network = this.mNetwork) != null) {
            c.f365b = network.getApplicationId();
            this.f33136a = new TBannerView(e.a(), this.mNetwork.getCodeSeatId());
            a aVar = new a();
            this.f33136a.setRequest(b7.a.a().a());
            this.f33136a.setListener(aVar);
            this.f33136a.setPlacementId(this.mNetwork.getCodeSeatId());
            this.f33136a.setHideAdCloseView(this.isHideAdCloseView);
            this.f33136a.setCloseDirectlyWithoutJumping(this.isCloseDirectly);
        }
        return this.f33136a;
    }

    @Override // com.hisavana.common.base.BaseAd, com.hisavana.common.interfacz.ICacheAd
    public boolean isAdxAd() {
        TBannerView tBannerView = this.f33136a;
        return tBannerView != null && tBannerView.getAdSource() == 2;
    }

    @Override // com.hisavana.common.base.BaseAd, com.hisavana.common.interfacz.ICacheAd
    public boolean isEwAd() {
        TBannerView tBannerView = this.f33136a;
        return tBannerView != null && tBannerView.getAdSource() == 1;
    }

    @Override // com.hisavana.common.base.BaseAd, com.hisavana.common.interfacz.ICacheAd
    public boolean isExpired() {
        if (super.isExpired()) {
            return true;
        }
        TBannerView tBannerView = this.f33136a;
        if (tBannerView == null) {
            setExpireReason(1115);
            return true;
        }
        try {
            int adReadyStatusWithoutTracking = tBannerView.getAdReadyStatusWithoutTracking();
            setExpireReason(adReadyStatusWithoutTracking);
            return adReadyStatusWithoutTracking != 0;
        } catch (Throwable th2) {
            AdLogUtil.Log().e("AdxBanner", "isExpired failed: " + th2.getMessage());
            setExpireReason(1115);
            return true;
        }
    }

    @Override // com.hisavana.common.base.BaseAd, com.hisavana.common.interfacz.ICacheAd
    public boolean isInternalAd() {
        TBannerView tBannerView = this.f33136a;
        return tBannerView != null && tBannerView.isDefaultAd();
    }

    @Override // com.hisavana.common.base.BaseAd, com.hisavana.common.interfacz.ICacheAd
    public boolean isMatchVulgarBrand() {
        TBannerView tBannerView = this.f33136a;
        return tBannerView != null && tBannerView.isMatchVulgarBrand();
    }

    @Override // com.hisavana.common.base.BaseBanner, com.hisavana.common.interfacz.ICacheAd
    public boolean isOfflineAd() {
        TBannerView tBannerView = this.f33136a;
        return tBannerView != null && tBannerView.getFillAdType() == 1;
    }

    @Override // com.hisavana.common.base.BaseBanner
    public void onBannerDestroy() {
        TBannerView tBannerView = this.f33136a;
        if (tBannerView != null) {
            tBannerView.destroy();
            this.f33136a = null;
        }
    }

    @Override // com.hisavana.common.base.BaseBanner
    public void onBannerLoad() {
        TBannerView tBannerView = this.f33136a;
        if (tBannerView == null || tBannerView.getRequest() == null) {
            return;
        }
        AdLogUtil.Log().d("AdxBanner", "onBannerLoad " + this.f33136a.getRequest());
        b7.a request = this.f33136a.getRequest();
        request.k(this.requestType);
        request.l("hisa-" + this.mTriggerId);
        request.j("hisa-" + this.mRequestId);
        request.i(getSupportHisavanaFlag() >= 2);
        this.f33136a.setRequest(request);
        this.f33136a.setContainVulgarContent(this.isContainVulgarContent);
        this.f33136a.setAdLoadScenes(this.mGameName, this.mGameScene, this.mExtInfo);
        this.f33136a.setCurrActivityFullscreen(this.mCurrActivityFullscreen);
        this.f33136a.loadAd();
    }

    @Override // com.hisavana.common.base.BaseBanner
    public void showBanner() {
        TBannerView tBannerView = this.f33136a;
        if (tBannerView == null) {
            onAdShowError(TAdErrorCode.ERROR_SHOW_EXCEPTION);
            AdLogUtil.Log().e("AdxBanner", "showBanner show error");
            return;
        }
        if (this.secondPrice != 0.0d && tBannerView.getRequest() != null) {
            b7.a request = this.f33136a.getRequest();
            request.h(this.secondPrice);
            this.f33136a.setRequest(request);
        }
        this.f33136a.show();
    }
}
