package com.bytedance.sdk.openadsdk.api.bidding;

import com.bytedance.sdk.openadsdk.api.banner.PAGBannerSize;

/* JADX INFO: loaded from: classes2.dex */
public class PAGBiddingRequest {
    private PAGBannerSize Sj = null;
    private String sP = null;
    private String TKC = null;

    public String getAdxId() {
        return this.TKC;
    }

    public PAGBannerSize getBannerSize() {
        return this.Sj;
    }

    public String getSlotId() {
        return this.sP;
    }

    public void setAdxId(String str) {
        this.TKC = str;
    }

    public void setBannerSize(PAGBannerSize pAGBannerSize) {
        this.Sj = pAGBannerSize;
    }

    public void setSlotId(String str) {
        this.sP = str;
    }
}
