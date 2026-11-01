package com.hisavana.mediation.ad;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import be.c;
import be.h;
import be.w;
import ce.b;
import com.cloud.sdk.commonutil.util.e;
import com.hisavana.common.base.BaseVideo;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.interfacz.WrapTAdAllianceListener;
import com.hisavana.common.tracking.TrackingKey;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.mediation.bean.CloudControlConfig;
import com.hisavana.mediation.config.TAdManager;

/* JADX INFO: loaded from: classes4.dex */
public class TRewardedAd extends b {
    public TRewardedAd(Context context, String str) {
        super(context, str);
    }

    @Override // ce.b
    public c a(CloudControlConfig.CodeSeat codeSeat) {
        return new w(codeSeat, d(), this.f17119h);
    }

    @Override // ce.b
    public boolean a(int i11) {
        return i11 == 5;
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
            AdLogUtil.Log().e("video", "appId is empty");
            return;
        }
        if (!e.h()) {
            AdLogUtil.Log().e("video", "you should init first");
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
                AdLogUtil.Log().w("video", "show error,video handler is null");
                TAdErrorCode tAdErrorCode2 = TAdErrorCode.ERROR_AD_HANDLER_IS_NULL;
                trackingTriggerShowError(tAdErrorCode2);
                b(tAdErrorCode2);
                return;
            }
            BaseVideo baseVideo = (BaseVideo) cVarG.e(this.f17128q);
            if (baseVideo == null || !baseVideo.canShow()) {
                AdLogUtil.Log().w("video", "no ad or ad is expired ");
                t();
                return;
            }
            WrapTAdAllianceListener tAdAllianceListener = baseVideo.getTAdAllianceListener();
            if (tAdAllianceListener != null && tAdAllianceListener.getAdListener() == null) {
                AdLogUtil.Log().i("video", "TRewarded setAdListener");
                tAdAllianceListener.setAdListener(this.f17119h);
            }
            baseVideo.mBundle.putInt(TrackingKey.FILLING_SOURCE, this.mFillSource);
            baseVideo.mBundle.putInt(TrackingKey.IS_CONTAIN_VULGAR, this.f17128q ? 1 : 0);
            setIsShowing(true);
            baseVideo.showVideo(activity, str, a(str));
        } catch (Exception unused) {
            AdLogUtil.Log().e("video", "show exception ");
            t();
        }
    }
}
