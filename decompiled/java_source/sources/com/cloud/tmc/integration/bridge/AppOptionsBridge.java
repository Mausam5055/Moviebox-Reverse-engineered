package com.cloud.tmc.integration.bridge;

import android.content.Context;
import android.os.Bundle;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppContext;
import com.cloud.tmc.integration.structure.Page;
import com.cloud.tmc.integration.utils.JsonObjectUtils;
import com.cloud.tmc.integration.utils.ext.StringExtKt;
import com.cloud.tmc.kernel.annotation.ActionFilter;
import com.cloud.tmc.kernel.annotation.ThreadType;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingNode;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.extension.BridgeExtension;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.security.Permission;
import com.cloud.tmc.kernel.utils.TmcGsonUtils;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.miniutils.util.GsonUtils;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0005¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0001\u0010\u0007\u001a\u00020\bH\u0007J \u0010\t\u001a\u00020\u00042\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0001\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0007J,\u0010\n\u001a\u00020\u00042\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0001\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0007J,\u0010\r\u001a\u00020\u00042\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0001\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0007J,\u0010\u000e\u001a\u00020\u00042\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0001\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0007J\b\u0010\u000f\u001a\u00020\u0004H\u0016J\b\u0010\u0010\u001a\u00020\u0004H\u0016J\n\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016¨\u0006\u0014"}, d2 = {"Lcom/cloud/tmc/integration/bridge/AppOptionsBridge;", "Lcom/cloud/tmc/kernel/extension/BridgeExtension;", "()V", "getEntranceUrl", "", "app", "Lcom/cloud/tmc/integration/structure/App;", "callback", "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;", "getFeedBackAppInfo", "getHostPrivacyEnable", "page", "Lcom/cloud/tmc/integration/structure/Page;", "getLaunchOptions", "getLaunchOptionsSync", "onFinalized", "onInitialized", "permit", "Lcom/cloud/tmc/kernel/security/Permission;", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class AppOptionsBridge implements BridgeExtension {
    private static final String TAG = "AppOptionsBridge";

    @Override // com.cloud.tmc.kernel.extension.BridgeExtension
    public /* synthetic */ void callbackFail(BridgeCallback bridgeCallback, String str, Boolean bool) {
        com.cloud.tmc.kernel.extension.a.a(this, bridgeCallback, str, bool);
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public final void getEntranceUrl(@BindingNode(App.class) App app, @BindingCallback BridgeCallback callback) {
        String string;
        Intrinsics.h(callback, "callback");
        if (app == null) {
            callback.sendFailResponse();
            return;
        }
        Bundle startParams = app.getStartParams();
        Bundle sceneParams = app.getSceneParams();
        JsonObject jsonObject = new JsonObject();
        if (startParams == null || (string = startParams.getString("entranceUrl")) == null) {
            string = sceneParams != null ? sceneParams.getString("entranceUrl") : null;
            if (string == null) {
                string = "";
            }
        }
        jsonObject.addProperty("entranceUrl", string);
        callback.sendSuccessResponse(jsonObject);
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public final void getFeedBackAppInfo(@BindingNode(App.class) App app, @BindingCallback BridgeCallback callback) {
        if (app == null) {
            if (callback != null) {
                callback.sendFailResponse();
                return;
            }
            return;
        }
        Bundle startParams = app.getStartParams();
        String strOrDefault = StringExtKt.orDefault(startParams != null ? startParams.getString(TmcConstants.EXTRA_CURRENT_MINIAPP_ID) : null, "");
        String strOrDefault2 = StringExtKt.orDefault(startParams != null ? startParams.getString(TmcConstants.EXTRA_CURRENT_MINIAPP_VERSION) : null, "");
        JsonObjectUtils.Builder builderCreate = JsonObjectUtils.create();
        Intrinsics.g(builderCreate, "create()");
        builderCreate.addProperty(TmcConstants.EXTRA_CURRENT_MINIAPP_ID, strOrDefault);
        builderCreate.addProperty(TmcConstants.EXTRA_CURRENT_MINIAPP_VERSION, strOrDefault2);
        if (callback != null) {
            callback.sendSuccessResponse(builderCreate.build());
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public final void getHostPrivacyEnable(@BindingNode(App.class) App app, @BindingNode(Page.class) Page page, @BindingCallback BridgeCallback callback) {
        AppContext appContext;
        Context context;
        if (app == null || (appContext = app.getAppContext()) == null || (context = appContext.getContext()) == null) {
            return;
        }
        try {
            Object objFromJson = GsonUtils.fromJson(MiniAppConfigHelper.INSTANCE.getConfigTargetStr(LauncherMiniAppConfigHelper.KEY_PRIVACY_ENABLE_HOSTS, LauncherMiniAppConfigHelper.DEFAULT_PRIVACY_ENABLE_HOSTS), new TypeToken<List<? extends String>>() { // from class: com.cloud.tmc.integration.bridge.AppOptionsBridge$getHostPrivacyEnable$1$type$1
            }.getType());
            Intrinsics.g(objFromJson, "fromJson(privacyEnableHosts, type)");
            JsonObject jsonObject = new JsonObject();
            if (((List) objFromJson).contains(context.getPackageName())) {
                jsonObject.addProperty("privacyEnable", Boolean.TRUE);
            } else {
                jsonObject.addProperty("privacyEnable", Boolean.FALSE);
            }
            if (callback != null) {
                callback.sendSuccessResponse(jsonObject);
                Unit unit = Unit.f67061a;
            }
        } catch (Throwable unused) {
            if (callback != null) {
                callback.sendFailResponse();
                Unit unit2 = Unit.f67061a;
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public final void getLaunchOptions(@BindingNode(App.class) App app, @BindingNode(Page.class) Page page, @BindingCallback BridgeCallback callback) {
        getLaunchOptionsSync(app, page, callback);
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public final void getLaunchOptionsSync(@BindingNode(App.class) App app, @BindingNode(Page.class) Page page, @BindingCallback BridgeCallback callback) {
        String string;
        if (app == null || page == null) {
            if (callback != null) {
                callback.sendFailResponse();
                return;
            }
            return;
        }
        Bundle startParams = app.getStartParams();
        Bundle sceneParams = app.getSceneParams();
        JsonObjectUtils.Builder builderCreate = JsonObjectUtils.create();
        Intrinsics.g(builderCreate, "create()");
        builderCreate.addProperty("query", StringExtKt.orDefault(startParams != null ? startParams.getString("query") : null, ""));
        builderCreate.addProperty("path", page.getPagePath());
        builderCreate.addProperty("scene_id", StringExtKt.orDefault(sceneParams != null ? sceneParams.getString("scene_id") : null, "100000"));
        builderCreate.addProperty("mfah", StringExtKt.orDefault(startParams != null ? startParams.getString("mfah") : null, ""));
        builderCreate.addProperty("massid", StringExtKt.orDefault(sceneParams != null ? sceneParams.getString("massid") : null, ""));
        JsonObjectUtils.Builder builderCreate2 = JsonObjectUtils.create();
        Intrinsics.g(builderCreate2, "create()");
        builderCreate2.addProperty("appId", app.getAppId());
        JsonObjectUtils.Builder builderCreate3 = JsonObjectUtils.create();
        Intrinsics.g(builderCreate3, "create()");
        if (startParams != null) {
            try {
                string = startParams.getString(TmcConstants.EXTRA_DATA);
            } catch (Throwable th2) {
                TmcLogger.e(TAG, th2);
            }
        } else {
            string = null;
        }
        Map mapMapFromJson = TmcGsonUtils.mapFromJson(string);
        if (mapMapFromJson != null) {
            for (Map.Entry entry : mapMapFromJson.entrySet()) {
                builderCreate3.addProperty((String) entry.getKey(), (String) entry.getValue());
            }
        }
        String string2 = startParams != null ? startParams.getString(TmcConstants.EXTRA_USED_PAGE) : null;
        String string3 = startParams != null ? startParams.getString("page") : null;
        if (string3 == null) {
            string3 = "";
        }
        builderCreate3.addProperty("page", StringExtKt.orDefault(string2, string3));
        builderCreate3.addProperty("mode", StringExtKt.orDefault(startParams != null ? startParams.getString("mode") : null, ""));
        builderCreate3.addProperty("query", StringExtKt.orDefault(startParams != null ? startParams.getString("query") : null, ""));
        builderCreate3.addProperty(TmcConstants.EXTRA_OPEN_MC_SCENE, StringExtKt.orDefault(startParams != null ? startParams.getString(TmcConstants.EXTRA_OPEN_MC_SCENE) : null, ""));
        builderCreate2.add(TmcConstants.EXTRA_DATA, builderCreate3.build());
        builderCreate.add(TmcConstants.REFERRER_INFO, builderCreate2.build());
        if (callback != null) {
            callback.sendSuccessResponse(builderCreate.build());
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
