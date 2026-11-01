package com.cloud.tmc.kernel.proxy;

import com.cloud.tmc.kernel.bridge.NativeBridge;

/* JADX INFO: loaded from: classes3.dex */
public interface IBridgeFactory extends Proxiable {
    NativeBridge createNativeBridge();
}
