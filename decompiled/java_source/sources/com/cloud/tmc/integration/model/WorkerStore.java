package com.cloud.tmc.integration.model;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0005\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\u0006\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\n\u001a\u00020\u000bHÖ\u0001J\t\u0010\f\u001a\u00020\u0003HÖ\u0001R\u0012\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/cloud/tmc/integration/model/WorkerStore;", "", "workerId", "", "(Ljava/lang/String;)V", "component1", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class WorkerStore {

    @JvmField
    public String workerId;

    public WorkerStore(String workerId) {
        Intrinsics.h(workerId, "workerId");
        this.workerId = workerId;
    }

    public static /* synthetic */ WorkerStore copy$default(WorkerStore workerStore, String str, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = workerStore.workerId;
        }
        return workerStore.copy(str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getWorkerId() {
        return this.workerId;
    }

    public final WorkerStore copy(String workerId) {
        Intrinsics.h(workerId, "workerId");
        return new WorkerStore(workerId);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof WorkerStore) && Intrinsics.c(this.workerId, ((WorkerStore) other).workerId);
    }

    public int hashCode() {
        return this.workerId.hashCode();
    }

    public String toString() {
        return "WorkerStore(workerId=" + this.workerId + ")";
    }
}
