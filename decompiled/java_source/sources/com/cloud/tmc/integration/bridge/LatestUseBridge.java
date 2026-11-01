package com.cloud.tmc.integration.bridge;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.model.AppStoreInfo;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.utils.LatestUseUtils;
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
import com.cloud.tmc.miniutils.util.GsonUtils;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u0005¢\u0006\u0002\u0010\u0002J,\u0010\u0003\u001a\u00020\u00042\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0001\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\nH\u0007J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0002J'\u0010\u000f\u001a\u00020\u000e2\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u00112\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0002¢\u0006\u0002\u0010\u0015J1\u0010\u0016\u001a\u00020\u00042\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\nH\u0007¢\u0006\u0002\u0010\u0017J\b\u0010\u0018\u001a\u00020\u0004H\u0016J\b\u0010\u0019\u001a\u00020\u0004H\u0016J\n\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016¨\u0006\u001d"}, d2 = {"Lcom/cloud/tmc/integration/bridge/LatestUseBridge;", "Lcom/cloud/tmc/kernel/extension/BridgeExtension;", "()V", "deleteLatestUseApp", "", "app", "Lcom/cloud/tmc/integration/structure/App;", "appId", "", "callback", "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;", "getJsonObject", "Lcom/google/gson/JsonObject;", "array", "Lcom/google/gson/JsonArray;", "getLatestUseAppList", "latestUseApps", "", "Lcom/cloud/tmc/integration/model/AppStoreInfo;", "total", "", "(Ljava/util/List;Ljava/lang/Integer;)Lcom/google/gson/JsonArray;", "getLatestUseApps", "(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/Integer;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V", "onFinalized", "onInitialized", "permit", "Lcom/cloud/tmc/kernel/security/Permission;", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class LatestUseBridge implements BridgeExtension {
    public static final String TAG = "LatestUseBridge";

    private final JsonObject getJsonObject(JsonArray array) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.add("data", array);
        return jsonObject;
    }

    private final JsonArray getLatestUseAppList(List<AppStoreInfo> latestUseApps, Integer total) {
        JsonArray jsonArray = new JsonArray();
        if (latestUseApps == null) {
            return jsonArray;
        }
        try {
            latestUseApps.size();
            if (total != null && total.intValue() != -1) {
                Math.min(total.intValue(), latestUseApps.size());
            }
            Iterator<AppStoreInfo> it = latestUseApps.iterator();
            while (it.hasNext()) {
                JsonElement string = JsonParser.parseString(GsonUtils.toJson(it.next()));
                Intrinsics.f(string, "null cannot be cast to non-null type com.google.gson.JsonObject");
                jsonArray.add((JsonObject) string);
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
        return jsonArray;
    }

    @Override // com.cloud.tmc.kernel.extension.BridgeExtension
    public /* synthetic */ void callbackFail(BridgeCallback bridgeCallback, String str, Boolean bool) {
        com.cloud.tmc.kernel.extension.a.a(this, bridgeCallback, str, bool);
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public final void deleteLatestUseApp(@BindingNode(App.class) App app, @BindingParam({"appId"}) String appId, @BindingCallback BridgeCallback callback) {
        if (app == null) {
            if (callback != null) {
                callback.sendFailResponse();
            }
        } else if (appId == null || appId.length() == 0) {
            if (callback != null) {
                callback.sendFailResponse();
            }
        } else {
            LatestUseUtils.deleteAppUse(appId);
            if (callback != null) {
                callback.sendSuccessResponse();
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public final void getLatestUseApps(@BindingNode(App.class) App app, @BindingParam({"total"}) Integer total, @BindingCallback BridgeCallback callback) {
        if (app == null) {
            if (callback != null) {
                callback.sendFailResponse();
                return;
            }
            return;
        }
        JsonArray latestUseAppList = getLatestUseAppList(LatestUseUtils.getLatestUseApps(), total);
        if (callback != null) {
            callback.sendSuccessResponse(getJsonObject(latestUseAppList));
        }
        TmcLogger.d(TAG, "getLatestUseApps = " + latestUseAppList + ", total =" + total);
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
}
