package com.bytedance.sdk.openadsdk.api;

import com.bytedance.sdk.openadsdk.common.vS;

/* JADX INFO: loaded from: classes2.dex */
public interface PAGLoadListener<Ad> extends vS {
    void onAdLoaded(Ad ad2);

    @Override // com.bytedance.sdk.openadsdk.common.vS
    void onError(int i11, String str);
}
