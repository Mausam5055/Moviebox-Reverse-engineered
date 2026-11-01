package com.cloud.tmc.integration.defaultImpl;

import androidx.annotation.Keep;
import com.cloud.tmc.integration.proxy.AppFactory;
import com.cloud.tmc.integration.structure.AppManager;
import com.cloud.tmc.integration.structure.VirtualAppManager;
import com.cloud.tmc.integration.structure.node.AppNode;
import com.cloud.tmc.kernel.proxy.TmcProxy;

/* JADX INFO: loaded from: classes3.dex */
@Keep
public class DefaultAppFactoryImpl implements AppFactory {
    @Override // com.cloud.tmc.integration.proxy.AppFactory
    public AppNode createApp() {
        return new AppNode((AppManager) TmcProxy.get(AppManager.class));
    }

    @Override // com.cloud.tmc.integration.proxy.AppFactory
    public AppNode createVirtualApp() {
        return new AppNode((AppManager) TmcProxy.get(VirtualAppManager.class));
    }
}
