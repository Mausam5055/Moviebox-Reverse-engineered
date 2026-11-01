package com.bytedance.sdk.openadsdk.Sj.HiB;

import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAd;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAdLoadListener;
import com.bytedance.sdk.openadsdk.utils.JcM;

/* JADX INFO: loaded from: classes2.dex */
public class sP implements PAGRewardedAdLoadListener {
    private final PAGRewardedAdLoadListener Sj;

    public sP(PAGRewardedAdLoadListener pAGRewardedAdLoadListener) {
        this.Sj = pAGRewardedAdLoadListener;
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener
    /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
    public void onAdLoaded(final PAGRewardedAd pAGRewardedAd) {
        if (this.Sj == null) {
            return;
        }
        JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.Sj.HiB.sP.2
            @Override // java.lang.Runnable
            public void run() {
                if (sP.this.Sj != null) {
                    sP.this.Sj.onAdLoaded(pAGRewardedAd);
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener, com.bytedance.sdk.openadsdk.common.vS
    public void onError(final int i11, final String str) {
        if (this.Sj == null) {
            return;
        }
        if (str == null) {
            str = "Unknown exception.";
        }
        JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.Sj.HiB.sP.1
            @Override // java.lang.Runnable
            public void run() {
                if (sP.this.Sj != null) {
                    sP.this.Sj.onError(i11, str);
                }
            }
        });
    }
}
