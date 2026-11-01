package com.hisavana.adxlibrary.excuter;

import android.content.Context;
import android.view.View;
import com.cloud.hisavana.sdk.api.adx.TSplashView;
import com.cloud.hisavana.sdk.api.listener.g;
import com.cloud.hisavana.sdk.common.bean.AdActiveInfo;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.sdk.commonutil.util.e;
import com.hisavana.common.base.BaseSplash;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.utils.AdLogUtil;
import com.transsion.push.PushConstants;
import java.lang.ref.WeakReference;
import z6.f;

/* JADX INFO: loaded from: classes4.dex */
public class AdxSplash extends BaseSplash {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public f f33152a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public TSplashView f33153b;

    public class a extends com.cloud.hisavana.sdk.api.listener.d {
        public a() {
        }

        @Override // com.cloud.hisavana.sdk.api.listener.d
        public void onAdActivate(AdActiveInfo adActiveInfo) {
            AdxSplash.this.adActivate(adActiveInfo);
        }

        @Override // com.cloud.hisavana.sdk.api.listener.d
        public void onAdClicked() {
            AdxSplash.this.adClicked(null);
            AdLogUtil.Log().d("AdxSplash", "adx onAdClicked" + AdxSplash.this.getLogString());
        }

        @Override // com.cloud.hisavana.sdk.api.listener.d
        public void onAdClosed() {
            AdLogUtil.Log().d("AdxSplash", "adx onAdClosed " + AdxSplash.this.getLogString());
            AdxSplash.this.adClosed();
        }

        @Override // com.cloud.hisavana.sdk.api.listener.d
        public void onAdLoaded() {
            AdLogUtil.Log().d("AdxSplash", "adx splashview onAdLoaded" + AdxSplash.this.getLogString());
            if (AdxSplash.this.f33152a != null) {
                double dF = AdxSplash.this.f33152a.f();
                if (dF > 0.0d) {
                    AdxSplash.this.setEcpmPrice(dF);
                }
            }
            AdxSplash.this.adLoaded();
        }

        @Override // com.cloud.hisavana.sdk.api.listener.d
        public void onAdShow() {
            AdLogUtil.Log().d("AdxSplash", "adx onAdShow" + AdxSplash.this.getLogString());
            AdxSplash.this.adImpression(null);
        }

        @Override // com.cloud.hisavana.sdk.api.listener.d
        public void onError(TaErrorCode taErrorCode) {
            if (taErrorCode != null) {
                AdxSplash.this.adFailedToLoad(new TAdErrorCode(taErrorCode.getErrorCode(), taErrorCode.getErrorMessage()));
                AdLogUtil.Log().w("AdxSplash", "adx onError:" + taErrorCode.toString() + AdxSplash.this.getLogString());
            }
        }
    }

    public class b implements g {
        public b() {
        }

        @Override // com.cloud.hisavana.sdk.api.listener.g
        public void a() {
            AdLogUtil.Log().d("AdxSplash", "onTimeEnd,splash timeout");
            AdxSplash.this.onTimeReach();
        }

        @Override // com.cloud.hisavana.sdk.api.listener.g
        public void onClick() {
            AdLogUtil.Log().d("AdxSplash", "onClick click skip btn");
            AdxSplash.this.onSkipClick();
        }
    }

    public class c extends com.cloud.hisavana.sdk.api.listener.d {
        public c() {
        }

        @Override // com.cloud.hisavana.sdk.api.listener.d
        public void onAdActivate(AdActiveInfo adActiveInfo) {
            AdxSplash.this.adActivate(adActiveInfo);
        }

        @Override // com.cloud.hisavana.sdk.api.listener.d
        public void onAdClicked() {
            AdxSplash.this.adClicked(null);
            AdLogUtil.Log().d("AdxSplash", "adx splashview onAdClicked" + AdxSplash.this.getLogString());
        }

        @Override // com.cloud.hisavana.sdk.api.listener.d
        public void onAdClosed() {
            AdxSplash.this.adClosed();
        }

        @Override // com.cloud.hisavana.sdk.api.listener.d
        public void onAdLoaded() {
            AdLogUtil.Log().d("AdxSplash", "adx splashview onAdLoaded" + AdxSplash.this.getLogString());
            if (AdxSplash.this.f33153b != null) {
                double bidPrice = AdxSplash.this.f33153b.getBidPrice();
                if (bidPrice > 0.0d) {
                    AdxSplash.this.setEcpmPrice(bidPrice);
                }
            }
            AdxSplash.this.adLoaded();
        }

