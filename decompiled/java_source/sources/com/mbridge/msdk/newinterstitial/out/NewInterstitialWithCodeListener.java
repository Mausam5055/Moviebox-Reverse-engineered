package com.mbridge.msdk.newinterstitial.out;

import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.util.a;

/* JADX INFO: loaded from: classes5.dex */
public abstract class NewInterstitialWithCodeListener implements NewInterstitialListener {
    @Override // com.mbridge.msdk.newinterstitial.out.NewInterstitialListener
    public void onResourceLoadFail(MBridgeIds mBridgeIds, String str) {
        onResourceLoadFailWithCode(mBridgeIds, a.a(AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS, str), str);
    }

    public abstract void onResourceLoadFailWithCode(MBridgeIds mBridgeIds, int i11, String str);

    @Override // com.mbridge.msdk.newinterstitial.out.NewInterstitialListener
    public void onShowFail(MBridgeIds mBridgeIds, String str) {
        onShowFailWithCode(mBridgeIds, a.b(AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS, str), str);
    }

    public abstract void onShowFailWithCode(MBridgeIds mBridgeIds, int i11, String str);
}
