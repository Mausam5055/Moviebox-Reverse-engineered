package com.bytedance.sdk.openadsdk.api.open;

import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.api.model.PAGErrorModel;

/* JADX INFO: loaded from: classes2.dex */
public abstract class PAGAppOpenAdInteractionCallback implements PAGAppOpenAdInteractionListener {
    @Override // com.bytedance.sdk.openadsdk.api.PAGAdListener
    public void onAdClicked() {
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGAdListener
    public void onAdDismissed() {
    }

    @Deprecated
    public void onAdShowFailed(@NonNull PAGErrorModel pAGErrorModel) {
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGAdListener
    public void onAdShowed() {
    }
}
