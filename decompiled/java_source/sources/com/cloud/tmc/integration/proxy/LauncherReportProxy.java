package com.cloud.tmc.integration.proxy;

import android.os.Bundle;
import com.cloud.tmc.component_api_ps.ipc.constants.MiniAppIpcConfig;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.annotation.DefaultImpl;
import com.cloud.tmc.kernel.proxy.Proxiable;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@DefaultImpl("com.cloud.tmc.miniapp.defaultimpl.LauncherReport")
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\bg\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H&J\u0012\u0010\b\u001a\u00020\u00032\b\u0010\t\u001a\u0004\u0018\u00010\u0005H&J\u0012\u0010\n\u001a\u00020\u00032\b\u0010\t\u001a\u0004\u0018\u00010\u0005H&J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0005H&J&\u0010\f\u001a\u00020\u00032\b\u0010\t\u001a\u0004\u0018\u00010\u00052\b\u0010\r\u001a\u0004\u0018\u00010\u00052\b\u0010\u000e\u001a\u0004\u0018\u00010\u0005H&J\"\u0010\u000f\u001a\u00020\u00032\b\u0010\t\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0005H&J\u001a\u0010\u0013\u001a\u00020\u00032\b\u0010\t\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0014\u001a\u00020\u0011H&J\u0010\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u0017H&¨\u0006\u0018"}, d2 = {"Lcom/cloud/tmc/integration/proxy/LauncherReportProxy;", "Lcom/cloud/tmc/kernel/proxy/Proxiable;", "report", "", "tag", "", "bundle", "Landroid/os/Bundle;", "reportAllCacheData", "appId", "reportCacheData", "reportMiniAddhomeSuccess", "reportMiniAppStartRecord", MiniAppIpcConfig.IPC_ADDHOME_APP_NAME, "appLogo", "reportMiniAppStartTime", "startTime", "", "startType", "reportMiniAppUseTime", "usageTime", "reportMiniProcessId", "pid", "", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface LauncherReportProxy extends Proxiable {
    void report(String tag, Bundle bundle);

    void reportAllCacheData(String appId);

    void reportCacheData(String appId);

    void reportMiniAddhomeSuccess(String appId);

    void reportMiniAppStartRecord(String appId, String appName, String appLogo);

    void reportMiniAppStartTime(String appId, long startTime, String startType);

    void reportMiniAppUseTime(String appId, long usageTime);

    void reportMiniProcessId(int pid);
}
