package com.transsion.lib_web.download_render.task.compare;

import androidx.annotation.Keep;
import androidx.collection.s;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.lib_web.download_render.data.FileData;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B9\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u000f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u000f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\bHÆ\u0003JC\u0010\u0015\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\fR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u001d"}, d2 = {"Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;", "", "removeFileList", "", "Lcom/transsion/lib_web/download_render/data/FileData;", "copyFileList", "downloadFileList", "totalFileSize", "", "<init>", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;J)V", "getRemoveFileList", "()Ljava/util/List;", "getCopyFileList", "getDownloadFileList", "getTotalFileSize", "()J", "component1", "component2", "component3", "component4", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "", "lib_web_release"}, k = 1, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class CompareResponse {
    private final List<FileData> copyFileList;
    private final List<FileData> downloadFileList;
    private final List<FileData> removeFileList;
    private final long totalFileSize;

    public CompareResponse(List<FileData> removeFileList, List<FileData> copyFileList, List<FileData> downloadFileList, long j11) {
        Intrinsics.h(removeFileList, "removeFileList");
        Intrinsics.h(copyFileList, "copyFileList");
        Intrinsics.h(downloadFileList, "downloadFileList");
        this.removeFileList = removeFileList;
        this.copyFileList = copyFileList;
        this.downloadFileList = downloadFileList;
        this.totalFileSize = j11;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CompareResponse copy$default(CompareResponse compareResponse, List list, List list2, List list3, long j11, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = compareResponse.removeFileList;
        }
        if ((i11 & 2) != 0) {
            list2 = compareResponse.copyFileList;
        }
        List list4 = list2;
        if ((i11 & 4) != 0) {
            list3 = compareResponse.downloadFileList;
        }
        List list5 = list3;
        if ((i11 & 8) != 0) {
            j11 = compareResponse.totalFileSize;
        }
        return compareResponse.copy(list, list4, list5, j11);
    }

    public final List<FileData> component1() {
        return this.removeFileList;
    }

    public final List<FileData> component2() {
        return this.copyFileList;
    }

    public final List<FileData> component3() {
        return this.downloadFileList;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final long getTotalFileSize() {
        return this.totalFileSize;
    }

    public final CompareResponse copy(List<FileData> removeFileList, List<FileData> copyFileList, List<FileData> downloadFileList, long totalFileSize) {
        Intrinsics.h(removeFileList, "removeFileList");
        Intrinsics.h(copyFileList, "copyFileList");
        Intrinsics.h(downloadFileList, "downloadFileList");
        return new CompareResponse(removeFileList, copyFileList, downloadFileList, totalFileSize);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CompareResponse)) {
            return false;
        }
        CompareResponse compareResponse = (CompareResponse) other;
        return Intrinsics.c(this.removeFileList, compareResponse.removeFileList) && Intrinsics.c(this.copyFileList, compareResponse.copyFileList) && Intrinsics.c(this.downloadFileList, compareResponse.downloadFileList) && this.totalFileSize == compareResponse.totalFileSize;
    }

    public final List<FileData> getCopyFileList() {
        return this.copyFileList;
    }

    public final List<FileData> getDownloadFileList() {
        return this.downloadFileList;
    }

    public final List<FileData> getRemoveFileList() {
        return this.removeFileList;
    }

    public final long getTotalFileSize() {
        return this.totalFileSize;
    }

    public int hashCode() {
        return (((((this.removeFileList.hashCode() * 31) + this.copyFileList.hashCode()) * 31) + this.downloadFileList.hashCode()) * 31) + s.a(this.totalFileSize);
    }

    public String toString() {
        return "CompareResponse(removeFileList=" + this.removeFileList + ", copyFileList=" + this.copyFileList + ", downloadFileList=" + this.downloadFileList + ", totalFileSize=" + this.totalFileSize + ")";
    }
}
