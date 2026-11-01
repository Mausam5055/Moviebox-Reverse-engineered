package com.bytedance.sdk.openadsdk.api.banner;

import com.bytedance.sdk.openadsdk.api.PAGRequest;

/* JADX INFO: loaded from: classes2.dex */
public class PAGBannerRequest extends PAGRequest {
    private PAGBannerSize Sj;

    public PAGBannerRequest(PAGBannerSize pAGBannerSize) {
        this.Sj = pAGBannerSize;
    }

    public PAGBannerSize getAdSize() {
        return this.Sj;
    }

    public void setAdSize(PAGBannerSize pAGBannerSize) {
        this.Sj = pAGBannerSize;
    }
}
