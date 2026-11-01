package com.cloud.tmc.offline.download.model;

import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@kotlin.Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0006HÆ\u0003J-\u0010\u0015\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019HÖ\u0003J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\r\"\u0004\b\u0011\u0010\u000f¨\u0006\u001d"}, d2 = {"Lcom/cloud/tmc/offline/download/model/ZipFileInfo;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "zipUnCompressPath", "", "url", "manifest", "Lcom/cloud/tmc/offline/download/model/OffPkgConfig;", "(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)V", "getManifest", "()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;", "setManifest", "(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)V", "getUrl", "()Ljava/lang/String;", "setUrl", "(Ljava/lang/String;)V", "getZipUnCompressPath", "setZipUnCompressPath", "component1", "component2", "component3", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ZipFileInfo extends BaseBean {
    private OffPkgConfig manifest;
    private String url;
    private String zipUnCompressPath;

    public ZipFileInfo() {
        this(null, null, null, 7, null);
    }

    public ZipFileInfo(String str, String str2, OffPkgConfig offPkgConfig) {
        this.zipUnCompressPath = str;
        this.url = str2;
        this.manifest = offPkgConfig;
    }

    public /* synthetic */ ZipFileInfo(String str, String str2, OffPkgConfig offPkgConfig, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : offPkgConfig);
    }

    public static /* synthetic */ ZipFileInfo copy$default(ZipFileInfo zipFileInfo, String str, String str2, OffPkgConfig offPkgConfig, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = zipFileInfo.zipUnCompressPath;
        }
        if ((i11 & 2) != 0) {
            str2 = zipFileInfo.url;
        }
        if ((i11 & 4) != 0) {
            offPkgConfig = zipFileInfo.manifest;
        }
        return zipFileInfo.copy(str, str2, offPkgConfig);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getZipUnCompressPath() {
        return this.zipUnCompressPath;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getUrl() {
        return this.url;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final OffPkgConfig getManifest() {
        return this.manifest;
    }

    public final ZipFileInfo copy(String zipUnCompressPath, String url, OffPkgConfig manifest) {
        return new ZipFileInfo(zipUnCompressPath, url, manifest);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ZipFileInfo)) {
            return false;
        }
        ZipFileInfo zipFileInfo = (ZipFileInfo) other;
        return Intrinsics.c(this.zipUnCompressPath, zipFileInfo.zipUnCompressPath) && Intrinsics.c(this.url, zipFileInfo.url) && Intrinsics.c(this.manifest, zipFileInfo.manifest);
    }

    public final OffPkgConfig getManifest() {
        return this.manifest;
    }

    public final String getUrl() {
        return this.url;
    }

    public final String getZipUnCompressPath() {
        return this.zipUnCompressPath;
    }

    public int hashCode() {
        String str = this.zipUnCompressPath;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.url;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        OffPkgConfig offPkgConfig = this.manifest;
        return iHashCode2 + (offPkgConfig != null ? offPkgConfig.hashCode() : 0);
    }

    public final void setManifest(OffPkgConfig offPkgConfig) {
        this.manifest = offPkgConfig;
    }

    public final void setUrl(String str) {
        this.url = str;
    }

    public final void setZipUnCompressPath(String str) {
        this.zipUnCompressPath = str;
    }

    public String toString() {
        return "ZipFileInfo(zipUnCompressPath=" + this.zipUnCompressPath + ", url=" + this.url + ", manifest=" + this.manifest + ")";
    }
}
