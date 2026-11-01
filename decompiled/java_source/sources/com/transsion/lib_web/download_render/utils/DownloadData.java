package com.transsion.lib_web.download_render.utils;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0006HÆ\u0003J1\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001e\u001a\u00020\u0006HÖ\u0001J\t\u0010\u001f\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000b\"\u0004\b\u000f\u0010\rR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0007\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0011\"\u0004\b\u0015\u0010\u0013¨\u0006 "}, d2 = {"Lcom/transsion/lib_web/download_render/utils/DownloadData;", "", "url", "", "version", "totalFiles", "", "downloadFiles", "<init>", "(Ljava/lang/String;Ljava/lang/String;II)V", "getUrl", "()Ljava/lang/String;", "setUrl", "(Ljava/lang/String;)V", "getVersion", "setVersion", "getTotalFiles", "()I", "setTotalFiles", "(I)V", "getDownloadFiles", "setDownloadFiles", "component1", "component2", "component3", "component4", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "toString", "lib_web_release"}, k = 1, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class DownloadData {
    private int downloadFiles;
    private int totalFiles;
    private String url;
    private String version;

    public DownloadData(String url, String version, int i11, int i12) {
        Intrinsics.h(url, "url");
        Intrinsics.h(version, "version");
        this.url = url;
        this.version = version;
        this.totalFiles = i11;
        this.downloadFiles = i12;
    }

    public static /* synthetic */ DownloadData copy$default(DownloadData downloadData, String str, String str2, int i11, int i12, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            str = downloadData.url;
        }
        if ((i13 & 2) != 0) {
            str2 = downloadData.version;
        }
        if ((i13 & 4) != 0) {
            i11 = downloadData.totalFiles;
        }
        if ((i13 & 8) != 0) {
            i12 = downloadData.downloadFiles;
        }
        return downloadData.copy(str, str2, i11, i12);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getUrl() {
        return this.url;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getVersion() {
        return this.version;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getTotalFiles() {
        return this.totalFiles;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final int getDownloadFiles() {
        return this.downloadFiles;
    }

    public final DownloadData copy(String url, String version, int totalFiles, int downloadFiles) {
        Intrinsics.h(url, "url");
        Intrinsics.h(version, "version");
        return new DownloadData(url, version, totalFiles, downloadFiles);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DownloadData)) {
            return false;
        }
        DownloadData downloadData = (DownloadData) other;
        return Intrinsics.c(this.url, downloadData.url) && Intrinsics.c(this.version, downloadData.version) && this.totalFiles == downloadData.totalFiles && this.downloadFiles == downloadData.downloadFiles;
    }

    public final int getDownloadFiles() {
        return this.downloadFiles;
    }

    public final int getTotalFiles() {
        return this.totalFiles;
    }

    public final String getUrl() {
        return this.url;
    }

    public final String getVersion() {
        return this.version;
    }

    public int hashCode() {
        return (((((this.url.hashCode() * 31) + this.version.hashCode()) * 31) + this.totalFiles) * 31) + this.downloadFiles;
    }

    public final void setDownloadFiles(int i11) {
        this.downloadFiles = i11;
    }

    public final void setTotalFiles(int i11) {
        this.totalFiles = i11;
    }

    public final void setUrl(String str) {
        Intrinsics.h(str, "<set-?>");
        this.url = str;
    }

    public final void setVersion(String str) {
        Intrinsics.h(str, "<set-?>");
        this.version = str;
    }

    public String toString() {
        return "DownloadData(url=" + this.url + ", version=" + this.version + ", totalFiles=" + this.totalFiles + ", downloadFiles=" + this.downloadFiles + ")";
    }
}
