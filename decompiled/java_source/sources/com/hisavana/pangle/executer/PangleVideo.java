package com.hisavana.pangle.executer;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.bytedance.sdk.openadsdk.api.init.PAGSdk;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardItem;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAd;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAdInteractionListener;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAdLoadListener;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedRequest;
import com.hisavana.common.base.BaseAd;
import com.hisavana.common.base.BaseVideo;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.pangle.check.ExistsCheck;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.transsion.push.PushConstants;

/* JADX INFO: loaded from: classes4.dex */
public class PangleVideo extends BaseVideo {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private PAGRewardedAdLoadListener f33379d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private PAGRewardedAdInteractionListener f33380e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f33381f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private PAGRewardedAd f33382g;

    public PangleVideo(Context context, Network network) {
        super(context, network);
        this.f33381f = false;
    }

    @Override // com.hisavana.common.base.BaseVideo, com.hisavana.common.base.BaseAd, com.hisavana.common.interfacz.ICacheAd
    public void destroyAd() {
        super.destroyAd();
        this.f33379d = null;
        this.f33380e = null;
        this.f33382g = null;
        this.f33381f = false;
        AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, PushConstants.PROVIDER_FIELD_DESTROY + getLogString());
    }

    @Override // com.hisavana.common.base.BaseVideo
    protected void initVideo() {
        this.f33379d = new PAGRewardedAdLoadListener() { // from class: com.hisavana.pangle.executer.PangleVideo.1
            @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener
            public void onAdLoaded(PAGRewardedAd pAGRewardedAd) {
                PangleVideo.this.f33382g = pAGRewardedAd;
                if (PangleVideo.this.f33382g != null && PangleVideo.this.f33380e != null) {
                    PangleVideo.this.f33382g.setAdInteractionListener(PangleVideo.this.f33380e);
                    try {
                        double d11 = Double.parseDouble(PangleVideo.this.f33382g.getExtraInfo(BidResponsed.KEY_PRICE).toString());
                        if (d11 > 0.0d) {
                            PangleVideo.this.setEcpmPrice(d11 * 100.0d);
                        }
                    } catch (Exception e11) {
                        AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, Log.getStackTraceString(e11));
                    }
                }
                PangleVideo.this.adLoaded();
                AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "onAdLoad");
            }

            @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener, com.bytedance.sdk.openadsdk.common.vS
            public void onError(int i11, String str) {
                PangleVideo.this.adFailedToLoad(new TAdErrorCode(i11, "Pangle Ads failed to load ad with error message: " + str));
                AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "Pangle Ads failed to load ad with error code：" + i11 + "message: " + str);
            }
        };
        this.f33380e = new PAGRewardedAdInteractionListener() { // from class: com.hisavana.pangle.executer.PangleVideo.2
            @Override // com.bytedance.sdk.openadsdk.api.PAGAdListener
            public void onAdClicked() {
                PangleVideo.this.adClicked(null);
                AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "Pangle Ads onAdClick");
            }

            @Override // com.bytedance.sdk.openadsdk.api.PAGAdListener
            public void onAdDismissed() {
                PangleVideo.this.adClosed();
                AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "Pangle Ads onAdDismissed");
            }

            @Override // com.bytedance.sdk.openadsdk.api.PAGAdListener
            public void onAdShowed() {
                PangleVideo.this.adImpression(null);
                AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "Pangle Ads onAdShowed");
            }

            @Override // com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAdInteractionListener
            public void onUserEarnedReward(PAGRewardItem pAGRewardItem) {
                PangleVideo.this.onReward();
                AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "Pangle Ads onUserEarnedReward");
            }

            @Override // com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAdInteractionListener
            public void onUserEarnedRewardFail(int i11, String str) {
            }
        };
    }

    @Override // com.hisavana.common.base.BaseVideo, com.hisavana.common.interfacz.IadVideo
    /* JADX INFO: renamed from: isLoaded */
    public boolean getIsAdLoaded() {
        return this.f33381f;
    }

    @Override // com.hisavana.common.base.BaseVideo
    protected void onVideoShow(Activity activity) {
        PAGRewardedAd pAGRewardedAd = this.f33382g;
        if (pAGRewardedAd != null && activity != null) {
            pAGRewardedAd.show(activity);
        } else {
            onAdShowError(new TAdErrorCode(TAdErrorCode.CODE_SHOW_EXCEPTION, "Pangle Ads failed to show,activity or pageRewardedAd is null"));
            AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "Pangle Ads failed to show,activity or pageRewardedAd is null");
        }
    }

    @Override // com.hisavana.common.base.BaseVideo
    protected void onVideoStartLoad() {
        Network network = this.mNetwork;
        if (network == null) {
            adFailedToLoad(new TAdErrorCode(30003, "Pangle Ads failed to load ad error with mNetwork == null"));
        } else {
            ExistsCheck.initAdSource(network.getApplicationId(), new PAGSdk.PAGInitCallback() { // from class: com.hisavana.pangle.executer.PangleVideo.3
                @Override // com.bytedance.sdk.openadsdk.api.init.PAGSdk.PAGInitCallback
                public void fail(int i11, String str) {
                    PangleVideo.this.adFailedToLoad(new TAdErrorCode(i11, "Pangle Ads failed to load ad error with : PAGSdk.isInitSuccess() " + PAGSdk.isInitSuccess()));
                    AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "init onError code：" + i11 + "，message" + str);
                }

                @Override // com.bytedance.sdk.openadsdk.api.init.PAGSdk.PAGInitCallback
                public void success() {
                    if (((BaseAd) PangleVideo.this).mNetwork != null && !TextUtils.isEmpty(((BaseAd) PangleVideo.this).mNetwork.getCodeSeatId()) && PangleVideo.this.f33379d != null) {
                        PAGRewardedAd.loadAd(((BaseAd) PangleVideo.this).mNetwork.getCodeSeatId(), new PAGRewardedRequest(), PangleVideo.this.f33379d);
                        PangleVideo.this.f33381f = true;
                        return;
                    }
                    PangleVideo.this.adFailedToLoad(new TAdErrorCode(30003, "Pangle Ads failed to load ad error with : PAGSdk.isInitSuccess() " + PAGSdk.isInitSuccess()));
                }
            });
        }
    }
}
