package com.cloud.tmc.miniapp.defaultimpl;

import com.cloud.tmc.integration.bridge.KeyboardBridge;
import com.cloud.tmc.integration.point.OnDestroyPagePoint;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.Page;
import com.cloud.tmc.kernel.extension.BridgeExtension;
import com.cloud.tmc.kernel.extension.ExtensionManager;
import com.cloud.tmc.kernel.log.TmcLogger;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class OnDestroyPagePointImpl implements OnDestroyPagePoint {
    public static final OooO00o Companion = new OooO00o();

    public static final class OooO00o {
    }

    @Override // com.cloud.tmc.integration.point.OnDestroyPagePoint
    public void onDestroy(App app, Page page, ExtensionManager extensionManager) {
        Intrinsics.h(page, "page");
        if (extensionManager != null) {
            try {
                BridgeExtension bridgeExtensionByAction = extensionManager.getBridgeExtensionByAction(page, "offKeyboardHeightChange");
                if (bridgeExtensionByAction instanceof KeyboardBridge) {
                    ((KeyboardBridge) bridgeExtensionByAction).offKeyboardHeightChange(app, page, null);
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onFinalized() {
        TmcLogger.i("OnDestroyPagePointImpl", "onFinalized");
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onInitialized() {
        TmcLogger.i("OnDestroyPagePointImpl", "onInitialized");
    }
}
