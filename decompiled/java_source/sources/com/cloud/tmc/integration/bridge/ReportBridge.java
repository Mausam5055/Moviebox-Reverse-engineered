package com.cloud.tmc.integration.bridge;

import android.os.Bundle;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.proxy.ReportFactoryProxy;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.utils.BundleUtil;
import com.cloud.tmc.integration.utils.ObjectTypeAdapter;
import com.cloud.tmc.kernel.annotation.ActionFilter;
import com.cloud.tmc.kernel.annotation.ThreadType;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingNode;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingParam;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.extension.BridgeExtension;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.security.Permission;
import com.cloud.tmc.kernel.utils.StringUtils;
import com.cloud.tmc.kernel.utils.TraceLog;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\n\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016JQ\u0010\b\u001a\u00020\u00042\b\b\u0001\u0010\t\u001a\u00020\n2\b\b\u0001\u0010\u000b\u001a\u00020\n2\n\b\u0001\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0001\u0010\u000e\u001a\u0004\u0018\u00010\r2\n\b\u0001\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0001\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0007¢\u0006\u0002\u0010\u0013¨\u0006\u0014"}, d2 = {"Lcom/cloud/tmc/integration/bridge/ReportBridge;", "Lcom/cloud/tmc/kernel/extension/BridgeExtension;", "()V", "onFinalized", "", "onInitialized", "permit", "Lcom/cloud/tmc/kernel/security/Permission;", "report", "tag", "", "reportData", "reportType", "", "athenaAppId", "callback", "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;", "app", "Lcom/cloud/tmc/integration/structure/App;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Lcom/cloud/tmc/integration/structure/App;)V", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ReportBridge implements BridgeExtension {
    @Override // com.cloud.tmc.kernel.extension.BridgeExtension
    public /* synthetic */ void callbackFail(BridgeCallback bridgeCallback, String str, Boolean bool) {
        com.cloud.tmc.kernel.extension.a.a(this, bridgeCallback, str, bool);
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
    public final void report(@BindingParam({"tag"}) String tag, @BindingParam({"reportData"}) String reportData, @BindingParam({"reportType"}) Integer reportType, @BindingParam({"athenaAppId"}) Integer athenaAppId, @BindingCallback BridgeCallback callback, @BindingNode(App.class) App app) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(reportData, "reportData");
        if (StringUtils.isEmpty(tag)) {
            TraceLog.i(ReportBridge.class.getSimpleName(), "tag is empty");
            if (callback != null) {
                callback.sendFailResponse();
                return;
            }
            return;
        }
        if (StringUtils.isEmpty(reportData)) {
            TraceLog.i(ReportBridge.class.getSimpleName(), "reportData is empty");
            if (callback != null) {
                callback.sendFailResponse();
                return;
            }
            return;
        }
        try {
            Map<String, ? extends Object> _dataMap = (Map) new GsonBuilder().registerTypeAdapter(new TypeToken<Map<String, ? extends Object>>() { // from class: com.cloud.tmc.integration.bridge.ReportBridge$report$gson$1
            }.getType(), new ObjectTypeAdapter()).serializeNulls().create().fromJson(reportData, new TypeToken<Map<String, ? extends Object>>() { // from class: com.cloud.tmc.integration.bridge.ReportBridge$report$_dataMap$1
            }.getType());
            Bundle bundle = new Bundle();
            BundleUtil bundleUtil = BundleUtil.INSTANCE;
            Intrinsics.g(_dataMap, "_dataMap");
            bundleUtil.parse(_dataMap, bundle);
            ((ReportFactoryProxy) TmcProxy.get(ReportFactoryProxy.class)).report(app != null ? app.getAppId() : null, tag, bundle, reportType, athenaAppId);
            if (callback != null) {
                callback.sendSuccessResponse();
            }
        } catch (Exception unused) {
            if (callback != null) {
                callback.sendFailResponse();
            }
        }
    }
}
