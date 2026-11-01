package com.bytedance.sdk.openadsdk.Sj.Sj;

import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAd;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdLoadListener;
import com.bytedance.sdk.openadsdk.utils.JcM;

/* JADX INFO: loaded from: classes2.dex */
public class Sj implements PAGBannerAdLoadListener {
    private final PAGBannerAdLoadListener Sj;

    public Sj(PAGBannerAdLoadListener pAGBannerAdLoadListener) {
        this.Sj = pAGBannerAdLoadListener;
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener
    /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
    public void onAdLoaded(final PAGBannerAd pAGBannerAd) {
        if (this.Sj == null) {
            return;
        }
        JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.Sj.Sj.Sj.2
            @Override // java.lang.Runnable
            public void run() {
                Sj.this.Sj.onAdLoaded(pAGBannerAd);
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
        JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.Sj.Sj.Sj.1
            @Override // java.lang.Runnable
            public void run() {
                Sj.this.Sj.onError(i11, str);
            }
        });
    }
}
