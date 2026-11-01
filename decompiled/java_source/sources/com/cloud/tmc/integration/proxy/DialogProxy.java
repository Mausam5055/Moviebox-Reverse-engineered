package com.cloud.tmc.integration.proxy;

import android.content.Context;
import com.cloud.tmc.component_api_ps.ipc.constants.MiniAppIpcConfig;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.callback.LocalAuthPermissionCallback;
import com.cloud.tmc.integration.callback.LocalAuthPermissionWithNotShowAgainCallback;
import com.cloud.tmc.kernel.proxy.Proxiable;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J@\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\n\u001a\u0004\u0018\u00010\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\b2\u0006\u0010\f\u001a\u00020\rH&J@\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\b2\u0010\b\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00112\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0011H&J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J8\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\b2\u0006\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u0019H&J4\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0010\b\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00112\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0011H&¨\u0006\u001b"}, d2 = {"Lcom/cloud/tmc/integration/proxy/DialogProxy;", "Lcom/cloud/tmc/kernel/proxy/Proxiable;", "hideLoadingDialog", "", "context", "Landroid/content/Context;", "showAddHomeConfirmDialog", MiniAppIpcConfig.IPC_ADDHOME_APP_NAME, "", "appIconUrl", "appId", "fromLocation", "callback", "Lcom/cloud/tmc/integration/callback/LocalAuthPermissionCallback;", "showCameraPermissionDialog", "dialogToken", "confirm", "Lkotlin/Function0;", "cancel", "showLoadingDialog", "showLocationPermissionDialog", "showPermissionDialog", "scope", "dialogContent", "appTitle", "Lcom/cloud/tmc/integration/callback/LocalAuthPermissionWithNotShowAgainCallback;", "showStoragePermissionDialog", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface DialogProxy extends Proxiable {

    @Metadata(k = 3, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class DefaultImpls {
        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ void showCameraPermissionDialog$default(DialogProxy dialogProxy, Context context, String str, Function0 function0, Function0 function1, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showCameraPermissionDialog");
            }
            if ((i11 & 2) != 0) {
                str = "";
            }
            if ((i11 & 4) != 0) {
                function0 = null;
            }
            if ((i11 & 8) != 0) {
                function1 = null;
            }
            dialogProxy.showCameraPermissionDialog(context, str, function0, function1);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ void showStoragePermissionDialog$default(DialogProxy dialogProxy, Context context, Function0 function0, Function0 function1, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showStoragePermissionDialog");
            }
            if ((i11 & 2) != 0) {
                function0 = null;
            }
            if ((i11 & 4) != 0) {
                function1 = null;
            }
            dialogProxy.showStoragePermissionDialog(context, function0, function1);
        }
    }

    void hideLoadingDialog(Context context);

    void showAddHomeConfirmDialog(Context context, String appName, String appIconUrl, String appId, String fromLocation, LocalAuthPermissionCallback callback);

    void showCameraPermissionDialog(Context context, String dialogToken, Function0<Unit> confirm, Function0<Unit> cancel);

    void showLoadingDialog(Context context);

    void showLocationPermissionDialog(Context context);

    void showPermissionDialog(Context context, String scope, String dialogContent, String appTitle, String appIconUrl, LocalAuthPermissionWithNotShowAgainCallback callback);

    void showStoragePermissionDialog(Context context, Function0<Unit> confirm, Function0<Unit> cancel);
}
