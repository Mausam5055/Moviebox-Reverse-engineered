package com.mbridge.msdk.scheme.applet;

import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.o0;

/* JADX INFO: loaded from: classes5.dex */
public abstract class AppletSchemeCallBack implements IAppletSchemeCallBack {
    private static final String TAG = "AppletSchemeCallBack";

    @Override // com.mbridge.msdk.scheme.applet.IAppletSchemeCallBack
    public void onAppletSchemeRequestFailed(int i11, String str, String str2) {
        try {
            onRequestFailed(i11, str, str2);
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.b(TAG, e11.getMessage());
            }
        }
    }

    @Override // com.mbridge.msdk.scheme.applet.IAppletSchemeCallBack
    public void onAppletSchemeRequestStart() {
        try {
            onRequestStart();
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.b(TAG, e11.getMessage());
            }
        }
    }

    @Override // com.mbridge.msdk.scheme.applet.IAppletSchemeCallBack
    public void onAppletSchemeRequestSuccess(String str) {
        try {
            onRequestSuccess(str);
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.b(TAG, e11.getMessage());
            }
        }
    }

    @Override // com.mbridge.msdk.scheme.applet.IAppletSchemeCallBack
    public void onNetworkError(int i11, String str, String str2) {
        try {
            onRequestFailed(i11, str, str2);
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.b(TAG, e11.getMessage());
            }
        }
    }

    protected abstract void onRequestFailed(int i11, String str, String str2);

    protected abstract void onRequestStart();

    protected abstract void onRequestSuccess(String str);
}
