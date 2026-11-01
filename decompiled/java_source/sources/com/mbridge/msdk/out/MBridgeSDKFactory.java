package com.mbridge.msdk.out;

import android.annotation.SuppressLint;
import com.mbridge.msdk.system.MBridgeSDKImpl;

/* JADX INFO: loaded from: classes5.dex */
public class MBridgeSDKFactory {

    @SuppressLint({"StaticFieldLeak"})
    private static volatile MBridgeSDKImpl instance;

    private MBridgeSDKFactory() {
    }

    public static MBridgeSDKImpl getMBridgeSDK() {
        if (instance == null) {
            synchronized (MBridgeSDKFactory.class) {
                try {
                    if (instance == null) {
                        instance = new MBridgeSDKImpl();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return instance;
    }
}
