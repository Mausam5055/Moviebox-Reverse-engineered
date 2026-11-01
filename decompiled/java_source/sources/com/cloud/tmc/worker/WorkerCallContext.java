package com.cloud.tmc.worker;

import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.worker.SendToWorkerCallback;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0006HÆ\u0003J)\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0018"}, d2 = {"Lcom/cloud/tmc/worker/WorkerCallContext;", "", EventConstants.KEY_ACTION, "", "params", "sendToWorkerCallback", "Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;", "(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;)V", "getAction", "()Ljava/lang/String;", "getParams", "getSendToWorkerCallback", "()Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;", "component1", "component2", "component3", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class WorkerCallContext {
    public static final String ABILITY = "abilityName";
    public static final String ABILITY_API = "Api";
    public static final String ABILITY_DISPATCHEVENT = "DispatchEvent";
    public static final String ABILITY_LIFECYCLE = "LifeCycle";
    public static final String ACTION = "methodName";
    public static final String CALLBACK_ID = "callbackId";
    public static final String PARAMS = "params";
    private final String action;
    private final String params;
    private final SendToWorkerCallback sendToWorkerCallback;

    public WorkerCallContext(String action, String params, SendToWorkerCallback sendToWorkerCallback) {
        Intrinsics.h(action, "action");
        Intrinsics.h(params, "params");
        this.action = action;
        this.params = params;
        this.sendToWorkerCallback = sendToWorkerCallback;
    }

    public static /* synthetic */ WorkerCallContext copy$default(WorkerCallContext workerCallContext, String str, String str2, SendToWorkerCallback sendToWorkerCallback, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = workerCallContext.action;
        }
        if ((i11 & 2) != 0) {
            str2 = workerCallContext.params;
        }
        if ((i11 & 4) != 0) {
            sendToWorkerCallback = workerCallContext.sendToWorkerCallback;
        }
        return workerCallContext.copy(str, str2, sendToWorkerCallback);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getAction() {
        return this.action;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getParams() {
        return this.params;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final SendToWorkerCallback getSendToWorkerCallback() {
        return this.sendToWorkerCallback;
    }

    public final WorkerCallContext copy(String action, String params, SendToWorkerCallback sendToWorkerCallback) {
        Intrinsics.h(action, "action");
        Intrinsics.h(params, "params");
        return new WorkerCallContext(action, params, sendToWorkerCallback);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof WorkerCallContext)) {
            return false;
        }
        WorkerCallContext workerCallContext = (WorkerCallContext) other;
        return Intrinsics.c(this.action, workerCallContext.action) && Intrinsics.c(this.params, workerCallContext.params) && Intrinsics.c(this.sendToWorkerCallback, workerCallContext.sendToWorkerCallback);
    }

    public final String getAction() {
        return this.action;
    }

    public final String getParams() {
        return this.params;
    }

    public final SendToWorkerCallback getSendToWorkerCallback() {
        return this.sendToWorkerCallback;
    }

    public int hashCode() {
        int iHashCode = ((this.action.hashCode() * 31) + this.params.hashCode()) * 31;
        SendToWorkerCallback sendToWorkerCallback = this.sendToWorkerCallback;
        return iHashCode + (sendToWorkerCallback == null ? 0 : sendToWorkerCallback.hashCode());
    }

    public String toString() {
        return "WorkerCallContext(action=" + this.action + ", params=" + this.params + ", sendToWorkerCallback=" + this.sendToWorkerCallback + ')';
    }
}
