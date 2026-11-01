package com.cloud.tmc.kernel.extension;

import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.security.Guard;

/* JADX INFO: loaded from: classes3.dex */
public interface BridgeExtension extends Extension, Guard {
    void callbackFail(BridgeCallback bridgeCallback, String str, Boolean bool);
}
