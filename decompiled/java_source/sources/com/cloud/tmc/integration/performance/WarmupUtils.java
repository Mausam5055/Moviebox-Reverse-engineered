package com.cloud.tmc.integration.performance;

import com.cloud.tmc.integration.BuildConfig;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/cloud/tmc/integration/performance/WarmupUtils;", "", "()V", "warmupRenderId", "Ljava/util/concurrent/atomic/AtomicInteger;", "getWarmupRenderId", "()Ljava/util/concurrent/atomic/AtomicInteger;", "warmupWorkerId", "getWarmupWorkerId", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class WarmupUtils {
    public static final WarmupUtils INSTANCE = new WarmupUtils();
    private static final AtomicInteger warmupRenderId = new AtomicInteger(0);
    private static final AtomicInteger warmupWorkerId = new AtomicInteger(0);

    private WarmupUtils() {
    }

    public final AtomicInteger getWarmupRenderId() {
        return warmupRenderId;
    }

    public final AtomicInteger getWarmupWorkerId() {
        return warmupWorkerId;
    }
}
