package com.facebook.biddingkit.gen;

/* JADX INFO: loaded from: classes3.dex */
public enum TapjoyAdFormat {
    INTERSTITIAL(true, false, "video"),
    REWARDED_VIDEO(false, true, "video");

    private final String mFormatLabel;
    private final boolean mIsRewarded;
    private final boolean mIsSkippable;

    TapjoyAdFormat(boolean z10, boolean z11, String str) {
        this.mIsSkippable = z10;
        this.mIsRewarded = z11;
        this.mFormatLabel = str;
    }

    public String getFormatLabel() {
        return this.mFormatLabel;
    }

    public int isRewarded() {
        return this.mIsRewarded ? 1 : 0;
    }

    public int isSkippable() {
        return this.mIsSkippable ? 1 : 0;
    }
}
