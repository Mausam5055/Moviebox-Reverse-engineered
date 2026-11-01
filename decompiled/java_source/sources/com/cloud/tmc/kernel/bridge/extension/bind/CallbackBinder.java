package com.cloud.tmc.kernel.bridge.extension.bind;

import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingCallback;
import com.cloud.tmc.kernel.extension.DefaultBridgeCallback;
import com.cloud.tmc.kernel.helper.BridgeResponseHelper;

/* JADX INFO: loaded from: classes3.dex */
public class CallbackBinder implements Binder<BindingCallback, BridgeCallback> {
    private BridgeResponseHelper responseHelper;

    public CallbackBinder(BridgeResponseHelper bridgeResponseHelper) {
        this.responseHelper = bridgeResponseHelper;
    }

    @Override // com.cloud.tmc.kernel.bridge.extension.bind.Binder
    public BridgeCallback bind(Class<BridgeCallback> cls, BindingCallback bindingCallback) throws BindException {
        return new DefaultBridgeCallback(this.responseHelper, bindingCallback.isSticky());
    }
}
