package com.transsion.subtitle.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.mbridge.msdk.foundation.download.database.DownloadModel;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J'\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0005HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0016\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\f¨\u0006\u0017"}, d2 = {"Lcom/transsion/subtitle/bean/OpenSubtitleDataFile;", "", "cdNumber", "", "fileId", "", "fileName", "<init>", "(ILjava/lang/String;Ljava/lang/String;)V", "getCdNumber", "()I", "getFileId", "()Ljava/lang/String;", "getFileName", "component1", "component2", "component3", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "toString", "VideoSubtitle_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class OpenSubtitleDataFile {

    @SerializedName("cd_number")
    private final int cdNumber;

    @SerializedName("file_id")
    private final String fileId;

    @SerializedName(DownloadModel.FILE_NAME)
    private final String fileName;

    public OpenSubtitleDataFile(int i11, String fileId, String fileName) {
        Intrinsics.h(fileId, "fileId");
        Intrinsics.h(fileName, "fileName");
        this.cdNumber = i11;
        this.fileId = fileId;
        this.fileName = fileName;
    }

    public static /* synthetic */ OpenSubtitleDataFile copy$default(OpenSubtitleDataFile openSubtitleDataFile, int i11, String str, String str2, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i11 = openSubtitleDataFile.cdNumber;
        }
        if ((i12 & 2) != 0) {
            str = openSubtitleDataFile.fileId;
        }
        if ((i12 & 4) != 0) {
            str2 = openSubtitleDataFile.fileName;
        }
        return openSubtitleDataFile.copy(i11, str, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getCdNumber() {
        return this.cdNumber;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getFileId() {
        return this.fileId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getFileName() {
        return this.fileName;
    }

    public final OpenSubtitleDataFile copy(int cdNumber, String fileId, String fileName) {
        Intrinsics.h(fileId, "fileId");
        Intrinsics.h(fileName, "fileName");
        return new OpenSubtitleDataFile(cdNumber, fileId, fileName);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof OpenSubtitleDataFile)) {
            return false;
        }
        OpenSubtitleDataFile openSubtitleDataFile = (OpenSubtitleDataFile) other;
        return this.cdNumber == openSubtitleDataFile.cdNumber && Intrinsics.c(this.fileId, openSubtitleDataFile.fileId) && Intrinsics.c(this.fileName, openSubtitleDataFile.fileName);
    }

    public final int getCdNumber() {
        return this.cdNumber;
    }

    public final String getFileId() {
        return this.fileId;
    }

    public final String getFileName() {
        return this.fileName;
    }

    public int hashCode() {
        return (((this.cdNumber * 31) + this.fileId.hashCode()) * 31) + this.fileName.hashCode();
    }

    public String toString() {
        return "OpenSubtitleDataFile(cdNumber=" + this.cdNumber + ", fileId=" + this.fileId + ", fileName=" + this.fileName + ")";
    }
}