        @Override // com.cloud.hisavana.sdk.api.listener.d
        public void onAdShow() {
            AdLogUtil.Log().d("AdxSplash", "adx splashview onAdShow" + AdxSplash.this.getLogString());
            AdxSplash.this.adImpression(null);
        }

        @Override // com.cloud.hisavana.sdk.api.listener.d
        public void onError(TaErrorCode taErrorCode) {
            if (taErrorCode != null) {
                AdxSplash.this.adFailedToLoad(new TAdErrorCode(taErrorCode.getErrorCode(), taErrorCode.getErrorMessage()));
                AdLogUtil.Log().w("AdxSplash", "adx splashview onError:" + taErrorCode.toString() + AdxSplash.this.getLogString());
            }
        }
    }

    public class d implements g {
        public d() {
        }

        @Override // com.cloud.hisavana.sdk.api.listener.g
        public void a() {
            AdxSplash.this.onTimeReach();
        }

        @Override // com.cloud.hisavana.sdk.api.listener.g
        public void onClick() {
            AdxSplash.this.onSkipClick();
        }
    }

    public AdxSplash(Context context, Network network) {
        super(context, network);
    }

    public final View a() {
        if (this.f33152a == null) {
            this.f33152a = new f(e.a(), this.mNetwork.getCodeSeatId());
            a7.c.f365b = this.mNetwork.getApplicationId();
            a aVar = new a();
            this.f33152a.r(b7.a.a().a());
            this.f33152a.p(aVar);
            this.f33152a.x(new b());
        }
        if (e.a() != null) {
            return new View(e.a().getApplicationContext());
        }
        return null;
    }

    public final View b() {
        WeakReference<Context> weakReference;
        if (this.f33153b == null && (weakReference = this.mContext) != null && weakReference.get() != null) {
            this.f33153b = new TSplashView(this.mContext.get(), this.mNetwork.getCodeSeatId());
            a7.c.f365b = this.mNetwork.getApplicationId();
            c cVar = new c();
            this.f33153b.setRequest(b7.a.a().a());
            this.f33153b.setListener(cVar);
            TSplashView tSplashView = this.f33153b;
            if (tSplashView != null) {
                tSplashView.setSkipListener(new d());
            }
        }
        return this.f33153b;
    }

    @Override // com.hisavana.common.base.BaseSplash, com.hisavana.common.interfacz.IadView
    public boolean canShow() {
        try {
            f fVar = this.f33152a;
            if (fVar != null) {
                return fVar.d() == 0;
            }
            TSplashView tSplashView = this.f33153b;
            if (tSplashView != null) {
                return tSplashView.getAdReadyStatusWithoutTracking() == 0;
            }
            return super.canShow();
        } catch (Throwable th2) {
            AdLogUtil.Log().e("AdxSplash", "canShow failed: " + th2.getMessage());
            return false;
        }
    }

    @Override // com.hisavana.common.base.BaseSplash
    public boolean checkNeedAddLogo() {
        return true;
    }

    @Override // com.hisavana.common.base.BaseSplash, com.hisavana.common.base.BaseAd, com.hisavana.common.interfacz.ICacheAd
    public void destroyAd() {
        super.destroyAd();
        f fVar = this.f33152a;
        if (fVar != null) {
            fVar.c();
            this.f33152a = null;
        }
        TSplashView tSplashView = this.f33153b;
        if (tSplashView != null) {
            tSplashView.destroy();
            this.f33153b = null;
        }
        AdLogUtil.Log().d("AdxSplash", PushConstants.PROVIDER_FIELD_DESTROY + getLogString());
    }

    @Override // com.hisavana.common.base.BaseSplash
    public View getSplash() {
        return this.splashMode == 1 ? a() : b();
    }

    @Override // com.hisavana.common.base.BaseAd, com.hisavana.common.interfacz.ICacheAd
    public boolean isAdxAd() {
        if (this.splashMode == 1) {
            f fVar = this.f33152a;
            return fVar != null && fVar.e() == 2;
        }
        TSplashView tSplashView = this.f33153b;
        return tSplashView != null && tSplashView.getAdSource() == 2;
    }

    @Override // com.hisavana.common.base.BaseAd, com.hisavana.common.interfacz.ICacheAd
    public boolean isEwAd() {
        if (this.splashMode == 1) {
            f fVar = this.f33152a;
            return fVar != null && fVar.e() == 1;
        }
        TSplashView tSplashView = this.f33153b;
        return tSplashView != null && tSplashView.getAdSource() == 1;
    }

