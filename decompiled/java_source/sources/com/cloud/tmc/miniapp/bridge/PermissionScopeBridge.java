package com.cloud.tmc.miniapp.bridge;

import android.content.Context;
import android.text.method.ScrollingMovementMethod;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.Group;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.ScopeModel;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppContext;
import com.cloud.tmc.integration.utils.ext.StringExtKt;
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
import com.cloud.tmc.kernel.proxy.imageloader.ImageLoaderProxy;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.kernel.security.Permission;
import com.cloud.tmc.kernel.utils.JsonObjectUtils;
import com.cloud.tmc.kernel.utils.TmcGsonUtilsKt;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniapp.dialog.o00oO0o;
import com.cloud.tmc.miniapp.dialog.o0OOO0o;
import com.cloud.tmc.miniapp.dialog.o0ooOOo;
import com.cloud.tmc.miniapp.utils.ScopeUtils;
import com.cloud.tmc.miniutils.util.EmptyUtils;
import com.cloud.tmc.miniutils.util.EncryptUtils;
import com.cloud.tmc.miniutils.util.SizeUtils;
import com.cloud.tmc.miniutils.util.StringUtils;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.push.PushConstants;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension
public final class PermissionScopeBridge implements BridgeExtension {
    public static final int ERROR_CODE_HAPPENED_EXCEPTION = 500;
    public static final int ERROR_CODE_SCOPE_NAME_IS_EMPTY = 601;
    public static final int ERROR_CODE_SCOPE_NAME_NOT_FOUND = 602;
    public static final String ERROR_MSG_SCOPE_NAME_IS_EMPTY = "scopeName is empty";
    public static final String ERROR_MSG_SCOPE_NAME_NOT_FOUND = "No specified scopeName found";
    public static final String TAG = "PermissionScopeBridge::";
    public static final OooO00o Companion = new OooO00o();
    public static final ConcurrentHashMap<String, o00oO0o> OooO00o = new ConcurrentHashMap<>();

    public static final class OooO00o {
        public final boolean OooO00o(String str) {
            if (str != null) {
                try {
                    return (str.length() == 0 || !PermissionScopeBridge.OooO00o.containsKey(str) || ((o00oO0o) PermissionScopeBridge.OooO00o.get(str)) == null) ? false : true;
                } catch (Throwable unused) {
                }
            }
            return false;
        }
    }

    public static final class OooO0O0 implements o0OOO0o {
        public final /* synthetic */ BridgeCallback OooO00o;
        public final /* synthetic */ Ref.BooleanRef OooO0O0;

        public OooO0O0(BridgeCallback bridgeCallback, Ref.BooleanRef booleanRef) {
            this.OooO00o = bridgeCallback;
            this.OooO0O0 = booleanRef;
        }

        @Override // com.cloud.tmc.miniapp.dialog.o0OOO0o
        public void OooO00o(int i11) {
            TmcLogger.d(PermissionScopeBridge.TAG, "onClick postion = " + i11);
            this.OooO00o.sendSuccessResponse(JsonObjectUtils.create().addProperty("click", Integer.valueOf(i11)).addProperty("isClickNotShowAgain", Boolean.valueOf(this.OooO0O0.element)).build());
        }

        @Override // com.cloud.tmc.miniapp.dialog.o0OOO0o
        public void clickNotShowAgagin(boolean z10) {
            TmcLogger.d(PermissionScopeBridge.TAG, "clickNotShowAgagin status = " + z10);
            this.OooO0O0.element = z10;
        }
    }

