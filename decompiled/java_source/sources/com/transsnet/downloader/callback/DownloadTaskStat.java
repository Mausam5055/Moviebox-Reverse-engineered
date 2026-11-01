package com.transsnet.downloader.callback;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Keep
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J1\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bHÖ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001d\u001a\u00020\u001eHÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\n\"\u0004\b\u000e\u0010\fR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\n\"\u0004\b\u0010\u0010\fR\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\n\"\u0004\b\u0012\u0010\f¨\u0006\u001f"}, d2 = {"Lcom/transsnet/downloader/callback/DownloadTaskStat;", "Ljava/io/Serializable;", "waitCount", "", "loadingCount", "errorCount", "doneCount", "<init>", "(IIII)V", "getWaitCount", "()I", "setWaitCount", "(I)V", "getLoadingCount", "setLoadingCount", "getErrorCount", "setErrorCount", "getDoneCount", "setDoneCount", "component1", "component2", "component3", "component4", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class DownloadTaskStat implements Serializable {
    private int doneCount;
    private int errorCount;
    private int loadingCount;
    private int waitCount;

    public DownloadTaskStat(int i11, int i12, int i13, int i14) {
        this.waitCount = i11;
        this.loadingCount = i12;
        this.errorCount = i13;
        this.doneCount = i14;
    }

    public static /* synthetic */ DownloadTaskStat copy$default(DownloadTaskStat downloadTaskStat, int i11, int i12, int i13, int i14, int i15, Object obj) {
        if ((i15 & 1) != 0) {
            i11 = downloadTaskStat.waitCount;
        }
        if ((i15 & 2) != 0) {
            i12 = downloadTaskStat.loadingCount;
        }
        if ((i15 & 4) != 0) {
            i13 = downloadTaskStat.errorCount;
        }
        if ((i15 & 8) != 0) {
            i14 = downloadTaskStat.doneCount;
        }
        return downloadTaskStat.copy(i11, i12, i13, i14);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getWaitCount() {
        return this.waitCount;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getLoadingCount() {
        return this.loadingCount;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getErrorCount() {
        return this.errorCount;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final int getDoneCount() {
        return this.doneCount;
    }

    public final DownloadTaskStat copy(int waitCount, int loadingCount, int errorCount, int doneCount) {
        return new DownloadTaskStat(waitCount, loadingCount, errorCount, doneCount);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DownloadTaskStat)) {
            return false;
        }
        DownloadTaskStat downloadTaskStat = (DownloadTaskStat) other;
        return this.waitCount == downloadTaskStat.waitCount && this.loadingCount == downloadTaskStat.loadingCount && this.errorCount == downloadTaskStat.errorCount && this.doneCount == downloadTaskStat.doneCount;
    }

    public final int getDoneCount() {
        return this.doneCount;
    }

    public final int getErrorCount() {
        return this.errorCount;
    }

    public final int getLoadingCount() {
        return this.loadingCount;
    }

    public final int getWaitCount() {
        return this.waitCount;
    }

    public int hashCode() {
        return (((((this.waitCount * 31) + this.loadingCount) * 31) + this.errorCount) * 31) + this.doneCount;
    }

    public final void setDoneCount(int i11) {
        this.doneCount = i11;
    }

    public final void setErrorCount(int i11) {
        this.errorCount = i11;
    }

    public final void setLoadingCount(int i11) {
        this.loadingCount = i11;
    }

    public final void setWaitCount(int i11) {
        this.waitCount = i11;
    }

    public String toString() {
        return "DownloadTaskStat(waitCount=" + this.waitCount + ", loadingCount=" + this.loadingCount + ", errorCount=" + this.errorCount + ", doneCount=" + this.doneCount + ")";
    }
}
