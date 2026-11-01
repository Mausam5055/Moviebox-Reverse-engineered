package com.facebook.biddingkit.bidders;

/* JADX INFO: loaded from: classes3.dex */
public enum LossCode {
    WIN(0),
    TIMEOUT(2),
    NO_BID(9),
    OUTBID(102),
    DID_NOT_PARTICIPATE(2003);

    private final int mCode;

    LossCode(int i11) {
        this.mCode = i11;
    }

    public String getStringValue() {
        return Integer.toString(this.mCode);
    }
}
