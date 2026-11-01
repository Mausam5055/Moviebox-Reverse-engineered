package com.cloud.tmc.miniapp.bridge;

import android.content.Context;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.integration.model.AppStoreInfo;
import com.cloud.tmc.integration.model.PermissionInfoModel;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppContext;
import com.cloud.tmc.integration.utils.FileUtil;
import com.cloud.tmc.integration.utils.JsonObjectUtils;
import com.cloud.tmc.integration.utils.JsonUtil;
import com.cloud.tmc.integration.utils.LatestUseUtils;
import com.cloud.tmc.kernel.annotation.ActionFilter;
import com.cloud.tmc.kernel.annotation.ThreadType;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingNode;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingParam;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.extension.BridgeExtension;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.kernel.security.Permission;
import com.cloud.tmc.kernel.utils.TmcGsonUtilsKt;
import com.cloud.tmc.launcherlib.LauncherFrameworkConstants;
import com.cloud.tmc.miniapp.ui.AppBrandProfileActivity;
import com.cloud.tmc.miniapp.utils.ScopeUtils;
import com.cloud.tmc.miniutils.util.GsonUtils;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension
public final class AppManagerDataProviderBridge implements BridgeExtension {
    public final String OooO00o = "AppManagerDataProviderBridge";
    public final String OooO0O0 = "appList";

    @Override // com.cloud.tmc.kernel.extension.BridgeExtension
    public /* synthetic */ void callbackFail(BridgeCallback bridgeCallback, String str, Boolean bool) {
        com.cloud.tmc.kernel.extension.a.a(this, bridgeCallback, str, bool);
    }

    @ActionFilter("")
    @ThreadType(ExecutorType.IO)
    public final void changeAutoUpdateStatus(@BindingNode(App.class) App app, @BindingParam({NotificationCompat.CATEGORY_STATUS}) boolean z10, @BindingCallback BridgeCallback bridgeCallback) {
        Context context;
        Unit unit;
        if (app != null) {
            try {
                AppContext appContext = app.getAppContext();
                if (appContext != null && (context = appContext.getContext()) != null) {
                    ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putBoolean(context, LauncherFrameworkConstants.LAUNCHER_GLOBAL_KEYS, LauncherFrameworkConstants.KEY_MINI_AUTO_UPDATE_STATUS, z10);
                    if (bridgeCallback != null) {
                        bridgeCallback.sendSuccessResponse();
                        unit = Unit.f67061a;
                    } else {
                        unit = null;
                    }
                    if (unit != null) {
                        return;
                    }
                }
            } catch (Throwable th2) {
                TmcLogger.e(this.OooO00o, th2);
                if (bridgeCallback != null) {
                    bridgeCallback.sendFailResponse();
                    return;
                }
                return;
            }
        }
        if (bridgeCallback != null) {
            bridgeCallback.sendFailResponse();
            Unit unit2 = Unit.f67061a;
        }
    }

    @ActionFilter("")
    @ThreadType(ExecutorType.IO)
    public final void changeMiniappPermission(@BindingNode(App.class) App app, @BindingParam({TmcConstants.KEY_MINI_APPID}) String miniappId, @BindingParam({"scopeName"}) String scopeName, @BindingParam({NotificationCompat.CATEGORY_STATUS}) boolean z10, @BindingCallback BridgeCallback bridgeCallback) {
        Context context;
        Unit unit;
        Intrinsics.h(miniappId, "miniappId");
        Intrinsics.h(scopeName, "scopeName");
        if (app != null) {
            try {
                AppContext appContext = app.getAppContext();
                if (appContext != null && (context = appContext.getContext()) != null) {
                    ScopeUtils.OooO00o.OooO00o(context, scopeName, miniappId, z10, "", "", false, true);
                    if (bridgeCallback != null) {
                        bridgeCallback.sendSuccessResponse();
                        unit = Unit.f67061a;
                    } else {
                        unit = null;
                    }
                    if (unit != null) {
                        return;
                    }
                }
            } catch (Throwable th2) {
                TmcLogger.e(this.OooO00o, th2);
                if (bridgeCallback != null) {
                    bridgeCallback.sendFailResponse();
                    return;
                }
                return;
            }
        }
        if (bridgeCallback != null) {
            bridgeCallback.sendFailResponse();
            Unit unit2 = Unit.f67061a;
        }
    }

    @ActionFilter("")
    @ThreadType(ExecutorType.IO)
    public final void changeMsgSwitchStatus(@BindingNode(App.class) App app, @BindingParam({TmcConstants.KEY_MINI_APPID}) String miniappId, @BindingParam({"appSwitchStatus"}) String appSwitchStatus, @BindingCallback BridgeCallback bridgeCallback) {
        AppContext appContext;
        Context context;
        Unit unit;
        Intrinsics.h(miniappId, "miniappId");
        Intrinsics.h(appSwitchStatus, "appSwitchStatus");
        if (app != null && (appContext = app.getAppContext()) != null && (context = appContext.getContext()) != null) {
            com.cloud.tmc.miniapp.utils.OooO0o.OooO00o.OooO00o(context, miniappId, appSwitchStatus);
            if (bridgeCallback != null) {
                bridgeCallback.sendSuccessResponse();
                unit = Unit.f67061a;
            } else {
                unit = null;
            }
            if (unit != null) {
                return;
            }
        }
        if (bridgeCallback != null) {
            bridgeCallback.sendFailResponse();
            Unit unit2 = Unit.f67061a;
        }
    }

