package com.bytedance.sdk.openadsdk.component.reward;

import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAd;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAdLoadListener;
import com.bytedance.sdk.openadsdk.utils.JcM;

/* JADX INFO: loaded from: classes2.dex */
public class Jcg implements PAGRewardedAdLoadListener {
    final PAGRewardedAdLoadListener Sj;

    public Jcg(PAGRewardedAdLoadListener pAGRewardedAdLoadListener) {
        this.Sj = pAGRewardedAdLoadListener;
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener
    /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
    public void onAdLoaded(final PAGRewardedAd pAGRewardedAd) {
        if (this.Sj != null) {
            JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.Jcg.2
                @Override // java.lang.Runnable
                public void run() {
                    PAGRewardedAdLoadListener pAGRewardedAdLoadListener = Jcg.this.Sj;
                    if (pAGRewardedAdLoadListener != null) {
                        pAGRewardedAdLoadListener.onAdLoaded(pAGRewardedAd);
                    }
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener, com.bytedance.sdk.openadsdk.common.vS
    public void onError(final int i11, final String str) {
        if (this.Sj != null) {
            JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.Jcg.1
                @Override // java.lang.Runnable
                public void run() {
                    PAGRewardedAdLoadListener pAGRewardedAdLoadListener = Jcg.this.Sj;
                    if (pAGRewardedAdLoadListener != null) {
                        pAGRewardedAdLoadListener.onError(i11, str);
                    }
                }
            });
        }
    }
}
