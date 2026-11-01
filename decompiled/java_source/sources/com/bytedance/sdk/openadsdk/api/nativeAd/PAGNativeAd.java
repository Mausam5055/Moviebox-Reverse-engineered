package com.bytedance.sdk.openadsdk.api.nativeAd;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.api.PAGClientBidding;
import com.bytedance.sdk.openadsdk.api.PangleAd;
import com.bytedance.sdk.openadsdk.api.factory.ISDKTypeFactory;
import com.bytedance.sdk.openadsdk.api.model.PAGErrorModel;
import com.bytedance.sdk.openadsdk.common.HiB;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class PAGNativeAd implements PAGClientBidding, PangleAd {
    public static void loadAd(@NonNull String str, @NonNull PAGNativeRequest pAGNativeRequest, @NonNull final PAGNativeAdLoadCallback pAGNativeAdLoadCallback) {
        loadAd(str, pAGNativeRequest, new PAGNativeAdLoadListener() { // from class: com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd.1
            @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener
            public void onAdLoaded(PAGNativeAd pAGNativeAd) {
                pAGNativeAdLoadCallback.onAdLoaded(pAGNativeAd);
            }

            @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener, com.bytedance.sdk.openadsdk.common.vS
            public void onError(int i11, String str2) {
                pAGNativeAdLoadCallback.onError(new PAGErrorModel(i11, str2));
            }
        });
    }

    public static void loadAd(@NonNull String str, @NonNull PAGNativeRequest pAGNativeRequest, @NonNull PAGNativeAdLoadListener pAGNativeAdLoadListener) {
        ISDKTypeFactory iSDKTypeFactorySj = HiB.Sj(pAGNativeAdLoadListener);
        if (iSDKTypeFactorySj != null) {
            iSDKTypeFactorySj.createADTypeLoaderFactory(str).createNativeAdLoader().loadAd(str, pAGNativeRequest, pAGNativeAdLoadListener);
        }
    }

    public abstract PAGNativeAdData getNativeAdData();

    public abstract void registerViewForInteraction(@NonNull ViewGroup viewGroup, @NonNull List<View> list, @Nullable List<View> list2, @Nullable View view, PAGNativeAdInteractionCallback pAGNativeAdInteractionCallback);

    public abstract void registerViewForInteraction(@NonNull ViewGroup viewGroup, @NonNull List<View> list, @Nullable List<View> list2, @Nullable View view, PAGNativeAdInteractionListener pAGNativeAdInteractionListener);

    public abstract void showPrivacyActivity();
}
