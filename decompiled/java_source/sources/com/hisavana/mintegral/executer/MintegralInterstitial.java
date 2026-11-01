package com.hisavana.mintegral.executer;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.cloud.sdk.commonutil.util.e;
import com.hisavana.common.base.BaseInterstitial;
import com.hisavana.common.bean.AdMuteStatus;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.mintegral.check.ExistsCheck;
import com.mbridge.msdk.newinterstitial.out.MBBidNewInterstitialHandler;
import com.mbridge.msdk.newinterstitial.out.NewInterstitialListener;
import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.out.RewardInfo;
import com.transsion.push.PushConstants;

/* JADX INFO: loaded from: classes4.dex */
public class MintegralInterstitial extends BaseInterstitial {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f33320d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private MBBidNewInterstitialHandler f33321e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private NewInterstitialListener f33322f;

    public MintegralInterstitial(Context context, Network network) {
        super(context, network);
        this.f33320d = false;
    }

    @Override // com.hisavana.common.base.BaseInterstitial, com.hisavana.common.base.BaseAd, com.hisavana.common.interfacz.ICacheAd
    public void destroyAd() {
        super.destroyAd();
        this.f33321e = null;
        this.f33322f = null;
        this.f33320d = false;
        AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, PushConstants.PROVIDER_FIELD_DESTROY + getLogString());
    }

    @Override // com.hisavana.common.base.BaseInterstitial
    protected void initInterstitial() {
        this.f33322f = new NewInterstitialListener() { // from class: com.hisavana.mintegral.executer.MintegralInterstitial.1
            @Override // com.mbridge.msdk.newinterstitial.out.NewInterstitialListener
            public void onAdClicked(MBridgeIds mBridgeIds) {
                MintegralInterstitial.this.adClicked(null);
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onAdClicked");
            }

            @Override // com.mbridge.msdk.newinterstitial.out.NewInterstitialListener
            public void onAdClose(MBridgeIds mBridgeIds, RewardInfo rewardInfo) {
                MintegralInterstitial.this.adClosed();
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onAdClose");
            }

            @Override // com.mbridge.msdk.newinterstitial.out.NewInterstitialListener
            public void onAdCloseWithNIReward(MBridgeIds mBridgeIds, RewardInfo rewardInfo) {
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onAdCloseWithNIReward: " + mBridgeIds.toString() + "  " + rewardInfo.toString());
            }

            @Override // com.mbridge.msdk.newinterstitial.out.NewInterstitialListener
            public void onAdShow(MBridgeIds mBridgeIds) {
                MintegralInterstitial.this.adImpression(null);
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onAdShow");
            }

            @Override // com.mbridge.msdk.newinterstitial.out.NewInterstitialListener
            public void onEndcardShow(MBridgeIds mBridgeIds) {
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onEndcardShow");
            }

            @Override // com.mbridge.msdk.newinterstitial.out.NewInterstitialListener
            public void onLoadCampaignSuccess(MBridgeIds mBridgeIds) {
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onLoadCampaignSuccess");
            }

            @Override // com.mbridge.msdk.newinterstitial.out.NewInterstitialListener
            public void onResourceLoadFail(MBridgeIds mBridgeIds, String str) {
                MintegralInterstitial.this.adFailedToLoad(new TAdErrorCode(30003, "Mintegral Ads failed to load ad with error message: " + str));
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onResourceLoadFail");
            }

            @Override // com.mbridge.msdk.newinterstitial.out.NewInterstitialListener
            public void onResourceLoadSuccess(MBridgeIds mBridgeIds) {
                MintegralInterstitial.this.adLoaded();
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onResourceLoadSuccess");
            }

            @Override // com.mbridge.msdk.newinterstitial.out.NewInterstitialListener
            public void onShowFail(MBridgeIds mBridgeIds, String str) {
                MintegralInterstitial.this.onAdShowError(new TAdErrorCode(30003, "Mintegral Ads failed to load ad with error message: " + str));
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onShowFail");
            }

            @Override // com.mbridge.msdk.newinterstitial.out.NewInterstitialListener
            public void onVideoComplete(MBridgeIds mBridgeIds) {
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onVideoComplete");
            }
        };
    }

    @Override // com.hisavana.common.interfacz.IadInterstitial
    public boolean isLoaded() {
        return this.f33320d;
    }

    @Override // com.hisavana.common.base.BaseInterstitial
    protected void onInterstitialShow(Activity activity) {
        MBBidNewInterstitialHandler mBBidNewInterstitialHandler = this.f33321e;
        if (mBBidNewInterstitialHandler != null && mBBidNewInterstitialHandler.isBidReady()) {
            this.f33321e.showFromBid();
        } else {
            onAdShowError(TAdErrorCode.ERROR_SHOW_EXCEPTION);
            AdLogUtil.Log().e(ExistsCheck.MINTEGRAL_TAG, "Mintegral Ads failed to show");
        }
    }

    @Override // com.hisavana.common.base.BaseInterstitial
    protected void onInterstitialStartLoad() {
        Network network = this.mNetwork;
        if (network != null && !TextUtils.isEmpty(network.getCodeSeatId()) && this.f33322f != null) {
            if (!TextUtils.isEmpty(this.mNetwork.getBidInfo() != null ? this.mNetwork.getBidInfo().getPayload() : null)) {
                MBBidNewInterstitialHandler mBBidNewInterstitialHandler = new MBBidNewInterstitialHandler(e.a(), "", this.mNetwork.getCodeSeatId());
                this.f33321e = mBBidNewInterstitialHandler;
                mBBidNewInterstitialHandler.setInterstitialVideoListener(this.f33322f);
                this.f33320d = true;
                this.f33321e.loadFromBid(this.mNetwork.getBidInfo().getPayload());
                this.f33321e.playVideoMute(AdMuteStatus.MUTE_ALL ? 1 : 2);
                return;
            }
        }
        adFailedToLoad(new TAdErrorCode(30003, "Mintegral Ads failed to load ad error with param empty "));
    }
}
