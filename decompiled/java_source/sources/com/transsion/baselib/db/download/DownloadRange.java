package com.transsion.baselib.db.download;

import androidx.annotation.Keep;
import androidx.core.app.NotificationCompat;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0011\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0014J\u0006\u0010\"\u001a\u00020 J\u0006\u0010#\u001a\u00020\u0014J\b\u00100\u001a\u00020\u000eH\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\tR\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0016\"\u0004\b\u001b\u0010\u0018R\u001a\u0010\u001c\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0016\"\u0004\b\u001e\u0010\u0018R\u0011\u0010$\u001a\u00020\u00148F¢\u0006\u0006\u001a\u0004\b%\u0010\u0016R\u001e\u0010&\u001a\u00020 8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\u001e\u0010*\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\u0007\"\u0004\b,\u0010\tR\u001e\u0010-\u001a\u00020 8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010'\"\u0004\b/\u0010)¨\u00061"}, d2 = {"Lcom/transsion/baselib/db/download/DownloadRange;", "", "<init>", "()V", "threadId", "", "getThreadId", "()I", "setThreadId", "(I)V", "rangeId", "getRangeId", "setRangeId", "resourceId", "", "getResourceId", "()Ljava/lang/String;", "setResourceId", "(Ljava/lang/String;)V", "start", "", "getStart", "()J", "setStart", "(J)V", TtmlNode.END, "getEnd", "setEnd", NotificationCompat.CATEGORY_PROGRESS, "getProgress", "setProgress", "contains", "", RequestParameters.POSITION, "isRangeDownloadSuccess", "totalProgress", "rangeSize", "getRangeSize", "isDownloading", "()Z", "setDownloading", "(Z)V", "threadIndex", "getThreadIndex", "setThreadIndex", "reDownload", "getReDownload", "setReDownload", "toString", "BaseLib_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class DownloadRange {
    private long end;
    private volatile boolean isDownloading;
    private volatile long progress;
    private int rangeId;
    private boolean reDownload;
    private String resourceId;
    private long start;
    private int threadId;
    private int threadIndex;

    public final boolean contains(long position) {
        return position <= this.end && this.start <= position;
    }

    public final long getEnd() {
        return this.end;
    }

    public final long getProgress() {
        return this.progress;
    }

    public final int getRangeId() {
        return this.rangeId;
    }

    public final long getRangeSize() {
        return (this.end - this.start) + 1;
    }

    public final boolean getReDownload() {
        return this.reDownload;
    }

    public final String getResourceId() {
        return this.resourceId;
    }

    public final long getStart() {
        return this.start;
    }

    public final int getThreadId() {
        return this.threadId;
    }

    public final int getThreadIndex() {
        return this.threadIndex;
    }

    /* JADX INFO: renamed from: isDownloading, reason: from getter */
    public final boolean getIsDownloading() {
        return this.isDownloading;
    }

    public final boolean isRangeDownloadSuccess() {
        return this.progress > this.end - this.start;
    }

    public final void setDownloading(boolean z10) {
        this.isDownloading = z10;
    }

    public final void setEnd(long j11) {
        this.end = j11;
    }

    public final void setProgress(long j11) {
        this.progress = j11;
    }

    public final void setRangeId(int i11) {
        this.rangeId = i11;
    }

    public final void setReDownload(boolean z10) {
        this.reDownload = z10;
    }

    public final void setResourceId(String str) {
        this.resourceId = str;
    }

    public final void setStart(long j11) {
        this.start = j11;
    }

    public final void setThreadId(int i11) {
        this.threadId = i11;
    }

    public final void setThreadIndex(int i11) {
        this.threadIndex = i11;
    }

    public String toString() {
        return "DownloadRange {threadId=" + this.threadId + ", rangeId=" + this.rangeId + ", resourceId=" + this.resourceId + ", start=" + this.start + ", end=" + this.end + ", progress=" + this.progress + "}";
    }

    public final long totalProgress() {
        return this.start + this.progress;
    }
}
