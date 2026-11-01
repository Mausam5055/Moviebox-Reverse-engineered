package com.cloud.tmc.integration.broadcast;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.R;
import com.cloud.tmc.integration.model.AddToHomeScreenStore;
import com.cloud.tmc.integration.model.MiniAddHomeModel;
import com.cloud.tmc.integration.proxy.ToastProxy;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppManager;
import com.cloud.tmc.integration.utils.CreateShortCutUtils;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.google.gson.JsonObject;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\r"}, d2 = {"Lcom/cloud/tmc/integration/broadcast/ShortCutBroadcast;", "Landroid/content/BroadcastReceiver;", "()V", "TAG", "", "getTAG", "()Ljava/lang/String;", "onReceive", "", "context", "Landroid/content/Context;", "intent", "Landroid/content/Intent;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ShortCutBroadcast extends BroadcastReceiver {
    private final String TAG = "ShortCutBroadcast";

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onReceive$lambda$4(Context context, String str, boolean z10, ShortCutBroadcast this$0, int i11, String extraAddHomeLocation) {
        Boolean boolValueOf;
        AddToHomeScreenStore addToHomeScreenStore;
        HashMap<String, BridgeCallback> store;
        BridgeCallback bridgeCallbackRemove;
        Resources resources;
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(extraAddHomeLocation, "$extraAddHomeLocation");
        String string = null;
        if (context != null) {
            try {
                boolValueOf = Boolean.valueOf(((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getBoolean(context, TmcConstants.KEY_STORAGE_ADD_HOME, "addHomeStatus_" + str, false));
            } catch (Throwable th2) {
                TmcLogger.e(this$0.TAG, th2);
                return;
            }
        } else {
            boolValueOf = null;
        }
        PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
        Bundle bundle = new Bundle();
        bundle.putString(RequestParameters.SUBRESOURCE_LOCATION, extraAddHomeLocation);
        Boolean bool = Boolean.TRUE;
        bundle.putString("old_state", Intrinsics.c(boolValueOf, bool) ? "0" : "1");
        Unit unit = Unit.f67061a;
        performanceAnalyseProxy.recordForCommon(str, "add_succ", bundle);
        if (context != null) {
            ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putBoolean(context, TmcConstants.KEY_STORAGE_ADD_HOME, "addHomeStatus_" + str, true);
        }
        if (z10) {
            ToastProxy toastProxy = (ToastProxy) TmcProxy.get(ToastProxy.class);
            if (context != null && (resources = context.getResources()) != null) {
                string = resources.getString(R.string.smallapp_create_success);
            }
            toastProxy.toast(string);
        }
        TmcLogger.d(this$0.TAG, "检查 addHomeToScreen 设置桌面快捷方式 callback");
        CreateShortCutUtils createShortCutUtils = CreateShortCutUtils.INSTANCE;
        App app = createShortCutUtils.getAppMap().get(str);
        if (app != null && (addToHomeScreenStore = (AddToHomeScreenStore) app.getData(AddToHomeScreenStore.class)) != null && (store = addToHomeScreenStore.getStore()) != null && (bridgeCallbackRemove = store.remove(str)) != null) {
            JsonObject jsonObject = new JsonObject();
            TmcLogger.d(this$0.TAG, "发送 addHomeToScreen callback received");
            jsonObject.addProperty(TmcConstants.KEY_STORAGE_ADD_HOME_IS_EXIST, bool);
            bridgeCallbackRemove.sendSuccessResponse(jsonObject);
        }
        if (i11 == 1) {
            App app2 = createShortCutUtils.getAppMap().get(str);
            if (app2 != null) {
                app2.backPressed();
                return;
            }
            return;
        }
        if (i11 == 2) {
            App app3 = createShortCutUtils.getAppMap().get(str);
            if (app3 != null) {
                app3.exit();
                return;
            }
            return;
        }
        try {
            App appFindApp = ((AppManager) TmcProxy.get(AppManager.class)).findApp(str);
            if (appFindApp != null) {
                appFindApp.hideMiniAppAddHomeBar();
            }
        } catch (Throwable th3) {
            TmcLogger.e(this$0.TAG, "onReceive error: ", th3);
        }
    }

    public final String getTAG() {
        return this.TAG;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(final Context context, Intent intent) {
        String stringExtra;
        String location;
        if (intent != null) {
            try {
                stringExtra = intent.getStringExtra(TmcConstants.EXTRA_APP_ID);
            } catch (Throwable th2) {
                TmcLogger.e(this.TAG, "onReceive error: ", th2);
                return;
            }
        } else {
            stringExtra = null;
        }
        final String str = stringExtra;
        if (str != null && str.length() != 0) {
            MiniAddHomeModel miniAddHomeModel = CreateShortCutUtils.INSTANCE.getAddHomeData().get(str);
            final int sourceType = miniAddHomeModel != null ? miniAddHomeModel.getSourceType() : -1;
            if (miniAddHomeModel == null || (location = miniAddHomeModel.getLocation()) == null) {
                location = "";
            }
            final String str2 = location;
            final boolean showSuccessToast = miniAddHomeModel != null ? miniAddHomeModel.getShowSuccessToast() : true;
            TmcLogger.d(this.TAG, "appId -> " + str);
            TmcLogger.d(this.TAG, "exteaAddHomeType:->" + sourceType);
            TmcLogger.d(this.TAG, "showSuccessToast:->" + showSuccessToast);
            TmcLogger.d(this.TAG, "extraAddHomeLocation:->" + str2);
            ExecutorUtils.runOnMain(new Runnable() { // from class: com.cloud.tmc.integration.broadcast.a
                @Override // java.lang.Runnable
                public final void run() {
                    ShortCutBroadcast.onReceive$lambda$4(context, str, showSuccessToast, this, sourceType, str2);
                }
            });
            return;
        }
        TmcLogger.d(this.TAG, "appid is null");
    }
}
