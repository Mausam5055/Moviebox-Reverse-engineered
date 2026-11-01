package com.cloud.tmc.offline.download.model;

import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@kotlin.Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0080\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0013"}, d2 = {"Lcom/cloud/tmc/offline/download/model/OfflineZipFileInfo;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "zipDirPath", "", "zipCacheAbsolutePath", "(Ljava/lang/String;Ljava/lang/String;)V", "getZipCacheAbsolutePath", "()Ljava/lang/String;", "getZipDirPath", "component1", "component2", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class OfflineZipFileInfo extends BaseBean {
    private final String zipCacheAbsolutePath;
    private final String zipDirPath;

    public OfflineZipFileInfo(String zipDirPath, String zipCacheAbsolutePath) {
        Intrinsics.h(zipDirPath, "zipDirPath");
        Intrinsics.h(zipCacheAbsolutePath, "zipCacheAbsolutePath");
        this.zipDirPath = zipDirPath;
        this.zipCacheAbsolutePath = zipCacheAbsolutePath;
    }

    public static /* synthetic */ OfflineZipFileInfo copy$default(OfflineZipFileInfo offlineZipFileInfo, String str, String str2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = offlineZipFileInfo.zipDirPath;
        }
        if ((i11 & 2) != 0) {
            str2 = offlineZipFileInfo.zipCacheAbsolutePath;
        }
        return offlineZipFileInfo.copy(str, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getZipDirPath() {
        return this.zipDirPath;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getZipCacheAbsolutePath() {
        return this.zipCacheAbsolutePath;
    }

    public final OfflineZipFileInfo copy(String zipDirPath, String zipCacheAbsolutePath) {
        Intrinsics.h(zipDirPath, "zipDirPath");
        Intrinsics.h(zipCacheAbsolutePath, "zipCacheAbsolutePath");
        return new OfflineZipFileInfo(zipDirPath, zipCacheAbsolutePath);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof OfflineZipFileInfo)) {
            return false;
        }
        OfflineZipFileInfo offlineZipFileInfo = (OfflineZipFileInfo) other;
        return Intrinsics.c(this.zipDirPath, offlineZipFileInfo.zipDirPath) && Intrinsics.c(this.zipCacheAbsolutePath, offlineZipFileInfo.zipCacheAbsolutePath);
    }

    public final String getZipCacheAbsolutePath() {
        return this.zipCacheAbsolutePath;
    }

    public final String getZipDirPath() {
        return this.zipDirPath;
    }

    public int hashCode() {
        return (this.zipDirPath.hashCode() * 31) + this.zipCacheAbsolutePath.hashCode();
    }

    public String toString() {
        return "OfflineZipFileInfo(zipDirPath=" + this.zipDirPath + ", zipCacheAbsolutePath=" + this.zipCacheAbsolutePath + ")";
    }
}
