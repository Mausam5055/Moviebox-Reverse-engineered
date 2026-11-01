package com.bytedance.sdk.openadsdk.Sj.sP;

import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdLoadListener;
import com.bytedance.sdk.openadsdk.utils.JcM;

/* JADX INFO: loaded from: classes2.dex */
public class HiB implements PAGNativeAdLoadListener {
    private final PAGNativeAdLoadListener Sj;

    public HiB(PAGNativeAdLoadListener pAGNativeAdLoadListener) {
        this.Sj = pAGNativeAdLoadListener;
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener
    /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
    public void onAdLoaded(final PAGNativeAd pAGNativeAd) {
        if (this.Sj == null) {
            return;
        }
        JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.Sj.sP.HiB.2
            @Override // java.lang.Runnable
            public void run() {
                if (HiB.this.Sj != null) {
                    HiB.this.Sj.onAdLoaded(pAGNativeAd);
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
        JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.Sj.sP.HiB.1
            @Override // java.lang.Runnable
            public void run() {
                if (HiB.this.Sj != null) {
                    HiB.this.Sj.onError(i11, str);
                }
            }
        });
    }
}
