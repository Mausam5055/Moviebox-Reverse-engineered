package com.cloud.tmc.integration.internalBridge;

import android.text.TextUtils;
import com.cloud.tmc.integration.bridge.NativeRequestBridge;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppLoadResult;
import com.cloud.tmc.integration.structure.Page;
import com.cloud.tmc.kernel.annotation.ActionFilter;
import com.cloud.tmc.kernel.annotation.ThreadType;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingNode;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingParam;
import com.cloud.tmc.kernel.engine.IEngine;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.extension.BridgeExtension;
import com.cloud.tmc.kernel.extension.a;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.offline.IOfflineManagerProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PointAnalyseType;
import com.cloud.tmc.kernel.resource.IPackageResourceManager;
import com.cloud.tmc.kernel.security.Permission;
import com.cloud.tmc.kernel.worker.JSI;
import com.cloud.tmc.worker.utils.FileIOUtils;
import com.google.gson.JsonObject;
import java.io.File;

/* JADX INFO: loaded from: classes3.dex */
public class GetPackageFileBridge implements BridgeExtension {
    private static final String TAG = "GetPackageFileBridge";

    @Override // com.cloud.tmc.kernel.extension.BridgeExtension
    public /* synthetic */ void callbackFail(BridgeCallback bridgeCallback, String str, Boolean bool) {
        a.a(this, bridgeCallback, str, bool);
    }

    @ActionFilter
    @ThreadType(ExecutorType.NORMAL)
    public void getCommonResPackageFile(@BindingParam(name = {NativeRequestBridge.KEY_FILE_PATH}) String str, @BindingCallback BridgeCallback bridgeCallback, @BindingNode(Page.class) Page page, @BindingNode(App.class) App app) {
        try {
            getPackageFile(str, app.getAppModel().getTemplateMiniappId(), bridgeCallback, page, app);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.NORMAL)
    public void getPackageFile(@BindingParam(name = {NativeRequestBridge.KEY_FILE_PATH}) String str, @BindingParam(name = {"appId"}) String str2, @BindingCallback BridgeCallback bridgeCallback, @BindingNode(Page.class) Page page, @BindingNode(App.class) App app) {
        String file2String;
        File offlineResources;
        if (app == null || app.getAppContext().getContext() == null) {
            return;
        }
        if (((AppLoadResult) app.getData(AppLoadResult.class)) == null) {
            bridgeCallback.sendFailResponse();
            return;
        }
        try {
            String str3 = "0";
            if (TextUtils.isEmpty(str2)) {
                str2 = app.getAppId();
            }
            String filePath = ((IPackageResourceManager) TmcProxy.get(IPackageResourceManager.class)).getFilePath(str2, ((IPackageResourceManager) TmcProxy.get(IPackageResourceManager.class)).getVhost(str2) + str);
            if (TextUtils.isEmpty(filePath) && (offlineResources = ((IOfflineManagerProxy) TmcProxy.get(IOfflineManagerProxy.class)).getOfflineResources(str2, str)) != null && offlineResources.exists() && offlineResources.isFile()) {
                filePath = offlineResources.getAbsolutePath();
                str3 = "1";
            }
            if (TextUtils.isEmpty(filePath)) {
                file2String = "";
            } else {
                File file = new File(filePath);
                if (!file.exists() || !file.isFile()) {
                    TmcLogger.e(TAG, "Miniapp Start Error! file not exist or not a file");
                    JsonObject jsonObject = new JsonObject();
                    jsonObject.addProperty("errMsg", "Miniapp Start Error! file not exist or not a file");
                    bridgeCallback.sendFailResponse(jsonObject);
                    return;
                }
                file2String = FileIOUtils.readFile2String(file);
            }
            JsonObject jsonObject2 = new JsonObject();
            jsonObject2.addProperty("content", file2String);
            bridgeCallback.sendSuccessResponse(jsonObject2);
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(app.getAppId(), PointAnalyseType.POINT_GET_PACKAGE_FILE.putData("gpf_appId", str2).putData("gpf_filePath", str).putData("gpf_source", str3), "");
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            bridgeCallback.sendFailResponse();
        }
        IEngine engineProxy = app.getEngineProxy();
        if (engineProxy != null) {
            JSI workerById = engineProxy.getEngineRouter().getWorkerById(engineProxy.getWorkerId());
            if (workerById != null) {
                workerById.getFirstPackageFileSuccess(app.getAppId());
            }
        }
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
