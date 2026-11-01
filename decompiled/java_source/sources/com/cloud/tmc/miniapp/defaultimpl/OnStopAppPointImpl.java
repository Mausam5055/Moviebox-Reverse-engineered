package com.cloud.tmc.miniapp.defaultimpl;

import com.cloud.tmc.integration.bridge.AudioEffectBridge;
import com.cloud.tmc.integration.bridge.ForegroundAudioBridge;
import com.cloud.tmc.integration.point.OnStopAppPoint;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.kernel.extension.BridgeExtension;
import com.cloud.tmc.kernel.extension.ExtensionManager;
import com.cloud.tmc.kernel.log.TmcLogger;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class OnStopAppPointImpl implements OnStopAppPoint {
    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onFinalized() {
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onInitialized() {
    }

    @Override // com.cloud.tmc.integration.point.OnStopAppPoint
    public void onStop(App app, ExtensionManager extensionManager) {
        Intrinsics.h(app, "app");
        if (app.isDestroyed() || extensionManager == null) {
            return;
        }
        try {
            BridgeExtension bridgeExtensionByAction = extensionManager.getBridgeExtensionByAction(app, "pauseAppAudio");
            if (bridgeExtensionByAction instanceof ForegroundAudioBridge) {
                ((ForegroundAudioBridge) bridgeExtensionByAction).pauseAppAudio(app);
            }
            BridgeExtension bridgeExtensionByAction2 = extensionManager.getBridgeExtensionByAction(app, "stopAppAudioEffect");
            if (bridgeExtensionByAction2 instanceof AudioEffectBridge) {
                ((AudioEffectBridge) bridgeExtensionByAction2).stopAppAudioEffect(app);
            }
        } catch (Throwable th2) {
            TmcLogger.e("OnResumeAppPoint", th2);
        }
    }
}
