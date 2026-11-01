package com.bytedance.sdk.openadsdk.core.TKC;

import android.view.View;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdInteractionListener;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener;

/* JADX INFO: loaded from: classes3.dex */
public class HiB implements PAGBannerAdWrapperListener {
    private final PAGBannerAdInteractionListener Sj;

    public HiB(PAGBannerAdInteractionListener pAGBannerAdInteractionListener) {
        this.Sj = pAGBannerAdInteractionListener;
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGAdWrapperListener
    public void onAdClicked() {
        PAGBannerAdInteractionListener pAGBannerAdInteractionListener = this.Sj;
        if (pAGBannerAdInteractionListener != null) {
            pAGBannerAdInteractionListener.onAdClicked();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener
    public void onAdDismissed() {
        PAGBannerAdInteractionListener pAGBannerAdInteractionListener = this.Sj;
        if (pAGBannerAdInteractionListener != null) {
            pAGBannerAdInteractionListener.onAdDismissed();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener
    public void onAdShow(View view, int i11) {
        PAGBannerAdInteractionListener pAGBannerAdInteractionListener = this.Sj;
        if (pAGBannerAdInteractionListener != null) {
            pAGBannerAdInteractionListener.onAdShowed();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener
    public void onRenderFail(View view, String str, int i11) {
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener
    public void onRenderSuccess(View view, float f11, float f12) {
    }
}