    @Override // com.hisavana.common.base.BaseAd, com.hisavana.common.interfacz.ICacheAd
    public boolean isExpired() {
        if (super.isExpired()) {
            return true;
        }
        try {
            f fVar = this.f33152a;
            if (fVar != null) {
                int iD = fVar.d();
                setExpireReason(iD);
                return iD != 0;
            }
            TSplashView tSplashView = this.f33153b;
            if (tSplashView == null) {
                setExpireReason(1115);
                return true;
            }
            int adReadyStatusWithoutTracking = tSplashView.getAdReadyStatusWithoutTracking();
            setExpireReason(adReadyStatusWithoutTracking);
            return adReadyStatusWithoutTracking != 0;
        } catch (Throwable th2) {
            AdLogUtil.Log().e("AdxSplash", "isExpired failed: " + th2.getMessage());
            setExpireReason(1115);
            return true;
        }
    }

    @Override // com.hisavana.common.base.BaseAd, com.hisavana.common.interfacz.ICacheAd
    public boolean isInternalAd() {
        if (this.splashMode == 1) {
            f fVar = this.f33152a;
            return fVar != null && fVar.i();
        }
        TSplashView tSplashView = this.f33153b;
        return tSplashView != null && tSplashView.isDefaultAd();
    }

    @Override // com.hisavana.common.base.BaseAd, com.hisavana.common.interfacz.ICacheAd
    public boolean isMatchVulgarBrand() {
        if (this.splashMode == 1) {
            f fVar = this.f33152a;
            return fVar != null && fVar.k();
        }
        TSplashView tSplashView = this.f33153b;
        return tSplashView != null && tSplashView.isMatchVulgarBrand();
    }

    @Override // com.hisavana.common.base.BaseSplash, com.hisavana.common.interfacz.ICacheAd
    public boolean isOfflineAd() {
        if (this.splashMode == 1) {
            f fVar = this.f33152a;
            return fVar != null && fVar.g() == 1;
        }
        TSplashView tSplashView = this.f33153b;
        return tSplashView != null && tSplashView.getFillAdType() == 1;
    }

    @Override // com.hisavana.common.base.BaseSplash
    public void onSplashShow() {
        if (this.splashMode != 1) {
            TSplashView tSplashView = this.f33153b;
            if (tSplashView == null) {
                AdLogUtil.Log().d("AdxSplash", "show splash failed");
                return;
            }
            if (this.secondPrice != 0.0d && tSplashView.getRequest() != null) {
                b7.a request = this.f33153b.getRequest();
                request.h(this.secondPrice);
                this.f33153b.setRequest(request);
            }
            TSplashView tSplashView2 = this.f33153b;
            if (tSplashView2 != null) {
                tSplashView2.show();
                return;
            }
            return;
        }
        f fVar = this.f33152a;
        if (fVar == null) {
            AdLogUtil.Log().d("AdxSplash", "show splash failed");
            return;
        }
        if (this.secondPrice != 0.0d && fVar.h() != null) {
            b7.a aVarH = this.f33152a.h();
            aVarH.h(this.secondPrice);
            this.f33152a.r(aVarH);
        }
        f fVar2 = this.f33152a;
        if (fVar2 != null) {
            fVar2.w(this.mLogoLayoutHeightRatio);
            this.f33152a.v(getLogoLayout());
            this.f33152a.y();
        }
    }

    @Override // com.hisavana.common.base.BaseSplash
    public void onSplashStartLoad() {
        if (this.splashMode == 1) {
            f fVar = this.f33152a;
            if (fVar == null || fVar.h() == null) {
                return;
            }
            b7.a aVarH = this.f33152a.h();
            aVarH.k(this.requestType);
            aVarH.l("hisa-" + this.mTriggerId);
            aVarH.j("hisa-" + this.mRequestId);
            this.f33152a.r(aVarH);
            this.f33152a.m(this.isContainVulgarContent);
            this.f33152a.l(this.mGameName, this.mGameScene, this.mExtInfo);
            this.f33152a.n(this.mCurrActivityFullscreen);
            this.f33152a.t();
            return;
        }
        TSplashView tSplashView = this.f33153b;
        if (tSplashView == null || tSplashView.getRequest() == null) {
            return;
        }
        b7.a request = this.f33153b.getRequest();
        request.k(this.requestType);
        request.l("hisa-" + this.mTriggerId);
        request.j("hisa-" + this.mRequestId);
        this.f33153b.setRequest(request);
        this.f33153b.setContainVulgarContent(this.isContainVulgarContent);
        this.f33153b.setAdLoadScenes(this.mGameName, this.mGameScene, this.mExtInfo);
        this.f33153b.setCurrActivityFullscreen(this.mCurrActivityFullscreen);
        this.f33153b.loadAd();
    }
}
