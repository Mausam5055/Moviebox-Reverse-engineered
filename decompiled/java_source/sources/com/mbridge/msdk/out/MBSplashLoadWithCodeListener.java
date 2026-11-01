package com.mbridge.msdk.out;

/* JADX INFO: loaded from: classes5.dex */
public abstract class MBSplashLoadWithCodeListener implements MBSplashLoadListener {
    @Override // com.mbridge.msdk.out.MBSplashLoadListener
    public void onLoadFailed(MBridgeIds mBridgeIds, String str, int i11) {
        onLoadFailedWithCode(mBridgeIds, com.mbridge.msdk.util.a.a(5000, str), str, i11);
    }

    public abstract void onLoadFailedWithCode(MBridgeIds mBridgeIds, int i11, String str, int i12);
}
