package com.cloud.tmc.integration.bridge;

import androidx.core.app.NotificationCompat;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.structure.Page;
import com.cloud.tmc.integration.utils.JsonObjectUtils;
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
import com.google.gson.JsonObject;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u0005¢\u0006\u0002\u0010\u0002JH\u0010\u0003\u001a\u00020\u00042\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0001\u0010\u0007\u001a\u00020\b2\b\b\u0001\u0010\t\u001a\u00020\b2\b\b\u0001\u0010\n\u001a\u00020\b2\b\b\u0001\u0010\u000b\u001a\u00020\b2\n\b\u0001\u0010\f\u001a\u0004\u0018\u00010\rH\u0007J\u0014\u0010\u000e\u001a\u00020\u00042\n\b\u0001\u0010\f\u001a\u0004\u0018\u00010\rH\u0007J\b\u0010\u000f\u001a\u00020\u0004H\u0016J\b\u0010\u0010\u001a\u00020\u0004H\u0016J\n\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016JR\u0010\u0013\u001a\u00020\u00042\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0001\u0010\u0007\u001a\u00020\b2\b\b\u0001\u0010\t\u001a\u00020\b2\b\b\u0001\u0010\n\u001a\u00020\b2\b\b\u0001\u0010\u0014\u001a\u00020\u00152\b\b\u0001\u0010\u0016\u001a\u00020\b2\n\b\u0001\u0010\f\u001a\u0004\u0018\u00010\rH\u0007J4\u0010\u0017\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\u0019\u001a\u00020\u001a2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u001bH\u0002¨\u0006\u001d"}, d2 = {"Lcom/cloud/tmc/integration/bridge/PayBridge;", "Lcom/cloud/tmc/kernel/extension/BridgeExtension;", "()V", "convertUsdToLocal", "", "page", "Lcom/cloud/tmc/integration/structure/Page;", "apiKey", "", "cpId", "orderNum", "data", "callback", "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;", "getPayInfos", "onFinalized", "onInitialized", "permit", "Lcom/cloud/tmc/kernel/security/Permission;", "requestPayment", RewardPlus.AMOUNT, "", "payMode", "unificationFailedCallBack", "errMsg", "isSticky", "", "Lcom/google/gson/JsonObject;", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PayBridge implements BridgeExtension {
    private static final String TAG = "PayBridge";

    private final void unificationFailedCallBack(BridgeCallback callback, String errMsg, boolean isSticky, JsonObject data) {
        if (callback != null) {
            JsonObjectUtils.Builder builderCreate = JsonObjectUtils.create(data);
            if (errMsg == null) {
                errMsg = "Unknown error, Please contact the official: P001";
            }
            callback.sendFailResponse(builderCreate.addProperty("errMsg", errMsg).build());
        }
        if (!isSticky || callback == null) {
            return;
        }
        callback.close();
    }

    static /* synthetic */ void unificationFailedCallBack$default(PayBridge payBridge, BridgeCallback bridgeCallback, String str, boolean z10, JsonObject jsonObject, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            str = null;
        }
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        if ((i11 & 8) != 0) {
            jsonObject = null;
        }
        payBridge.unificationFailedCallBack(bridgeCallback, str, z10, jsonObject);
    }

    @Override // com.cloud.tmc.kernel.extension.BridgeExtension
    public /* synthetic */ void callbackFail(BridgeCallback bridgeCallback, String str, Boolean bool) {
        com.cloud.tmc.kernel.extension.a.a(this, bridgeCallback, str, bool);
    }

    @ActionFilter
    @ThreadType(ExecutorType.NETWORK)
    public final void convertUsdToLocal(@BindingNode(Page.class) Page page, @BindingParam({"apiKey"}) String apiKey, @BindingParam({"cpId"}) String cpId, @BindingParam({"orderNum"}) String orderNum, @BindingParam({"data"}) String data, @BindingCallback BridgeCallback callback) {
        Intrinsics.h(apiKey, "apiKey");
        Intrinsics.h(cpId, "cpId");
        Intrinsics.h(orderNum, "orderNum");
        Intrinsics.h(data, "data");
        unificationFailedCallBack$default(this, callback, null, false, null, 14, null);
    }

    @ActionFilter
    @ThreadType(ExecutorType.NETWORK)
    public final void getPayInfos(@BindingCallback BridgeCallback callback) {
        unificationFailedCallBack$default(this, callback, null, false, null, 14, null);
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
    public final void requestPayment(@BindingNode(Page.class) Page page, @BindingParam({"apiKey"}) String apiKey, @BindingParam({"cpId"}) String cpId, @BindingParam({"orderNum"}) String orderNum, @BindingParam({RewardPlus.AMOUNT}) double amount, @BindingParam({"payMode"}) String payMode, @BindingCallback(isSticky = true) BridgeCallback callback) {
        Intrinsics.h(apiKey, "apiKey");
        Intrinsics.h(cpId, "cpId");
        Intrinsics.h(orderNum, "orderNum");
        Intrinsics.h(payMode, "payMode");
        unificationFailedCallBack$default(this, callback, null, true, JsonObjectUtils.create().addProperty(NotificationCompat.CATEGORY_STATUS, "fail").build(), 2, null);
    }
}