    @ActionFilter("")
    @ThreadType(ExecutorType.IO)
    public final void changePrefetchState(@BindingNode(App.class) App app, @BindingParam({NotificationCompat.CATEGORY_STATUS}) int i11, @BindingCallback BridgeCallback bridgeCallback) {
        Context context;
        Unit unit;
        if (app != null) {
            try {
                AppContext appContext = app.getAppContext();
                if (appContext != null && (context = appContext.getContext()) != null) {
                    ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putInt(context, LauncherFrameworkConstants.LAUNCHER_GLOBAL_KEYS, LauncherFrameworkConstants.KEY_MINI_PREFETCH_STATE, i11);
                    ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putLong(context, LauncherFrameworkConstants.LAUNCHER_GLOBAL_KEYS, LauncherFrameworkConstants.KEY_MINI_PREFETCH_TIMESTAMP, System.currentTimeMillis());
                    if (bridgeCallback != null) {
                        bridgeCallback.sendSuccessResponse();
                        unit = Unit.f67061a;
                    } else {
                        unit = null;
                    }
                    if (unit != null) {
                        return;
                    }
                }
            } catch (Throwable th2) {
                TmcLogger.e(this.OooO00o, th2);
                if (bridgeCallback != null) {
                    bridgeCallback.sendFailResponse();
                    return;
                }
                return;
            }
        }
        if (bridgeCallback != null) {
            bridgeCallback.sendFailResponse();
            Unit unit2 = Unit.f67061a;
        }
    }

    @ActionFilter("")
    @ThreadType(ExecutorType.IO)
    public final void changeTotalMsgStatus(@BindingNode(App.class) App app, @BindingParam({"mainSwitchStatus"}) String status, @BindingCallback BridgeCallback callback) {
        Unit unit;
        Context context;
        Intrinsics.h(app, "app");
        Intrinsics.h(status, "status");
        Intrinsics.h(callback, "callback");
        AppContext appContext = app.getAppContext();
        if (appContext == null || (context = appContext.getContext()) == null) {
            unit = null;
        } else {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("mainSwitchStatus", status);
            jsonObject.addProperty("mainSwitchTimestamp", String.valueOf(System.currentTimeMillis()));
            TmcLogger.d(this.OooO00o, "changeTotalMsgStatus: " + jsonObject);
            ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putString(context, "miniMsgProvider", "mainMsgSwitch", jsonObject.toString());
            callback.sendSuccessResponse();
            unit = Unit.f67061a;
        }
        if (unit == null) {
            callback.sendFailResponse();
        }
    }

    @ActionFilter("")
    @ThreadType(ExecutorType.IO)
    public final void clearAllMiniAppCacheData(@BindingNode(App.class) App app, @BindingCallback BridgeCallback callback) {
        Unit unit;
        Context context;
        Intrinsics.h(app, "app");
        Intrinsics.h(callback, "callback");
        AppContext appContext = app.getAppContext();
        if (appContext == null || (context = appContext.getContext()) == null) {
            unit = null;
        } else {
            FileUtil.INSTANCE.clearAllMiniAppCacheData(context);
            callback.sendSuccessResponse(new JsonObject());
            unit = Unit.f67061a;
        }
        if (unit == null) {
            callback.sendFailResponse();
        }
    }

    @ActionFilter("")
    @ThreadType(ExecutorType.IO)
    public final void clearAllMiniAppData(@BindingNode(App.class) App app, @BindingCallback BridgeCallback callback) {
        Unit unit;
        Context context;
        Intrinsics.h(app, "app");
        Intrinsics.h(callback, "callback");
        AppContext appContext = app.getAppContext();
        if (appContext == null || (context = appContext.getContext()) == null) {
            unit = null;
        } else {
            FileUtil.INSTANCE.clearAllMiniAppData(context);
            callback.sendSuccessResponse(new JsonObject());
            unit = Unit.f67061a;
        }
        if (unit == null) {
            callback.sendFailResponse();
        }
    }

