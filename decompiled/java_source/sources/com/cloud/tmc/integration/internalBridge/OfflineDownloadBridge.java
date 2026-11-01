package com.cloud.tmc.integration.internalBridge;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.bridge.NetworkBridge;
import com.cloud.tmc.integration.utils.FileUtil;
import com.cloud.tmc.kernel.annotation.ActionFilter;
import com.cloud.tmc.kernel.annotation.ThreadType;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingParam;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.extension.BridgeExtension;
import com.cloud.tmc.kernel.extension.a;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.offline.IOfflineManagerProxy;
import com.cloud.tmc.kernel.security.Permission;
import com.cloud.tmc.worker.utils.FileIOUtils;
import com.google.gson.JsonObject;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0005¢\u0006\u0002\u0010\u0002JP\u0010\u0003\u001a\u00020\u00042\b\b\u0001\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\u00062\b\b\u0001\u0010\b\u001a\u00020\u00062\b\b\u0001\u0010\t\u001a\u00020\u00062\b\b\u0001\u0010\n\u001a\u00020\u00062\b\b\u0001\u0010\u000b\u001a\u00020\u00062\n\b\u0001\u0010\f\u001a\u0004\u0018\u00010\rH\u0007J\u001e\u0010\u000e\u001a\u00020\u00042\b\b\u0001\u0010\u000f\u001a\u00020\u00062\n\b\u0001\u0010\f\u001a\u0004\u0018\u00010\rH\u0007J(\u0010\u0010\u001a\u00020\u00042\b\b\u0001\u0010\u0007\u001a\u00020\u00062\b\b\u0001\u0010\n\u001a\u00020\u00062\n\b\u0001\u0010\f\u001a\u0004\u0018\u00010\rH\u0007J(\u0010\u0011\u001a\u00020\u00042\b\b\u0001\u0010\u0012\u001a\u00020\u00062\b\b\u0001\u0010\u0013\u001a\u00020\u00062\n\b\u0001\u0010\f\u001a\u0004\u0018\u00010\rH\u0007J\b\u0010\u0014\u001a\u00020\u0004H\u0016J\b\u0010\u0015\u001a\u00020\u0004H\u0016J\n\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016¨\u0006\u0019"}, d2 = {"Lcom/cloud/tmc/integration/internalBridge/OfflineDownloadBridge;", "Lcom/cloud/tmc/kernel/extension/BridgeExtension;", "()V", "downloadPkg", "", "app", "", "group", NetworkBridge.KEY_NETWORK_TYPE, "pkgEncrypted", "pkgUrl", "paths", "callback", "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;", "downloadPkgFromPlatform", "packageName", "getOfflinePkgCachePath", "getOfflineResources", "appId", "url", "onFinalized", "onInitialized", "permit", "Lcom/cloud/tmc/kernel/security/Permission;", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class OfflineDownloadBridge implements BridgeExtension {
    private static final String TAG = "OfflineDownloadBridge";

    @Override // com.cloud.tmc.kernel.extension.BridgeExtension
    public /* synthetic */ void callbackFail(BridgeCallback bridgeCallback, String str, Boolean bool) {
        a.a(this, bridgeCallback, str, bool);
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public final void downloadPkg(@BindingParam({"app"}) String app, @BindingParam({"group"}) String group, @BindingParam(stringDefault = "strong", value = {NetworkBridge.KEY_NETWORK_TYPE}) String networkType, @BindingParam({"pkgEncrypted"}) String pkgEncrypted, @BindingParam({"pkgUrl"}) String pkgUrl, @BindingParam({"paths"}) String paths, @BindingCallback final BridgeCallback callback) {
        Intrinsics.h(app, "app");
        Intrinsics.h(group, "group");
        Intrinsics.h(networkType, "networkType");
        Intrinsics.h(pkgEncrypted, "pkgEncrypted");
        Intrinsics.h(pkgUrl, "pkgUrl");
        Intrinsics.h(paths, "paths");
        if (app.length() != 0 && group.length() != 0 && networkType.length() != 0 && pkgEncrypted.length() != 0 && pkgUrl.length() != 0 && paths.length() != 0) {
            ((IOfflineManagerProxy) TmcProxy.get(IOfflineManagerProxy.class)).downloadPkg(app, group, networkType, pkgEncrypted, pkgUrl, paths, new Function1<JsonObject, Unit>() { // from class: com.cloud.tmc.integration.internalBridge.OfflineDownloadBridge.downloadPkg.1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    invoke((JsonObject) obj);
                    return Unit.f67061a;
                }

                public final void invoke(JsonObject jsonObject) {
                    if (jsonObject == null) {
                        BridgeCallback bridgeCallback = callback;
                        if (bridgeCallback != null) {
                            bridgeCallback.sendFailResponse();
                            return;
                        }
                        return;
                    }
                    BridgeCallback bridgeCallback2 = callback;
                    if (bridgeCallback2 != null) {
                        bridgeCallback2.sendSuccessResponse(jsonObject);
                    }
                }
            });
        } else if (callback != null) {
            callback.sendFailResponse();
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.NORMAL)
    public final void downloadPkgFromPlatform(@BindingParam({"packageName"}) String packageName, @BindingCallback BridgeCallback callback) {
        Intrinsics.h(packageName, "packageName");
        if (packageName.length() == 0) {
            if (callback != null) {
                callback.sendFailResponse();
            }
        } else {
            ((IOfflineManagerProxy) TmcProxy.get(IOfflineManagerProxy.class)).downloadPkgFromPlatform(packageName, false);
            if (callback != null) {
                callback.sendSuccessResponse();
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public final void getOfflinePkgCachePath(@BindingParam({"group"}) String group, @BindingParam({"pkgUrl"}) String pkgUrl, @BindingCallback final BridgeCallback callback) {
        Intrinsics.h(group, "group");
        Intrinsics.h(pkgUrl, "pkgUrl");
        if (group.length() != 0 && pkgUrl.length() != 0) {
            ((IOfflineManagerProxy) TmcProxy.get(IOfflineManagerProxy.class)).getOfflinePkgCachePath(group, pkgUrl, new Function1<JsonObject, Unit>() { // from class: com.cloud.tmc.integration.internalBridge.OfflineDownloadBridge.getOfflinePkgCachePath.1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    invoke((JsonObject) obj);
                    return Unit.f67061a;
                }

                public final void invoke(JsonObject jsonObject) {
                    if (jsonObject == null) {
                        BridgeCallback bridgeCallback = callback;
                        if (bridgeCallback != null) {
                            bridgeCallback.sendFailResponse();
                            return;
                        }
                        return;
                    }
                    BridgeCallback bridgeCallback2 = callback;
                    if (bridgeCallback2 != null) {
                        bridgeCallback2.sendSuccessResponse(jsonObject);
                    }
                }
            });
        } else if (callback != null) {
            callback.sendFailResponse();
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public final void getOfflineResources(@BindingParam({"appId"}) String appId, @BindingParam({"url"}) String url, @BindingCallback BridgeCallback callback) {
        Intrinsics.h(appId, "appId");
        Intrinsics.h(url, "url");
        try {
            if (appId.length() != 0 && url.length() != 0) {
                File offlineResources = ((IOfflineManagerProxy) TmcProxy.get(IOfflineManagerProxy.class)).getOfflineResources(appId, url);
                if (!FileUtil.access(offlineResources)) {
                    if (callback != null) {
                        callback.sendFailResponse();
                        return;
                    }
                    return;
                }
                String file2String = FileIOUtils.readFile2String(offlineResources);
                Intrinsics.g(file2String, "readFile2String(offlineResources)");
                if (callback != null) {
                    JsonObject jsonObject = new JsonObject();
                    jsonObject.addProperty("content", file2String);
                    callback.sendSuccessResponse(jsonObject);
                    return;
                }
                return;
            }
            if (callback != null) {
                callback.sendFailResponse();
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            if (callback != null) {
                callback.sendFailResponse();
            }
        }
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onFinalized() {
        TmcLogger.d(TAG, "onFinalized");
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onInitialized() {
        TmcLogger.d(TAG, "onInitialized");
    }

    @Override // com.cloud.tmc.kernel.security.Guard
    public Permission permit() {
        return null;
    }
}
