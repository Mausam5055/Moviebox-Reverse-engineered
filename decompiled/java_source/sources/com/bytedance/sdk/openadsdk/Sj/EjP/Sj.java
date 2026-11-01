package com.bytedance.sdk.openadsdk.Sj.EjP;

import com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAd;
import com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAdLoadListener;
import com.bytedance.sdk.openadsdk.utils.JcM;

/* JADX INFO: loaded from: classes2.dex */
public class Sj implements PAGAppOpenAdLoadListener {
    private final PAGAppOpenAdLoadListener Sj;

    public Sj(PAGAppOpenAdLoadListener pAGAppOpenAdLoadListener) {
        this.Sj = pAGAppOpenAdLoadListener;
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener
    /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
    public void onAdLoaded(final PAGAppOpenAd pAGAppOpenAd) {
        if (this.Sj == null) {
            return;
        }
        JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.Sj.EjP.Sj.2
            @Override // java.lang.Runnable
            public void run() {
                if (Sj.this.Sj != null) {
                    Sj.this.Sj.onAdLoaded(pAGAppOpenAd);
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
        JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.Sj.EjP.Sj.1
            @Override // java.lang.Runnable
            public void run() {
                if (Sj.this.Sj != null) {
                    Sj.this.Sj.onError(i11, str);
                }
            }
        });
    }
}