    @ActionFilter("")
    @ThreadType(ExecutorType.IO)
    public final void clearCacheMsgData(@BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
        Context context;
        Unit unit;
        if (app != null) {
            try {
                AppContext appContext = app.getAppContext();
                if (appContext != null && (context = appContext.getContext()) != null) {
                    TmcLogger.d(this.OooO00o, "clearCacheMsgData");
                    ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).clear(context, "miniMsgCacheData");
                    if (bridgeCallback != null) {
                        bridgeCallback.sendSuccessResponse();
                        unit = Unit.f67061a;
                    } else {
                        unit = null;
                    }
                    if (unit != null) {
                        return;
                    }
                }
            } catch (Throwable th2) {
                TmcLogger.e(this.OooO00o, th2);
                if (bridgeCallback != null) {
                    bridgeCallback.sendFailResponse();
                    return;
                }
                return;
            }
        }
        if (bridgeCallback != null) {
            bridgeCallback.sendFailResponse();
            Unit unit2 = Unit.f67061a;
        }
    }

    @ActionFilter("")
    @ThreadType(ExecutorType.IO)
    public final void clearChangedMsgSwitchList(@BindingNode(App.class) App app, @BindingParam({CampaignEx.JSON_KEY_TIMESTAMP}) long j11, @BindingCallback BridgeCallback bridgeCallback) {
        Context context;
        Unit unit;
        if (app != null) {
            try {
                AppContext appContext = app.getAppContext();
                if (appContext != null && (context = appContext.getContext()) != null) {
                    com.cloud.tmc.miniapp.utils.OooO0o.OooO00o.OooO00o(context, j11);
                    if (bridgeCallback != null) {
                        bridgeCallback.sendSuccessResponse();
                        unit = Unit.f67061a;
                    } else {
                        unit = null;
                    }
                    if (unit != null) {
                        return;
                    }
                }
            } catch (Throwable th2) {
                TmcLogger.e(this.OooO00o, th2);
                if (bridgeCallback != null) {
                    bridgeCallback.sendFailResponse();
                    return;
                }
                return;
            }
        }
        if (bridgeCallback != null) {
            bridgeCallback.sendFailResponse();
            Unit unit2 = Unit.f67061a;
        }
    }

    @ActionFilter("")
    @ThreadType(ExecutorType.IO)
    public final void getAutoUpdateStatus(@BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
        Context context;
        Unit unit;
        if (app != null) {
            try {
                AppContext appContext = app.getAppContext();
                if (appContext != null && (context = appContext.getContext()) != null) {
                    boolean z10 = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getBoolean(context, LauncherFrameworkConstants.LAUNCHER_GLOBAL_KEYS, LauncherFrameworkConstants.KEY_MINI_AUTO_UPDATE_STATUS, false);
                    if (bridgeCallback != null) {
                        JsonObject jsonObject = new JsonObject();
                        jsonObject.addProperty(NotificationCompat.CATEGORY_STATUS, Boolean.valueOf(z10));
                        bridgeCallback.sendSuccessResponse(jsonObject);
                        unit = Unit.f67061a;
                    } else {
                        unit = null;
                    }
                    if (unit != null) {
                        return;
                    }
                }
            } catch (Throwable th2) {
                TmcLogger.e(this.OooO00o, th2);
                if (bridgeCallback != null) {
                    bridgeCallback.sendFailResponse();
                    return;
                }
                return;
            }
        }
        if (bridgeCallback != null) {
            bridgeCallback.sendFailResponse();
            Unit unit2 = Unit.f67061a;
        }
    }

    @ActionFilter("")
    @ThreadType(ExecutorType.IO)
    public final void getCacheMsgData(@BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
        Context context;
        Unit unit;
        if (app != null) {
            try {
                AppContext appContext = app.getAppContext();
                if (appContext != null && (context = appContext.getContext()) != null) {
                    JsonArray jsonArray = new JsonArray();
                    KVStorageProxy kVStorageProxy = (KVStorageProxy) TmcProxy.get(KVStorageProxy.class);
                    String[] mMKVFileAllKeys = kVStorageProxy.getMMKVFileAllKeys(context, "miniMsgCacheData");
                    Intrinsics.g(mMKVFileAllKeys, "storageProxy.getMMKVFile…vider.KEY_MSG_CACHE_DATA)");
                    Iterator it = ArraysKt.B0(mMKVFileAllKeys).iterator();
                    while (it.hasNext()) {
                        jsonArray.add((JsonObject) JsonUtil.INSTANCE.fromJson(kVStorageProxy.getString(context, "miniMsgCacheData", (String) it.next()), JsonObject.class));
                    }
                    String string = jsonArray.toString();
                    Intrinsics.g(string, "msgDataArray.toString()");
                    TmcLogger.d(this.OooO00o, "getCacheMsgData msgCacheObj = " + string);
                    if (bridgeCallback != null) {
                        bridgeCallback.sendSuccessResponse(JsonObjectUtils.create().addProperty("msgData", string).build());
                        unit = Unit.f67061a;
                    } else {
                        unit = null;
                    }
                    if (unit != null) {
                        return;
                    }
                }
            } catch (Throwable th2) {
                TmcLogger.e(this.OooO00o, th2);
                if (bridgeCallback != null) {
                    bridgeCallback.sendFailResponse();
                    return;
                }
                return;
            }
        }
        if (bridgeCallback != null) {
            bridgeCallback.sendFailResponse();
            Unit unit2 = Unit.f67061a;
        }
    }

    @ActionFilter("")
    @ThreadType(ExecutorType.IO)
    public final void getChangedMsgSwitchList(@BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
        Context context;
        Unit unit;
        if (app != null) {
            try {
                AppContext appContext = app.getAppContext();
                if (appContext != null && (context = appContext.getContext()) != null) {
                    JsonArray jsonArrayOooO0O0 = com.cloud.tmc.miniapp.utils.OooO0o.OooO00o.OooO0O0(context);
                    if (bridgeCallback != null) {
                        JsonObject jsonObject = new JsonObject();
                        jsonObject.add(this.OooO0O0, jsonArrayOooO0O0);
                        bridgeCallback.sendSuccessResponse(jsonObject);
                        unit = Unit.f67061a;
                    } else {
                        unit = null;
                    }
                    if (unit != null) {
                        return;
                    }
                }
            } catch (Throwable th2) {
                TmcLogger.e(this.OooO00o, th2);
                if (bridgeCallback != null) {
                    bridgeCallback.sendFailResponse();
                    return;
                }
                return;
            }
        }
        if (bridgeCallback != null) {
            bridgeCallback.sendFailResponse();
            Unit unit2 = Unit.f67061a;
        }
    }

    @ActionFilter("")
    @ThreadType(ExecutorType.IO)
    public final void getLatestAppListMsgSwitch(@BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
        AppContext appContext;
        Context context;
        if (app != null && (appContext = app.getAppContext()) != null && (context = appContext.getContext()) != null) {
            JsonArray jsonArray = new JsonArray();
            List<AppStoreInfo> latestUseApps = LatestUseUtils.getLatestUseApps();
            Unit unit = null;
            if (latestUseApps != null) {
                Intrinsics.g(latestUseApps, "getLatestUseApps()");
                for (AppStoreInfo appStoreInfo : latestUseApps) {
                    JsonObject jsonObject = new JsonObject();
                    jsonObject.addProperty(TmcConstants.KEY_MINI_APPID, appStoreInfo.getAppId());
                    jsonObject.addProperty("miniappName", appStoreInfo.getName());
                    jsonObject.addProperty("miniappLogo", appStoreInfo.getLogo());
                    com.cloud.tmc.miniapp.utils.OooO0o oooO0o = com.cloud.tmc.miniapp.utils.OooO0o.OooO00o;
                    String appId = appStoreInfo.getAppId();
                    if (appId == null) {
                        appId = "";
                    }
                    String strOooO0O0 = oooO0o.OooO0O0(context, appId);
                    if (strOooO0O0.length() > 0) {
                        JsonObject jsonObject2 = (JsonObject) GsonUtils.fromJson(strOooO0O0, JsonObject.class);
                        JsonElement jsonElement = jsonObject2.get("appSwitchStatus");
                        String asString = jsonElement != null ? jsonElement.getAsString() : null;
                        if (asString == null) {
                            asString = "";
                        }
                        jsonObject.addProperty("appSwitchStatus", asString);
                        JsonElement jsonElement2 = jsonObject2.get("appSwitchTimestamp");
                        String asString2 = jsonElement2 != null ? jsonElement2.getAsString() : null;
                        jsonObject.addProperty("appSwitchTimestamp", asString2 != null ? asString2 : "");
                    }
                    jsonArray.add(jsonObject);
                }
            }
            TmcLogger.d(this.OooO00o, jsonArray.toString());
            if (bridgeCallback != null) {
                JsonObject jsonObject3 = new JsonObject();
                jsonObject3.add(this.OooO0O0, jsonArray);
                bridgeCallback.sendSuccessResponse(jsonObject3);
                unit = Unit.f67061a;
            }
            if (unit != null) {
                return;
            }
        }
        if (bridgeCallback != null) {
            bridgeCallback.sendFailResponse();
            Unit unit2 = Unit.f67061a;
        }
    }

    @ActionFilter("")
    @ThreadType(ExecutorType.IO)
    public final void getMiniAppCacheSize(@BindingNode(App.class) App app, @BindingParam({TmcConstants.KEY_MINI_APPID}) String appId, @BindingCallback BridgeCallback callback) {
        Unit unit;
        Context context;
        Intrinsics.h(app, "app");
        Intrinsics.h(appId, "appId");
        Intrinsics.h(callback, "callback");
        AppContext appContext = app.getAppContext();
        if (appContext == null || (context = appContext.getContext()) == null) {
            unit = null;
        } else {
            long miniAppCacheSize = FileUtil.getMiniAppCacheSize(context, appId);
            TmcLogger.d(this.OooO00o, "getMiniAppCacheSize: " + miniAppCacheSize);
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("cacheSize", Long.valueOf(miniAppCacheSize));
            callback.sendSuccessResponse(jsonObject);
            unit = Unit.f67061a;
        }
        if (unit == null) {
            callback.sendFailResponse();
        }
    }

    @ActionFilter("")
    @ThreadType(ExecutorType.IO)
    public final void getMiniAppFileSize(@BindingNode(App.class) App app, @BindingParam({TmcConstants.KEY_MINI_APPID}) String appId, @BindingCallback BridgeCallback callback) {
        Unit unit;
        Context context;
        Intrinsics.h(app, "app");
        Intrinsics.h(appId, "appId");
        Intrinsics.h(callback, "callback");
        AppContext appContext = app.getAppContext();
        if (appContext == null || (context = appContext.getContext()) == null) {
            unit = null;
        } else {
            long miniAppFileSize = FileUtil.getMiniAppFileSize(context, appId);
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("totalSize", Long.valueOf(miniAppFileSize));
            callback.sendSuccessResponse(jsonObject);
            TmcLogger.d(this.OooO00o, "getMiniAppFileSize: " + miniAppFileSize);
            unit = Unit.f67061a;
        }
        if (unit == null) {
            callback.sendFailResponse();
        }
    }

    @ActionFilter("")
    @ThreadType(ExecutorType.IO)
    public final void getMiniAppTotalCacheSize(@BindingNode(App.class) App app, @BindingParam({TmcConstants.KEY_MINI_APPID}) String appId, @BindingCallback BridgeCallback callback) {
        Unit unit;
        Context context;
        Intrinsics.h(app, "app");
        Intrinsics.h(appId, "appId");
        Intrinsics.h(callback, "callback");
        AppContext appContext = app.getAppContext();
        if (appContext == null || (context = appContext.getContext()) == null) {
            unit = null;
        } else {
            long allMiniAppCacheSize = FileUtil.getAllMiniAppCacheSize(context);
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("totalCacheSize", Long.valueOf(allMiniAppCacheSize));
            callback.sendSuccessResponse(jsonObject);
            TmcLogger.d(this.OooO00o, "getAllMiniAppCacheSize: " + allMiniAppCacheSize);
            unit = Unit.f67061a;
        }
        if (unit == null) {
            callback.sendFailResponse();
        }
    }

    @ActionFilter("")
    @ThreadType(ExecutorType.IO)
    public final void getMiniAppTotalSize(@BindingNode(App.class) App app, @BindingCallback BridgeCallback callback) {
        Unit unit;
        Context context;
        Intrinsics.h(app, "app");
        Intrinsics.h(callback, "callback");
        AppContext appContext = app.getAppContext();
        if (appContext == null || (context = appContext.getContext()) == null) {
            unit = null;
        } else {
            long allMiniAppFileSize = FileUtil.getAllMiniAppFileSize(context);
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("totalSize", Long.valueOf(allMiniAppFileSize));
            callback.sendSuccessResponse(jsonObject);
            TmcLogger.d(this.OooO00o, "getMiniAppTotalSize: " + allMiniAppFileSize);
            unit = Unit.f67061a;
        }
        if (unit == null) {
            callback.sendFailResponse();
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:40:? A[RETURN, SYNTHETIC] */
    @ActionFilter("")
    @ThreadType(ExecutorType.IO)
    public final void getMiniappPermissionList(@BindingNode(App.class) App app, @BindingParam({TmcConstants.KEY_MINI_APPID}) String miniappId, @BindingCallback BridgeCallback bridgeCallback) {
        Context context;
        ArrayList<PermissionInfoModel> arrayList;
        Unit unit;
        Intrinsics.h(miniappId, "miniappId");
        if (app != null) {
            try {
                AppContext appContext = app.getAppContext();
                if (appContext != null && (context = appContext.getContext()) != null) {
                    String strOooO0O0 = ScopeUtils.OooO00o.OooO0O0(context, miniappId);
                    TmcLogger.d(this.OooO00o, "permissionMiniappScopeData: " + strOooO0O0);
                    if (strOooO0O0.length() == 0) {
                        if (bridgeCallback != null) {
                            bridgeCallback.sendSuccessResponse(JsonObjectUtils.create().addProperty("isAuthorized", Boolean.FALSE).build());
                            unit = Unit.f67061a;
                        } else {
                            unit = null;
                        }
                        if (unit != null) {
                            return;
                        }
                    } else {
                        try {
                            Object objFromJson = GsonUtils.fromJson(strOooO0O0, new TypeToken<ArrayList<PermissionInfoModel>>() { // from class: com.cloud.tmc.miniapp.bridge.AppManagerDataProviderBridge$getMiniappPermissionList$1$authList$1
                            }.getType());
                            Intrinsics.g(objFromJson, "{\n                      …  )\n                    }");
                            arrayList = (ArrayList) objFromJson;
                        } catch (Throwable unused) {
                            arrayList = new ArrayList();
                        }
                        for (PermissionInfoModel permissionInfoModel : arrayList) {
                            permissionInfoModel.setScopeDescription(ScopeUtils.OooO00o.OooO0O0(permissionInfoModel.getScopeName(), permissionInfoModel.getScopeName()));
                        }
                        String json = TmcGsonUtilsKt.toJson(arrayList);
                        TmcLogger.d(this.OooO00o, "miniScopeData:-> " + json);
                        if (bridgeCallback != null) {
                            bridgeCallback.sendSuccessResponse(JsonObjectUtils.create().addProperty("isAuthorized", Boolean.TRUE).addProperty("permissionList", json).build());
                            unit = Unit.f67061a;
                        } else {
                            unit = null;
                        }
                        if (unit != null) {
                            return;
                        }
                    }
                }
            } catch (Throwable th2) {
                TmcLogger.e(this.OooO00o, th2);
                if (bridgeCallback != null) {
                    bridgeCallback.sendFailResponse();
                    return;
                }
                return;
            }
        }
        if (bridgeCallback != null) {
            bridgeCallback.sendFailResponse();
            Unit unit2 = Unit.f67061a;
        }
    }

    @ActionFilter("")
    @ThreadType(ExecutorType.IO)
    public final void getMsgListInfo(@BindingNode(App.class) App app, @BindingCallback BridgeCallback callback) {
        Unit unit;
        Context context;
        Intrinsics.h(app, "app");
        Intrinsics.h(callback, "callback");
        AppContext appContext = app.getAppContext();
        if (appContext == null || (context = appContext.getContext()) == null) {
            unit = null;
        } else {
            String string = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getString(context, "miniMsgProvider", "MsgListData");
            TmcLogger.d(this.OooO00o, "getMsgListInfo: " + string);
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("msgList", string);
            callback.sendSuccessResponse(jsonObject);
            unit = Unit.f67061a;
        }
        if (unit == null) {
            callback.sendFailResponse();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @ActionFilter("")
    @ThreadType(ExecutorType.IO)
    public final void getMsgSwitchStatus(@BindingNode(App.class) App app, @BindingParam({TmcConstants.KEY_MINI_APPID}) String miniappId, @BindingCallback BridgeCallback callback) {
        Context context;
        Intrinsics.h(app, "app");
        Intrinsics.h(miniappId, "miniappId");
        Intrinsics.h(callback, "callback");
        AppContext appContext = app.getAppContext();
        Object asString = null;
        if (appContext != null && (context = appContext.getContext()) != null) {
            JsonObject jsonObject = new JsonObject();
            String strOooO0O0 = com.cloud.tmc.miniapp.utils.OooO0o.OooO00o.OooO0O0(context, miniappId);
            if (strOooO0O0.length() > 0) {
                JsonObject jsonObject2 = (JsonObject) GsonUtils.fromJson(strOooO0O0, JsonObject.class);
                JsonElement jsonElement = jsonObject2.get("appSwitchStatus");
                String asString2 = jsonElement != null ? jsonElement.getAsString() : null;
                String str = "";
                if (asString2 == null) {
                    asString2 = "";
                } else {
                    Intrinsics.g(asString2, "msgProvider[MiniappMsgDa…H_STATUS]?.asString ?: \"\"");
                }
                jsonObject.addProperty("appSwitchStatus", asString2);
                JsonElement jsonElement2 = jsonObject2.get("appSwitchTimestamp");
                asString = jsonElement2 != null ? jsonElement2.getAsString() : null;
                if (asString != null) {
                    Intrinsics.g(asString, "msgProvider[MiniappMsgDa…IMESTAMP]?.asString ?: \"\"");
                    str = asString;
                }
                jsonObject.addProperty("appSwitchTimestamp", str);
            }
            callback.sendSuccessResponse(jsonObject);
            asString = Unit.f67061a;
        }
        if (asString == null) {
            callback.sendFailResponse();
        }
    }

    @ActionFilter("")
    @ThreadType(ExecutorType.IO)
    public final void getMsgWithReadStatusListInfo(@BindingNode(App.class) App app, @BindingCallback BridgeCallback callback) {
        Unit unit;
        Context context;
        Intrinsics.h(app, "app");
        Intrinsics.h(callback, "callback");
        AppContext appContext = app.getAppContext();
        if (appContext == null || (context = appContext.getContext()) == null) {
            unit = null;
        } else {
            String string = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getString(context, "miniMsgProvider", "MsgListWithReadStatusData");
            TmcLogger.d(this.OooO00o, "getMsgWithReadStatusListInfo: " + string);
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("msgList", string);
            callback.sendSuccessResponse(jsonObject);
            unit = Unit.f67061a;
        }
        if (unit == null) {
            callback.sendFailResponse();
        }
    }

    /* JADX WARN: Code duplicated, block: B:47:? A[RETURN, SYNTHETIC] */
    @ActionFilter("")
    @ThreadType(ExecutorType.IO)
    public final void getPermissionStatus(@BindingNode(App.class) App app, @BindingParam({TmcConstants.KEY_MINI_APPID}) String miniappId, @BindingParam({"scopeName"}) String scopeName, @BindingCallback BridgeCallback bridgeCallback) {
        Context context;
        ArrayList arrayList;
        Object next;
        Unit unit;
        Intrinsics.h(miniappId, "miniappId");
        Intrinsics.h(scopeName, "scopeName");
        if (app != null) {
            try {
                AppContext appContext = app.getAppContext();
                if (appContext != null && (context = appContext.getContext()) != null) {
                    ScopeUtils scopeUtils = ScopeUtils.OooO00o;
                    String strOooO0O0 = scopeUtils.OooO0O0(context, miniappId);
                    Unit unit2 = null;
                    if (strOooO0O0.length() == 0) {
                        if (bridgeCallback != null) {
                            bridgeCallback.sendSuccessResponse(JsonObjectUtils.create().addProperty("isAuthorized", Boolean.FALSE).addProperty("scopeName", scopeName).addProperty("scopeDescription", scopeUtils.OooO0O0(scopeName, scopeName)).build());
                            unit = Unit.f67061a;
                            unit2 = unit;
                        }
                        if (unit2 != null) {
                            return;
                        }
                    } else {
                        try {
                            Object objFromJson = GsonUtils.fromJson(strOooO0O0, new TypeToken<ArrayList<PermissionInfoModel>>() { // from class: com.cloud.tmc.miniapp.bridge.AppManagerDataProviderBridge$getPermissionStatus$1$authList$1
                            }.getType());
                            Intrinsics.g(objFromJson, "{\n                      …  )\n                    }");
                            arrayList = (ArrayList) objFromJson;
                        } catch (Throwable unused) {
                            arrayList = new ArrayList();
                        }
                        Iterator it = arrayList.iterator();
                        do {
                            if (!it.hasNext()) {
                                next = null;
                                break;
                            }
                            next = it.next();
                        } while (!Intrinsics.c(((PermissionInfoModel) next).getScopeName(), scopeName));
                        PermissionInfoModel permissionInfoModel = (PermissionInfoModel) next;
                        if (permissionInfoModel == null) {
                            if (bridgeCallback != null) {
                                bridgeCallback.sendSuccessResponse(JsonObjectUtils.create().addProperty("isAuthorized", Boolean.FALSE).addProperty("scopeName", scopeName).addProperty("scopeDescription", ScopeUtils.OooO00o.OooO0O0(scopeName, scopeName)).build());
                                unit = Unit.f67061a;
                                unit2 = unit;
                            }
                        } else if (bridgeCallback != null) {
                            bridgeCallback.sendSuccessResponse(JsonObjectUtils.create().addProperty("isAuthorized", Boolean.TRUE).addProperty("scopeName", scopeName).addProperty("scopeDescription", ScopeUtils.OooO00o.OooO0O0(scopeName, scopeName)).addProperty(TmcConstants.KEY_CHECK_SCOPE_AUTH_RESULT, permissionInfoModel.getAuthStatus()).addProperty("authTimeStamp", permissionInfoModel.getAuthTimeStamp()).addProperty("validityTime", permissionInfoModel.getValidityTime()).build());
                            unit = Unit.f67061a;
                            unit2 = unit;
                        }
                        if (unit2 != null) {
                            return;
                        }
                    }
                }
            } catch (Throwable th2) {
                TmcLogger.e(this.OooO00o, th2);
                if (bridgeCallback != null) {
                    bridgeCallback.sendFailResponse();
                    return;
                }
                return;
            }
        }
        if (bridgeCallback != null) {
            bridgeCallback.sendFailResponse();
            Unit unit3 = Unit.f67061a;
        }
    }

    @ActionFilter("")
    @ThreadType(ExecutorType.IO)
    public final void getPrefetchState(@BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
        Context context;
        Unit unit;
        if (app != null) {
            try {
                AppContext appContext = app.getAppContext();
                if (appContext != null && (context = appContext.getContext()) != null) {
                    int i11 = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getInt(context, LauncherFrameworkConstants.LAUNCHER_GLOBAL_KEYS, LauncherFrameworkConstants.KEY_MINI_PREFETCH_STATE);
                    long j11 = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getLong(context, LauncherFrameworkConstants.LAUNCHER_GLOBAL_KEYS, LauncherFrameworkConstants.KEY_MINI_PREFETCH_TIMESTAMP);
                    if (bridgeCallback != null) {
                        JsonObject jsonObject = new JsonObject();
                        jsonObject.addProperty(NotificationCompat.CATEGORY_STATUS, Integer.valueOf(i11));
                        jsonObject.addProperty(CampaignEx.JSON_KEY_TIMESTAMP, Long.valueOf(j11));
                        bridgeCallback.sendSuccessResponse(jsonObject);
                        unit = Unit.f67061a;
                    } else {
                        unit = null;
                    }
                    if (unit != null) {
                        return;
                    }
                }
            } catch (Throwable th2) {
                TmcLogger.e(this.OooO00o, th2);
                if (bridgeCallback != null) {
                    bridgeCallback.sendFailResponse();
                    return;
                }
                return;
            }
        }
        if (bridgeCallback != null) {
            bridgeCallback.sendFailResponse();
            Unit unit2 = Unit.f67061a;
        }
    }

    @ActionFilter("")
    @ThreadType(ExecutorType.IO)
    public final void getTotalMsgStatus(@BindingNode(App.class) App app, @BindingCallback BridgeCallback callback) {
        Context context;
        Object obj;
        Object obj2 = "";
        Intrinsics.h(app, "app");
        Intrinsics.h(callback, "callback");
        AppContext appContext = app.getAppContext();
        Object asString = null;
        if (appContext != null && (context = appContext.getContext()) != null) {
            try {
                Intrinsics.h(context, "context");
                try {
                    String string = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getString(context, "miniMsgProvider", "mainMsgSwitch");
                    if (string == null || string.length() <= 0) {
                        obj = "";
                    } else {
                        JsonObject jsonObject = (JsonObject) GsonUtils.fromJson(string, JsonObject.class);
                        JsonElement jsonElement = jsonObject.get("mainSwitchStatus");
                        String asString2 = jsonElement != null ? jsonElement.getAsString() : null;
                        if (asString2 == null) {
                            asString2 = "";
                        }
                        JsonElement jsonElement2 = jsonObject.get("mainSwitchTimestamp");
                        asString = jsonElement2 != null ? jsonElement2.getAsString() : null;
                        obj = asString != null ? asString : "";
                        obj2 = asString2;
                    }
                } catch (Throwable unused) {
                }
                Pair pairA = TuplesKt.a(obj2, obj);
                JsonObject jsonObject2 = new JsonObject();
                jsonObject2.addProperty("mainSwitchStatus", (String) pairA.getFirst());
                jsonObject2.addProperty("mainSwitchTimestamp", (String) pairA.getSecond());
                callback.sendSuccessResponse(jsonObject2);
            } catch (Throwable th2) {
                TmcLogger.e(this.OooO00o, th2);
            }
            asString = Unit.f67061a;
        }
        if (asString == null) {
            callback.sendFailResponse();
        }
    }

    @ActionFilter("")
    @ThreadType(ExecutorType.IO)
    public final void getUnreadMsgNum(@BindingNode(App.class) App app, @BindingParam(stringDefault = "", value = {TmcConstants.KEY_MINI_APPID}) String str, @BindingCallback BridgeCallback bridgeCallback) {
        Context context;
        Unit unit;
        if (app != null) {
            try {
                AppContext appContext = app.getAppContext();
                if (appContext != null && (context = appContext.getContext()) != null) {
                    JsonObject jsonObjectOooO0Oo = com.cloud.tmc.miniapp.utils.OooO0o.OooO00o.OooO0Oo(context);
                    if (str != null && str.length() > 0) {
                        JsonElement jsonElement = jsonObjectOooO0Oo.get(str);
                        int asInt = jsonElement != null ? jsonElement.getAsInt() : 0;
                        JsonObject jsonObject = new JsonObject();
                        jsonObject.addProperty(str, Integer.valueOf(asInt));
                        jsonObjectOooO0Oo = jsonObject;
                    }
                    if (bridgeCallback != null) {
                        bridgeCallback.sendSuccessResponse(JsonObjectUtils.create().addProperty("unreadMsgData", jsonObjectOooO0Oo.toString()).build());
                        unit = Unit.f67061a;
                    } else {
                        unit = null;
                    }
                    if (unit != null) {
                        return;
                    }
                }
            } catch (Throwable th2) {
                TmcLogger.e(this.OooO00o, th2);
                if (bridgeCallback != null) {
                    bridgeCallback.sendFailResponse();
                    return;
                }
                return;
            }
        }
        if (bridgeCallback != null) {
            bridgeCallback.sendFailResponse();
            Unit unit2 = Unit.f67061a;
        }
    }

    @ActionFilter("")
    @ThreadType(ExecutorType.IO)
    public final void launcherMiniappBrandPage(@BindingNode(App.class) App app, @BindingParam({TmcConstants.KEY_MINI_APPID}) String miniappId, @BindingCallback BridgeCallback bridgeCallback) {
        Context context;
        Unit unit;
        Intrinsics.h(miniappId, "miniappId");
        if (app != null) {
            try {
                AppContext appContext = app.getAppContext();
                if (appContext != null && (context = appContext.getContext()) != null) {
                    AppBrandProfileActivity.Companion.launch$default(AppBrandProfileActivity.Companion, context, miniappId, null, 4, null);
                    if (bridgeCallback != null) {
                        bridgeCallback.sendSuccessResponse();
                        unit = Unit.f67061a;
                    } else {
                        unit = null;
                    }
                    if (unit != null) {
                        return;
                    }
                }
            } catch (Throwable th2) {
                TmcLogger.e(this.OooO00o, th2);
                if (bridgeCallback != null) {
                    bridgeCallback.sendFailResponse();
                    return;
                }
                return;
            }
        }
        if (bridgeCallback != null) {
            bridgeCallback.sendFailResponse();
            Unit unit2 = Unit.f67061a;
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

    @ActionFilter("")
    @ThreadType(ExecutorType.IO)
    public final void removeMiniAppFile(@BindingNode(App.class) App app, @BindingParam({TmcConstants.KEY_MINI_APPID}) String appId, @BindingCallback BridgeCallback callback) {
        Unit unit;
        Context context;
        Intrinsics.h(app, "app");
        Intrinsics.h(appId, "appId");
        Intrinsics.h(callback, "callback");
        AppContext appContext = app.getAppContext();
        if (appContext == null || (context = appContext.getContext()) == null) {
            unit = null;
        } else {
            TmcLogger.d(this.OooO00o, "removeMiniAppFile: ");
            FileUtil.removeMiniAppFile(context, appId);
            callback.sendSuccessResponse(new JsonObject());
            unit = Unit.f67061a;
        }
        if (unit == null) {
            callback.sendFailResponse();
        }
    }

    @ActionFilter("")
    @ThreadType(ExecutorType.IO)
    public final void removeMiniAppFileCache(@BindingNode(App.class) App app, @BindingParam({TmcConstants.KEY_MINI_APPID}) String appId, @BindingCallback BridgeCallback callback) {
        Unit unit;
        Context context;
        Intrinsics.h(app, "app");
        Intrinsics.h(appId, "appId");
        Intrinsics.h(callback, "callback");
        AppContext appContext = app.getAppContext();
        if (appContext == null || (context = appContext.getContext()) == null) {
            unit = null;
        } else {
            TmcLogger.d(this.OooO00o, "removeMiniAppFileCache: ");
            FileUtil.removeMiniAppFileCache(context, appId);
            callback.sendSuccessResponse(new JsonObject());
            unit = Unit.f67061a;
        }
        if (unit == null) {
            callback.sendFailResponse();
        }
    }

    @ActionFilter("")
    @ThreadType(ExecutorType.IO)
    public final void requestSendMsgPermission(@BindingNode(App.class) App app, @BindingParam({TmcConstants.KEY_MINI_APPID}) String miniappId, @BindingCallback BridgeCallback bridgeCallback) {
        Unit unit;
        Intrinsics.h(miniappId, "miniappId");
        if (app != null) {
            try {
                AppContext appContext = app.getAppContext();
                if (appContext != null && appContext.getContext() != null) {
                    if (bridgeCallback != null) {
                        bridgeCallback.sendSuccessResponse();
                        unit = Unit.f67061a;
                    } else {
                        unit = null;
                    }
                    if (unit != null) {
                        return;
                    }
                }
            } catch (Throwable th2) {
                TmcLogger.e(this.OooO00o, th2);
                if (bridgeCallback != null) {
                    bridgeCallback.sendFailResponse();
                    return;
                }
                return;
            }
        }
        if (bridgeCallback != null) {
            bridgeCallback.sendFailResponse();
            Unit unit2 = Unit.f67061a;
        }
    }

    @ActionFilter("")
    @ThreadType(ExecutorType.IO)
    public final void saveMsgListInfo(@BindingNode(App.class) App app, @BindingParam({"msgList"}) String msgList, @BindingCallback BridgeCallback callback) {
        Unit unit;
        Context context;
        Intrinsics.h(app, "app");
        Intrinsics.h(msgList, "msgList");
        Intrinsics.h(callback, "callback");
        AppContext appContext = app.getAppContext();
        if (appContext == null || (context = appContext.getContext()) == null) {
            unit = null;
        } else {
            TmcLogger.d(this.OooO00o, "saveMsgListInfo: " + msgList);
            ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putString(context, "miniMsgProvider", "MsgListData", msgList);
            callback.sendSuccessResponse();
            unit = Unit.f67061a;
        }
        if (unit == null) {
            callback.sendFailResponse();
        }
    }

    @ActionFilter("")
    @ThreadType(ExecutorType.IO)
    public final void saveMsgWithReadStatusListInfo(@BindingNode(App.class) App app, @BindingParam({"msgList"}) String msgList, @BindingCallback BridgeCallback callback) {
        Unit unit;
        Context context;
        Intrinsics.h(app, "app");
        Intrinsics.h(msgList, "msgList");
        Intrinsics.h(callback, "callback");
        AppContext appContext = app.getAppContext();
        if (appContext == null || (context = appContext.getContext()) == null) {
            unit = null;
        } else {
            TmcLogger.d(this.OooO00o, "saveMsgWithReadStatusListInfo: " + msgList);
            ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putString(context, "miniMsgProvider", "MsgListWithReadStatusData", msgList);
            callback.sendSuccessResponse();
            unit = Unit.f67061a;
        }
        if (unit == null) {
            callback.sendFailResponse();
        }
    }

    @ActionFilter("")
    @ThreadType(ExecutorType.IO)
    public final void updateUnreadMsgNum(@BindingNode(App.class) App app, @BindingParam({"unreadMsgData"}) JsonObject unreadMsgData, @BindingCallback BridgeCallback bridgeCallback) {
        Context context;
        Unit unit;
        Intrinsics.h(unreadMsgData, "unreadMsgData");
        if (app != null) {
            try {
                AppContext appContext = app.getAppContext();
                if (appContext != null && (context = appContext.getContext()) != null) {
                    JsonObject jsonObjectOooO0Oo = com.cloud.tmc.miniapp.utils.OooO0o.OooO00o.OooO0Oo(context);
                    Set<String> setKeySet = unreadMsgData.keySet();
                    Intrinsics.g(setKeySet, "unreadMsgData.keySet()");
                    for (String str : setKeySet) {
                        jsonObjectOooO0Oo.addProperty(str, Integer.valueOf(unreadMsgData.get(str).getAsInt()));
                    }
                    com.cloud.tmc.miniapp.utils.OooO0o oooO0o = com.cloud.tmc.miniapp.utils.OooO0o.OooO00o;
                    String string = jsonObjectOooO0Oo.toString();
                    Intrinsics.g(string, "msgUnreadNumberData.toString()");
                    oooO0o.OooO0Oo(context, string);
                    if (bridgeCallback != null) {
                        bridgeCallback.sendSuccessResponse();
                        unit = Unit.f67061a;
                    } else {
                        unit = null;
                    }
                    if (unit != null) {
                        return;
                    }
                }
            } catch (Throwable th2) {
                TmcLogger.e(this.OooO00o, th2);
                if (bridgeCallback != null) {
                    bridgeCallback.sendFailResponse();
                    return;
                }
                return;
            }
        }
        if (bridgeCallback != null) {
            bridgeCallback.sendFailResponse();
            Unit unit2 = Unit.f67061a;
        }
    }
}
