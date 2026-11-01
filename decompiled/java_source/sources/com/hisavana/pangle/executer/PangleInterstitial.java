package com.hisavana.pangle.executer;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.bytedance.sdk.openadsdk.api.init.PAGSdk;
import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAd;
import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAdInteractionListener;
import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAdLoadListener;
import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialRequest;
import com.hisavana.common.base.BaseAd;
import com.hisavana.common.base.BaseInterstitial;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.pangle.check.ExistsCheck;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.transsion.push.PushConstants;

/* JADX INFO: loaded from: classes4.dex */
public class PangleInterstitial extends BaseInterstitial {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private PAGInterstitialAdLoadListener f33358d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private PAGInterstitialAdInteractionListener f33359e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f33360f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private PAGInterstitialAd f33361g;

    public PangleInterstitial(Context context, Network network) {
        super(context, network);
        this.f33360f = false;
    }

    @Override // com.hisavana.common.base.BaseInterstitial, com.hisavana.common.base.BaseAd, com.hisavana.common.interfacz.ICacheAd
    public void destroyAd() {
        super.destroyAd();
        this.f33361g = null;
        this.f33358d = null;
        this.f33359e = null;
        this.f33360f = false;
        AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, PushConstants.PROVIDER_FIELD_DESTROY + getLogString());
    }

    @Override // com.hisavana.common.base.BaseInterstitial
    protected void initInterstitial() {
        this.f33358d = new PAGInterstitialAdLoadListener() { // from class: com.hisavana.pangle.executer.PangleInterstitial.1
            @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener
            public void onAdLoaded(PAGInterstitialAd pAGInterstitialAd) {
                if (pAGInterstitialAd == null) {
                    return;
                }
                PangleInterstitial.this.f33361g = pAGInterstitialAd;
                if (PangleInterstitial.this.f33359e != null) {
                    PangleInterstitial.this.f33361g.setAdInteractionListener(PangleInterstitial.this.f33359e);
                    try {
                        double d11 = Double.parseDouble(PangleInterstitial.this.f33361g.getExtraInfo(BidResponsed.KEY_PRICE).toString());
                        if (d11 > 0.0d) {
                            PangleInterstitial.this.setEcpmPrice(d11 * 100.0d);
                        }
                    } catch (Exception e11) {
                        AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, Log.getStackTraceString(e11));
                    }
                    PangleInterstitial.this.adLoaded();
                    AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "onAdLoad");
                }
            }

            @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener, com.bytedance.sdk.openadsdk.common.vS
            public void onError(int i11, String str) {
                PangleInterstitial.this.adFailedToLoad(new TAdErrorCode(i11, "Pangle Ads failed to load ad with error message: " + str));
                AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "Pangle Ads failed to load ad with error code：" + i11 + "，message: " + str);
            }
        };
        this.f33359e = new PAGInterstitialAdInteractionListener() { // from class: com.hisavana.pangle.executer.PangleInterstitial.2
            @Override // com.bytedance.sdk.openadsdk.api.PAGAdListener
            public void onAdClicked() {
                PangleInterstitial.this.adClicked(null);
                AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "Pangle Ads onAdClick");
            }

            @Override // com.bytedance.sdk.openadsdk.api.PAGAdListener
            public void onAdDismissed() {
                PangleInterstitial.this.adClosed();
                AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "Pangle Ads onAdDismissed");
            }

            @Override // com.bytedance.sdk.openadsdk.api.PAGAdListener
            public void onAdShowed() {
                PangleInterstitial.this.adImpression(null);
                AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "Pangle Ads onAdShowed");
            }
        };
    }

    @Override // com.hisavana.common.interfacz.IadInterstitial
    /* JADX INFO: renamed from: isLoaded */
    public boolean getIsAdLoaded() {
        return this.f33360f;
    }

    @Override // com.hisavana.common.base.BaseInterstitial
    protected void onInterstitialShow(Activity activity) {
        PAGInterstitialAd pAGInterstitialAd = this.f33361g;
        if (pAGInterstitialAd != null && activity != null) {
            pAGInterstitialAd.show(activity);
        } else {
            onAdShowError(new TAdErrorCode(TAdErrorCode.CODE_SHOW_EXCEPTION, "Pangle Ads failed to show"));
            AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "Pangle Ads failed to show");
        }
    }

    @Override // com.hisavana.common.base.BaseInterstitial
    protected void onInterstitialStartLoad() {
        Network network = this.mNetwork;
        if (network == null) {
            adFailedToLoad(new TAdErrorCode(30003, "Pangle Ads failed to load ad error with mNetwork == null"));
        } else {
            ExistsCheck.initAdSource(network.getApplicationId(), new PAGSdk.PAGInitCallback() { // from class: com.hisavana.pangle.executer.PangleInterstitial.3
                @Override // com.bytedance.sdk.openadsdk.api.init.PAGSdk.PAGInitCallback
                public void fail(int i11, String str) {
                    PangleInterstitial.this.adFailedToLoad(new TAdErrorCode(i11, "Pangle Ads failed to load ad error with : PAGSdk.isInitSuccess() " + PAGSdk.isInitSuccess()));
                    AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "init onError code：" + i11 + "，message：" + str);
                }

                @Override // com.bytedance.sdk.openadsdk.api.init.PAGSdk.PAGInitCallback
                public void success() {
                    if (((BaseAd) PangleInterstitial.this).mNetwork != null && !TextUtils.isEmpty(((BaseAd) PangleInterstitial.this).mNetwork.getCodeSeatId()) && PangleInterstitial.this.f33358d != null) {
                        PAGInterstitialAd.loadAd(((BaseAd) PangleInterstitial.this).mNetwork.getCodeSeatId(), new PAGInterstitialRequest(), PangleInterstitial.this.f33358d);
                        PangleInterstitial.this.f33360f = true;
                        return;
                    }
                    PangleInterstitial.this.adFailedToLoad(new TAdErrorCode(30003, "Pangle Ads failed to load ad error with : PAGSdk.isInitSuccess() " + PAGSdk.isInitSuccess()));
                }
            });
        }
    }
}
