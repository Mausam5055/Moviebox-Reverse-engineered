package com.bytedance.sdk.openadsdk.component.reward;

import com.bytedance.sdk.openadsdk.api.model.PAGErrorModel;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardItem;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAdInteractionCallback;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAdInteractionListener;

/* JADX INFO: loaded from: classes3.dex */
public class uA implements com.bytedance.sdk.openadsdk.Sj.HiB.Sj {
    private final PAGRewardedAdInteractionListener Sj;
    private final PAGRewardedAdInteractionCallback sP;

    public uA(PAGRewardedAdInteractionCallback pAGRewardedAdInteractionCallback) {
        this.sP = pAGRewardedAdInteractionCallback;
        this.Sj = null;
    }

    public uA(PAGRewardedAdInteractionListener pAGRewardedAdInteractionListener) {
        this.Sj = pAGRewardedAdInteractionListener;
        this.sP = null;
    }

    @Override // com.bytedance.sdk.openadsdk.Sj.HiB.Sj
    public void Sj() {
        PAGRewardedAdInteractionListener pAGRewardedAdInteractionListener = this.Sj;
        if (pAGRewardedAdInteractionListener != null) {
            pAGRewardedAdInteractionListener.onAdShowed();
            return;
        }
        PAGRewardedAdInteractionCallback pAGRewardedAdInteractionCallback = this.sP;
        if (pAGRewardedAdInteractionCallback != null) {
            pAGRewardedAdInteractionCallback.onAdShowed();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.Sj.HiB.Sj
    public void Sj(boolean z10, int i11, String str, int i12, String str2) {
        PAGRewardedAdInteractionListener pAGRewardedAdInteractionListener = this.Sj;
        if (pAGRewardedAdInteractionListener != null) {
            if (z10) {
                pAGRewardedAdInteractionListener.onUserEarnedReward(new PAGRewardItem(i11, str));
                return;
            } else {
                pAGRewardedAdInteractionListener.onUserEarnedRewardFail(i12, str2);
                return;
            }
        }
        PAGRewardedAdInteractionCallback pAGRewardedAdInteractionCallback = this.sP;
        if (pAGRewardedAdInteractionCallback != null) {
            if (z10) {
                pAGRewardedAdInteractionCallback.onUserEarnedReward(new PAGRewardItem(i11, str));
            } else {
                pAGRewardedAdInteractionCallback.onUserEarnedRewardFail(new PAGErrorModel(i12, str2));
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGAdWrapperListener
    public void onAdClicked() {
        PAGRewardedAdInteractionListener pAGRewardedAdInteractionListener = this.Sj;
        if (pAGRewardedAdInteractionListener != null) {
            pAGRewardedAdInteractionListener.onAdClicked();
            return;
        }
        PAGRewardedAdInteractionCallback pAGRewardedAdInteractionCallback = this.sP;
        if (pAGRewardedAdInteractionCallback != null) {
            pAGRewardedAdInteractionCallback.onAdClicked();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.Sj.HiB.Sj
    public void sP() {
        PAGRewardedAdInteractionListener pAGRewardedAdInteractionListener = this.Sj;
        if (pAGRewardedAdInteractionListener != null) {
            pAGRewardedAdInteractionListener.onAdDismissed();
            return;
        }
        PAGRewardedAdInteractionCallback pAGRewardedAdInteractionCallback = this.sP;
        if (pAGRewardedAdInteractionCallback != null) {
            pAGRewardedAdInteractionCallback.onAdDismissed();
        }
    }
}
