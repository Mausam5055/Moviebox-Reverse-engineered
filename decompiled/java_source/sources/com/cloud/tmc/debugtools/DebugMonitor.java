package com.cloud.tmc.debugtools;

import androidx.core.app.NotificationCompat;
import com.cloud.tmc.kernel.proxy.performanceanalyse.DebugProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.IPerformanceAnalyseType;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t"}, d2 = {"Lcom/cloud/tmc/debugtools/DebugMonitor;", "Lcom/cloud/tmc/kernel/proxy/performanceanalyse/DebugProxy;", "()V", "consoleContent", "", "target", "Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;", NotificationCompat.CATEGORY_MESSAGE, "", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class DebugMonitor implements DebugProxy {
    @Override // com.cloud.tmc.kernel.proxy.performanceanalyse.DebugProxy
    public void consoleContent(IPerformanceAnalyseType target, String msg) {
        Intrinsics.h(target, "target");
        Intrinsics.h(msg, "msg");
    }
}
