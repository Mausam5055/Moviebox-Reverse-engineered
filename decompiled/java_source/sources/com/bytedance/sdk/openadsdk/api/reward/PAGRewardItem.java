package com.bytedance.sdk.openadsdk.api.reward;

/* JADX INFO: loaded from: classes2.dex */
public class PAGRewardItem {
    private final int Sj;
    private final String sP;

    public PAGRewardItem(int i11, String str) {
        this.Sj = i11;
        this.sP = str;
    }

    public int getRewardAmount() {
        return this.Sj;
    }

    public String getRewardName() {
        return this.sP;
    }
}
