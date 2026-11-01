package com.cloud.tmc.component_api_ps.async;

import com.cloud.tmc.component_api_ps.BuildConfig;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/cloud/tmc/component_api_ps/async/MiniAppIpcAsyncConfig;", "", "()V", "THREAD_POOL_PARAM_CORE_SIZE", "", "THREAD_POOL_PARAM_KEEP_ALIVE_TIME", "", "THREAD_POOL_PARAM_MAX_SIZE", "THREAD_POOL_PARAM_QUEUE_SIZE", "threadPoolParamTimeUnit", "Ljava/util/concurrent/TimeUnit;", "getThreadPoolParamTimeUnit", "()Ljava/util/concurrent/TimeUnit;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class MiniAppIpcAsyncConfig {
    public static final int THREAD_POOL_PARAM_CORE_SIZE = 3;
    public static final long THREAD_POOL_PARAM_KEEP_ALIVE_TIME = 120;
    public static final int THREAD_POOL_PARAM_MAX_SIZE = 5;
    public static final int THREAD_POOL_PARAM_QUEUE_SIZE = 200;
    public static final MiniAppIpcAsyncConfig INSTANCE = new MiniAppIpcAsyncConfig();
    private static final TimeUnit threadPoolParamTimeUnit = TimeUnit.SECONDS;

    private MiniAppIpcAsyncConfig() {
    }

    public final TimeUnit getThreadPoolParamTimeUnit() {
        return threadPoolParamTimeUnit;
    }
}
