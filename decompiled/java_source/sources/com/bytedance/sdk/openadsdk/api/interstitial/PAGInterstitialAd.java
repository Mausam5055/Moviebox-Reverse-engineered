package com.bytedance.sdk.openadsdk.api.interstitial;

import android.app.Activity;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.api.PAGClientBidding;
import com.bytedance.sdk.openadsdk.api.PangleAd;
import com.bytedance.sdk.openadsdk.api.factory.ISDKTypeFactory;
import com.bytedance.sdk.openadsdk.api.model.PAGErrorModel;
import com.bytedance.sdk.openadsdk.common.HiB;

/* JADX INFO: loaded from: classes2.dex */
public abstract class PAGInterstitialAd implements PAGClientBidding, PangleAd {
    public static void loadAd(@NonNull String str, @NonNull PAGInterstitialRequest pAGInterstitialRequest, @NonNull final PAGInterstitialAdLoadCallback pAGInterstitialAdLoadCallback) {
        loadAd(str, pAGInterstitialRequest, new PAGInterstitialAdLoadListener() { // from class: com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAd.1
            @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener
            public void onAdLoaded(PAGInterstitialAd pAGInterstitialAd) {
                pAGInterstitialAdLoadCallback.onAdLoaded(pAGInterstitialAd);
            }

            @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener, com.bytedance.sdk.openadsdk.common.vS
            public void onError(int i11, String str2) {
                pAGInterstitialAdLoadCallback.onError(new PAGErrorModel(i11, str2));
            }
        });
    }

    public static void loadAd(@NonNull String str, @NonNull PAGInterstitialRequest pAGInterstitialRequest, @NonNull PAGInterstitialAdLoadListener pAGInterstitialAdLoadListener) {
        ISDKTypeFactory iSDKTypeFactorySj = HiB.Sj(pAGInterstitialAdLoadListener);
        if (iSDKTypeFactorySj != null) {
            iSDKTypeFactorySj.createADTypeLoaderFactory(str).createInterstitialAdLoader().loadAd(str, pAGInterstitialRequest, pAGInterstitialAdLoadListener);
        }
    }

    public abstract void setAdInteractionCallback(PAGInterstitialAdInteractionCallback pAGInterstitialAdInteractionCallback);

    public abstract void setAdInteractionListener(PAGInterstitialAdInteractionListener pAGInterstitialAdInteractionListener);

    public abstract void show(@Nullable Activity activity);
}
