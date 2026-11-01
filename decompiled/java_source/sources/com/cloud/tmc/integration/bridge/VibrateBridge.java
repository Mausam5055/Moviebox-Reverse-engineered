package com.cloud.tmc.integration.bridge;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.annotation.ActionFilter;
import com.cloud.tmc.kernel.annotation.ThreadType;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingParam;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.extension.BridgeExtension;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.security.Permission;
import com.cloud.tmc.miniutils.util.VibrateUtils;
import com.google.gson.JsonObject;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\n\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u001c\u0010\b\u001a\u00020\u00042\b\b\u0001\u0010\t\u001a\u00020\n2\b\b\u0001\u0010\u000b\u001a\u00020\fH\u0007J\u0012\u0010\r\u001a\u00020\u00042\b\b\u0001\u0010\u000b\u001a\u00020\fH\u0007J\u001c\u0010\u000e\u001a\u00020\u00042\b\b\u0001\u0010\u000f\u001a\u00020\u00102\b\b\u0001\u0010\u000b\u001a\u00020\fH\u0007J\u0012\u0010\u0011\u001a\u00020\u00042\b\b\u0001\u0010\u000b\u001a\u00020\fH\u0007¨\u0006\u0013"}, d2 = {"Lcom/cloud/tmc/integration/bridge/VibrateBridge;", "Lcom/cloud/tmc/kernel/extension/BridgeExtension;", "()V", "onFinalized", "", "onInitialized", "permit", "Lcom/cloud/tmc/kernel/security/Permission;", "vibrate", "milliseconds", "", "callback", "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;", "vibrateLong", "vibrateShort", NativeComponentConstants.KEY_COMPONENT_TYPE, "", "vibrationCancel", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class VibrateBridge implements BridgeExtension {
    private static final String TAG = "VibrateBridge";
    private static final long VIBRATION_DURATION = 50;

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
    @ThreadType(ExecutorType.NORMAL)
    public final void vibrate(@BindingParam(name = {"milliseconds"}) long milliseconds, @BindingCallback BridgeCallback callback) {
        Intrinsics.h(callback, "callback");
        try {
            if (milliseconds <= 0) {
                callback.sendFailResponse();
                return;
            }
            if (milliseconds > 1000) {
                milliseconds = 1000;
            }
            VibrateUtils.vibrate(milliseconds);
            callback.sendSuccessResponse();
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            callback.sendFailResponse();
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.NORMAL)
    public final void vibrateLong(@BindingCallback BridgeCallback callback) {
        Intrinsics.h(callback, "callback");
        vibrate(400L, callback);
    }

    @ActionFilter
    @ThreadType(ExecutorType.NORMAL)
    public final void vibrateShort(@BindingParam({NativeComponentConstants.KEY_COMPONENT_TYPE}) String type, @BindingCallback BridgeCallback callback) {
        Intrinsics.h(type, "type");
        Intrinsics.h(callback, "callback");
        try {
            long[] jArr = {0, VIBRATION_DURATION};
            long[] jArr2 = {0, 25, 25};
            long[] jArr3 = {0, 12, 12, 12, 12};
            int iHashCode = type.hashCode();
            if (iHashCode == -1078030475) {
                if (type.equals("medium")) {
                    jArr = jArr2;
                    VibrateUtils.vibrate(jArr, -1);
                    callback.sendSuccessResponse();
                }
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty("errMsg", type + " is not supported: V10001");
                callback.sendFailResponse(jsonObject);
            }
            if (iHashCode == 99152071) {
                if (type.equals("heavy")) {
                    VibrateUtils.vibrate(jArr, -1);
                    callback.sendSuccessResponse();
                }
                JsonObject jsonObject2 = new JsonObject();
                jsonObject2.addProperty("errMsg", type + " is not supported: V10001");
                callback.sendFailResponse(jsonObject2);
            }
            if (iHashCode == 102970646 && type.equals("light")) {
                jArr = jArr3;
                VibrateUtils.vibrate(jArr, -1);
                callback.sendSuccessResponse();
            } else {
                JsonObject jsonObject3 = new JsonObject();
                jsonObject3.addProperty("errMsg", type + " is not supported: V10001");
                callback.sendFailResponse(jsonObject3);
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            callback.sendFailResponse();
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.NORMAL)
    public final void vibrationCancel(@BindingCallback BridgeCallback callback) {
        Intrinsics.h(callback, "callback");
        try {
            VibrateUtils.cancel();
            callback.sendSuccessResponse();
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            callback.sendFailResponse();
        }
    }
}
