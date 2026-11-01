package com.cloud.tmc.ad.bridge;

import android.os.Bundle;
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
import com.cloud.tmc.kernel.extension.a;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
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
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0001\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\b\u0010\b\u001a\u00020\u0007H\u0016J\n\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J4\u0010\u000b\u001a\u00020\u00072\n\b\u0001\u0010\f\u001a\u0004\u0018\u00010\r2\b\b\u0001\u0010\u000e\u001a\u00020\u00042\b\b\u0001\u0010\u000f\u001a\u00020\u00042\n\b\u0001\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0007R\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/cloud/tmc/ad/bridge/AdAthenaBridge;", "Lcom/cloud/tmc/kernel/extension/BridgeExtension;", "()V", "TAG", "", "kotlin.jvm.PlatformType", "onFinalized", "", "onInitialized", "permit", "", "reportAdLog", "app", "Lcom/cloud/tmc/integration/structure/App;", "tag", "athenaData", "callback", "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class AdAthenaBridge implements BridgeExtension {
    private String TAG = AdAthenaBridge.class.getSimpleName();

    @Override // com.cloud.tmc.kernel.extension.BridgeExtension
    public /* synthetic */ void callbackFail(BridgeCallback bridgeCallback, String str, Boolean bool) {
        a.a(this, bridgeCallback, str, bool);
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onFinalized() {
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onInitialized() {
    }

    @Override // com.cloud.tmc.kernel.security.Guard
    public /* bridge */ /* synthetic */ Permission permit() {
        return (Permission) m233permit();
    }

    /* JADX INFO: renamed from: permit, reason: collision with other method in class */
    public Void m233permit() {
        return null;
    }

    @ActionFilter("")
    @ThreadType(ExecutorType.IO)
    public final void reportAdLog(@BindingNode(App.class) App app, @BindingParam({"tag"}) String tag, @BindingParam({"athenaData"}) String athenaData, @BindingCallback BridgeCallback callback) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(athenaData, "athenaData");
        if (StringUtils.isEmpty(tag)) {
            TraceLog.i(AdAthenaBridge.class.getSimpleName(), "tag is empty");
            if (callback != null) {
                callback.sendFailResponse();
                return;
            }
            return;
        }
        if (StringUtils.isEmpty(athenaData)) {
            TraceLog.i(AdAthenaBridge.class.getSimpleName(), "athenaData is empty");
            if (callback != null) {
                callback.sendFailResponse();
                return;
            }
            return;
        }
        try {
            Map<String, ? extends Object> _dataMap = (Map) new GsonBuilder().registerTypeAdapter(new TypeToken<Map<String, ? extends Object>>() { // from class: com.cloud.tmc.ad.bridge.AdAthenaBridge$reportAdLog$gson$1
            }.getType(), new ObjectTypeAdapter()).serializeNulls().create().fromJson(athenaData, new TypeToken<Map<String, ? extends Object>>() { // from class: com.cloud.tmc.ad.bridge.AdAthenaBridge$reportAdLog$_dataMap$1
            }.getType());
            Bundle bundle = new Bundle();
            BundleUtil bundleUtil = BundleUtil.INSTANCE;
            Intrinsics.g(_dataMap, "_dataMap");
            bundleUtil.parse(_dataMap, bundle);
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).recordForAd(app != null ? app.getAppId() : null, tag, "", bundle);
            if (callback != null) {
                callback.sendSuccessResponse();
            }
        } catch (Exception e11) {
            TraceLog.e(this.TAG, "reportAdLog  parse data fail: " + e11);
            if (callback != null) {
                callback.sendFailResponse();
            }
        }
    }
}
