package com.bytedance.sdk.openadsdk.Sj.sP;

import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdInteractionListener;
import com.bytedance.sdk.openadsdk.utils.JcM;

/* JADX INFO: loaded from: classes2.dex */
public class Jcg implements vS {
    private final PAGNativeAdInteractionListener Sj;

    public Jcg(PAGNativeAdInteractionListener pAGNativeAdInteractionListener) {
        this.Sj = pAGNativeAdInteractionListener;
    }

    @Override // com.bytedance.sdk.openadsdk.Sj.sP.vS
    public void Sj() {
        JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.Sj.sP.Jcg.3
            @Override // java.lang.Runnable
            public void run() {
                if (Jcg.this.Sj != null) {
                    Jcg.this.Sj.onAdDismissed();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.Sj.sP.vS
    public void Sj(PAGNativeAd pAGNativeAd) {
        JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.Sj.sP.Jcg.2
            @Override // java.lang.Runnable
            public void run() {
                if (Jcg.this.Sj != null) {
                    Jcg.this.Sj.onAdShowed();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGAdWrapperListener
    public void onAdClicked() {
        JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.Sj.sP.Jcg.1
            @Override // java.lang.Runnable
            public void run() {
                if (Jcg.this.Sj != null) {
                    Jcg.this.Sj.onAdClicked();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.Sj.sP.vS
    public boolean sP() {
        return this.Sj != null;
    }
}
