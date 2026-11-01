package com.cloud.tmc.integration.bridge;

import android.graphics.Point;
import android.view.View;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.structure.Page;
import com.cloud.tmc.integration.utils.TouchEventUtils;
import com.cloud.tmc.kernel.annotation.ActionFilter;
import com.cloud.tmc.kernel.annotation.ThreadType;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingNode;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingParam;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.extension.BridgeExtension;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.render.IRender;
import com.cloud.tmc.kernel.security.Permission;
import com.cloud.tmc.kernel.utils.TmcGsonUtils;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.reflect.Type;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\n\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J,\u0010\b\u001a\u00020\u00042\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007¨\u0006\u0010"}, d2 = {"Lcom/cloud/tmc/integration/bridge/TouchEventBridge;", "Lcom/cloud/tmc/kernel/extension/BridgeExtension;", "()V", "onFinalized", "", "onInitialized", "permit", "Lcom/cloud/tmc/kernel/security/Permission;", "simulateTouchEvent", "page", "Lcom/cloud/tmc/integration/structure/Page;", "coordinates", "Lcom/google/gson/JsonArray;", "callback", "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class TouchEventBridge implements BridgeExtension {
    private static final String ERROR_MSG_T11001 = "Parameter error: T11001";
    private static final String ERROR_MSG_T11002 = "System view error: T11002";
    private static final String TAG = "TouchEventBridge";

    @Override // com.cloud.tmc.kernel.extension.BridgeExtension
    public /* synthetic */ void callbackFail(BridgeCallback bridgeCallback, String str, Boolean bool) {
        com.cloud.tmc.kernel.extension.a.a(this, bridgeCallback, str, bool);
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

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public final void simulateTouchEvent(@BindingNode(Page.class) Page page, @BindingParam({"coordinates"}) JsonArray coordinates, @BindingCallback BridgeCallback callback) {
        ArrayList arrayList;
        if (page == null || coordinates == null || coordinates.isEmpty()) {
            if (callback != null) {
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty("errMsg", ERROR_MSG_T11001);
                callback.sendFailResponse(jsonObject);
                return;
            }
            return;
        }
        try {
            String string = coordinates.toString();
            Intrinsics.g(string, "coordinates.toString()");
            Type type = new TypeToken<ArrayList<Point>>() { // from class: com.cloud.tmc.integration.bridge.TouchEventBridge$simulateTouchEvent$points$1
            }.getType();
            Intrinsics.g(type, "object : TypeToken<ArrayList<Point>>() {}.type");
            arrayList = (ArrayList) TmcGsonUtils.fromJson(string, type);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "json parse error", th2);
            arrayList = new ArrayList();
        }
        if (arrayList.isEmpty()) {
            TmcLogger.d(TAG, "points is empty");
            if (callback != null) {
                JsonObject jsonObject2 = new JsonObject();
                jsonObject2.addProperty("errMsg", ERROR_MSG_T11001);
                callback.sendFailResponse(jsonObject2);
                return;
            }
            return;
        }
        IRender render = page.getRender();
        View view = render != null ? render.getView() : null;
        if (view != null) {
            TouchEventUtils.simulateTouchEvent(view, arrayList);
            if (callback != null) {
                callback.sendSuccessResponse();
                return;
            }
            return;
        }
        TmcLogger.e(TAG, "system view is null");
        if (callback != null) {
            JsonObject jsonObject3 = new JsonObject();
            jsonObject3.addProperty("errMsg", ERROR_MSG_T11002);
            callback.sendFailResponse(jsonObject3);
        }
    }
}
