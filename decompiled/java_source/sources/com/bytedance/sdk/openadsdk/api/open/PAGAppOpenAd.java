package com.bytedance.sdk.openadsdk.api.open;

import android.app.Activity;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.api.PAGClientBidding;
import com.bytedance.sdk.openadsdk.api.PangleAd;
import com.bytedance.sdk.openadsdk.api.factory.ISDKTypeFactory;
import com.bytedance.sdk.openadsdk.api.model.PAGErrorModel;
import com.bytedance.sdk.openadsdk.common.HiB;

/* JADX INFO: loaded from: classes2.dex */
public abstract class PAGAppOpenAd implements PAGClientBidding, PangleAd {
    public static void loadAd(@NonNull String str, @NonNull PAGAppOpenRequest pAGAppOpenRequest, @NonNull final PAGAppOpenAdLoadCallback pAGAppOpenAdLoadCallback) {
        loadAd(str, pAGAppOpenRequest, new PAGAppOpenAdLoadListener() { // from class: com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAd.1
            @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener
            public void onAdLoaded(PAGAppOpenAd pAGAppOpenAd) {
                pAGAppOpenAdLoadCallback.onAdLoaded(pAGAppOpenAd);
            }

            @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener, com.bytedance.sdk.openadsdk.common.vS
            public void onError(int i11, String str2) {
                pAGAppOpenAdLoadCallback.onError(new PAGErrorModel(i11, str2));
            }
        });
    }

    public static void loadAd(@NonNull String str, @NonNull PAGAppOpenRequest pAGAppOpenRequest, @NonNull PAGAppOpenAdLoadListener pAGAppOpenAdLoadListener) {
        ISDKTypeFactory iSDKTypeFactorySj = HiB.Sj(pAGAppOpenAdLoadListener);
        if (iSDKTypeFactorySj != null) {
            iSDKTypeFactorySj.createADTypeLoaderFactory(str).createOpenAdLoader().loadAd(str, pAGAppOpenRequest, pAGAppOpenAdLoadListener);
        }
    }

    public abstract void setAdInteractionCallback(PAGAppOpenAdInteractionCallback pAGAppOpenAdInteractionCallback);

    public abstract void setAdInteractionListener(PAGAppOpenAdInteractionListener pAGAppOpenAdInteractionListener);

    public abstract void show(@Nullable Activity activity);
}
