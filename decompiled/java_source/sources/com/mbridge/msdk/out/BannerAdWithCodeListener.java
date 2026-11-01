package com.mbridge.msdk.out;

/* JADX INFO: loaded from: classes5.dex */
public abstract class BannerAdWithCodeListener implements BannerAdListener {
    @Override // com.mbridge.msdk.out.BannerAdListener
    public void onLoadFailed(MBridgeIds mBridgeIds, String str) {
        onLoadFailedWithCode(mBridgeIds, com.mbridge.msdk.util.a.a(2000, str), str);
    }

    public abstract void onLoadFailedWithCode(MBridgeIds mBridgeIds, int i11, String str);
}
