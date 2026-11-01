package com.transsion.lib_web.download_render.data;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.hisavana.common.tracking.TrackingKey;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b.\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0083\u0001\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u0012\u0014\b\u0002\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\n0\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0011\u0010\u0012J\u000b\u00101\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u00103\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u001aJ\u000b\u00104\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u00105\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tHÆ\u0003J\u0015\u00106\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\n0\fHÆ\u0003J\u0010\u00107\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u001aJ\u0010\u00108\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u001aJ\u0010\u00109\u001a\u0004\u0018\u00010\u0010HÆ\u0003¢\u0006\u0002\u0010-J\u008a\u0001\u0010:\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t2\u0014\b\u0002\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\n0\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÆ\u0001¢\u0006\u0002\u0010;J\u0013\u0010<\u001a\u00020\u00102\b\u0010=\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010>\u001a\u00020?HÖ\u0001J\t\u0010@\u001a\u00020\u0003HÖ\u0001R \u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R \u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0014\"\u0004\b\u0018\u0010\u0016R\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001d\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR \u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u0014\"\u0004\b\u001f\u0010\u0016R\"\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R&\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\n0\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u001e\u0010\r\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001d\u001a\u0004\b(\u0010\u001a\"\u0004\b)\u0010\u001cR\u001e\u0010\u000e\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001d\u001a\u0004\b*\u0010\u001a\"\u0004\b+\u0010\u001cR\u001e\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u0010\n\u0002\u00100\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/¨\u0006A"}, d2 = {"Lcom/transsion/lib_web/download_render/data/PageData;", "", "url", "", "versionCode", TrackingKey.PRIORITY, "", "manifestUrl", "files", "", "Lcom/transsion/lib_web/download_render/data/FileData;", "localFileMap", "", "usedTime", "upgradeTime", "downloadStatus", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V", "getUrl", "()Ljava/lang/String;", "setUrl", "(Ljava/lang/String;)V", "getVersionCode", "setVersionCode", "getPriority", "()Ljava/lang/Long;", "setPriority", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "getManifestUrl", "setManifestUrl", "getFiles", "()Ljava/util/List;", "setFiles", "(Ljava/util/List;)V", "getLocalFileMap", "()Ljava/util/Map;", "setLocalFileMap", "(Ljava/util/Map;)V", "getUsedTime", "setUsedTime", "getUpgradeTime", "setUpgradeTime", "getDownloadStatus", "()Ljava/lang/Boolean;", "setDownloadStatus", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/transsion/lib_web/download_render/data/PageData;", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "lib_web_release"}, k = 1, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class PageData {
    private Boolean downloadStatus;
    private List<FileData> files;
    private Map<String, FileData> localFileMap;

    @SerializedName("manifestUrl")
    private String manifestUrl;
    private Long priority;
    private Long upgradeTime;

    @SerializedName("h5Url")
    private String url;
    private Long usedTime;

    @SerializedName("version")
    private String versionCode;

    public PageData() {
        this(null, null, null, null, null, null, null, null, null, 511, null);
    }

    public PageData(String str, String str2, Long l11, String str3, List<FileData> list, Map<String, FileData> localFileMap, Long l12, Long l13, Boolean bool) {
        Intrinsics.h(localFileMap, "localFileMap");
        this.url = str;
        this.versionCode = str2;
        this.priority = l11;
        this.manifestUrl = str3;
        this.files = list;
        this.localFileMap = localFileMap;
        this.usedTime = l12;
        this.upgradeTime = l13;
        this.downloadStatus = bool;
    }

    public /* synthetic */ PageData(String str, String str2, Long l11, String str3, List list, Map map, Long l12, Long l13, Boolean bool, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : l11, (i11 & 8) != 0 ? null : str3, (i11 & 16) != 0 ? null : list, (i11 & 32) != 0 ? new ConcurrentHashMap() : map, (i11 & 64) != 0 ? null : l12, (i11 & 128) != 0 ? null : l13, (i11 & 256) == 0 ? bool : null);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getUrl() {
        return this.url;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getVersionCode() {
        return this.versionCode;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Long getPriority() {
        return this.priority;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getManifestUrl() {
        return this.manifestUrl;
    }

    public final List<FileData> component5() {
        return this.files;
    }

    public final Map<String, FileData> component6() {
        return this.localFileMap;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final Long getUsedTime() {
        return this.usedTime;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final Long getUpgradeTime() {
        return this.upgradeTime;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final Boolean getDownloadStatus() {
        return this.downloadStatus;
    }

    public final PageData copy(String url, String versionCode, Long priority, String manifestUrl, List<FileData> files, Map<String, FileData> localFileMap, Long usedTime, Long upgradeTime, Boolean downloadStatus) {
        Intrinsics.h(localFileMap, "localFileMap");
        return new PageData(url, versionCode, priority, manifestUrl, files, localFileMap, usedTime, upgradeTime, downloadStatus);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PageData)) {
            return false;
        }
        PageData pageData = (PageData) other;
        return Intrinsics.c(this.url, pageData.url) && Intrinsics.c(this.versionCode, pageData.versionCode) && Intrinsics.c(this.priority, pageData.priority) && Intrinsics.c(this.manifestUrl, pageData.manifestUrl) && Intrinsics.c(this.files, pageData.files) && Intrinsics.c(this.localFileMap, pageData.localFileMap) && Intrinsics.c(this.usedTime, pageData.usedTime) && Intrinsics.c(this.upgradeTime, pageData.upgradeTime) && Intrinsics.c(this.downloadStatus, pageData.downloadStatus);
    }

    public final Boolean getDownloadStatus() {
        return this.downloadStatus;
    }

    public final List<FileData> getFiles() {
        return this.files;
    }

    public final Map<String, FileData> getLocalFileMap() {
        return this.localFileMap;
    }

    public final String getManifestUrl() {
        return this.manifestUrl;
    }

    public final Long getPriority() {
        return this.priority;
    }

    public final Long getUpgradeTime() {
        return this.upgradeTime;
    }

    public final String getUrl() {
        return this.url;
    }

    public final Long getUsedTime() {
        return this.usedTime;
    }

    public final String getVersionCode() {
        return this.versionCode;
    }

    public int hashCode() {
        String str = this.url;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.versionCode;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        Long l11 = this.priority;
        int iHashCode3 = (iHashCode2 + (l11 == null ? 0 : l11.hashCode())) * 31;
        String str3 = this.manifestUrl;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        List<FileData> list = this.files;
        int iHashCode5 = (((iHashCode4 + (list == null ? 0 : list.hashCode())) * 31) + this.localFileMap.hashCode()) * 31;
        Long l12 = this.usedTime;
        int iHashCode6 = (iHashCode5 + (l12 == null ? 0 : l12.hashCode())) * 31;
        Long l13 = this.upgradeTime;
        int iHashCode7 = (iHashCode6 + (l13 == null ? 0 : l13.hashCode())) * 31;
        Boolean bool = this.downloadStatus;
        return iHashCode7 + (bool != null ? bool.hashCode() : 0);
    }

    public final void setDownloadStatus(Boolean bool) {
        this.downloadStatus = bool;
    }

    public final void setFiles(List<FileData> list) {
        this.files = list;
    }

    public final void setLocalFileMap(Map<String, FileData> map) {
        Intrinsics.h(map, "<set-?>");
        this.localFileMap = map;
    }

    public final void setManifestUrl(String str) {
        this.manifestUrl = str;
    }

    public final void setPriority(Long l11) {
        this.priority = l11;
    }

    public final void setUpgradeTime(Long l11) {
        this.upgradeTime = l11;
    }

    public final void setUrl(String str) {
        this.url = str;
    }

    public final void setUsedTime(Long l11) {
        this.usedTime = l11;
    }

    public final void setVersionCode(String str) {
        this.versionCode = str;
    }

    public String toString() {
        return "PageData(url=" + this.url + ", versionCode=" + this.versionCode + ", priority=" + this.priority + ", manifestUrl=" + this.manifestUrl + ", files=" + this.files + ", localFileMap=" + this.localFileMap + ", usedTime=" + this.usedTime + ", upgradeTime=" + this.upgradeTime + ", downloadStatus=" + this.downloadStatus + ")";
    }
}
