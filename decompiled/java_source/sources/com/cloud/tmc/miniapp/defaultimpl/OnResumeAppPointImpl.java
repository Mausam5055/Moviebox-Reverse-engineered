package com.cloud.tmc.miniapp.defaultimpl;

import com.cloud.tmc.integration.bridge.AudioEffectBridge;
import com.cloud.tmc.integration.bridge.ForegroundAudioBridge;
import com.cloud.tmc.integration.point.OnResumeAppPoint;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.kernel.extension.BridgeExtension;
import com.cloud.tmc.kernel.extension.ExtensionManager;
import com.cloud.tmc.kernel.log.TmcLogger;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class OnResumeAppPointImpl implements OnResumeAppPoint {
    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onFinalized() {
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onInitialized() {
    }

    @Override // com.cloud.tmc.integration.point.OnResumeAppPoint
    public void onResume(App app, ExtensionManager extensionManager) {
        Intrinsics.h(app, "app");
        if (extensionManager != null) {
            try {
                BridgeExtension bridgeExtensionByAction = extensionManager.getBridgeExtensionByAction(app, "restoreAppAudio");
                if (bridgeExtensionByAction instanceof ForegroundAudioBridge) {
                    ((ForegroundAudioBridge) bridgeExtensionByAction).restoreAppAudio(app);
                }
                BridgeExtension bridgeExtensionByAction2 = extensionManager.getBridgeExtensionByAction(app, "restoreAppAudioEffect");
                if (bridgeExtensionByAction2 instanceof AudioEffectBridge) {
                    ((AudioEffectBridge) bridgeExtensionByAction2).restoreAppAudioEffect(app);
                }
            } catch (Throwable th2) {
                TmcLogger.e("OnResumeAppPoint", th2);
            }
        }
    }
}
