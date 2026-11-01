package com.bytedance.sdk.openadsdk.Sj.TKC;

import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAd;
import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAdLoadListener;
import com.bytedance.sdk.openadsdk.utils.JcM;

/* JADX INFO: loaded from: classes2.dex */
public class Sj implements PAGInterstitialAdLoadListener {
    private final PAGInterstitialAdLoadListener Sj;

    public Sj(PAGInterstitialAdLoadListener pAGInterstitialAdLoadListener) {
        this.Sj = pAGInterstitialAdLoadListener;
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener
    /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
    public void onAdLoaded(final PAGInterstitialAd pAGInterstitialAd) {
        if (this.Sj == null) {
            return;
        }
        JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.Sj.TKC.Sj.2
            @Override // java.lang.Runnable
            public void run() {
                if (Sj.this.Sj != null) {
                    Sj.this.Sj.onAdLoaded(pAGInterstitialAd);
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
        JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.Sj.TKC.Sj.1
            @Override // java.lang.Runnable
            public void run() {
                if (Sj.this.Sj != null) {
                    Sj.this.Sj.onError(i11, str);
                }
            }
        });
    }
}
