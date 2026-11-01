package com.cloud.tmc.integration.model;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0011\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0006HÆ\u0003J'\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00032\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018HÖ\u0003J\t\u0010\u0019\u001a\u00020\u0006HÖ\u0001J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\r\"\u0004\b\u0011\u0010\u000f¨\u0006\u001c"}, d2 = {"Lcom/cloud/tmc/integration/model/WorkerWarmup;", "Lcom/cloud/tmc/kernel/model/BaseBean;", MRAIDPresenter.OPEN, "", "lazyLoad", "cacheSize", "", "(ZZI)V", "getCacheSize", "()I", "setCacheSize", "(I)V", "getLazyLoad", "()Z", "setLazyLoad", "(Z)V", "getOpen", "setOpen", "component1", "component2", "component3", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class WorkerWarmup extends BaseBean {
    private int cacheSize;
    private boolean lazyLoad;
    private boolean open;

    public WorkerWarmup(boolean z10, boolean z11, int i11) {
        this.open = z10;
        this.lazyLoad = z11;
        this.cacheSize = i11;
    }

    public static /* synthetic */ WorkerWarmup copy$default(WorkerWarmup workerWarmup, boolean z10, boolean z11, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            z10 = workerWarmup.open;
        }
        if ((i12 & 2) != 0) {
            z11 = workerWarmup.lazyLoad;
        }
        if ((i12 & 4) != 0) {
            i11 = workerWarmup.cacheSize;
        }
        return workerWarmup.copy(z10, z11, i11);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getOpen() {
        return this.open;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getLazyLoad() {
        return this.lazyLoad;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getCacheSize() {
        return this.cacheSize;
    }

    public final WorkerWarmup copy(boolean open, boolean lazyLoad, int cacheSize) {
        return new WorkerWarmup(open, lazyLoad, cacheSize);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof WorkerWarmup)) {
            return false;
        }
        WorkerWarmup workerWarmup = (WorkerWarmup) other;
        return this.open == workerWarmup.open && this.lazyLoad == workerWarmup.lazyLoad && this.cacheSize == workerWarmup.cacheSize;
    }

    public final int getCacheSize() {
        return this.cacheSize;
    }

    public final boolean getLazyLoad() {
        return this.lazyLoad;
    }

    public final boolean getOpen() {
        return this.open;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v3, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v3 */
    public int hashCode() {
        boolean z10 = this.open;
        ?? r11 = z10;
        if (z10) {
            r11 = 1;
        }
        int i11 = r11 * 31;
        boolean z11 = this.lazyLoad;
        return ((i11 + (z11 ? 1 : z11)) * 31) + this.cacheSize;
    }

    public final void setCacheSize(int i11) {
        this.cacheSize = i11;
    }

    public final void setLazyLoad(boolean z10) {
        this.lazyLoad = z10;
    }

    public final void setOpen(boolean z10) {
        this.open = z10;
    }

    public String toString() {
        return "WorkerWarmup(open=" + this.open + ", lazyLoad=" + this.lazyLoad + ", cacheSize=" + this.cacheSize + ")";
    }
}
