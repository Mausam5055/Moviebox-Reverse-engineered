package com.mbridge.msdk.out;

/* JADX INFO: loaded from: classes5.dex */
public abstract class NativeAdWithCodeListener implements NativeListener.NativeAdListener {
    @Override // com.mbridge.msdk.out.NativeListener.NativeAdListener
    public void onAdLoadError(String str) {
        onAdLoadErrorWithCode(com.mbridge.msdk.util.a.a(1000, str), str);
    }

    public abstract void onAdLoadErrorWithCode(int i11, String str);
}
