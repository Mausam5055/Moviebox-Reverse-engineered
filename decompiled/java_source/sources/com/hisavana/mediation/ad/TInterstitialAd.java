package com.hisavana.mediation.ad;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import be.c;
import be.h;
import be.k;
import ce.b;
import com.cloud.sdk.commonutil.util.e;
import com.hisavana.common.base.BaseInterstitial;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.interfacz.WrapTAdAllianceListener;
import com.hisavana.common.tracking.TrackingKey;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.mediation.bean.CloudControlConfig;
import com.hisavana.mediation.config.TAdManager;

/* JADX INFO: loaded from: classes4.dex */
public class TInterstitialAd extends b {
    public TInterstitialAd(Context context, String str) {
        super(context, str);
    }

    @Override // ce.b
    public c a(CloudControlConfig.CodeSeat codeSeat) {
        return new k(codeSeat, d(), this.f17119h);
    }

    @Override // ce.b
    public boolean a(int i11) {
        return i11 == 3;
    }

    @Override // ce.b
    public boolean c() {
        return false;
    }

    public void show(Activity activity) {
        show(activity, "");
    }

    public void show(Activity activity, String str) {
        if (TextUtils.isEmpty(TAdManager.getAppId())) {
            AdLogUtil.Log().e("TInterstitialAd", "appId is empty");
            return;
        }
        if (!e.h()) {
            AdLogUtil.Log().e("TInterstitialAd", "you should init first");
            return;
        }
        n();
        if (this.f17124m) {
            TAdErrorCode tAdErrorCode = TAdErrorCode.ERROR_CURRENT_OBJECT_IS_DESTROYED;
            trackingTriggerShowError(tAdErrorCode);
            b(tAdErrorCode);
            return;
        }
        if (this.f17118g == null) {
            this.f17118g = h.a(this.f17112a);
        }
        TAdErrorCode tAdErrorCodeB = b(this.f17118g);
        if (tAdErrorCodeB != null) {
            trackingTriggerShowError(tAdErrorCodeB);
            b(tAdErrorCodeB);
            return;
        }
        try {
            c cVarG = g();
            if (cVarG == null) {
                AdLogUtil.Log().w("TInterstitialAd", "show error,interstitial handler is null");
                t();
                return;
            }
            BaseInterstitial baseInterstitial = (BaseInterstitial) cVarG.e(this.f17128q);
            if (baseInterstitial == null) {
                AdLogUtil.Log().w("TInterstitialAd", "no ad or ad is expired ");
                t();
                return;
            }
            WrapTAdAllianceListener tAdAllianceListener = baseInterstitial.getTAdAllianceListener();
            if (tAdAllianceListener != null && tAdAllianceListener.getAdListener() == null) {
                AdLogUtil.Log().i("TInterstitialAd", "TInterstitial setAdListener");
                tAdAllianceListener.setAdListener(this.f17119h);
            }
            baseInterstitial.mBundle.putInt(TrackingKey.FILLING_SOURCE, this.mFillSource);
            baseInterstitial.mBundle.putInt(TrackingKey.IS_CONTAIN_VULGAR, this.f17128q ? 1 : 0);
            setIsShowing(true);
            baseInterstitial.show(activity, str, a(str));
        } catch (Exception unused) {
            AdLogUtil.Log().e("TInterstitialAd", "show exception");
            t();
        }
    }
}
