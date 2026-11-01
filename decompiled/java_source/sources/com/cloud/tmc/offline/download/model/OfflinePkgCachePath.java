package com.cloud.tmc.offline.download.model;

import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@kotlin.Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006¢\u0006\u0002\u0010\bJ\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006HÆ\u0003J3\u0010\u0011\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0019\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0019"}, d2 = {"Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "group", "", "version", "zipFileInfo", "", "Lcom/cloud/tmc/offline/download/model/ZipFileInfo;", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "getGroup", "()Ljava/lang/String;", "getVersion", "getZipFileInfo", "()Ljava/util/List;", "component1", "component2", "component3", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class OfflinePkgCachePath extends BaseBean {
    private final String group;
    private final String version;
    private final List<ZipFileInfo> zipFileInfo;

    public OfflinePkgCachePath(String str, String str2, List<ZipFileInfo> list) {
        this.group = str;
        this.version = str2;
        this.zipFileInfo = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ OfflinePkgCachePath copy$default(OfflinePkgCachePath offlinePkgCachePath, String str, String str2, List list, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = offlinePkgCachePath.group;
        }
        if ((i11 & 2) != 0) {
            str2 = offlinePkgCachePath.version;
        }
        if ((i11 & 4) != 0) {
            list = offlinePkgCachePath.zipFileInfo;
        }
        return offlinePkgCachePath.copy(str, str2, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getGroup() {
        return this.group;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getVersion() {
        return this.version;
    }

    public final List<ZipFileInfo> component3() {
        return this.zipFileInfo;
    }

    public final OfflinePkgCachePath copy(String group, String version, List<ZipFileInfo> zipFileInfo) {
        return new OfflinePkgCachePath(group, version, zipFileInfo);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof OfflinePkgCachePath)) {
            return false;
        }
        OfflinePkgCachePath offlinePkgCachePath = (OfflinePkgCachePath) other;
        return Intrinsics.c(this.group, offlinePkgCachePath.group) && Intrinsics.c(this.version, offlinePkgCachePath.version) && Intrinsics.c(this.zipFileInfo, offlinePkgCachePath.zipFileInfo);
    }

    public final String getGroup() {
        return this.group;
    }

    public final String getVersion() {
        return this.version;
    }

    public final List<ZipFileInfo> getZipFileInfo() {
        return this.zipFileInfo;
    }

    public int hashCode() {
        String str = this.group;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.version;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        List<ZipFileInfo> list = this.zipFileInfo;
        return iHashCode2 + (list != null ? list.hashCode() : 0);
    }

    public String toString() {
        return "OfflinePkgCachePath(group=" + this.group + ", version=" + this.version + ", zipFileInfo=" + this.zipFileInfo + ")";
    }
}
