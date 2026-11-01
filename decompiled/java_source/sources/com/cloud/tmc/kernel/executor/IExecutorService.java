package com.cloud.tmc.kernel.executor;

import com.cloud.tmc.kernel.BuildConfig;
import com.cloud.tmc.kernel.annotation.DefaultImpl;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.proxy.Proxiable;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@DefaultImpl("com.cloud.tmc.kernel.coreimpl.DefaultExecutorService")
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH&R\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\n"}, d2 = {"Lcom/cloud/tmc/kernel/executor/IExecutorService;", "Lcom/cloud/tmc/kernel/proxy/Proxiable;", "scheduledExecutor", "Ljava/util/concurrent/ScheduledThreadPoolExecutor;", "getScheduledExecutor", "()Ljava/util/concurrent/ScheduledThreadPoolExecutor;", "getExecutor", "Ljava/util/concurrent/Executor;", NativeComponentConstants.KEY_COMPONENT_TYPE, "Lcom/cloud/tmc/kernel/executor/ExecutorType;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface IExecutorService extends Proxiable {
    Executor getExecutor(ExecutorType type);

    ScheduledThreadPoolExecutor getScheduledExecutor();
}
