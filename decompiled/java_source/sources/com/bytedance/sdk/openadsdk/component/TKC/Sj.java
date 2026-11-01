package com.bytedance.sdk.openadsdk.component.TKC;

import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAdInteractionListener;

/* JADX INFO: loaded from: classes2.dex */
public class Sj implements com.bytedance.sdk.openadsdk.Sj.TKC.sP {
    private final PAGInterstitialAdInteractionListener Sj;

    public Sj(PAGInterstitialAdInteractionListener pAGInterstitialAdInteractionListener) {
        this.Sj = pAGInterstitialAdInteractionListener;
    }

    @Override // com.bytedance.sdk.openadsdk.Sj.TKC.sP
    public void Sj() {
        PAGInterstitialAdInteractionListener pAGInterstitialAdInteractionListener = this.Sj;
        if (pAGInterstitialAdInteractionListener != null) {
            pAGInterstitialAdInteractionListener.onAdShowed();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGAdWrapperListener
    public void onAdClicked() {
        PAGInterstitialAdInteractionListener pAGInterstitialAdInteractionListener = this.Sj;
        if (pAGInterstitialAdInteractionListener != null) {
            pAGInterstitialAdInteractionListener.onAdClicked();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.Sj.TKC.sP
    public void sP() {
        PAGInterstitialAdInteractionListener pAGInterstitialAdInteractionListener = this.Sj;
        if (pAGInterstitialAdInteractionListener != null) {
            pAGInterstitialAdInteractionListener.onAdDismissed();
        }
    }
}
