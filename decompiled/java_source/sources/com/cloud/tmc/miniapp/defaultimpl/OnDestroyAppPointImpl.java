package com.cloud.tmc.miniapp.defaultimpl;

import com.cloud.tmc.integration.audio.recording.RecorderClient;
import com.cloud.tmc.integration.bridge.AudioEffectBridge;
import com.cloud.tmc.integration.bridge.ForegroundAudioBridge;
import com.cloud.tmc.integration.bridge.KeyboardBridge;
import com.cloud.tmc.integration.bridge.NetworkBridge;
import com.cloud.tmc.integration.bridge.WifiBridge;
import com.cloud.tmc.integration.model.AddToHomeScreenStore;
import com.cloud.tmc.integration.model.AudioRecordCache;
import com.cloud.tmc.integration.model.FileCache;
import com.cloud.tmc.integration.model.TabReSelectedStore;
import com.cloud.tmc.integration.model.WebViewStore;
import com.cloud.tmc.integration.point.OnDestroyAppPoint;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.extension.BridgeExtension;
import com.cloud.tmc.kernel.extension.ExtensionManager;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.miniapp.bridge.PrefetchStrategyBridge;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class OnDestroyAppPointImpl implements OnDestroyAppPoint {
    public static final OooO00o Companion = new OooO00o();

    public static final class OooO00o {
    }

    @Override // com.cloud.tmc.integration.point.OnDestroyAppPoint
    public void onDestroy(App app, ExtensionManager extensionManager) {
        WeakHashMap<String, BridgeCallback> pageCache;
        Iterator<Map.Entry<String, BridgeCallback>> it;
        HashMap<String, BridgeCallback> store;
        BridgeCallback bridgeCallbackRemove;
        BridgeCallback bridgeCallbackRemove2;
        Intrinsics.h(app, "app");
        if (extensionManager != null) {
            try {
                BridgeExtension bridgeExtensionByAction = extensionManager.getBridgeExtensionByAction(app, "releaseAppAudio");
                if (bridgeExtensionByAction instanceof ForegroundAudioBridge) {
                    ((ForegroundAudioBridge) bridgeExtensionByAction).releaseAppAudio(app);
                }
                BridgeExtension bridgeExtensionByAction2 = extensionManager.getBridgeExtensionByAction(app, "releaseAppAudioEffect");
                if (bridgeExtensionByAction2 instanceof AudioEffectBridge) {
                    ((AudioEffectBridge) bridgeExtensionByAction2).releaseAppAudioEffect(app);
                }
            } catch (Throwable th2) {
                TmcLogger.e("OnDestroyAppPoint", th2);
            }
        }
        if (extensionManager != null) {
            try {
                BridgeExtension bridgeExtensionByAction3 = extensionManager.getBridgeExtensionByAction(app, "offKeyboardHeightChange");
                if (bridgeExtensionByAction3 instanceof KeyboardBridge) {
                    ((KeyboardBridge) bridgeExtensionByAction3).checkEventSubscriber(app, false);
                }
            } catch (Throwable th3) {
                TmcLogger.e("OnDestroyAppPointImpl", "releaseKeyboardBridge", th3);
            }
        }
        if (extensionManager != null) {
            try {
                BridgeExtension bridgeExtensionByAction4 = extensionManager.getBridgeExtensionByAction(app, "destroyAppWifi");
                if (bridgeExtensionByAction4 instanceof WifiBridge) {
                    ((WifiBridge) bridgeExtensionByAction4).destroyAppWifi(app);
                }
            } catch (Throwable th4) {
                TmcLogger.e("OnDestroyAppPointImpl", "OnDestroyAppPoint", th4);
            }
        }
        if (extensionManager != null) {
            try {
                BridgeExtension bridgeExtensionByAction5 = extensionManager.getBridgeExtensionByAction(app, "onNetworkStatusChange");
                if (bridgeExtensionByAction5 instanceof NetworkBridge) {
                    ((NetworkBridge) bridgeExtensionByAction5).clearNetworkChangeListenModel(app);
                }
            } catch (Throwable th5) {
                TmcLogger.e("OnDestroyAppPointImpl", "onNetworkStatusChange", th5);
            }
        }
        try {
            AudioRecordCache audioRecordCache = (AudioRecordCache) app.getData(AudioRecordCache.class);
            if (audioRecordCache != null) {
                BridgeCallback bridgeCallbackRemove3 = audioRecordCache.getOnStarts().remove(app.getAppId());
                if (bridgeCallbackRemove3 != null) {
                    bridgeCallbackRemove3.close();
                }
                BridgeCallback bridgeCallbackRemove4 = audioRecordCache.getOnStops().remove(app.getAppId());
                if (bridgeCallbackRemove4 != null) {
                    bridgeCallbackRemove4.close();
                }
                BridgeCallback bridgeCallbackRemove5 = audioRecordCache.getOnPauses().remove(app.getAppId());
                if (bridgeCallbackRemove5 != null) {
                    bridgeCallbackRemove5.close();
                }
                BridgeCallback bridgeCallbackRemove6 = audioRecordCache.getOnResumes().remove(app.getAppId());
                if (bridgeCallbackRemove6 != null) {
                    bridgeCallbackRemove6.close();
                }
                BridgeCallback bridgeCallbackRemove7 = audioRecordCache.getOnErrors().remove(app.getAppId());
                if (bridgeCallbackRemove7 != null) {
                    bridgeCallbackRemove7.close();
                }
                RecorderClient recorderClientRemove = audioRecordCache.getRecorderClientCache().remove(app.getAppId());
                if (recorderClientRemove != null && !recorderClientRemove.isStopped()) {
                    recorderClientRemove.stopRecording();
                }
            }
        } catch (Throwable th6) {
            TmcLogger.e("OnDestroyAppPointImpl", th6);
        }
        try {
            WebViewStore webViewStore = (WebViewStore) app.getData(WebViewStore.class);
            if (webViewStore != null && (bridgeCallbackRemove2 = webViewStore.getOnDownloads().remove(app.getAppId())) != null) {
                bridgeCallbackRemove2.close();
            }
        } catch (Throwable th7) {
            TmcLogger.e("OnDestroyAppPointImpl", th7);
        }
        try {
            FileCache fileCache = (FileCache) app.getData(FileCache.class);
            if (fileCache != null) {
                fileCache.getFileCache().clear();
                fileCache.getFlags().clear();
            }
        } catch (Throwable th8) {
            TmcLogger.e("OnDestroyAppPointImpl", th8);
        }
        AddToHomeScreenStore addToHomeScreenStore = (AddToHomeScreenStore) app.getData(AddToHomeScreenStore.class);
        if (addToHomeScreenStore != null && (store = addToHomeScreenStore.getStore()) != null && (bridgeCallbackRemove = store.remove(app.getAppId())) != null) {
            bridgeCallbackRemove.sendFailResponse();
        }
        TabReSelectedStore tabReSelectedStore = (TabReSelectedStore) app.getData(TabReSelectedStore.class);
        if (tabReSelectedStore != null && (pageCache = tabReSelectedStore.getPageCache()) != null && (it = pageCache.entrySet().iterator()) != null) {
            while (it.hasNext()) {
                it.next().getValue().close();
                it.remove();
            }
        }
        if (extensionManager != null) {
            try {
                BridgeExtension bridgeExtensionByAction6 = extensionManager.getBridgeExtensionByAction(app, "changePrefetchStatus");
                if (bridgeExtensionByAction6 instanceof PrefetchStrategyBridge) {
                    ((PrefetchStrategyBridge) bridgeExtensionByAction6).changePrefetchStatus(app);
                }
            } catch (Throwable th9) {
                try {
                    TmcLogger.e("OnDestroyAppPointImpl", "releaseKeyboardBridge", th9);
                } catch (Throwable th10) {
                    TmcLogger.e("OnDestroyAppPointImpl", th10);
                }
            }
        }
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onFinalized() {
        TmcLogger.d("OnDestroyAppPointImpl", "onFinalized");
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onInitialized() {
        TmcLogger.d("OnDestroyAppPointImpl", "onInitialized");
    }
}
