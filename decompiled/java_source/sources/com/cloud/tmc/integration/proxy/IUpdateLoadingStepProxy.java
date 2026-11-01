package com.cloud.tmc.integration.proxy;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.activity.LoadStepAction;
import com.cloud.tmc.kernel.annotation.DefaultImpl;
import com.cloud.tmc.kernel.proxy.Proxiable;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@DefaultImpl("com.cloud.tmc.miniapp.defaultimpl.UpdateLoadingStepProxyImpl")
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bg\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0018\u0010\b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH&J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\f"}, d2 = {"Lcom/cloud/tmc/integration/proxy/IUpdateLoadingStepProxy;", "Lcom/cloud/tmc/kernel/proxy/Proxiable;", "addUpdateLoadingListener", "", "appId", "", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/cloud/tmc/integration/proxy/UpdateLoadingStepListener;", "notifyUpdateLoadingStep", "step", "Lcom/cloud/tmc/integration/activity/LoadStepAction;", "removeUpdateLoadingListener", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface IUpdateLoadingStepProxy extends Proxiable {
    void addUpdateLoadingListener(String appId, UpdateLoadingStepListener listener);

    void notifyUpdateLoadingStep(String appId, LoadStepAction step);

    void removeUpdateLoadingListener(String appId);
}
