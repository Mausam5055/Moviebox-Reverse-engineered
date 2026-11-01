package com.cloud.tmc.miniapp.utils;

import android.app.Application;
import android.content.Context;
import com.cloud.config.utils.CommonUtils;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.integration.net.BaseResponse;
import com.cloud.tmc.integration.net.TmcResponseCallback;
import com.cloud.tmc.integration.net.UrlKt;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppContext;
import com.cloud.tmc.integration.utils.PopWindowManager;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.network.INetWorkProxy;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.kernel.service.ConfigService;
import com.cloud.tmc.kernel.utils.TmcGsonUtilsKt;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.miniapp.ByteAppManager;
import com.cloud.tmc.miniutils.util.GsonUtils;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class MessageBubbleUtils {
    public static final MessageBubbleUtils OooO00o = new MessageBubbleUtils();

    public final void OooO00o(Context context, TmcResponseCallback<LauncherMiniAppMsgModel> tmcResponseCallback) {
        String string;
        try {
            String uRL_MINI_QUERY_NEW_MSG_mini = UrlKt.getURL_MINI_QUERY_NEW_MSG_mini();
            TmcLogger.d("MessageBubbleUtils", "requestUrl -> " + uRL_MINI_QUERY_NEW_MSG_mini);
            try {
                string = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getString(context, TmcConstants.KEY_MINI_SDK_STORAGE, "device_util_ga_id");
                if (string == null) {
                    string = "";
                }
                TmcLogger.d("MessageBubbleUtils", "requestQueryMsgStatus mGAId:" + string);
            } catch (Throwable unused) {
                string = "";
            }
            if (string.length() == 0) {
                tmcResponseCallback.onFailure(TmcConstants.COLD_OPEN_TYPE, "gaid is null", "");
                TmcLogger.d("MessageBubbleUtils", "mGAId is null ");
                return;
            }
            OooO0o oooO0o = OooO0o.OooO00o;
            Pair<String, String> pairOooO0o0 = oooO0o.OooO0o0(context);
            HashMap map = new HashMap();
            map.put("originType", "3");
            map.put(CommonUtils.PARAM_UID, string);
            map.put("webQueryTimestamp", Long.valueOf(System.currentTimeMillis()));
            String first = pairOooO0o0.getFirst();
            String second = pairOooO0o0.getSecond();
            if (first.length() > 0) {
                map.put("mainSwitchStatus", first);
            }
            if (second.length() > 0) {
                map.put("mainSwitchTimestamp", second);
            }
            JsonArray jsonArrayOooO0O0 = oooO0o.OooO0O0(context);
            if (!jsonArrayOooO0O0.isEmpty()) {
                map.put("miniAppSwitchOnOffs", jsonArrayOooO0O0);
                TmcLogger.d("MessageBubbleUtils", "miniAppSwitchOnOffs:" + TmcGsonUtilsKt.toJson(map));
            }
            ((INetWorkProxy) TmcProxy.get(INetWorkProxy.class)).postJson(uRL_MINI_QUERY_NEW_MSG_mini, new LinkedHashMap(), new LinkedHashMap(), map, Boolean.TRUE, tmcResponseCallback);
        } catch (Throwable th2) {
            TmcLogger.e("MessageBubbleUtils", th2);
        }
    }

    public final void OooO00o(Context context, String appId, String miniAppPopWindowToken, PopWindowManager.IPopWindowManagerController controller) {
        int configInt;
        Intrinsics.h(context, "context");
        Intrinsics.h(appId, "appId");
        Intrinsics.h(miniAppPopWindowToken, "miniAppPopWindowToken");
        Intrinsics.h(controller, "controller");
        if (appId.length() == 0) {
            return;
        }
        TmcLogger.d("MessageBubbleUtils", "checkAndShowMsgBubble");
        if (OooO00o(appId)) {
            return;
        }
        long j11 = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getLong(context, appId, TmcConstants.KEY_SHOW_MSG_BUBBLE_TIME);
        TmcLogger.d("MessageBubbleUtils", "checkAndShowMsgBubble showAddHomeTime->" + j11 + " currentTimeMillis->" + System.currentTimeMillis() + " diff ->" + (System.currentTimeMillis() - j11));
        int configInt2 = 43200000;
        try {
            configInt2 = ((ConfigService) TmcProxy.get(ConfigService.class)).getConfigInt(LauncherMiniAppConfigHelper.KEY_MINI_POPWINDOW_MSG_BUBBLE_INTERVAL, 43200000);
        } catch (Throwable th2) {
            TmcLogger.e("MessageBubbleUtils", th2);
        }
        if (System.currentTimeMillis() - j11 >= configInt2 && (configInt = ((ConfigService) TmcProxy.get(ConfigService.class)).getConfigInt(LauncherMiniAppConfigHelper.KEY_MINI_POPWINDOW_MSG_BUBBLE_DELAY, 60000)) > 0) {
            TmcLogger.d("MessageBubbleUtils", "addPopWindow msg bubble:->" + configInt);
            PopWindowManager.INSTANCE.addPopWindow(miniAppPopWindowToken, new PopWindowManager.PopWindowData(appId, (long) configInt, 2, controller, false, 16, null));
        }
    }

    public final void OooO00o(App app, OooO0O0 oooO0O0) {
        Application application$com_cloud_tmc_miniapp_sdk;
        AppContext appContext;
        try {
            TmcLogger.d("MessageBubbleUtils", "requestMsgBubbleStatus");
            Context context = (app == null || (appContext = app.getAppContext()) == null) ? null : appContext.getContext();
            if (context == null) {
                return;
            }
            OooO0o oooO0o = OooO0o.OooO00o;
            String strOooO0OO = oooO0o.OooO0OO(context);
            if (strOooO0OO.length() == 0) {
                TmcLogger.d("MessageBubbleUtils", "latestUnreadMsg is null or empty");
                return;
            }
            JsonObject jsonObject = (JsonObject) GsonUtils.fromJson(strOooO0OO, JsonObject.class);
            JsonElement jsonElement = jsonObject.get(TmcConstants.KEY_MINI_APPID);
            String asString = jsonElement != null ? jsonElement.getAsString() : null;
            String str = "";
            if (asString == null) {
                asString = "";
            }
            JsonElement jsonElement2 = jsonObject.get("miniappName");
            String asString2 = jsonElement2 != null ? jsonElement2.getAsString() : null;
            if (asString2 == null) {
                asString2 = "";
            }
            if (Intrinsics.c(app.getAppId(), asString)) {
                return;
            }
            if (!oooO0o.OooO00o(context, asString)) {
                TmcLogger.d("MessageBubbleUtils", "requestMsgBubbleStatus msg switch is closed -> " + asString);
                return;
            }
            TmcLogger.d("MessageBubbleUtils", "checkAndShowMessageBubble appId " + asString);
            String appId = app.getAppId();
            if (appId != null) {
                str = appId;
            }
            if (str.length() == 0 || (application$com_cloud_tmc_miniapp_sdk = ByteAppManager.INSTANCE.getApplication$com_cloud_tmc_miniapp_sdk()) == null) {
                return;
            }
            if (System.currentTimeMillis() - ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getLong(application$com_cloud_tmc_miniapp_sdk, str, "MessageBubbleLatestTime") < TmcConstants.MINI_POPWINDOW_MSG_BUBBLE_INTERVAL) {
                return;
            }
            TmcLogger.d("MessageBubbleUtils", "show msg bubble");
            if (oooO0O0 != null) {
                oooO0O0.show(str, asString2);
            }
        } catch (Throwable th2) {
            TmcLogger.e("MessageBubbleUtils", "requestMsgBubbleStatus", th2);
        }
    }

    public final boolean OooO00o() {
        try {
            if (OooO0O0()) {
                return MiniAppConfigHelper.INSTANCE.getConfigTargetBool(LauncherMiniAppConfigHelper.KEY_MINI_MSG_BOTTOM_ENABLE, false);
            }
            return false;
        } catch (Throwable th2) {
            TmcLogger.e("MessageBubbleUtils", th2);
            return false;
        }
    }

    public final boolean OooO00o(String str) {
        try {
            Object objFromJson = GsonUtils.fromJson(MiniAppConfigHelper.INSTANCE.getConfigTargetStr(LauncherMiniAppConfigHelper.KEY_MINI_POPWINDOW_MSG_BUBBLE_FORBID_ID, MiniAppConfigHelper.DEFAULT_MINI_POPWINDOW_MSG_BUBBLE_FORBID_ID), (Class<Object>) List.class);
            List arrayList = objFromJson instanceof List ? (List) objFromJson : null;
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            return arrayList.contains(str);
        } catch (Throwable th2) {
            TmcLogger.e("MessageBubbleUtils", th2);
            return false;
        }
    }

    public final void OooO0O0(final App app, final OooO0O0 oooO0O0) {
        String str;
        AppContext appContext;
        String str2 = "";
        final Context context = (app == null || (appContext = app.getAppContext()) == null) ? null : appContext.getContext();
        if (context == null) {
            return;
        }
        if (((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getBoolean(context, "100000", TmcConstants.KEY_IS_NEW_USER, true)) {
            TmcLogger.d("MessageBubbleUtils", "updateDateMsgStatus isFirst = true");
            return;
        }
        Intrinsics.h(context, "context");
        try {
            String string = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getString(context, "miniMsgProvider", "mainMsgSwitch");
            if (string == null || string.length() <= 0) {
                str = "";
            } else {
                JsonObject jsonObject = (JsonObject) GsonUtils.fromJson(string, JsonObject.class);
                JsonElement jsonElement = jsonObject.get("mainSwitchStatus");
                String asString = jsonElement != null ? jsonElement.getAsString() : null;
                if (asString == null) {
                    asString = "";
                }
                JsonElement jsonElement2 = jsonObject.get("mainSwitchTimestamp");
                String asString2 = jsonElement2 != null ? jsonElement2.getAsString() : null;
                str = asString2 != null ? asString2 : "";
                str2 = asString;
            }
        } catch (Throwable unused) {
        }
        if (Intrinsics.c(TuplesKt.a(str2, str).getFirst(), "1")) {
            OooO00o(context, new TmcResponseCallback<LauncherMiniAppMsgModel>() { // from class: com.cloud.tmc.miniapp.utils.MessageBubbleUtils$requestMsgInfo$1
                @Override // com.cloud.tmc.integration.net.TmcResponseCallback
                public Type getType() {
                    Type type = new TypeToken<BaseResponse<? extends LauncherMiniAppMsgModel>>() { // from class: com.cloud.tmc.miniapp.utils.MessageBubbleUtils$requestMsgInfo$1$getType$1
                    }.getType();
                    Intrinsics.g(type, "object :\n               …iAppMsgModel?>>() {}.type");
                    return type;
                }

                @Override // com.cloud.tmc.integration.net.TmcResponseCallback
                public void onFail(BaseResponse<? extends Object> fail, Map<String, String> map) {
                    Intrinsics.h(fail, "fail");
                    TmcLogger.e("MessageBubbleUtils", "updateDateMsgStatus ErrCode:" + fail.getCode() + ",errMsg:" + fail.getMessage());
                }

                @Override // com.cloud.tmc.integration.net.TmcResponseCallback
                public void onSuccess(BaseResponse<? extends LauncherMiniAppMsgModel> bean, Map<String, String> map) {
                    String msgDataStr;
                    Unit unit;
                    Intrinsics.h(bean, "bean");
                    try {
                        LauncherMiniAppMsgModel data = bean.getData();
                        if (data == null || (msgDataStr = TmcGsonUtilsKt.toJson(data)) == null) {
                            msgDataStr = "";
                        }
                        if (data != null) {
                            TmcLogger.d("MessageBubbleUtils", "updateDateMsgStatus dataObj = " + msgDataStr);
                            Boolean successUpdateSwitchStatus = data.getSuccessUpdateSwitchStatus();
                            boolean zBooleanValue = successUpdateSwitchStatus != null ? successUpdateSwitchStatus.booleanValue() : true;
                            Long webQueryTimestamp = data.getWebQueryTimestamp();
                            long jLongValue = webQueryTimestamp != null ? webQueryTimestamp.longValue() : System.currentTimeMillis();
                            if (zBooleanValue) {
                                OooO0o.OooO00o.OooO00o(context, jLongValue);
                            }
                            ArrayList<LauncherMiniAppMsgInfoBean> miniappMessageInfos = data.getMiniappMessageInfos();
                            if (miniappMessageInfos != null && miniappMessageInfos.size() > 0) {
                                TmcLogger.d("MessageBubbleUtils", "updateDateMsgStatus msgInfo = $" + miniappMessageInfos.size());
                                Context context2 = context;
                                Intrinsics.h(context2, "context");
                                Intrinsics.h(msgDataStr, "msgDataStr");
                                try {
                                    ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putString(context2, "miniMsgCacheData", String.valueOf(System.currentTimeMillis()), msgDataStr);
                                } catch (Throwable th2) {
                                    TmcLogger.e("MiniappMsgDataProvider", th2);
                                }
                            }
                            LauncherLastlyMessageInfo lastlyMessageInfo = data.getLastlyMessageInfo();
                            if (lastlyMessageInfo != null) {
                                Context context3 = context;
                                JsonObject jsonObject2 = new JsonObject();
                                String miniappId = lastlyMessageInfo.getMiniappId();
                                if (miniappId == null) {
                                    miniappId = "";
                                }
                                String miniappName = lastlyMessageInfo.getMiniappName();
                                if (miniappName == null) {
                                    miniappName = "";
                                }
                                if (miniappId.length() <= 0 || miniappName.length() <= 0) {
                                    TmcLogger.d("MessageBubbleUtils", "miniappId or miniappName is null ");
                                } else {
                                    OooO0o oooO0o = OooO0o.OooO00o;
                                    if (oooO0o.OooO00o(context3, miniappId)) {
                                        jsonObject2.addProperty(TmcConstants.KEY_MINI_APPID, miniappId);
                                        jsonObject2.addProperty("miniappName", miniappName);
                                        TmcLogger.d("MessageBubbleUtils", "updateLatestUnreadMsg miniappId " + miniappId);
                                        oooO0o.OooO0OO(context3, TmcGsonUtilsKt.toJson(jsonObject2));
                                    } else {
                                        TmcLogger.d("MessageBubbleUtils", "miniappId ->" + miniappId + " msg switch is closed");
                                    }
                                }
                                unit = Unit.f67061a;
                            } else {
                                unit = null;
                            }
                            if (unit == null) {
                                TmcLogger.d("MessageBubbleUtils", "latestMsgInfo is null");
                            }
                        } else {
                            TmcLogger.d("MessageBubbleUtils", "updateDateMsgStatus no new msg ");
                        }
                        ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putLong(context, TmcConstants.KEY_MSG_ID, TmcConstants.KEY_MINI_MSG_LATEST_UPDATE, System.currentTimeMillis());
                        MessageBubbleUtils.OooO00o.OooO00o(app, oooO0O0);
                    } catch (Throwable th3) {
                        TmcLogger.e("MessageBubbleUtils", "", th3);
                    }
                }
            });
        } else {
            TmcLogger.d("MessageBubbleUtils", "main msg switch is closed,return");
        }
    }

    public final boolean OooO0O0() {
        try {
            return MiniAppConfigHelper.INSTANCE.getConfigTargetBool(LauncherMiniAppConfigHelper.KEY_MINI_MSG_ENABLE, false);
        } catch (Throwable th2) {
            TmcLogger.e("MessageBubbleUtils", th2);
            return false;
        }
    }
}
