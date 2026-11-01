package com.cloud.tmc.miniapp.bridge;

import android.content.Context;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.integration.model.AlertBeforeUnloadCache;
import com.cloud.tmc.integration.proxy.ToastProxy;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppContext;
import com.cloud.tmc.integration.structure.Page;
import com.cloud.tmc.integration.utils.AddHomeToScreenUtils;
import com.cloud.tmc.integration.utils.FileUtil;
import com.cloud.tmc.integration.utils.ext.StringExtKt;
import com.cloud.tmc.kernel.annotation.ActionFilter;
import com.cloud.tmc.kernel.annotation.ThreadType;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingNode;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingParam;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.extension.BridgeExtension;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.security.Permission;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniapp.ui.MiniAppActivity;
import com.cloud.tmc.miniapp.utils.toast.ToastUtils;
import com.cloud.tmc.miniapp.utils.toast.config.ToastType;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.io.File;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension
public final class ShowToastBridge implements BridgeExtension {
    public static final OooO00o Companion = new OooO00o();

    public static final class OooO extends Lambda implements Function0<Unit> {
        public final /* synthetic */ BridgeCallback OooO00o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OooO(BridgeCallback bridgeCallback) {
            super(0);
            this.OooO00o = bridgeCallback;
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            BridgeCallback bridgeCallback = this.OooO00o;
            if (bridgeCallback != null) {
                bridgeCallback.sendSuccessResponse();
            }
            return Unit.f67061a;
        }
    }

    public static final class OooO00o {
    }

    public static final class OooO0O0 extends Lambda implements Function0<Unit> {
        public final /* synthetic */ BridgeCallback OooO00o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OooO0O0(BridgeCallback bridgeCallback) {
            super(0);
            this.OooO00o = bridgeCallback;
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            BridgeCallback bridgeCallback = this.OooO00o;
            if (bridgeCallback != null) {
                bridgeCallback.sendSuccessResponse();
            }
            return Unit.f67061a;
        }
    }

    public static final class OooO0OO extends Lambda implements Function0<Unit> {
        public final /* synthetic */ BridgeCallback OooO00o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OooO0OO(BridgeCallback bridgeCallback) {
            super(0);
            this.OooO00o = bridgeCallback;
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            BridgeCallback bridgeCallback = this.OooO00o;
            if (bridgeCallback != null) {
                bridgeCallback.sendSuccessResponse();
            }
            return Unit.f67061a;
        }
    }

    public static final class OooO0o extends Lambda implements Function0<Unit> {
        public final /* synthetic */ BridgeCallback OooO00o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OooO0o(BridgeCallback bridgeCallback) {
            super(0);
            this.OooO00o = bridgeCallback;
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            BridgeCallback bridgeCallback = this.OooO00o;
            if (bridgeCallback != null) {
                bridgeCallback.sendSuccessResponse();
            }
            return Unit.f67061a;
        }
    }

