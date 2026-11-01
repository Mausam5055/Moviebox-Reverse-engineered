package com.mbridge.msdk.out;

/* JADX INFO: loaded from: classes5.dex */
public abstract class NativeAdvancedAdWithCodeListener implements NativeAdvancedAdListener {
    @Override // com.mbridge.msdk.out.NativeAdvancedAdListener
    public void onLoadFailed(MBridgeIds mBridgeIds, String str) {
        onLoadFailedWithCode(mBridgeIds, com.mbridge.msdk.util.a.a(6000, str), str);
    }

    public abstract void onLoadFailedWithCode(MBridgeIds mBridgeIds, int i11, String str);
}
