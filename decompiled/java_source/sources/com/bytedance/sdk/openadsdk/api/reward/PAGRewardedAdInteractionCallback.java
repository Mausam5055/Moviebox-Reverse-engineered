package com.bytedance.sdk.openadsdk.api.reward;

import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.api.model.PAGErrorModel;

/* JADX INFO: loaded from: classes2.dex */
public abstract class PAGRewardedAdInteractionCallback {
    public void onAdClicked() {
    }

    public void onAdDismissed() {
    }

    @Deprecated
    public void onAdShowFailed(@NonNull PAGErrorModel pAGErrorModel) {
    }

    public void onAdShowed() {
    }

    public void onUserEarnedReward(PAGRewardItem pAGRewardItem) {
    }

    public void onUserEarnedRewardFail(@NonNull PAGErrorModel pAGErrorModel) {
    }
}
