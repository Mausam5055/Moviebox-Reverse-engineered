package com.cloud.tmc.integration.bridge;

import android.content.Context;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.audio.AudioEffectClient;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppContext;
import com.cloud.tmc.kernel.annotation.ActionFilter;
import com.cloud.tmc.kernel.annotation.ThreadType;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingNode;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingParam;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.extension.BridgeExtension;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.security.Permission;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.google.gson.JsonObject;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000  2\u00020\u0001:\u0001 B\u0005¢\u0006\u0002\u0010\u0002J1\u0010\u0007\u001a\u00020\b2\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007¢\u0006\u0002\u0010\u000fJ,\u0010\u0010\u001a\u00020\b2\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010\u0011\u001a\u0004\u0018\u00010\u00052\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J8\u0010\u0012\u001a\u00020\b2\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010\u0011\u001a\u0004\u0018\u00010\u00052\n\b\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u00052\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J\b\u0010\u0014\u001a\u00020\bH\u0016J\b\u0010\u0015\u001a\u00020\bH\u0016J\n\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J,\u0010\u0018\u001a\u00020\b2\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010\u0011\u001a\u0004\u0018\u00010\u00052\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J\u0014\u0010\u0019\u001a\u00020\b2\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\nH\u0007J\u0014\u0010\u001a\u001a\u00020\b2\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\nH\u0007J8\u0010\u001b\u001a\u00020\b2\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010\u0011\u001a\u0004\u0018\u00010\u00052\n\b\u0001\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J\u0014\u0010\u001e\u001a\u00020\b2\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\nH\u0007J,\u0010\u001f\u001a\u00020\b2\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010\u0011\u001a\u0004\u0018\u00010\u00052\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lcom/cloud/tmc/integration/bridge/AudioEffectBridge;", "Lcom/cloud/tmc/kernel/extension/BridgeExtension;", "()V", "mAppAudioEffectMap", "Ljava/util/concurrent/ConcurrentHashMap;", "", "Lcom/cloud/tmc/integration/audio/AudioEffectClient;", "createAppAudioEffect", "", "app", "Lcom/cloud/tmc/integration/structure/App;", "size", "", "callback", "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;", "(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/Integer;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V", "destroyAudioEffect", "playerId", "getAudioEffectOption", "optionName", "onFinalized", "onInitialized", "permit", "Lcom/cloud/tmc/kernel/security/Permission;", "playAudioEffect", "releaseAppAudioEffect", "restoreAppAudioEffect", "setAudioEffectOption", "option", "Lcom/google/gson/JsonObject;", "stopAppAudioEffect", "stopAudioEffect", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class AudioEffectBridge implements BridgeExtension {
    private static final String TAG = "AudioEffectBridge";
    private final ConcurrentHashMap<String, AudioEffectClient> mAppAudioEffectMap = new ConcurrentHashMap<>();

    /* JADX INFO: Access modifiers changed from: private */
    public static final void releaseAppAudioEffect$lambda$13$lambda$12(AudioEffectClient it) {
        Intrinsics.h(it, "$it");
        it.releaseAll();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void stopAppAudioEffect$lambda$19$lambda$18(AudioEffectClient it) {
        Intrinsics.h(it, "$it");
        it.setAppPause(true);
        it.stopAll();
    }

    @Override // com.cloud.tmc.kernel.extension.BridgeExtension
    public /* synthetic */ void callbackFail(BridgeCallback bridgeCallback, String str, Boolean bool) {
        com.cloud.tmc.kernel.extension.a.a(this, bridgeCallback, str, bool);
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public final void createAppAudioEffect(@BindingNode(App.class) App app, @BindingParam({"size"}) Integer size, @BindingCallback BridgeCallback callback) {
        String appId;
        if (app == null || (appId = app.getAppId()) == null || appId.length() == 0 || size == null || size.intValue() <= 0) {
            if (callback != null) {
                callback.sendFailResponse();
                return;
            }
            return;
        }
        try {
            synchronized (this.mAppAudioEffectMap) {
                try {
                    AudioEffectClient audioEffectClient = this.mAppAudioEffectMap.get(app.getAppId());
                    AudioEffectClient audioEffectClient2 = audioEffectClient;
                    if (audioEffectClient2 != null) {
                        audioEffectClient2.releaseAll();
                    }
                    if (audioEffectClient == null) {
                        String appId2 = app.getAppId();
                        Intrinsics.g(appId2, "app.appId");
                        AudioEffectClient audioEffectClient3 = new AudioEffectClient(appId2, size.intValue());
                        ConcurrentHashMap<String, AudioEffectClient> concurrentHashMap = this.mAppAudioEffectMap;
                        String appId3 = app.getAppId();
                        Intrinsics.g(appId3, "app.appId");
                        concurrentHashMap.put(appId3, audioEffectClient3);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (callback != null) {
                callback.sendSuccessResponse();
            }
        } catch (Throwable th3) {
            TmcLogger.e(TAG, th3);
            if (callback != null) {
                callback.sendFailResponse();
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public final void destroyAudioEffect(@BindingNode(App.class) App app, @BindingParam({"id"}) String playerId, @BindingCallback BridgeCallback callback) {
        String appId;
        if (app == null || (appId = app.getAppId()) == null || appId.length() == 0) {
            if (callback != null) {
                callback.sendFailResponse();
            }
        } else {
            if (playerId == null || playerId.length() == 0) {
                if (callback != null) {
                    callback.sendFailResponse();
                    return;
                }
                return;
            }
            AudioEffectClient audioEffectClient = this.mAppAudioEffectMap.get(app.getAppId());
            if (audioEffectClient != null) {
                audioEffectClient.destroy(playerId, callback);
            } else if (callback != null) {
                callback.sendFailResponse();
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public final void getAudioEffectOption(@BindingNode(App.class) App app, @BindingParam({"id"}) String playerId, @BindingParam({"optionName"}) String optionName, @BindingCallback BridgeCallback callback) {
        String appId;
        if (app == null || (appId = app.getAppId()) == null || appId.length() == 0) {
            if (callback != null) {
                callback.sendFailResponse();
                return;
            }
            return;
        }
        if (playerId == null || playerId.length() == 0 || optionName == null || optionName.length() == 0) {
            if (callback != null) {
                callback.sendFailResponse();
                return;
            }
            return;
        }
        AudioEffectClient audioEffectClient = this.mAppAudioEffectMap.get(app.getAppId());
        if (audioEffectClient != null) {
            audioEffectClient.getOption(playerId, optionName, callback);
        } else if (callback != null) {
            callback.sendFailResponse();
        }
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onFinalized() {
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onInitialized() {
    }

    @Override // com.cloud.tmc.kernel.security.Guard
    public Permission permit() {
        return null;
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public final void playAudioEffect(@BindingNode(App.class) App app, @BindingParam({"id"}) String playerId, @BindingCallback BridgeCallback callback) {
        String appId;
        if (app == null || (appId = app.getAppId()) == null || appId.length() == 0) {
            if (callback != null) {
                callback.sendFailResponse();
            }
        } else {
            if (playerId == null || playerId.length() == 0) {
                if (callback != null) {
                    callback.sendFailResponse();
                    return;
                }
                return;
            }
            AudioEffectClient audioEffectClient = this.mAppAudioEffectMap.get(app.getAppId());
            if (audioEffectClient != null) {
                audioEffectClient.play(playerId, callback);
            } else if (callback != null) {
                callback.sendFailResponse();
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public final void releaseAppAudioEffect(@BindingNode(App.class) App app) {
        final AudioEffectClient audioEffectClientRemove;
        if (app != null) {
            try {
                String appId = app.getAppId();
                if (appId == null || appId.length() == 0 || (audioEffectClientRemove = this.mAppAudioEffectMap.remove(app.getAppId())) == null) {
                    return;
                }
                ExecutorUtils.execute(ExecutorType.IO, new Runnable() { // from class: com.cloud.tmc.integration.bridge.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioEffectBridge.releaseAppAudioEffect$lambda$13$lambda$12(audioEffectClientRemove);
                    }
                });
            } catch (Throwable th2) {
                TmcLogger.e(TAG, th2);
            }
        }
    }

    @ActionFilter
    public final void restoreAppAudioEffect(@BindingNode(App.class) App app) {
        String appId;
        AudioEffectClient audioEffectClient;
        if (app == null || (appId = app.getAppId()) == null || appId.length() == 0 || (audioEffectClient = this.mAppAudioEffectMap.get(app.getAppId())) == null) {
            return;
        }
        audioEffectClient.setAppPause(false);
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public final void setAudioEffectOption(@BindingNode(App.class) App app, @BindingParam({"id"}) String playerId, @BindingParam({"option"}) JsonObject option, @BindingCallback BridgeCallback callback) {
        String appId;
        AudioEffectClient audioEffectClient;
        if (app == null || (appId = app.getAppId()) == null || appId.length() == 0) {
            if (callback != null) {
                callback.sendFailResponse();
                return;
            }
            return;
        }
        AppContext appContext = app.getAppContext();
        if (appContext == null || appContext.getContext() == null) {
            if (callback != null) {
                callback.sendFailResponse();
                return;
            }
            return;
        }
        if (playerId == null || playerId.length() == 0) {
            if (callback != null) {
                callback.sendFailResponse();
                return;
            }
            return;
        }
        AudioEffectClient audioEffectClient2 = this.mAppAudioEffectMap.get(app.getAppId());
        if (audioEffectClient2 == null) {
            synchronized (this.mAppAudioEffectMap) {
                audioEffectClient = this.mAppAudioEffectMap.get(app.getAppId());
                if (audioEffectClient == null) {
                    String appId2 = app.getAppId();
                    Intrinsics.g(appId2, "app.appId");
                    audioEffectClient = new AudioEffectClient(appId2, 0, 2, null);
                    ConcurrentHashMap<String, AudioEffectClient> concurrentHashMap = this.mAppAudioEffectMap;
                    String appId3 = app.getAppId();
                    Intrinsics.g(appId3, "app.appId");
                    concurrentHashMap.put(appId3, audioEffectClient);
                }
            }
            audioEffectClient2 = audioEffectClient;
        }
        AudioEffectClient audioEffectClient3 = audioEffectClient2;
        if (audioEffectClient3 != null) {
            Context context = appContext.getContext();
            Intrinsics.g(context, "appContext.context");
            audioEffectClient3.setOption(context, playerId, option, callback);
        }
    }

    @ActionFilter
    public final void stopAppAudioEffect(@BindingNode(App.class) App app) {
        if (app != null) {
            try {
                String appId = app.getAppId();
                if (appId != null && appId.length() != 0) {
                    AudioEffectClient audioEffectClient = this.mAppAudioEffectMap.get(app.getAppId());
                    if (audioEffectClient != null) {
                        final AudioEffectClient audioEffectClient2 = audioEffectClient;
                        if (audioEffectClient2 != null) {
                            ExecutorUtils.execute(ExecutorType.IO, new Runnable() { // from class: com.cloud.tmc.integration.bridge.b
                                @Override // java.lang.Runnable
                                public final void run() {
                                    AudioEffectBridge.stopAppAudioEffect$lambda$19$lambda$18(audioEffectClient2);
                                }
                            });
                            return;
                        }
                        return;
                    }
                    synchronized (this.mAppAudioEffectMap) {
                        if (this.mAppAudioEffectMap.get(app.getAppId()) == null) {
                            String appId2 = app.getAppId();
                            Intrinsics.g(appId2, "app.appId");
                            AudioEffectClient audioEffectClient3 = new AudioEffectClient(appId2, 0, 2, null);
                            audioEffectClient3.setAppPause(true);
                            ConcurrentHashMap<String, AudioEffectClient> concurrentHashMap = this.mAppAudioEffectMap;
                            String appId3 = app.getAppId();
                            Intrinsics.g(appId3, "app.appId");
                            concurrentHashMap.put(appId3, audioEffectClient3);
                        }
                    }
                }
            } catch (Throwable th2) {
                TmcLogger.e(TAG, th2);
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public final void stopAudioEffect(@BindingNode(App.class) App app, @BindingParam({"id"}) String playerId, @BindingCallback BridgeCallback callback) {
        String appId;
        if (app == null || (appId = app.getAppId()) == null || appId.length() == 0) {
            if (callback != null) {
                callback.sendFailResponse();
            }
        } else {
            if (playerId == null || playerId.length() == 0) {
                if (callback != null) {
                    callback.sendFailResponse();
                    return;
                }
                return;
            }
            AudioEffectClient audioEffectClient = this.mAppAudioEffectMap.get(app.getAppId());
            if (audioEffectClient != null) {
                audioEffectClient.stop(playerId, callback);
            } else if (callback != null) {
                callback.sendFailResponse();
            }
        }
    }
}