    @Override // com.cloud.tmc.kernel.extension.BridgeExtension
    public /* synthetic */ void callbackFail(BridgeCallback bridgeCallback, String str, Boolean bool) {
        com.cloud.tmc.kernel.extension.a.a(this, bridgeCallback, str, bool);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x009c A[Catch: all -> 0x003a, TRY_LEAVE, TryCatch #0 {all -> 0x003a, blocks: (B:4:0x0010, B:6:0x0016, B:8:0x001c, B:10:0x0022, B:13:0x003c, B:16:0x0048, B:17:0x005b, B:19:0x0063, B:20:0x0089, B:21:0x009c), top: B:26:0x0010 }] */
    @ActionFilter
    @ThreadType(ExecutorType.NORMAL)
    public final void checkScopePermissionAuthStatus(@BindingNode(App.class) App app, @BindingParam({"scopeName"}) String scopeName, @BindingCallback BridgeCallback callback) {
        Context context;
        Intrinsics.h(scopeName, "scopeName");
        Intrinsics.h(callback, "callback");
        if (app != null) {
            try {
                AppContext appContext = app.getAppContext();
                if (appContext == null || (context = appContext.getContext()) == null) {
                    callback.sendFailResponse();
                } else if (EmptyUtils.textIsEmpty(scopeName)) {
                    JsonObject jsonObject = new JsonObject();
                    jsonObject.addProperty("code", Integer.valueOf(ERROR_CODE_SCOPE_NAME_IS_EMPTY));
                    jsonObject.addProperty("errMsg", ERROR_MSG_SCOPE_NAME_IS_EMPTY);
                    callback.sendFailResponse(jsonObject);
                } else {
                    ConcurrentHashMap<String, ScopeModel> concurrentHashMap = com.cloud.tmc.miniapp.defaultimpl.OooO0O0.OooO0Oo;
                    if (concurrentHashMap.containsKey(scopeName)) {
                        ScopeModel scopeModel = concurrentHashMap.get(scopeName);
                        if (scopeModel != null) {
                            ScopeUtils scopeUtils = ScopeUtils.OooO00o;
                            long validityTime = scopeModel.getValidityTime();
                            String appId = app.getAppId();
                            Intrinsics.g(appId, "app.appId");
                            boolean zOooO00o = scopeUtils.OooO00o(context, scopeName, validityTime, appId);
                            JsonObject jsonObject2 = new JsonObject();
                            jsonObject2.addProperty(TmcConstants.KEY_CHECK_SCOPE_AUTH_RESULT, Boolean.valueOf(zOooO00o));
                            callback.sendSuccessResponse(jsonObject2);
                        } else {
                            JsonObject jsonObject3 = new JsonObject();
                            jsonObject3.addProperty("code", Integer.valueOf(ERROR_CODE_SCOPE_NAME_NOT_FOUND));
                            jsonObject3.addProperty("errMsg", ERROR_MSG_SCOPE_NAME_NOT_FOUND);
                            callback.sendFailResponse(jsonObject3);
                        }
                    } else {
                        JsonObject jsonObject4 = new JsonObject();
                        jsonObject4.addProperty("code", Integer.valueOf(ERROR_CODE_SCOPE_NAME_NOT_FOUND));
                        jsonObject4.addProperty("errMsg", ERROR_MSG_SCOPE_NAME_NOT_FOUND);
                        callback.sendFailResponse(jsonObject4);
                    }
                }
            } catch (Throwable th2) {
                TmcLogger.e(TAG, th2);
                JsonObject jsonObject5 = new JsonObject();
                jsonObject5.addProperty("code", (Number) 500);
                jsonObject5.addProperty("errMsg", th2.getMessage());
                callback.sendFailResponse(jsonObject5);
            }
        } else {
            callback.sendFailResponse();
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public final void getTempUniqueId(@BindingNode(App.class) App app, @BindingCallback BridgeCallback callback) {
        Context context;
        Intrinsics.h(callback, "callback");
        if (app != null) {
            try {
                AppContext appContext = app.getAppContext();
                if (appContext != null) {
                    context = appContext.getContext();
                } else {
                    context = null;
                }
            } catch (Throwable unused) {
                callback.sendFailResponse();
                return;
            }
        } else {
            context = null;
        }
        if (context == null) {
            return;
        }
        String string = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getString(context, app.getAppId(), "tempUniqueId");
        if (string == null || string.length() == 0) {
            string = EncryptUtils.encryptMD5ToString(System.currentTimeMillis() + "_" + app.getAppId());
            ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putString(context, app.getAppId(), "tempUniqueId", string);
        }
        callback.sendSuccessResponse(JsonObjectUtils.create().addProperty("tempUniqueId", string).build());
    }

    @ActionFilter
    @ThreadType(ExecutorType.NORMAL)
    public final void listScope(@BindingCallback BridgeCallback callback) {
        Intrinsics.h(callback, "callback");
        try {
            JsonObject jsonObject = new JsonObject();
            JsonArray jsonArray = new JsonArray();
            Set<Map.Entry<String, ScopeModel>> setEntrySet = com.cloud.tmc.miniapp.defaultimpl.OooO0O0.OooO0Oo.entrySet();
            Intrinsics.g(setEntrySet, "SHOW_SCOPE_MAP.entries");
            Iterator<T> it = setEntrySet.iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                if (entry.getValue() != null) {
                    Object value = entry.getValue();
                    Intrinsics.g(value, "it.value");
                    jsonArray.add(TmcGsonUtilsKt.toJson(value));
                }
            }
            Unit unit = Unit.f67061a;
            jsonObject.addProperty("data", TmcGsonUtilsKt.toJson(jsonArray));
            callback.sendSuccessResponse(jsonObject);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            JsonObject jsonObject2 = new JsonObject();
            jsonObject2.addProperty("code", (Number) 500);
            jsonObject2.addProperty("errMsg", th2.getMessage());
            callback.sendFailResponse(jsonObject2);
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

    /* JADX WARN: Code duplicated, block: B:9:0x001b  */
    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public final void queryAddScreenNotShowAgainStatus(@BindingNode(App.class) App app, @BindingParam({TmcConstants.KEY_MINI_APPID}) String miniappId, @BindingCallback BridgeCallback callback) {
        Context context;
        Intrinsics.h(miniappId, "miniappId");
        Intrinsics.h(callback, "callback");
        if (app != null) {
            try {
                AppContext appContext = app.getAppContext();
                if (appContext != null) {
                    context = appContext.getContext();
                } else {
                    context = null;
                }
            } catch (Throwable th2) {
                TmcLogger.e(TAG, th2);
                callback.sendSuccessResponse(JsonObjectUtils.create().addProperty(CampaignEx.JSON_KEY_TIMESTAMP, (Number) 0L).build());
                return;
            }
        } else {
            context = null;
        }
        if (context == null) {
            callback.sendFailResponse();
        } else {
            callback.sendSuccessResponse(JsonObjectUtils.create().addProperty(CampaignEx.JSON_KEY_TIMESTAMP, Long.valueOf(((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getLong(context, miniappId, TmcConstants.KEY_STORAGE_ADD_HOME_TIME_STAMP))).build());
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public final void queryDynamicScopeConfig(@BindingNode(App.class) App app, @BindingCallback BridgeCallback callback) {
        Intrinsics.h(callback, "callback");
        try {
            callback.sendSuccessResponse(JsonObjectUtils.create().addProperty(LauncherMiniAppConfigHelper.KEY_MINI_SCOPE_CONFIG, MiniAppConfigHelper.INSTANCE.getConfigTargetStr(LauncherMiniAppConfigHelper.KEY_SCOPE_CONFIG, "{}")).build());
        } catch (Throwable unused) {
            callback.sendFailResponse();
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public final void queryEnableDevUserAgreement(@BindingNode(App.class) App app, @BindingCallback BridgeCallback callback) {
        Intrinsics.h(callback, "callback");
        try {
            callback.sendSuccessResponse(JsonObjectUtils.create().addProperty(OfflineConstantsKt.OFFLINE_CONFIG_ENABLE, Boolean.valueOf(MiniAppConfigHelper.INSTANCE.getConfigTargetBool(LauncherMiniAppConfigHelper.KEY_ENABLE_DEV_USER_AGREEMENT, false))).build());
        } catch (Throwable unused) {
            callback.sendFailResponse();
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public final void queryEnableduaWhitlist(@BindingNode(App.class) App app, @BindingCallback BridgeCallback callback) {
        Intrinsics.h(callback, "callback");
        try {
            callback.sendSuccessResponse(JsonObjectUtils.create().addProperty("duaWhitlist", MiniAppConfigHelper.INSTANCE.getConfigTargetStr(LauncherMiniAppConfigHelper.KEY_ENABLE_DUA_WHITLIST, "[]")).build());
        } catch (Throwable unused) {
            callback.sendFailResponse();
        }
    }

    /* JADX WARN: Code duplicated, block: B:9:0x001d  */
    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public final void queryMsgNotShowAgainStatus(@BindingNode(App.class) App app, @BindingParam({TmcConstants.KEY_MINI_APPID}) String miniappId, @BindingCallback BridgeCallback callback) {
        Context context;
        Intrinsics.h(miniappId, "miniappId");
        Intrinsics.h(callback, "callback");
        if (app != null) {
            try {
                AppContext appContext = app.getAppContext();
                if (appContext != null) {
                    context = appContext.getContext();
                } else {
                    context = null;
                }
            } catch (Throwable th2) {
                TmcLogger.e(TAG, th2);
                callback.sendSuccessResponse(JsonObjectUtils.create().addProperty(CampaignEx.JSON_KEY_TIMESTAMP, (Number) 0L).build());
                return;
            }
        } else {
            context = null;
        }
        if (context == null) {
            callback.sendFailResponse();
            return;
        }
        Pair<Boolean, Long> pairOooO00o = ScopeUtils.OooO00o.OooO00o(context, miniappId);
        TmcLogger.d(TAG, "msgStatusPair,-> " + pairOooO00o.getFirst() + "," + pairOooO00o.getSecond());
        callback.sendSuccessResponse(JsonObjectUtils.create().addProperty("notShowAgain", pairOooO00o.getFirst()).addProperty(CampaignEx.JSON_KEY_TIMESTAMP, pairOooO00o.getSecond()).build());
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public final void queryScopeContentConfig(@BindingNode(App.class) App app, @BindingCallback BridgeCallback callback) {
        Intrinsics.h(callback, "callback");
        try {
            JsonObject jsonObject = new JsonObject();
            for (String str : ScopeUtils.OooO0O0) {
                jsonObject.addProperty(str, ScopeUtils.OooO00o.OooO0O0(str, ""));
            }
            callback.sendSuccessResponse(JsonObjectUtils.create().addProperty("scope", TmcGsonUtilsKt.toJson(jsonObject)).build());
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00da A[Catch: all -> 0x00d8, TryCatch #2 {all -> 0x00d8, blocks: (B:29:0x00c3, B:31:0x00c9, B:34:0x00d4, B:37:0x00da, B:40:0x00e5), top: B:129:0x00c3 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:40:0x00e5 A[Catch: all -> 0x00d8, TRY_LEAVE, TryCatch #2 {all -> 0x00d8, blocks: (B:29:0x00c3, B:31:0x00c9, B:34:0x00d4, B:37:0x00da, B:40:0x00e5), top: B:129:0x00c3 }] */
    /* JADX WARN: Code duplicated, block: B:82:0x0180  */
    /* JADX WARN: Code duplicated, block: B:87:0x0194  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v34 */
    /* JADX WARN: Type inference failed for: r0v35 */
    /* JADX WARN: Type inference failed for: r0v61 */
    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public final void showScopePermissionDialog(@BindingNode(App.class) App app, @BindingParam({"logo"}) String logo, @BindingParam({CampaignEx.JSON_KEY_TITLE}) String title, @BindingParam({"titleTips"}) String titleTips, @BindingParam({"scopeName"}) String scopeType, @BindingParam({"customContent"}) String customContent, @BindingParam({"button1"}) JsonObject config, @BindingParam({"button2"}) JsonObject config2, @BindingParam({"button3"}) JsonObject config3, @BindingParam({"notShowAgain"}) JsonObject config4, @BindingCallback BridgeCallback callback) {
        AppModel appModel;
        int i11;
        String str;
        TextView textViewOooO0O0;
        TextView textView;
        TextView textView2;
        AppContext appContext;
        Intrinsics.h(logo, "logo");
        Intrinsics.h(title, "title");
        Intrinsics.h(titleTips, "titleTips");
        Intrinsics.h(scopeType, "scopeName");
        Intrinsics.h(customContent, "customContent");
        Intrinsics.h(config, "button1");
        Intrinsics.h(config2, "button2");
        Intrinsics.h(config3, "button3");
        Intrinsics.h(config4, "notShowAgain");
        Intrinsics.h(callback, "callback");
        Context context = (app == null || (appContext = app.getAppContext()) == null) ? null : appContext.getContext();
        if (context == null || (appModel = app.getAppModel()) == null) {
            return;
        }
        String logo2 = appModel.getLogo();
        String str2 = "";
        String iconUrl = StringExtKt.orDefaultAndCheckEmpty(logo, logo2 == null ? "" : logo2);
        String name = appModel.getName();
        if (name == null) {
            name = "";
        }
        String appName = StringExtKt.orDefaultAndCheckEmpty(title, name);
        Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        o0ooOOo o0ooooo = new o0ooOOo(context);
        Intrinsics.h(iconUrl, "iconUrl");
        try {
            AppCompatImageView appCompatImageView = (AppCompatImageView) o0ooooo.OooO0OO.getValue();
            if (appCompatImageView != null) {
                ImageLoaderProxy imageLoaderProxy = (ImageLoaderProxy) TmcProxy.get(ImageLoaderProxy.class);
                Context context2 = o0ooooo.getContext();
                int iDp2px = SizeUtils.dp2px(4.0f);
                int i12 = R.drawable.drawable_app_icon_place_holder;
                imageLoaderProxy.loadImgRoundCorners(context2, iconUrl, appCompatImageView, iDp2px, i12, i12);
            }
        } catch (Throwable th2) {
            TmcLogger.e(o0ooooo.OooO00o, "setAppLogo", th2);
        }
        Intrinsics.h(scopeType, "scopeType");
        if (customContent != null) {
            try {
                if (customContent.length() > 0) {
                    TextView textView3 = (TextView) o0ooooo.OooO0o.getValue();
                    if (textView3 != null) {
                        textView3.setText(customContent);
                    }
                } else {
                    textView2 = (TextView) o0ooooo.OooO0o.getValue();
                    if (textView2 == null) {
                        textView2.setText(ScopeUtils.OooO00o.OooO00o(scopeType, ""));
                    }
                }
            } catch (Throwable th3) {
                TmcLogger.e(o0ooooo.OooO00o, "setAppName", th3);
            }
        } else {
            textView2 = (TextView) o0ooooo.OooO0o.getValue();
            if (textView2 == null) {
                textView2.setText(ScopeUtils.OooO00o.OooO00o(scopeType, ""));
            }
        }
        Intrinsics.h(config, "config");
        try {
            o0ooooo.OooO00o((TextView) o0ooooo.OooO0oO.getValue(), config);
        } catch (Throwable th4) {
            TmcLogger.e(o0ooooo.OooO00o, "setBtnOne:-> ", th4);
        }
        Intrinsics.h(config2, "config");
        try {
            o0ooooo.OooO00o((TextView) o0ooooo.OooO0oo.getValue(), config2);
        } catch (Throwable th5) {
            TmcLogger.e(o0ooooo.OooO00o, "setBtnTwo:-> ", th5);
        }
        Intrinsics.h(config3, "config");
        try {
            o0ooooo.OooO00o(o0ooooo.OooO0O0(), config3);
        } catch (Throwable th6) {
            TmcLogger.e(o0ooooo.OooO00o, "setBtnThree:-> ", th6);
        }
        if (titleTips != null) {
            try {
                if (titleTips.length() == 0) {
                    TextView textView4 = (TextView) o0ooooo.OooO0o0.getValue();
                    if (textView4 == null) {
                        i11 = 0;
                    } else {
                        try {
                            StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
                            String string = o0ooooo.getString(R.string.mini_permission_dialog_title);
                            if (string == null) {
                                string = "";
                            }
                            Object[] objArr = new Object[1];
                            i11 = 0;
                            try {
                                objArr[0] = " ";
                                str = String.format(string, Arrays.copyOf(objArr, 1));
                                Intrinsics.g(str, "format(format, *args)");
                            } catch (Throwable th7) {
                                th = th7;
                                try {
                                    TmcLogger.e(o0ooooo.OooO00o, th);
                                    str = "";
                                } catch (Throwable th8) {
                                    th = th8;
                                    TmcLogger.e(o0ooooo.OooO00o, "setAppTitleTips", th);
                                    textView = (TextView) o0ooooo.OooO0o0.getValue();
                                    if (textView != null) {
                                        textView.setText(titleTips);
                                    }
                                }
                            }
                        } catch (Throwable th9) {
                            th = th9;
                            i11 = 0;
                        }
                        textView4.setText(str);
                    }
                } else {
                    i11 = 0;
                    textView = (TextView) o0ooooo.OooO0o0.getValue();
                    if (textView != null) {
                        textView.setText(titleTips);
                    }
                }
            } catch (Throwable th10) {
                th = th10;
                i11 = 0;
            }
        } else {
            i11 = 0;
            textView = (TextView) o0ooooo.OooO0o0.getValue();
            if (textView != null) {
                textView.setText(titleTips);
            }
        }
        Intrinsics.h(appName, "appName");
        try {
            TextView textView5 = (TextView) o0ooooo.OooO0Oo.getValue();
            if (textView5 != null) {
                textView5.setText(appName);
            }
        } catch (Throwable th11) {
            TmcLogger.e(o0ooooo.OooO00o, "setAppName", th11);
        }
        Intrinsics.h(config4, "config");
        try {
            JsonElement jsonElement = config4.get(o0ooooo.OooOOO);
            ?? asBoolean = jsonElement != null ? jsonElement.getAsBoolean() : i11;
            Group group = (Group) o0ooooo.OooOO0.getValue();
            if (group != null) {
                if (asBoolean == 0) {
                    i11 = 8;
                }
                group.setVisibility(i11);
            }
            JsonElement jsonElement2 = config4.get(o0ooooo.OooOOOo);
            String asString = jsonElement2 != null ? jsonElement2.getAsString() : null;
            if (asString != null) {
                Intrinsics.g(asString, "config.get(KEY_TEXT)?.asString ?: \"\"");
                str2 = asString;
            }
            if (str2.length() > 0 && (textViewOooO0O0 = o0ooooo.OooO0O0()) != null) {
                textViewOooO0O0.setText(str2);
            }
        } catch (Throwable unused) {
        }
        OooO0O0 callback2 = new OooO0O0(callback, booleanRef);
        Intrinsics.h(callback2, "callback");
        o0ooooo.OooO0O0 = callback2;
        o0ooooo.show();
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public final void userAgreementDialogShow(@BindingNode(App.class) App app, @BindingParam({"titleMode"}) JsonObject config, @BindingParam({"content"}) String content, @BindingParam({"agreementContent"}) String agreementContent, @BindingParam({"privacyPolicyTv"}) String privacyPolicyTv, @BindingParam({"userAgreementTv"}) String userAgreementTv, @BindingParam({"privacyPolicyUrl"}) String privacyPolicyUrl, @BindingParam({"userAgreementUrl"}) String userAgreementUrl, @BindingParam({"btnBgColor"}) String btnBgColor, @BindingParam({"agreeBtn"}) String agreeBtn, @BindingParam({"cancelBtn"}) JsonObject cancelBtn, @BindingCallback(isSticky = true) BridgeCallback callback) {
        JsonElement jsonElement;
        JsonElement jsonElement2;
        Intrinsics.h(config, "titleMode");
        Intrinsics.h(content, "content");
        Intrinsics.h(agreementContent, "agreementContent");
        Intrinsics.h(privacyPolicyTv, "privacyPolicyTv");
        Intrinsics.h(userAgreementTv, "userAgreementTv");
        Intrinsics.h(privacyPolicyUrl, "privacyPolicyUrl");
        Intrinsics.h(userAgreementUrl, "userAgreementUrl");
        Intrinsics.h(btnBgColor, "btnBgColor");
        Intrinsics.h(agreeBtn, "agreeBtn");
        Intrinsics.h(cancelBtn, "cancelBtn");
        Intrinsics.h(callback, "callback");
        TmcLogger.d(TAG, "userAgreementDialogShow titleMode = " + config);
        String appId = app != null ? app.getAppId() : null;
        if (appId == null) {
            TmcLogger.d(TAG, "app is null");
            return;
        }
        AppContext appContext = app.getAppContext();
        Context context = appContext != null ? appContext.getContext() : null;
        if (context == null) {
            TmcLogger.d(TAG, "context is null");
            return;
        }
        ConcurrentHashMap<String, o00oO0o> concurrentHashMap = OooO00o;
        if (concurrentHashMap.containsKey(appId)) {
            TmcLogger.d(TAG, "dialog is exist remove it");
            o00oO0o o00oo0o = concurrentHashMap.get(appId);
            if (o00oo0o != null) {
                o00oo0o.dismiss();
            }
            concurrentHashMap.remove(appId);
        }
        o00oO0o o00oo0o2 = new o00oO0o(context);
        Intrinsics.h(appId, "appId");
        o00oo0o2.OooO0oo = appId;
        AppModel appModel = app.getAppModel();
        String name = appModel != null ? appModel.getName() : null;
        Intrinsics.h(config, "config");
        JsonElement jsonElement3 = config.get(o00oo0o2.OooO);
        String asString = jsonElement3 != null ? jsonElement3.getAsString() : null;
        if (asString == null) {
            asString = "1";
        } else {
            Intrinsics.g(asString, "config.get(KEY_MODE)?.asString ?: \"1\"");
        }
        JsonElement jsonElement4 = config.get(o00oo0o2.OooOO0);
        String asString2 = jsonElement4 != null ? jsonElement4.getAsString() : null;
        if (asString2 == null) {
            asString2 = "";
        } else {
            Intrinsics.g(asString2, "config.get(KEY_TEXT)?.asString ?: \"\"");
        }
        if (asString2.length() > 0) {
            TextView textView = (TextView) o00oo0o2.OooO0OO.getValue();
            if (textView != null) {
                textView.setText(asString2);
            }
        } else {
            TextView textView2 = (TextView) o00oo0o2.OooO0OO.getValue();
            if (textView2 != null) {
                String string = (!Intrinsics.c(asString, o00oo0o2.OooOO0o) && Intrinsics.c(asString, o00oo0o2.OooOOO0)) ? StringUtils.format(o00oo0o2.getString(R.string.mini_dau_title_welcome), name) : o00oo0o2.getString(R.string.mini_dau_title_notice);
                textView2.setText(string);
            }
        }
        if (content == null || content.length() <= 0) {
            TextView textViewOooO0Oo = o00oo0o2.OooO0Oo();
            if (textViewOooO0Oo != null) {
                textViewOooO0Oo.setText(o00oo0o2.getString(R.string.mini_dau_content));
            }
            TextView textViewOooO0Oo2 = o00oo0o2.OooO0Oo();
            if (textViewOooO0Oo2 != null) {
                textViewOooO0Oo2.setMovementMethod(ScrollingMovementMethod.getInstance());
            }
        } else {
            TextView textViewOooO0Oo3 = o00oo0o2.OooO0Oo();
            if (textViewOooO0Oo3 != null) {
                textViewOooO0Oo3.setText(content);
            }
        }
        Intrinsics.h(callback, "callback");
        o00oo0o2.OooO0O0 = callback;
        String name2 = app.getAppModel().getName();
        o00oO0o o00oo0oOooO00o = o00oo0o2.OooO00o(name2 == null ? "" : name2, agreementContent, privacyPolicyTv, userAgreementTv, privacyPolicyUrl, userAgreementUrl, btnBgColor).OooO00o(btnBgColor, agreeBtn);
        String asString3 = (cancelBtn == null || (jsonElement2 = cancelBtn.get(o00oo0oOooO00o.OooOO0)) == null) ? null : jsonElement2.getAsString();
        if (asString3 == null) {
            asString3 = "";
        } else {
            Intrinsics.g(asString3, "config?.get(KEY_TEXT)?.asString ?: \"\"");
        }
        String asString4 = (cancelBtn == null || (jsonElement = cancelBtn.get(o00oo0oOooO00o.OooO)) == null) ? null : jsonElement.getAsString();
        if (asString4 == null) {
            asString4 = "";
        } else {
            Intrinsics.g(asString4, "config?.get(KEY_MODE)?.asString ?: \"\"");
        }
        TextView textView3 = (TextView) o00oo0oOooO00o.OooO0oO.getValue();
        if (textView3 != null) {
            if (asString3.length() <= 0) {
                asString3 = (!Intrinsics.c(asString4, o00oo0oOooO00o.OooOOO) && Intrinsics.c(asString4, o00oo0oOooO00o.OooOOOO)) ? o00oo0oOooO00o.getString(R.string.mini_dau_guest_mode) : o00oo0oOooO00o.getString(R.string.mini_can_open_exit);
            }
            textView3.setText(asString3);
        }
        o00oo0oOooO00o.show();
        try {
            concurrentHashMap.put(appId, o00oo0o2);
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty(NotificationCompat.CATEGORY_STATUS, PushConstants.PUSH_SERVICE_TYPE_SHOW);
            callback.sendSuccessResponse(jsonObject);
        } catch (Throwable unused) {
            callbackFail(callback, "", Boolean.TRUE);
        }
    }
}
