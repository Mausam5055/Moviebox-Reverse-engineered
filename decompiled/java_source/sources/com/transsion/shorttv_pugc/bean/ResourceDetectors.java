package com.transsion.shorttv_pugc.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b(\n\u0002\u0010\u000b\n\u0002\b\u0013\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001B©\u0001\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\b\u0012\u0010\b\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0014\u0010\u0015J\u0006\u0010:\u001a\u00020;J\u0006\u0010<\u001a\u00020;J\u0006\u0010=\u001a\u00020;J\u0010\u0010>\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0017J\u0010\u0010?\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0017J\u0010\u0010@\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u001eJ\u000b\u0010A\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010B\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010C\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010D\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010E\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010F\u001a\u0004\u0018\u00010\bHÆ\u0003J\u0010\u0010G\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u001eJ\u000b\u0010H\u001a\u0004\u0018\u00010\bHÆ\u0003J\u0011\u0010I\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011HÆ\u0003J\u0010\u0010J\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0017J°\u0001\u0010K\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\b2\u0010\b\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u00112\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010LJ\u0013\u0010M\u001a\u00020;2\b\u0010N\u001a\u0004\u0018\u00010OHÖ\u0003J\t\u0010P\u001a\u00020\u0003HÖ\u0001J\t\u0010Q\u001a\u00020\bHÖ\u0001R\"\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\"\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\b\u001b\u0010\u0017\"\u0004\b\u001c\u0010\u0019R\"\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010!\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R \u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R \u0010\t\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010#\"\u0004\b'\u0010%R \u0010\n\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010#\"\u0004\b)\u0010%R \u0010\u000b\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010#\"\u0004\b+\u0010%R \u0010\f\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010#\"\u0004\b-\u0010%R \u0010\r\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010#\"\u0004\b/\u0010%R\"\u0010\u000e\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010!\u001a\u0004\b0\u0010\u001e\"\u0004\b1\u0010 R \u0010\u000f\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u0010#\"\u0004\b3\u0010%R&\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u00105\"\u0004\b6\u00107R\u001e\u0010\u0013\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\b8\u0010\u0017\"\u0004\b9\u0010\u0019¨\u0006R"}, d2 = {"Lcom/transsion/shorttv_pugc/bean/ResourceDetectors;", "Ljava/io/Serializable;", NativeComponentConstants.KEY_COMPONENT_TYPE, "", "totalEpisode", "totalSize", "", "uploadTime", "", "uploadBy", "resourceLink", "downloadUrl", EventConstants.KEY_SOURCE, "resourceId", "firstSize", "postId", "resolutionList", "", "Lcom/transsion/shorttv_pugc/bean/DownloadItem;", "resolution", "<init>", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;)V", "getType", "()Ljava/lang/Integer;", "setType", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getTotalEpisode", "setTotalEpisode", "getTotalSize", "()Ljava/lang/Long;", "setTotalSize", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "getUploadTime", "()Ljava/lang/String;", "setUploadTime", "(Ljava/lang/String;)V", "getUploadBy", "setUploadBy", "getResourceLink", "setResourceLink", "getDownloadUrl", "setDownloadUrl", "getSource", "setSource", "getResourceId", "setResourceId", "getFirstSize", "setFirstSize", "getPostId", "setPostId", "getResolutionList", "()Ljava/util/List;", "setResolutionList", "(Ljava/util/List;)V", "getResolution", "setResolution", "isSingleResource", "", "isCollection", "isMultiResolution", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "copy", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;)Lcom/transsion/shorttv_pugc/bean/ResourceDetectors;", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ResourceDetectors implements Serializable {

    @SerializedName("downloadUrl")
    private String downloadUrl;

    @SerializedName("firstSize")
    private Long firstSize;

    @SerializedName("postId")
    private String postId;
    private transient Integer resolution;

    @SerializedName("resolutionList")
    private List<DownloadItem> resolutionList;

    @SerializedName("resourceId")
    private String resourceId;

    @SerializedName("resourceLink")
    private String resourceLink;

    @SerializedName(EventConstants.KEY_SOURCE)
    private String source;

    @SerializedName("totalEpisode")
    private Integer totalEpisode;

    @SerializedName("totalSize")
    private Long totalSize;

    @SerializedName(NativeComponentConstants.KEY_COMPONENT_TYPE)
    private Integer type;

    @SerializedName("uploadBy")
    private String uploadBy;

    @SerializedName("uploadTime")
    private String uploadTime;

    public ResourceDetectors() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, 8191, null);
    }

    public ResourceDetectors(Integer num, Integer num2, Long l11, String str, String str2, String str3, String str4, String str5, String str6, Long l12, String str7, List<DownloadItem> list, Integer num3) {
        this.type = num;
        this.totalEpisode = num2;
        this.totalSize = l11;
        this.uploadTime = str;
        this.uploadBy = str2;
        this.resourceLink = str3;
        this.downloadUrl = str4;
        this.source = str5;
        this.resourceId = str6;
        this.firstSize = l12;
        this.postId = str7;
        this.resolutionList = list;
        this.resolution = num3;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ ResourceDetectors(Integer num, Integer num2, Long l11, String str, String str2, String str3, String str4, String str5, String str6, Long l12, String str7, List list, Integer num3, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        Integer num4 = 0;
        this((i11 & 1) != 0 ? num4 : num, (i11 & 2) != 0 ? null : num2, (i11 & 4) != 0 ? null : l11, (i11 & 8) != 0 ? null : str, (i11 & 16) != 0 ? null : str2, (i11 & 32) != 0 ? null : str3, (i11 & 64) != 0 ? null : str4, (i11 & 128) != 0 ? null : str5, (i11 & 256) != 0 ? null : str6, (i11 & 512) != 0 ? null : l12, (i11 & 1024) != 0 ? null : str7, (i11 & 2048) == 0 ? list : null, (i11 & 4096) == 0 ? num3 : 0);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Integer getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final Long getFirstSize() {
        return this.firstSize;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final String getPostId() {
        return this.postId;
    }

    public final List<DownloadItem> component12() {
        return this.resolutionList;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final Integer getResolution() {
        return this.resolution;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Integer getTotalEpisode() {
        return this.totalEpisode;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Long getTotalSize() {
        return this.totalSize;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getUploadTime() {
        return this.uploadTime;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getUploadBy() {
        return this.uploadBy;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getResourceLink() {
        return this.resourceLink;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getDownloadUrl() {
        return this.downloadUrl;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getSource() {
        return this.source;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getResourceId() {
        return this.resourceId;
    }

    public final ResourceDetectors copy(Integer type, Integer totalEpisode, Long totalSize, String uploadTime, String uploadBy, String resourceLink, String downloadUrl, String source, String resourceId, Long firstSize, String postId, List<DownloadItem> resolutionList, Integer resolution) {
        return new ResourceDetectors(type, totalEpisode, totalSize, uploadTime, uploadBy, resourceLink, downloadUrl, source, resourceId, firstSize, postId, resolutionList, resolution);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ResourceDetectors)) {
            return false;
        }
        ResourceDetectors resourceDetectors = (ResourceDetectors) other;
        return Intrinsics.c(this.type, resourceDetectors.type) && Intrinsics.c(this.totalEpisode, resourceDetectors.totalEpisode) && Intrinsics.c(this.totalSize, resourceDetectors.totalSize) && Intrinsics.c(this.uploadTime, resourceDetectors.uploadTime) && Intrinsics.c(this.uploadBy, resourceDetectors.uploadBy) && Intrinsics.c(this.resourceLink, resourceDetectors.resourceLink) && Intrinsics.c(this.downloadUrl, resourceDetectors.downloadUrl) && Intrinsics.c(this.source, resourceDetectors.source) && Intrinsics.c(this.resourceId, resourceDetectors.resourceId) && Intrinsics.c(this.firstSize, resourceDetectors.firstSize) && Intrinsics.c(this.postId, resourceDetectors.postId) && Intrinsics.c(this.resolutionList, resourceDetectors.resolutionList) && Intrinsics.c(this.resolution, resourceDetectors.resolution);
    }

    public final String getDownloadUrl() {
        return this.downloadUrl;
    }

    public final Long getFirstSize() {
        return this.firstSize;
    }

    public final String getPostId() {
        return this.postId;
    }

    public final Integer getResolution() {
        return this.resolution;
    }

    public final List<DownloadItem> getResolutionList() {
        return this.resolutionList;
    }

    public final String getResourceId() {
        return this.resourceId;
    }

    public final String getResourceLink() {
        return this.resourceLink;
    }

    public final String getSource() {
        return this.source;
    }

    public final Integer getTotalEpisode() {
        return this.totalEpisode;
    }

    public final Long getTotalSize() {
        return this.totalSize;
    }

    public final Integer getType() {
        return this.type;
    }

    public final String getUploadBy() {
        return this.uploadBy;
    }

    public final String getUploadTime() {
        return this.uploadTime;
    }

    public int hashCode() {
        Integer num = this.type;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        Integer num2 = this.totalEpisode;
        int iHashCode2 = (iHashCode + (num2 == null ? 0 : num2.hashCode())) * 31;
        Long l11 = this.totalSize;
        int iHashCode3 = (iHashCode2 + (l11 == null ? 0 : l11.hashCode())) * 31;
        String str = this.uploadTime;
        int iHashCode4 = (iHashCode3 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.uploadBy;
        int iHashCode5 = (iHashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.resourceLink;
        int iHashCode6 = (iHashCode5 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.downloadUrl;
        int iHashCode7 = (iHashCode6 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.source;
        int iHashCode8 = (iHashCode7 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.resourceId;
        int iHashCode9 = (iHashCode8 + (str6 == null ? 0 : str6.hashCode())) * 31;
        Long l12 = this.firstSize;
        int iHashCode10 = (iHashCode9 + (l12 == null ? 0 : l12.hashCode())) * 31;
        String str7 = this.postId;
        int iHashCode11 = (iHashCode10 + (str7 == null ? 0 : str7.hashCode())) * 31;
        List<DownloadItem> list = this.resolutionList;
        int iHashCode12 = (iHashCode11 + (list == null ? 0 : list.hashCode())) * 31;
        Integer num3 = this.resolution;
        return iHashCode12 + (num3 != null ? num3.hashCode() : 0);
    }

    public final boolean isCollection() {
        Integer num = this.type;
        return (num != null ? num.intValue() : 0) == 1;
    }

    public final boolean isMultiResolution() {
        Integer num = this.type;
        if ((num != null ? num.intValue() : 0) != 0) {
            return false;
        }
        List<DownloadItem> list = this.resolutionList;
        return list != null ? list.isEmpty() ^ true : false;
    }

    public final boolean isSingleResource() {
        Integer num = this.type;
        if ((num != null ? num.intValue() : 0) != 0) {
            return false;
        }
        List<DownloadItem> list = this.resolutionList;
        return list != null ? list.isEmpty() : true;
    }

    public final void setDownloadUrl(String str) {
        this.downloadUrl = str;
    }

    public final void setFirstSize(Long l11) {
        this.firstSize = l11;
    }

    public final void setPostId(String str) {
        this.postId = str;
    }

    public final void setResolution(Integer num) {
        this.resolution = num;
    }

    public final void setResolutionList(List<DownloadItem> list) {
        this.resolutionList = list;
    }

    public final void setResourceId(String str) {
        this.resourceId = str;
    }

    public final void setResourceLink(String str) {
        this.resourceLink = str;
    }

    public final void setSource(String str) {
        this.source = str;
    }

    public final void setTotalEpisode(Integer num) {
        this.totalEpisode = num;
    }

    public final void setTotalSize(Long l11) {
        this.totalSize = l11;
    }

    public final void setType(Integer num) {
        this.type = num;
    }

    public final void setUploadBy(String str) {
        this.uploadBy = str;
    }

    public final void setUploadTime(String str) {
        this.uploadTime = str;
    }

    public String toString() {
        return "ResourceDetectors(type=" + this.type + ", totalEpisode=" + this.totalEpisode + ", totalSize=" + this.totalSize + ", uploadTime=" + this.uploadTime + ", uploadBy=" + this.uploadBy + ", resourceLink=" + this.resourceLink + ", downloadUrl=" + this.downloadUrl + ", source=" + this.source + ", resourceId=" + this.resourceId + ", firstSize=" + this.firstSize + ", postId=" + this.postId + ", resolutionList=" + this.resolutionList + ", resolution=" + this.resolution + ")";
    }
}
