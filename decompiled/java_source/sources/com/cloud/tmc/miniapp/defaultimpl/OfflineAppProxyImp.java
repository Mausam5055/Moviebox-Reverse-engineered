package com.cloud.tmc.miniapp.defaultimpl;

import com.cloud.tmc.integration.proxy.OfflineAppProxy;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.miniapp.offlineapps.OfflineAppBean;
import com.cloud.tmc.miniapp.offlineapps.ScanScene;
import com.cloud.tmc.miniutils.util.GsonUtils;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentLinkedQueue;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class OfflineAppProxyImp implements OfflineAppProxy {
    public ConcurrentLinkedQueue<OfflineAppProxy.CreateShortCutsListener> OooO00o = new ConcurrentLinkedQueue<>();

    public static final class OooO00o implements com.cloud.tmc.miniapp.offlineapps.scan.OooO00o {
        public final /* synthetic */ OfflineAppProxy.Callback OooO00o;

        public OooO00o(OfflineAppProxy.Callback callback) {
            this.OooO00o = callback;
        }

        @Override // com.cloud.tmc.miniapp.offlineapps.scan.OooO00o
        public void result(List<OfflineAppBean> offlineApps) {
            Intrinsics.h(offlineApps, "offlineApps");
            OfflineAppProxy.Callback callback = this.OooO00o;
            String json = GsonUtils.toJson(offlineApps);
            Intrinsics.g(json, "toJson(offlineApps)");
            callback.onSuccess(json);
        }
    }

    @Override // com.cloud.tmc.integration.proxy.OfflineAppProxy
    public void addShortCutListener(OfflineAppProxy.CreateShortCutsListener listener) {
        Intrinsics.h(listener, "listener");
        try {
            this.OooO00o.add(listener);
            TmcLogger.e("sam", "addShortCutListener: " + this.OooO00o.size());
        } catch (Throwable unused) {
        }
    }

    @Override // com.cloud.tmc.integration.proxy.OfflineAppProxy
    public void downloadIcon(String appId, String logoUrl) {
        Intrinsics.h(appId, "appId");
        Intrinsics.h(logoUrl, "logoUrl");
        Intrinsics.h(appId, "appId");
        Intrinsics.h(logoUrl, "logoUrl");
        com.cloud.tmc.miniapp.offlineapps.download.OooO0O0.OooO00o.OooO00o(appId, logoUrl);
    }

    @Override // com.cloud.tmc.integration.proxy.OfflineAppProxy
    public void getOfflineAppsForBridgeApi(boolean z10, OfflineAppProxy.Callback callback) {
        Intrinsics.h(callback, "callback");
        OooO00o oooO00o = new OooO00o(callback);
        ScanScene scanScene = ScanScene.SCAN_BRIDGEAPI;
        Intrinsics.h(scanScene, "scanScene");
        com.cloud.tmc.miniapp.offlineapps.scan.OooO0O0.OooO00o.OooO00o(z10, scanScene, oooO00o);
    }

    @Override // com.cloud.tmc.integration.proxy.OfflineAppProxy
    public void notifyCreateShortCutsSuccess(String appId) {
        Intrinsics.h(appId, "appId");
        try {
            Iterator<OfflineAppProxy.CreateShortCutsListener> it = this.OooO00o.iterator();
            Intrinsics.g(it, "offlineAppsShortCutListeners.iterator()");
            TmcLogger.e("sam", "notifyCreateShortCutsSuccess:appId:" + appId + ", " + this.OooO00o.size());
            while (it.hasNext()) {
                it.next().createSuccess(appId);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.cloud.tmc.integration.proxy.OfflineAppProxy
    public void removeShortCutListener(OfflineAppProxy.CreateShortCutsListener listener) {
        Intrinsics.h(listener, "listener");
        try {
            this.OooO00o.remove(listener);
            TmcLogger.e("sam", "removeShortCutListener: " + this.OooO00o.size());
        } catch (Throwable unused) {
        }
    }

    @Override // com.cloud.tmc.integration.proxy.OfflineAppProxy
    public void scanForOfflineDownloadDelete() {
        ScanScene scanScene = ScanScene.SCAN_DELETE_OFFLINEDOWNLOAD_APP;
        Intrinsics.h(scanScene, "scanScene");
        com.cloud.tmc.miniapp.offlineapps.scan.OooO0O0.OooO00o.OooO00o(true, scanScene, null);
    }

    @Override // com.cloud.tmc.integration.proxy.OfflineAppProxy
    public void scanForOfflineDownloadSuccess() {
        ScanScene scanScene = ScanScene.SCAN_OFFLINEDOWNLOAD_APP;
        Intrinsics.h(scanScene, "scanScene");
        com.cloud.tmc.miniapp.offlineapps.scan.OooO0O0.OooO00o.OooO00o(true, scanScene, null);
    }

    @Override // com.cloud.tmc.integration.proxy.OfflineAppProxy
    public void scanForUsedAppDelete() {
        ScanScene scanScene = ScanScene.SCAN_DELETE_USED_APP;
        Intrinsics.h(scanScene, "scanScene");
        com.cloud.tmc.miniapp.offlineapps.scan.OooO0O0.OooO00o.OooO00o(true, scanScene, null);
    }
}
