package com.bytedance.sdk.openadsdk.component.TKC;

import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAd;
import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAdLoadListener;
import com.bytedance.sdk.openadsdk.utils.JcM;

/* JADX INFO: loaded from: classes2.dex */
public class sP implements PAGInterstitialAdLoadListener {
    final PAGInterstitialAdLoadListener Sj;

    public sP(PAGInterstitialAdLoadListener pAGInterstitialAdLoadListener) {
        this.Sj = pAGInterstitialAdLoadListener;
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener
    /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
    public void onAdLoaded(final PAGInterstitialAd pAGInterstitialAd) {
        if (this.Sj != null) {
            JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.TKC.sP.2
                @Override // java.lang.Runnable
                public void run() {
                    PAGInterstitialAdLoadListener pAGInterstitialAdLoadListener = sP.this.Sj;
                    if (pAGInterstitialAdLoadListener != null) {
                        pAGInterstitialAdLoadListener.onAdLoaded(pAGInterstitialAd);
                    }
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener, com.bytedance.sdk.openadsdk.common.vS
    public void onError(final int i11, final String str) {
        if (this.Sj != null) {
            JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.TKC.sP.1
                @Override // java.lang.Runnable
                public void run() {
                    PAGInterstitialAdLoadListener pAGInterstitialAdLoadListener = sP.this.Sj;
                    if (pAGInterstitialAdLoadListener != null) {
                        pAGInterstitialAdLoadListener.onError(i11, str);
                    }
                }
            });
        }
    }
}
