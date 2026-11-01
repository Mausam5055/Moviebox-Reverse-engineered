package com.cloud.tmc.integration.bridge;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.audio.ForegroundPlayerClient;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.Page;
import com.cloud.tmc.kernel.annotation.ActionFilter;
import com.cloud.tmc.kernel.annotation.ThreadType;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingNode;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingParam;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.extension.BridgeExtension;
import com.cloud.tmc.kernel.security.Permission;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.google.gson.JsonObject;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J8\u0010\u0007\u001a\u00020\b2\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u00052\n\b\u0001\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0007JD\u0010\u0010\u001a\u00020\b2\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u00052\n\b\u0001\u0010\u0011\u001a\u0004\u0018\u00010\u00052\n\b\u0001\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0007J\b\u0010\u0012\u001a\u00020\bH\u0016J\b\u0010\u0013\u001a\u00020\bH\u0016J\u0014\u0010\u0014\u001a\u00020\b2\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\nH\u0007J8\u0010\u0015\u001a\u00020\b2\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u00052\n\b\u0001\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0007J\n\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J8\u0010\u0018\u001a\u00020\b2\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u00052\n\b\u0001\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0007J\u0014\u0010\u0019\u001a\u00020\b2\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\nH\u0007J\u0014\u0010\u001a\u001a\u00020\b2\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\nH\u0007JB\u0010\u001b\u001a\u00020\b2\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u00052\b\b\u0001\u0010\u001c\u001a\u00020\u001d2\n\b\u0001\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0007JD\u0010\u001e\u001a\u00020\b2\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u00052\n\b\u0001\u0010\u001f\u001a\u0004\u0018\u00010 2\n\b\u0001\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0007J8\u0010!\u001a\u00020\b2\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u00052\n\b\u0001\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0007J8\u0010\"\u001a\u00020\b2\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u00052\n\b\u0001\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0007J8\u0010#\u001a\u00020\b2\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u00052\n\b\u0001\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0007R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006$"}, d2 = {"Lcom/cloud/tmc/integration/bridge/ForegroundAudioBridge;", "Lcom/cloud/tmc/kernel/extension/BridgeExtension;", "()V", "mAppPlayerMap", "", "", "Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;", "destroyForegroundAudio", "", "app", "Lcom/cloud/tmc/integration/structure/App;", "page", "Lcom/cloud/tmc/integration/structure/Page;", "audioPlayerID", "callback", "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;", "getForegroundAudioOption", "optionName", "onFinalized", "onInitialized", "pauseAppAudio", "pauseForegroundAudio", "permit", "Lcom/cloud/tmc/kernel/security/Permission;", "playForegroundAudio", "releaseAppAudio", "restoreAppAudio", "seekForegroundAudio", RequestParameters.POSITION, "", "setForegroundAudioOption", "params", "Lcom/google/gson/JsonObject;", "startMonitorForegroundAudio", "stopForegroundAudio", "stopMonitorForegroundAudio", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ForegroundAudioBridge implements BridgeExtension {
    private final Map<String, ForegroundPlayerClient> mAppPlayerMap = new ConcurrentHashMap();

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void pauseAppAudio$lambda$8(Ref.ObjectRef client) {
        Intrinsics.h(client, "$client");
        ForegroundPlayerClient foregroundPlayerClient = (ForegroundPlayerClient) client.element;
        if (foregroundPlayerClient != null) {
            foregroundPlayerClient.pauseAppAudio();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void releaseAppAudio$lambda$4(ForegroundPlayerClient client) {
        Intrinsics.h(client, "$client");
        client.releaseAppAudio();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void restoreAppAudio$lambda$9(ForegroundPlayerClient client) {
        Intrinsics.h(client, "$client");
        client.restoreAppAudio();
    }

    @Override // com.cloud.tmc.kernel.extension.BridgeExtension
    public /* synthetic */ void callbackFail(BridgeCallback bridgeCallback, String str, Boolean bool) {
        com.cloud.tmc.kernel.extension.a.a(this, bridgeCallback, str, bool);
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public final void destroyForegroundAudio(@BindingNode(App.class) App app, @BindingNode(Page.class) Page page, @BindingParam({"audioPlayerID"}) String audioPlayerID, @BindingCallback BridgeCallback callback) {
        String appId;
        if (page == null || app == null || (appId = app.getAppId()) == null || appId.length() == 0) {
            if (callback != null) {
                callback.sendFailResponse();
            }
        } else {
            if (audioPlayerID == null || audioPlayerID.length() == 0) {
                if (callback != null) {
                    callback.sendFailResponse();
                    return;
                }
                return;
            }
            ForegroundPlayerClient foregroundPlayerClient = this.mAppPlayerMap.get(app.getAppId());
            if (foregroundPlayerClient != null) {
                foregroundPlayerClient.destroy(audioPlayerID, callback);
            } else if (callback != null) {
                callback.sendFailResponse();
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public final void getForegroundAudioOption(@BindingNode(App.class) App app, @BindingNode(Page.class) Page page, @BindingParam({"audioPlayerID"}) String audioPlayerID, @BindingParam({"optionName"}) String optionName, @BindingCallback BridgeCallback callback) {
        String appId;
        if (page == null || app == null || (appId = app.getAppId()) == null || appId.length() == 0) {
            if (callback != null) {
                callback.sendFailResponse();
            }
        } else {
            if (audioPlayerID == null || audioPlayerID.length() == 0) {
                if (callback != null) {
                    callback.sendFailResponse();
                    return;
                }
                return;
            }
            ForegroundPlayerClient foregroundPlayerClient = this.mAppPlayerMap.get(app.getAppId());
            if (foregroundPlayerClient != null) {
                foregroundPlayerClient.getAudioOption(audioPlayerID, optionName, callback);
            } else if (callback != null) {
                callback.sendFailResponse();
            }
        }
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onFinalized() {
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onInitialized() {
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v3, types: [T, com.cloud.tmc.integration.audio.ForegroundPlayerClient, java.lang.Object] */
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @ActionFilter
    public final void pauseAppAudio(@BindingNode(App.class) App app) {
        String appId;
        if (app == null || (appId = app.getAppId()) == null || appId.length() == 0) {
            return;
        }
        String appId2 = app.getAppId();
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        synchronized (this.mAppPlayerMap) {
            ?? r11 = this.mAppPlayerMap.get(appId2);
            objectRef.element = r11;
            if (((ForegroundPlayerClient) r11) == null) {
                ?? foregroundPlayerClient = new ForegroundPlayerClient(app);
                Map<String, ForegroundPlayerClient> map = this.mAppPlayerMap;
                Intrinsics.g(appId2, "appId");
                map.put(appId2, (ForegroundPlayerClient) foregroundPlayerClient);
                objectRef.element = foregroundPlayerClient;
            }
        }
        ForegroundPlayerClient foregroundPlayerClient2 = (ForegroundPlayerClient) objectRef.element;
        if (foregroundPlayerClient2 != null) {
            foregroundPlayerClient2.setAppPause(true);
        }
        ExecutorUtils.execute(ExecutorType.IO, new Runnable() { // from class: com.cloud.tmc.integration.bridge.c
            @Override // java.lang.Runnable
            public final void run() {
                ForegroundAudioBridge.pauseAppAudio$lambda$8(objectRef);
            }
        });
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public final void pauseForegroundAudio(@BindingNode(App.class) App app, @BindingNode(Page.class) Page page, @BindingParam({"audioPlayerID"}) String audioPlayerID, @BindingCallback BridgeCallback callback) {
        String appId;
        if (page == null || app == null || (appId = app.getAppId()) == null || appId.length() == 0) {
            if (callback != null) {
                callback.sendFailResponse();
            }
        } else {
            if (audioPlayerID == null || audioPlayerID.length() == 0) {
                if (callback != null) {
                    callback.sendFailResponse();
                    return;
                }
                return;
            }
            ForegroundPlayerClient foregroundPlayerClient = this.mAppPlayerMap.get(app.getAppId());
            if (foregroundPlayerClient != null) {
                foregroundPlayerClient.pause(audioPlayerID, callback);
            } else if (callback != null) {
                callback.sendFailResponse();
            }
        }
    }

    @Override // com.cloud.tmc.kernel.security.Guard
    public Permission permit() {
        return null;
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public final void playForegroundAudio(@BindingNode(App.class) App app, @BindingNode(Page.class) Page page, @BindingParam({"audioPlayerID"}) String audioPlayerID, @BindingCallback BridgeCallback callback) {
        String appId;
        if (page == null || app == null || (appId = app.getAppId()) == null || appId.length() == 0) {
            if (callback != null) {
                callback.sendFailResponse();
            }
        } else {
            if (audioPlayerID == null || audioPlayerID.length() == 0) {
                if (callback != null) {
                    callback.sendFailResponse();
                    return;
                }
                return;
            }
            ForegroundPlayerClient foregroundPlayerClient = this.mAppPlayerMap.get(app.getAppId());
            if (foregroundPlayerClient != null) {
                foregroundPlayerClient.play(audioPlayerID, callback);
            } else if (callback != null) {
                callback.sendFailResponse();
            }
        }
    }

    @ActionFilter
    public final void releaseAppAudio(@BindingNode(App.class) App app) {
        String appId;
        if (app == null || (appId = app.getAppId()) == null || appId.length() == 0) {
            return;
        }
        final ForegroundPlayerClient foregroundPlayerClientRemove = this.mAppPlayerMap.remove(app.getAppId());
        if (foregroundPlayerClientRemove == null) {
            return;
        }
        ExecutorUtils.execute(ExecutorType.IO, new Runnable() { // from class: com.cloud.tmc.integration.bridge.d
            @Override // java.lang.Runnable
            public final void run() {
                ForegroundAudioBridge.releaseAppAudio$lambda$4(foregroundPlayerClientRemove);
            }
        });
    }

    @ActionFilter
    public final void restoreAppAudio(@BindingNode(App.class) App app) {
        String appId;
        if (app == null || (appId = app.getAppId()) == null || appId.length() == 0) {
            return;
        }
        final ForegroundPlayerClient foregroundPlayerClient = this.mAppPlayerMap.get(app.getAppId());
        if (foregroundPlayerClient == null) {
            return;
        }
        ExecutorUtils.execute(ExecutorType.IO, new Runnable() { // from class: com.cloud.tmc.integration.bridge.e
            @Override // java.lang.Runnable
            public final void run() {
                ForegroundAudioBridge.restoreAppAudio$lambda$9(foregroundPlayerClient);
            }
        });
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public final void seekForegroundAudio(@BindingNode(App.class) App app, @BindingNode(Page.class) Page page, @BindingParam({"audioPlayerID"}) String audioPlayerID, @BindingParam({RequestParameters.POSITION}) float position, @BindingCallback BridgeCallback callback) {
        String appId;
        if (page == null || app == null || (appId = app.getAppId()) == null || appId.length() == 0) {
            if (callback != null) {
                callback.sendFailResponse();
            }
        } else {
            if (audioPlayerID == null || audioPlayerID.length() == 0) {
                if (callback != null) {
                    callback.sendFailResponse();
                    return;
                }
                return;
            }
            ForegroundPlayerClient foregroundPlayerClient = this.mAppPlayerMap.get(app.getAppId());
            if (foregroundPlayerClient != null) {
                foregroundPlayerClient.seek(audioPlayerID, position, callback);
            } else if (callback != null) {
                callback.sendFailResponse();
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public final void setForegroundAudioOption(@BindingNode(App.class) App app, @BindingNode(Page.class) Page page, @BindingParam({"audioPlayerID"}) String audioPlayerID, @BindingParam({"option"}) JsonObject params, @BindingCallback BridgeCallback callback) {
        String appId;
        ForegroundPlayerClient foregroundPlayerClient;
        if (page == null || app == null || (appId = app.getAppId()) == null || appId.length() == 0) {
            if (callback != null) {
                callback.sendFailResponse();
                return;
            }
            return;
        }
        if (audioPlayerID == null || audioPlayerID.length() == 0) {
            if (callback != null) {
                callback.sendFailResponse();
                return;
            }
            return;
        }
        String appId2 = app.getAppId();
        synchronized (this.mAppPlayerMap) {
            foregroundPlayerClient = this.mAppPlayerMap.get(appId2);
            if (foregroundPlayerClient == null) {
                foregroundPlayerClient = new ForegroundPlayerClient(app);
                Map<String, ForegroundPlayerClient> map = this.mAppPlayerMap;
                Intrinsics.g(appId2, "appId");
                map.put(appId2, foregroundPlayerClient);
            }
        }
        ForegroundPlayerClient foregroundPlayerClient2 = foregroundPlayerClient;
        if (foregroundPlayerClient2 != null) {
            foregroundPlayerClient2.setAudioOption(audioPlayerID, params, callback);
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public final void startMonitorForegroundAudio(@BindingNode(App.class) App app, @BindingNode(Page.class) Page page, @BindingParam({"audioPlayerID"}) String audioPlayerID, @BindingCallback BridgeCallback callback) {
        String appId;
        if (page == null || app == null || (appId = app.getAppId()) == null || appId.length() == 0) {
            if (callback != null) {
                callback.sendFailResponse();
            }
        } else {
            if (audioPlayerID == null || audioPlayerID.length() == 0) {
                if (callback != null) {
                    callback.sendFailResponse();
                    return;
                }
                return;
            }
            ForegroundPlayerClient foregroundPlayerClient = this.mAppPlayerMap.get(app.getAppId());
            if (foregroundPlayerClient != null) {
                foregroundPlayerClient.addMonitor(audioPlayerID, callback);
            } else if (callback != null) {
                callback.sendFailResponse();
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public final void stopForegroundAudio(@BindingNode(App.class) App app, @BindingNode(Page.class) Page page, @BindingParam({"audioPlayerID"}) String audioPlayerID, @BindingCallback BridgeCallback callback) {
        String appId;
        if (page == null || app == null || (appId = app.getAppId()) == null || appId.length() == 0) {
            if (callback != null) {
                callback.sendFailResponse();
            }
        } else {
            if (audioPlayerID == null || audioPlayerID.length() == 0) {
                if (callback != null) {
                    callback.sendFailResponse();
                    return;
                }
                return;
            }
            ForegroundPlayerClient foregroundPlayerClient = this.mAppPlayerMap.get(app.getAppId());
            if (foregroundPlayerClient != null) {
                foregroundPlayerClient.stop(audioPlayerID, callback);
            } else if (callback != null) {
                callback.sendFailResponse();
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public final void stopMonitorForegroundAudio(@BindingNode(App.class) App app, @BindingNode(Page.class) Page page, @BindingParam({"audioPlayerID"}) String audioPlayerID, @BindingCallback BridgeCallback callback) {
        String appId;
        if (page == null || app == null || (appId = app.getAppId()) == null || appId.length() == 0) {
            if (callback != null) {
                callback.sendFailResponse();
            }
        } else {
            if (audioPlayerID == null || audioPlayerID.length() == 0) {
                if (callback != null) {
                    callback.sendFailResponse();
                    return;
                }
                return;
            }
            ForegroundPlayerClient foregroundPlayerClient = this.mAppPlayerMap.get(app.getAppId());
            if (foregroundPlayerClient != null) {
                foregroundPlayerClient.removeMonitor(audioPlayerID, callback);
            } else if (callback != null) {
                callback.sendFailResponse();
            }
        }
    }
}
