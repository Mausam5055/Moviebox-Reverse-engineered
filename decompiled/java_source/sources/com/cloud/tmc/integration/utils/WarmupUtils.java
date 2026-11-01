package com.cloud.tmc.integration.utils;

import android.content.Context;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.model.RenderWarmup;
import com.cloud.tmc.integration.model.WorkerWarmup;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.google.gson.Gson;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u0010\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0007\u001a\u00020\bJ\u0016\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u0006J\u0016\u0010\u000e\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\nR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/cloud/tmc/integration/utils/WarmupUtils;", "", "()V", "appId", "", "getRenderConfig", "Lcom/cloud/tmc/integration/model/RenderWarmup;", "context", "Landroid/content/Context;", "getWorkerConfig", "Lcom/cloud/tmc/integration/model/WorkerWarmup;", "saveRenderConfig", "", WarmupUtils.appId, "saveWorkerConfig", "workerWarmup", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class WarmupUtils {
    public static final WarmupUtils INSTANCE = new WarmupUtils();
    public static final String appId = "renderWarmup";

    private WarmupUtils() {
    }

    public final RenderWarmup getRenderConfig(Context context) {
        Intrinsics.h(context, "context");
        String string = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getString(context, appId, "renderWarmupConfig");
        if (string == null || string.length() == 0) {
            return null;
        }
        return (RenderWarmup) new Gson().fromJson(string, RenderWarmup.class);
    }

    public final WorkerWarmup getWorkerConfig(Context context) {
        Intrinsics.h(context, "context");
        String string = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getString(context, appId, "workerWarmupConfig");
        if (string == null || string.length() == 0) {
            return null;
        }
        return (WorkerWarmup) new Gson().fromJson(string, WorkerWarmup.class);
    }

    public final void saveRenderConfig(Context context, RenderWarmup renderWarmup) {
        Intrinsics.h(context, "context");
        Intrinsics.h(renderWarmup, "renderWarmup");
        ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putString(context, appId, "renderWarmupConfig", new Gson().toJson(renderWarmup));
    }

    public final void saveWorkerConfig(Context context, WorkerWarmup workerWarmup) {
        Intrinsics.h(context, "context");
        Intrinsics.h(workerWarmup, "workerWarmup");
        ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putString(context, appId, "workerWarmupConfig", new Gson().toJson(workerWarmup));
    }
}
