package com.cloud.tmc.miniapp.bridge;

import android.content.Context;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.component_api_ps.ipc.constants.MiniAppIpcConfig;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppContext;
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
import com.cloud.tmc.miniapp.utils.ScopeUtils;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class NotifyMessageBridge implements BridgeExtension {
    public final String OooO00o = "NotifyMessageBridge";

    @Override // com.cloud.tmc.kernel.extension.BridgeExtension
    public /* synthetic */ void callbackFail(BridgeCallback bridgeCallback, String str, Boolean bool) {
        com.cloud.tmc.kernel.extension.a.a(this, bridgeCallback, str, bool);
    }

    public final String getTAG() {
        return this.OooO00o;
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
    public final void updateMessageScopeStatus(@BindingNode(App.class) App app, @BindingParam({"appId"}) String appId, @BindingParam({MiniAppIpcConfig.IPC_ADDHOME_APP_NAME}) String appName, @BindingParam({"appLogo"}) String appLogo, @BindingParam({NotificationCompat.CATEGORY_STATUS}) boolean z10, @BindingCallback BridgeCallback callback) {
        Unit unit;
        Context context;
        Intrinsics.h(app, "app");
        Intrinsics.h(appId, "appId");
        Intrinsics.h(appName, "appName");
        Intrinsics.h(appLogo, "appLogo");
        Intrinsics.h(callback, "callback");
        AppContext appContext = app.getAppContext();
        if (appContext == null || (context = appContext.getContext()) == null) {
            unit = null;
        } else {
            TmcLogger.d(this.OooO00o, "updateMessageScopeStatus:appId->" + appId + ",status->" + z10);
            ScopeUtils.OooO00o.OooO00o(context, "notifyMessage", appId, z10, appName, appLogo, false, true);
            callback.sendSuccessResponse();
            unit = Unit.f67061a;
        }
        if (unit == null) {
            callback.sendFailResponse();
        }
    }

    @ActionFilter("")
    @ThreadType(ExecutorType.IO)
    public final void updateNotifyMessageStatus(@BindingNode(App.class) App app, @BindingParam({NotificationCompat.CATEGORY_STATUS}) boolean z10, @BindingCallback BridgeCallback callback) {
        Unit unit;
        Context context;
        Intrinsics.h(app, "app");
        Intrinsics.h(callback, "callback");
        try {
            AppContext appContext = app.getAppContext();
            if (appContext == null || (context = appContext.getContext()) == null) {
                unit = null;
            } else {
                TmcLogger.d(this.OooO00o, "updateNotifyMessageStatus:->" + z10);
                Intrinsics.h(context, "context");
                ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putBoolean(context, TmcConstants.KEY_MSG_ID, TmcConstants.KEY_MINI_NEW_MESSAGE_STATUS, z10);
                if (!z10) {
                    Intrinsics.h(context, "context");
                    Intrinsics.h("", "msgStr");
                    try {
                        ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putString(context, "miniMsgProvider", "miniLatestUnreadMsg", "");
                        ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putBoolean(context, TmcConstants.KEY_MSG_ID, TmcConstants.KEY_MINI_NEW_MESSAGE_STATUS, !Intrinsics.c("", ""));
                    } catch (Throwable th2) {
                        TmcLogger.e("MiniappMsgDataProvider", th2);
                    }
                }
                callback.sendSuccessResponse();
                unit = Unit.f67061a;
            }
            if (unit == null) {
                callback.sendFailResponse();
            }
        } catch (Throwable th3) {
            TmcLogger.e(this.OooO00o, th3);
        }
    }
}