    @Override // com.cloud.tmc.kernel.extension.BridgeExtension
    public /* synthetic */ void callbackFail(BridgeCallback bridgeCallback, String str, Boolean bool) {
        com.cloud.tmc.kernel.extension.a.a(this, bridgeCallback, str, bool);
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public final void disableAlertBeforeUnload(@BindingNode(App.class) App app, @BindingNode(Page.class) Page page, @BindingCallback BridgeCallback callback) {
        Intrinsics.h(callback, "callback");
        if (app == null || page == null || Intrinsics.c(app.getFirstPage(), page) || page.isTabPage()) {
            callback.sendFailResponse();
            return;
        }
        AlertBeforeUnloadCache alertBeforeUnloadCache = (AlertBeforeUnloadCache) page.getData(AlertBeforeUnloadCache.class);
        if (alertBeforeUnloadCache == null) {
            callback.sendSuccessResponse();
        } else {
            alertBeforeUnloadCache.setEnabled(false);
            callback.sendSuccessResponse();
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public final void enableAlertBeforeUnload(@BindingParam({"message"}) String message, @BindingNode(App.class) App app, @BindingNode(Page.class) Page page, @BindingCallback BridgeCallback callback) {
        Intrinsics.h(message, "message");
        Intrinsics.h(callback, "callback");
        if (app == null || page == null || Intrinsics.c(app.getFirstPage(), page) || page.isTabPage() || message.length() == 0) {
            callback.sendFailResponse();
        } else {
            page.setData(AlertBeforeUnloadCache.class, new AlertBeforeUnloadCache(true, message));
            callback.sendSuccessResponse();
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public final void hideLoading(@BindingParam(name = {"noConflict"}) boolean z10, @BindingCallback BridgeCallback bridgeCallback) {
        if (z10) {
            ToastUtils.cancel();
        } else {
            ToastUtils.hideLoading();
        }
        if (bridgeCallback != null) {
            bridgeCallback.sendSuccessResponse();
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public final void hideToast(@BindingParam(name = {"noConflict"}) boolean z10, @BindingCallback BridgeCallback bridgeCallback) {
        if (z10) {
            ToastUtils.cancel();
        } else {
            ToastUtils.hideToast();
        }
        if (bridgeCallback != null) {
            bridgeCallback.sendSuccessResponse();
        }
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onFinalized() {
        TmcLogger.d("showToast", "onFinalized");
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onInitialized() {
        TmcLogger.d("showToast", "onInitialized");
    }

    @Override // com.cloud.tmc.kernel.security.Guard
    public Permission permit() {
        return null;
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public final void showActionSheet(@BindingParam(name = {"itemList", "actions"}) JsonArray jsonArray, @BindingParam(name = {"itemColor"}, stringDefault = "#191F2B") String itemColor, @BindingParam(name = {NativeComponentConstants.KEY_COMPONENT_TYPE}, stringDefault = MimeTypes.BASE_TYPE_TEXT) String type, @BindingParam(name = {CampaignEx.JSON_KEY_TITLE}) String str, @BindingParam(name = {"alertText", "content"}) String str2, @BindingParam(booleanDefault = true, name = {"showCancel"}) boolean z10, @BindingParam(name = {"cancelText"}, stringDefault = "Cancel") String cancelText, @BindingParam(name = {"cancelColor"}, stringDefault = "#191F2B") String cancelColor, @BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
        AppContext appContext;
        Intrinsics.h(itemColor, "itemColor");
        Intrinsics.h(type, "type");
        Intrinsics.h(cancelText, "cancelText");
        Intrinsics.h(cancelColor, "cancelColor");
        Context context = (app == null || (appContext = app.getAppContext()) == null) ? null : appContext.getContext();
        String appId = app != null ? app.getAppId() : null;
        if (context == null || appId == null || appId.length() == 0 || jsonArray == null) {
            if (bridgeCallback != null) {
                com.cloud.tmc.miniapp.bridge.OooO00o.OooO00o("errMsg", "Parameter error: AS10001", bridgeCallback);
            }
        } else {
            if (Intrinsics.c(type, MimeTypes.BASE_TYPE_TEXT) || Intrinsics.c(type, RewardPlus.ICON)) {
                ((ToastProxy) TmcProxy.get(ToastProxy.class)).showActionSheet(jsonArray, type, str, str2, itemColor, z10, cancelText, cancelColor, context, appId, bridgeCallback);
                return;
            }
            if (bridgeCallback != null) {
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty("errMsg", type + " is not supported: AS10002");
                bridgeCallback.sendFailResponse(jsonObject);
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public final void showAddHomeTipsToast(@BindingNode(App.class) App app, @BindingParam({"showType"}) int i11, @BindingParam({"showDelayTime"}) long j11, @BindingParam({"closeDelayTime"}) long j12, @BindingParam({"message"}) String message, @BindingParam({"iconUrl"}) String iconUrl, @BindingCallback BridgeCallback callback) {
        AppContext appContext;
        Intrinsics.h(message, "message");
        Intrinsics.h(iconUrl, "iconUrl");
        Intrinsics.h(callback, "callback");
        try {
            if (!CollectionsKt.o(1, 2).contains(Integer.valueOf(i11))) {
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty("errMsg", i11 + " is not supported: AS10002");
                callback.sendFailResponse(jsonObject);
                return;
            }
            if (AddHomeToScreenUtils.INSTANCE.checkAddhomeShowStatus(81, app)) {
                return;
            }
            Context context = null;
            if (PermissionScopeBridge.Companion.OooO00o(app != null ? app.getAppId() : null)) {
                TmcLogger.d("showToast", "dev dialog is showing, return");
                return;
            }
            if (app != null && (appContext = app.getAppContext()) != null) {
                context = appContext.getContext();
            }
            if (!(context instanceof MiniAppActivity)) {
                callback.sendFailResponse();
            } else {
                ((MiniAppActivity) context).checkAndShowAddHomeCustomToast(i11, j11, j12, message, iconUrl);
                callback.sendSuccessResponse();
            }
        } catch (Throwable th2) {
            TmcLogger.e("showToast", th2);
            callback.sendFailResponse();
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public final void showLoading(@BindingParam(name = {CampaignEx.JSON_KEY_TITLE}) String msg, @BindingParam(intDefault = 1, name = {"duration"}) int i11, @BindingParam(booleanDefault = true, name = {"mask"}) boolean z10, @BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
        Context context;
        Intrinsics.h(msg, "msg");
        if (app == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
            }
        } else {
            if (msg.length() == 0) {
                AppContext appContext = app.getAppContext();
                msg = (appContext == null || (context = appContext.getContext()) == null) ? null : context.getString(R.string.dialog_loading_tv);
            }
            showToast(StringExtKt.orDefault(msg, ""), ToastType.LOADING.INSTANCE.getName(), null, i11, z10, app, bridgeCallback);
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public final void showModal(@BindingParam(name = {CampaignEx.JSON_KEY_TITLE}) String str, @BindingParam(name = {"content"}) String str2, @BindingParam(name = {"showCancel"}) boolean z10, @BindingParam(name = {"editable"}) boolean z11, @BindingParam(name = {"placeholderText"}) String str3, @BindingParam(name = {"cancelText"}) String str4, @BindingParam(name = {"cancelColor"}) String str5, @BindingParam(name = {"confirmText"}) String str6, @BindingParam(name = {"confirmColor"}) String str7, @BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
        AppContext appContext;
        Context context = (app == null || (appContext = app.getAppContext()) == null) ? null : appContext.getContext();
        if (context != null) {
            ((ToastProxy) TmcProxy.get(ToastProxy.class)).showModal(str, str2, z10, z11, str3, str4, str5, str6, str7, context, bridgeCallback);
        } else if (bridgeCallback != null) {
            bridgeCallback.sendFailResponse();
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public final void showToast(@BindingParam(name = {NotificationCompat.CATEGORY_MESSAGE, CampaignEx.JSON_KEY_TITLE}) String msg, @BindingParam(name = {RewardPlus.ICON}, stringDefault = "none") String icon, @BindingParam(name = {"image"}) String str, @BindingParam(intDefault = 1500, name = {"duration"}) int i11, @BindingParam(name = {"mask"}) boolean z10, @BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
        int i12 = i11;
        Intrinsics.h(msg, "msg");
        Intrinsics.h(icon, "icon");
        if (app == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        if (i12 == 1) {
            i12 = 1;
        } else if (i12 == 0 || i12 > 60000 || i12 < 1000) {
            i12 = 0;
        }
        File file = (str == null || str.length() == 0) ? null : FileUtil.getFile(app, str);
        ToastType.SUCCESS success = ToastType.SUCCESS.INSTANCE;
        if (Intrinsics.c(icon, success.getName())) {
            ToastUtils.showLoading$default(msg, success, i12, 0L, z10, file, new OooO0O0(bridgeCallback), 8, null);
            return;
        }
        ToastType.ERROR error = ToastType.ERROR.INSTANCE;
        if (Intrinsics.c(icon, error.getName())) {
            ToastUtils.showLoading$default(msg, error, i12, 0L, z10, file, new OooO0OO(bridgeCallback), 8, null);
            return;
        }
        ToastType.LOADING loading = ToastType.LOADING.INSTANCE;
        if (Intrinsics.c(icon, loading.getName())) {
            ToastUtils.showLoading$default(msg, loading, i12, 0L, z10, file, new OooO0o(bridgeCallback), 8, null);
        } else if (Intrinsics.c(icon, ToastType.NONE.INSTANCE.getName())) {
            ToastUtils.showToast$default(msg, i12, 0L, z10, new OooO(bridgeCallback), 4, null);
        } else if (bridgeCallback != null) {
            bridgeCallback.sendFailResponse();
        }
    }
}
