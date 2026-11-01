package com.cloud.tmc.integration.proxy;

import com.cloud.tmc.component_api_ps.ipc.constants.MiniAppIpcConfig;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.annotation.DefaultImpl;
import com.cloud.tmc.kernel.proxy.Proxiable;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@DefaultImpl("com.cloud.tmc.miniapp.defaultimpl.OfflineAppProxyImp")
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\bg\u0018\u00002\u00020\u0001:\u0002\u0014\u0015J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0018\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH&J\u0018\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH&J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\b\u0010\u0011\u001a\u00020\u0003H&J\b\u0010\u0012\u001a\u00020\u0003H&J\b\u0010\u0013\u001a\u00020\u0003H&¨\u0006\u0016"}, d2 = {"Lcom/cloud/tmc/integration/proxy/OfflineAppProxy;", "Lcom/cloud/tmc/kernel/proxy/Proxiable;", "addShortCutListener", "", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/cloud/tmc/integration/proxy/OfflineAppProxy$CreateShortCutsListener;", "downloadIcon", "appId", "", MiniAppIpcConfig.IPC_ADDHOME_APP_LOGO, "getOfflineAppsForBridgeApi", "isCache", "", "callback", "Lcom/cloud/tmc/integration/proxy/OfflineAppProxy$Callback;", "notifyCreateShortCutsSuccess", "removeShortCutListener", "scanForOfflineDownloadDelete", "scanForOfflineDownloadSuccess", "scanForUsedAppDelete", "Callback", "CreateShortCutsListener", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface OfflineAppProxy extends Proxiable {

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/cloud/tmc/integration/proxy/OfflineAppProxy$Callback;", "", "onSuccess", "", "data", "", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public interface Callback {
        void onSuccess(String data);
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/cloud/tmc/integration/proxy/OfflineAppProxy$CreateShortCutsListener;", "", "createSuccess", "", "appId", "", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public interface CreateShortCutsListener {
        void createSuccess(String appId);
    }

    void addShortCutListener(CreateShortCutsListener listener);

    void downloadIcon(String appId, String logoUrl);

    void getOfflineAppsForBridgeApi(boolean isCache, Callback callback);

    void notifyCreateShortCutsSuccess(String appId);

    void removeShortCutListener(CreateShortCutsListener listener);

    void scanForOfflineDownloadDelete();

    void scanForOfflineDownloadSuccess();

    void scanForUsedAppDelete();
}
