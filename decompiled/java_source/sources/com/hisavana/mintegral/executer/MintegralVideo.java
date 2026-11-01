package com.hisavana.mintegral.executer;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.cloud.sdk.commonutil.util.e;
import com.hisavana.common.base.BaseVideo;
import com.hisavana.common.bean.AdMuteStatus;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.mintegral.check.ExistsCheck;
import com.mbridge.msdk.out.MBBidRewardVideoHandler;
import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.out.RewardInfo;
import com.mbridge.msdk.out.RewardVideoListener;
import com.transsion.push.PushConstants;

/* JADX INFO: loaded from: classes4.dex */
public class MintegralVideo extends BaseVideo {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f33336d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private MBBidRewardVideoHandler f33337e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private RewardVideoListener f33338f;

    public MintegralVideo(Context context, Network network) {
        super(context, network);
        this.f33336d = false;
    }

    @Override // com.hisavana.common.base.BaseVideo, com.hisavana.common.base.BaseAd, com.hisavana.common.interfacz.ICacheAd
    public void destroyAd() {
        super.destroyAd();
        this.f33337e = null;
        this.f33338f = null;
        this.f33336d = false;
        AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, PushConstants.PROVIDER_FIELD_DESTROY + getLogString());
    }

    @Override // com.hisavana.common.base.BaseVideo
    protected void initVideo() {
        this.f33338f = new RewardVideoListener() { // from class: com.hisavana.mintegral.executer.MintegralVideo.1
            @Override // com.mbridge.msdk.out.RewardVideoListener, com.mbridge.msdk.video.bt.module.orglistener.g
            public void onAdClose(MBridgeIds mBridgeIds, RewardInfo rewardInfo) {
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onAdClose，rewardInfo.isCompleteView()：" + rewardInfo.isCompleteView());
                if (rewardInfo.isCompleteView()) {
                    MintegralVideo.this.onReward();
                }
                MintegralVideo.this.adClosed();
            }

            @Override // com.mbridge.msdk.out.RewardVideoListener, com.mbridge.msdk.video.bt.module.orglistener.g
            public void onAdShow(MBridgeIds mBridgeIds) {
                MintegralVideo.this.adImpression(null);
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onAdShow");
            }

            @Override // com.mbridge.msdk.out.RewardVideoListener, com.mbridge.msdk.video.bt.module.orglistener.g
            public void onEndcardShow(MBridgeIds mBridgeIds) {
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onEndcardShow");
            }

            @Override // com.mbridge.msdk.out.RewardVideoListener, com.mbridge.msdk.video.bt.module.orglistener.g
            public void onLoadSuccess(MBridgeIds mBridgeIds) {
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "Mintegral Ads onLoadSuccess");
            }

            @Override // com.mbridge.msdk.out.RewardVideoListener, com.mbridge.msdk.video.bt.module.orglistener.g
            public void onShowFail(MBridgeIds mBridgeIds, String str) {
                MintegralVideo.this.onAdShowError(new TAdErrorCode(TAdErrorCode.CODE_SHOW_EXCEPTION, "Mintegral Ads failed to load ad with error message: " + str));
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onShowFailed");
            }

            @Override // com.mbridge.msdk.out.RewardVideoListener, com.mbridge.msdk.video.bt.module.orglistener.g
            public void onVideoAdClicked(MBridgeIds mBridgeIds) {
                MintegralVideo.this.adClicked(null);
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onVideoAdClicked");
            }

            @Override // com.mbridge.msdk.out.RewardVideoListener, com.mbridge.msdk.video.bt.module.orglistener.g
            public void onVideoComplete(MBridgeIds mBridgeIds) {
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onVideoComplete");
            }

            @Override // com.mbridge.msdk.out.RewardVideoListener, com.mbridge.msdk.video.bt.module.orglistener.g
            public void onVideoLoadFail(MBridgeIds mBridgeIds, String str) {
                MintegralVideo.this.adFailedToLoad(new TAdErrorCode(30003, "Mintegral Ads failed to load ad with error message: " + str));
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "Mintegral Ads failed to load ad with message：" + str);
            }

            @Override // com.mbridge.msdk.out.RewardVideoListener, com.mbridge.msdk.video.bt.module.orglistener.g
            public void onVideoLoadSuccess(MBridgeIds mBridgeIds) {
                MintegralVideo.this.adLoaded();
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "Mintegral Ads onVideoLoadSuccess");
            }
        };
    }

    @Override // com.hisavana.common.base.BaseVideo, com.hisavana.common.interfacz.IadVideo
    public boolean isLoaded() {
        return this.f33336d;
    }

    @Override // com.hisavana.common.base.BaseVideo
    protected void onVideoShow(Activity activity) {
        MBBidRewardVideoHandler mBBidRewardVideoHandler = this.f33337e;
        if (mBBidRewardVideoHandler != null && mBBidRewardVideoHandler.isBidReady()) {
            this.f33337e.showFromBid();
        } else {
            onAdShowError(TAdErrorCode.ERROR_SHOW_EXCEPTION);
            AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "Mintergral Ads failed to show");
        }
    }

    @Override // com.hisavana.common.base.BaseVideo
    protected void onVideoStartLoad() {
        Network network = this.mNetwork;
        if (network != null && !TextUtils.isEmpty(network.getCodeSeatId()) && this.f33338f != null) {
            if (!TextUtils.isEmpty(this.mNetwork.getBidInfo() != null ? this.mNetwork.getBidInfo().getPayload() : null)) {
                MBBidRewardVideoHandler mBBidRewardVideoHandler = new MBBidRewardVideoHandler(e.a(), "", this.mNetwork.getCodeSeatId());
                this.f33337e = mBBidRewardVideoHandler;
                mBBidRewardVideoHandler.setRewardVideoListener(this.f33338f);
                this.f33337e.loadFromBid(this.mNetwork.getBidInfo().getPayload());
                this.f33337e.playVideoMute(AdMuteStatus.MUTE_ALL ? 1 : 2);
                this.f33336d = true;
                return;
            }
        }
        adFailedToLoad(new TAdErrorCode(30003, "Mintegral Ads failed to load ad error with params empty"));
    }
}
