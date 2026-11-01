package com.cloud.tmc.worker;

import android.content.Context;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.annotation.DefaultImpl;
import com.cloud.tmc.kernel.engine.IEngine;
import com.cloud.tmc.kernel.node.Node;
import com.cloud.tmc.kernel.proxy.Proxiable;
import com.cloud.tmc.kernel.worker.JSI;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@DefaultImpl("com.cloud.tmc.integration.defaultImpl.WorkerManagerFactory")
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bg\u0018\u00002\u00020\u0001:\u0001\u000fJ8\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000eH&¨\u0006\u0010"}, d2 = {"Lcom/cloud/tmc/worker/IWorkerManagerFactory;", "Lcom/cloud/tmc/kernel/proxy/Proxiable;", "createWorker", "", "engine", "Lcom/cloud/tmc/kernel/engine/IEngine;", "context", "Landroid/content/Context;", "node", "Lcom/cloud/tmc/kernel/node/Node;", "userAgent", "", "workerId", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;", "IWorkerListener", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface IWorkerManagerFactory extends Proxiable {

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;", "", "createSuccess", "", EventConstants.ADDRESS_WORKER, "Lcom/cloud/tmc/kernel/worker/JSI;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public interface IWorkerListener {
        void createSuccess(JSI worker);
    }

    void createWorker(IEngine engine, Context context, Node node, String userAgent, String workerId, IWorkerListener listener);
}
