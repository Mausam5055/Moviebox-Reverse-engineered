package com.transsion.baselib.db.download;

import androidx.annotation.Keep;
import androidx.core.app.NotificationCompat;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u001a\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B3\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bR\u001e\u0010\f\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u000e\"\u0004\b\u0012\u0010\u0010R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0014\"\u0004\b\u0018\u0010\u0016R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001a\u0010\t\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001a\"\u0004\b\u001e\u0010\u001cR\u001a\u0010\u001f\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u001a\"\u0004\b!\u0010\u001cR$\u0010\"\u001a\b\u0012\u0004\u0012\u00020$0#8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(¨\u0006)"}, d2 = {"Lcom/transsion/baselib/db/download/DownloadTaskInfo;", "", "threadId", "", "downloadInfoId", "", "uri", "start", "", TtmlNode.END, "<init>", "(ILjava/lang/String;Ljava/lang/String;JJ)V", "id", "getId", "()I", "setId", "(I)V", "getThreadId", "setThreadId", "getDownloadInfoId", "()Ljava/lang/String;", "setDownloadInfoId", "(Ljava/lang/String;)V", "getUri", "setUri", "getStart", "()J", "setStart", "(J)V", "getEnd", "setEnd", NotificationCompat.CATEGORY_PROGRESS, "getProgress", "setProgress", "downloadRanges", "", "Lcom/transsion/baselib/db/download/DownloadRange;", "getDownloadRanges", "()Ljava/util/List;", "setDownloadRanges", "(Ljava/util/List;)V", "BaseLib_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class DownloadTaskInfo {
    private String downloadInfoId;
    private List<DownloadRange> downloadRanges;
    private long end;
    private int id;
    private volatile long progress;
    private long start;
    private int threadId;
    private String uri;

    public DownloadTaskInfo(int i11, String downloadInfoId, String str, long j11, long j12) {
        Intrinsics.h(downloadInfoId, "downloadInfoId");
        this.downloadRanges = new CopyOnWriteArrayList();
        this.id = downloadInfoId.hashCode() + i11;
        this.threadId = i11;
        this.downloadInfoId = downloadInfoId;
        this.uri = str;
        this.start = j11;
        this.end = j12;
    }

    public final String getDownloadInfoId() {
        return this.downloadInfoId;
    }

    public final List<DownloadRange> getDownloadRanges() {
        return this.downloadRanges;
    }

    public final long getEnd() {
        return this.end;
    }

    public final int getId() {
        return this.id;
    }

    public final long getProgress() {
        return this.progress;
    }

    public final long getStart() {
        return this.start;
    }

    public final int getThreadId() {
        return this.threadId;
    }

    public final String getUri() {
        return this.uri;
    }

    public final void setDownloadInfoId(String str) {
        this.downloadInfoId = str;
    }

    public final void setDownloadRanges(List<DownloadRange> list) {
        Intrinsics.h(list, "<set-?>");
        this.downloadRanges = list;
    }

    public final void setEnd(long j11) {
        this.end = j11;
    }

    public final void setId(int i11) {
        this.id = i11;
    }

    public final void setProgress(long j11) {
        this.progress = j11;
    }

    public final void setStart(long j11) {
        this.start = j11;
    }

    public final void setThreadId(int i11) {
        this.threadId = i11;
    }

    public final void setUri(String str) {
        this.uri = str;
    }
}
