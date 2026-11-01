package com.bytedance.sdk.openadsdk.Sj.sP;

import android.view.View;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGImageItem;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGMediaView;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdData;
import com.bytedance.sdk.openadsdk.core.model.sU;

/* JADX INFO: loaded from: classes2.dex */
public class EjP implements PAGNativeAdData {
    private final Sj Sj;

    public EjP(Sj sj2) {
        this.Sj = sj2;
    }

    @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdData
    public View getAdChoicesView() {
        Sj sj2 = this.Sj;
        if (sj2 != null) {
            return sj2.Ym();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdData
    public View getAdLogoView() {
        Sj sj2 = this.Sj;
        if (sj2 != null) {
            return sj2.TEQ();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdData
    public String getButtonText() {
        Sj sj2 = this.Sj;
        if (sj2 != null) {
            return sj2.vS();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdData
    public String getDescription() {
        Sj sj2 = this.Sj;
        if (sj2 != null) {
            return sj2.HiB();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdData
    public PAGImageItem getIcon() {
        Sj sj2 = this.Sj;
        if (sj2 != null) {
            return sj2.TKC();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdData
    public PAGNativeAdData.PAGNativeMediaType getMediaType() {
        return sU.HiB(this.Sj.Sj) ? PAGNativeAdData.PAGNativeMediaType.PAGNativeMediaTypeVideo : PAGNativeAdData.PAGNativeMediaType.PAGNativeMediaTypeImage;
    }

    @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdData
    public PAGMediaView getMediaView() {
        Sj sj2 = this.Sj;
        if (sj2 != null) {
            return sj2.Jcg();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdData
    public String getTitle() {
        Sj sj2 = this.Sj;
        if (sj2 != null) {
            return sj2.EjP();
        }
        return null;
    }
}
