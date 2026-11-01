package com.cloud.h5update.bean;

import com.cloud.tmc.integration.bridge.NativeRequestBridge;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\r\n\u0002\u0010\b\n\u0002\b\u0010\u0018\u00002\u00020\u0001B\u001b\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005B\u0005¢\u0006\u0002\u0010\u0006R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001c\u0010\r\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u000f\"\u0004\b\u0014\u0010\u0011R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082D¢\u0006\u0002\n\u0000R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u000f\"\u0004\b\u0019\u0010\u0011R\u001a\u0010\u001a\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u000f\"\u0004\b \u0010\u0011R\u001a\u0010!\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\n\"\u0004\b#\u0010\fR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\u000f\"\u0004\b%\u0010\u0011¨\u0006&"}, d2 = {"Lcom/cloud/h5update/bean/DownloadEntity;", "Ljava/io/Serializable;", CampaignEx.JSON_KEY_TITLE, "", "url", "(Ljava/lang/String;Ljava/lang/String;)V", "()V", "completedSize", "", "getCompletedSize", "()J", "setCompletedSize", "(J)V", "fileName", "getFileName", "()Ljava/lang/String;", "setFileName", "(Ljava/lang/String;)V", NativeRequestBridge.KEY_FILE_PATH, "getFilePath", "setFilePath", "id", "", "taskId", "getTaskId", "setTaskId", "taskStatus", "getTaskStatus", "()I", "setTaskStatus", "(I)V", "getTitle", "setTitle", "totalSize", "getTotalSize", "setTotalSize", "getUrl", "setUrl", "apph5update_release"}, k = 1, mv = {1, 6, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class DownloadEntity implements Serializable {
    private long completedSize;
    private String fileName;
    private String filePath;
    private final int id;
    private String taskId;
    private int taskStatus;
    private String title;
    private long totalSize;
    private String url;

    public DownloadEntity() {
    }

    public DownloadEntity(String str, String str2) {
        this();
        this.url = str2;
        this.title = str;
    }

    public final long getCompletedSize() {
        return this.completedSize;
    }

    public final String getFileName() {
        return this.fileName;
    }

    public final String getFilePath() {
        return this.filePath;
    }

    public final String getTaskId() {
        return this.taskId;
    }

    public final int getTaskStatus() {
        return this.taskStatus;
    }

    public final String getTitle() {
        return this.title;
    }

    public final long getTotalSize() {
        return this.totalSize;
    }

    public final String getUrl() {
        return this.url;
    }

    public final void setCompletedSize(long j11) {
        this.completedSize = j11;
    }

    public final void setFileName(String str) {
        this.fileName = str;
    }

    public final void setFilePath(String str) {
        this.filePath = str;
    }

    public final void setTaskId(String str) {
        this.taskId = str;
    }

    public final void setTaskStatus(int i11) {
        this.taskStatus = i11;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public final void setTotalSize(long j11) {
        this.totalSize = j11;
    }

    public final void setUrl(String str) {
        this.url = str;
    }
}
