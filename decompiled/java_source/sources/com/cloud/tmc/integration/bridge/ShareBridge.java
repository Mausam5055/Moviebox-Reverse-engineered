package com.cloud.tmc.integration.bridge;

import android.content.Context;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppContext;
import com.cloud.tmc.integration.utils.FileUtil;
import com.cloud.tmc.integration.utils.share.OnShareListener;
import com.cloud.tmc.integration.utils.share.ShareUtils;
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
import com.cloud.tmc.miniutils.constant.PermissionConstants;
import com.cloud.tmc.miniutils.util.PermissionUtils;
import com.google.gson.JsonObject;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0005¢\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0002J\"\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\r2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0002J\b\u0010\u000e\u001a\u00020\u0004H\u0016J\b\u0010\u000f\u001a\u00020\u0004H\u0016J\n\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J4\u0010\u0012\u001a\u00020\u00042\n\b\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u00142\b\b\u0001\u0010\f\u001a\u00020\r2\b\b\u0001\u0010\u0015\u001a\u00020\r2\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\nH\u0007¨\u0006\u0017"}, d2 = {"Lcom/cloud/tmc/integration/bridge/ShareBridge;", "Lcom/cloud/tmc/kernel/extension/BridgeExtension;", "()V", "doShareFile", "", "context", "Landroid/content/Context;", "shareFile", "Ljava/io/File;", "callback", "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;", "doShareText", "shareContent", "", "onFinalized", "onInitialized", "permit", "Lcom/cloud/tmc/kernel/security/Permission;", "systemShare", "app", "Lcom/cloud/tmc/integration/structure/App;", "shareFilePath", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ShareBridge implements BridgeExtension {
    private static final String TAG = "ShareBridge";

    private final void doShareFile(final Context context, final File shareFile, final BridgeCallback callback) {
        PermissionUtils.permissionGroup(PermissionConstants.STORAGE_WRITE).callback(new PermissionUtils.SimpleCallback() { // from class: com.cloud.tmc.integration.bridge.ShareBridge.doShareFile.1
            @Override // com.cloud.tmc.miniutils.util.PermissionUtils.SimpleCallback
            public void onDenied() {
                BridgeCallback bridgeCallback = callback;
                if (bridgeCallback != null) {
                    JsonObject jsonObject = new JsonObject();
                    jsonObject.addProperty("errMsg", "Share File Failed, no write permission : S10002");
                    bridgeCallback.sendFailResponse(jsonObject);
                }
            }

            @Override // com.cloud.tmc.miniutils.util.PermissionUtils.SimpleCallback
            public void onGranted() {
                Context context2 = context;
                File file = shareFile;
                final BridgeCallback bridgeCallback = callback;
                ShareUtils.shareFile(context2, file, (60 & 4) != 0 ? null : null, (60 & 8) != 0 ? null : null, (60 & 16) != 0 ? null : null, (60 & 32) != 0 ? false : false, (60 & 64) == 0 ? new OnShareListener() { // from class: com.cloud.tmc.integration.bridge.ShareBridge$doShareFile$1$onGranted$1
                    @Override // com.cloud.tmc.integration.utils.share.OnShareListener
                    public void onShare(int channel, int status) {
                        if (status == 1) {
                            BridgeCallback bridgeCallback2 = bridgeCallback;
                            if (bridgeCallback2 != null) {
                                bridgeCallback2.sendSuccessResponse();
                                return;
                            }
                            return;
                        }
                        BridgeCallback bridgeCallback3 = bridgeCallback;
                        if (bridgeCallback3 != null) {
                            JsonObject jsonObject = new JsonObject();
                            jsonObject.addProperty("errMsg", "Share Failed: S10004");
                            bridgeCallback3.sendFailResponse(jsonObject);
                        }
                    }
                } : null);
            }
        }).request();
    }

    private final void doShareText(Context context, String shareContent, final BridgeCallback callback) {
        ShareUtils.shareText$default(context, shareContent, null, new OnShareListener() { // from class: com.cloud.tmc.integration.bridge.ShareBridge.doShareText.1
            @Override // com.cloud.tmc.integration.utils.share.OnShareListener
            public void onShare(int channel, int status) {
                if (status == 1) {
                    BridgeCallback bridgeCallback = callback;
                    if (bridgeCallback != null) {
                        bridgeCallback.sendSuccessResponse();
                        return;
                    }
                    return;
                }
                BridgeCallback bridgeCallback2 = callback;
                if (bridgeCallback2 != null) {
                    JsonObject jsonObject = new JsonObject();
                    jsonObject.addProperty("errMsg", "Share Failed: S10004");
                    bridgeCallback2.sendFailResponse(jsonObject);
                }
            }
        }, 4, null);
    }

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
    public final void systemShare(@BindingNode(App.class) App app, @BindingParam({"shareContent"}) String shareContent, @BindingParam({"shareFilePath"}) String shareFilePath, @BindingCallback BridgeCallback callback) {
        AppContext appContext;
        Intrinsics.h(shareContent, "shareContent");
        Intrinsics.h(shareFilePath, "shareFilePath");
        Context context = (app == null || (appContext = app.getAppContext()) == null) ? null : appContext.getContext();
        if (context == null || (shareContent.length() == 0 && shareFilePath.length() == 0)) {
            if (callback != null) {
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty("errMsg", "Parameter error: S10001");
                callback.sendFailResponse(jsonObject);
                return;
            }
            return;
        }
        if (shareFilePath.length() > 0) {
            File file = FileUtil.getFile(app, shareFilePath);
            boolean zAccess = FileUtil.access(file);
            if (file != null && zAccess) {
                doShareFile(context, file, callback);
                return;
            }
        }
        if (shareContent.length() > 0) {
            doShareText(context, shareContent, callback);
        } else if (callback != null) {
            JsonObject jsonObject2 = new JsonObject();
            jsonObject2.addProperty("errMsg", "ShareContent is empty: S10003");
            callback.sendFailResponse(jsonObject2);
        }
    }
}
