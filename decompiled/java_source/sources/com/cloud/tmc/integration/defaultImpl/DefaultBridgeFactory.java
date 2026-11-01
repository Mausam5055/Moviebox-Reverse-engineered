package com.cloud.tmc.integration.defaultImpl;

import com.cloud.tmc.integration.structure.impl.DefaultNativeBridge;
import com.cloud.tmc.kernel.bridge.NativeBridge;
import com.cloud.tmc.kernel.proxy.IBridgeFactory;

/* JADX INFO: loaded from: classes3.dex */
public class DefaultBridgeFactory implements IBridgeFactory {
    @Override // com.cloud.tmc.kernel.proxy.IBridgeFactory
    public NativeBridge createNativeBridge() {
        return new DefaultNativeBridge();
    }
}
