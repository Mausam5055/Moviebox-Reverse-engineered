package com.cloud.tmc.integration.performance.innerworker;

import com.cloud.tmc.integration.BuildConfig;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J\u0010\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H&J\b\u0010\b\u001a\u00020\u0003H&¨\u0006\t"}, d2 = {"Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;", "", "createWorkerSuccess", "", "loadWorkerFrameworkSuccess", "warmupFail", "step", "", "warmupSuccess", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface InnerWorkerListener {
    void createWorkerSuccess();

    void loadWorkerFrameworkSuccess();

    void warmupFail(int step);

    void warmupSuccess();
}
