package com.vungle.ads.internal.model;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class AdAsset {
    private final String adIdentifier;
    private long fileSize;
    private final FileType fileType;
    private final boolean isRequired;
    private final String localPath;
    private final String serverPath;
    private Status status;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vungle/ads/internal/model/AdAsset$FileType;", "", "(Ljava/lang/String;I)V", "ZIP", "ASSET", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public enum FileType {
        ZIP,
        ASSET
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/vungle/ads/internal/model/AdAsset$Status;", "", "(Ljava/lang/String;I)V", "NEW", "DOWNLOAD_RUNNING", "DOWNLOAD_FAILED", "DOWNLOAD_SUCCESS", "PROCESSED", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public enum Status {
        NEW,
        DOWNLOAD_RUNNING,
        DOWNLOAD_FAILED,
        DOWNLOAD_SUCCESS,
        PROCESSED
    }

    public AdAsset(String adIdentifier, String serverPath, String localPath, FileType fileType, boolean z10) {
        Intrinsics.h(adIdentifier, "adIdentifier");
        Intrinsics.h(serverPath, "serverPath");
        Intrinsics.h(localPath, "localPath");
        Intrinsics.h(fileType, "fileType");
        this.adIdentifier = adIdentifier;
        this.serverPath = serverPath;
        this.localPath = localPath;
        this.fileType = fileType;
        this.isRequired = z10;
        this.status = Status.NEW;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !Intrinsics.c(AdAsset.class, obj.getClass())) {
            return false;
        }
        AdAsset adAsset = (AdAsset) obj;
        if (this.status == adAsset.status && this.fileType == adAsset.fileType && this.fileSize == adAsset.fileSize && this.isRequired == adAsset.isRequired && Intrinsics.c(this.adIdentifier, adAsset.adIdentifier) && Intrinsics.c(this.serverPath, adAsset.serverPath)) {
            return Intrinsics.c(this.localPath, adAsset.localPath);
        }
        return false;
    }

    public final String getAdIdentifier() {
        return this.adIdentifier;
    }

    public final long getFileSize() {
        return this.fileSize;
    }

    public final FileType getFileType() {
        return this.fileType;
    }

    public final String getLocalPath() {
        return this.localPath;
    }

    public final String getServerPath() {
        return this.serverPath;
    }

    public final Status getStatus() {
        return this.status;
    }

    public int hashCode() {
        int iHashCode = ((((((((this.adIdentifier.hashCode() * 31) + this.serverPath.hashCode()) * 31) + this.localPath.hashCode()) * 31) + this.status.hashCode()) * 31) + this.fileType.hashCode()) * 31;
        long j11 = this.fileSize;
        return ((iHashCode + ((int) (j11 ^ (j11 >>> 32)))) * 31) + androidx.compose.foundation.e.a(this.isRequired);
    }

    public final boolean isRequired() {
        return this.isRequired;
    }

    public final void setFileSize(long j11) {
        this.fileSize = j11;
    }

    public final void setStatus(Status status) {
        Intrinsics.h(status, "<set-?>");
        this.status = status;
    }

    public String toString() {
        return "AdAsset{, adIdentifier='" + this.adIdentifier + "', serverPath='" + this.serverPath + "', localPath='" + this.localPath + "', status=" + this.status + ", fileType=" + this.fileType + ", fileSize=" + this.fileSize + ", isRequired=" + this.isRequired + '}';
    }
}
