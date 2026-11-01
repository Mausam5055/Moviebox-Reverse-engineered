package com.transsion.moviedetailapi.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Deprecated
@Keep
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b7\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001B\u008f\u0001\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\u000e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0013\u0010\u0014J\u0010\u00106\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0016J\u000b\u00107\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u00108\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u00109\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0016J\u000b\u0010:\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010<\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010=\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0011\u0010>\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rHÆ\u0003J\u0010\u0010?\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0016J\u0010\u0010@\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0016J\u000b\u0010A\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010B\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0016J°\u0001\u0010C\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00052\u0010\b\u0002\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010DJ\u0013\u0010E\u001a\u00020F2\b\u0010G\u001a\u0004\u0018\u00010HHÖ\u0003J\t\u0010I\u001a\u00020\u0003HÖ\u0001J\t\u0010J\u001a\u00020\u0005HÖ\u0001R\"\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0019\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR \u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001b\"\u0004\b\u001f\u0010\u001dR\"\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0019\u001a\u0004\b \u0010\u0016\"\u0004\b!\u0010\u0018R \u0010\b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u001b\"\u0004\b#\u0010\u001dR \u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\u001b\"\u0004\b%\u0010\u001dR \u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u001b\"\u0004\b'\u0010\u001dR \u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u001b\"\u0004\b)\u0010\u001dR&\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\"\u0010\u000f\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0019\u001a\u0004\b.\u0010\u0016\"\u0004\b/\u0010\u0018R\"\u0010\u0010\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0019\u001a\u0004\b0\u0010\u0016\"\u0004\b1\u0010\u0018R \u0010\u0011\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u0010\u001b\"\u0004\b3\u0010\u001dR\"\u0010\u0012\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0019\u001a\u0004\b4\u0010\u0016\"\u0004\b5\u0010\u0018¨\u0006K"}, d2 = {"Lcom/transsion/moviedetailapi/bean/ResolutionListBean;", "Ljava/io/Serializable;", "episode", "", CampaignEx.JSON_KEY_TITLE, "", "downloadUrl", "linkType", "size", "uploadBy", "resourceId", "postId", "extCaptions", "", "Lcom/transsion/moviedetailapi/bean/SubtitleItem;", "se", "ep", "sourceUrl", "resolution", "<init>", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V", "getEpisode", "()Ljava/lang/Integer;", "setEpisode", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "getDownloadUrl", "setDownloadUrl", "getLinkType", "setLinkType", "getSize", "setSize", "getUploadBy", "setUploadBy", "getResourceId", "setResourceId", "getPostId", "setPostId", "getExtCaptions", "()Ljava/util/List;", "setExtCaptions", "(Ljava/util/List;)V", "getSe", "setSe", "getEp", "setEp", "getSourceUrl", "setSourceUrl", "getResolution", "setResolution", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "copy", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)Lcom/transsion/moviedetailapi/bean/ResolutionListBean;", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "MovieDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ResolutionListBean implements Serializable {

    @SerializedName("resourceLink")
    private String downloadUrl;

    @SerializedName("ep")
    private Integer ep;

    @SerializedName("episode")
    private Integer episode;

    @SerializedName("extCaptions")
    private List<SubtitleItem> extCaptions;

    @SerializedName("linkType")
    private Integer linkType;

    @SerializedName("postId")
    private String postId;

    @SerializedName("resolution")
    private Integer resolution;

    @SerializedName("resourceId")
    private String resourceId;

    @SerializedName("se")
    private Integer se;

    @SerializedName("size")
    private String size;

    @SerializedName("sourceUrl")
    private String sourceUrl;

    @SerializedName(CampaignEx.JSON_KEY_TITLE)
    private String title;

    @SerializedName("uploadBy")
    private String uploadBy;

    public ResolutionListBean(Integer num, String str, String str2, Integer num2, String str3, String str4, String str5, String str6, List<SubtitleItem> list, Integer num3, Integer num4, String str7, Integer num5) {
        this.episode = num;
        this.title = str;
        this.downloadUrl = str2;
        this.linkType = num2;
        this.size = str3;
        this.uploadBy = str4;
        this.resourceId = str5;
        this.postId = str6;
        this.extCaptions = list;
        this.se = num3;
        this.ep = num4;
        this.sourceUrl = str7;
        this.resolution = num5;
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Integer getEpisode() {
        return this.episode;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final Integer getSe() {
        return this.se;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final Integer getEp() {
        return this.ep;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final String getSourceUrl() {
        return this.sourceUrl;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final Integer getResolution() {
        return this.resolution;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getDownloadUrl() {
        return this.downloadUrl;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Integer getLinkType() {
        return this.linkType;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getSize() {
        return this.size;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getUploadBy() {
        return this.uploadBy;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getResourceId() {
        return this.resourceId;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getPostId() {
        return this.postId;
    }

    public final List<SubtitleItem> component9() {
        return this.extCaptions;
    }

    public final ResolutionListBean copy(Integer episode, String title, String downloadUrl, Integer linkType, String size, String uploadBy, String resourceId, String postId, List<SubtitleItem> extCaptions, Integer se2, Integer ep2, String sourceUrl, Integer resolution) {
        return new ResolutionListBean(episode, title, downloadUrl, linkType, size, uploadBy, resourceId, postId, extCaptions, se2, ep2, sourceUrl, resolution);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ResolutionListBean)) {
            return false;
        }
        ResolutionListBean resolutionListBean = (ResolutionListBean) other;
        return Intrinsics.c(this.episode, resolutionListBean.episode) && Intrinsics.c(this.title, resolutionListBean.title) && Intrinsics.c(this.downloadUrl, resolutionListBean.downloadUrl) && Intrinsics.c(this.linkType, resolutionListBean.linkType) && Intrinsics.c(this.size, resolutionListBean.size) && Intrinsics.c(this.uploadBy, resolutionListBean.uploadBy) && Intrinsics.c(this.resourceId, resolutionListBean.resourceId) && Intrinsics.c(this.postId, resolutionListBean.postId) && Intrinsics.c(this.extCaptions, resolutionListBean.extCaptions) && Intrinsics.c(this.se, resolutionListBean.se) && Intrinsics.c(this.ep, resolutionListBean.ep) && Intrinsics.c(this.sourceUrl, resolutionListBean.sourceUrl) && Intrinsics.c(this.resolution, resolutionListBean.resolution);
    }

    public final String getDownloadUrl() {
        return this.downloadUrl;
    }

    public final Integer getEp() {
        return this.ep;
    }

    public final Integer getEpisode() {
        return this.episode;
    }

    public final List<SubtitleItem> getExtCaptions() {
        return this.extCaptions;
    }

    public final Integer getLinkType() {
        return this.linkType;
    }

    public final String getPostId() {
        return this.postId;
    }

    public final Integer getResolution() {
        return this.resolution;
    }

    public final String getResourceId() {
        return this.resourceId;
    }

    public final Integer getSe() {
        return this.se;
    }

    public final String getSize() {
        return this.size;
    }

    public final String getSourceUrl() {
        return this.sourceUrl;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getUploadBy() {
        return this.uploadBy;
    }

    public int hashCode() {
        Integer num = this.episode;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        String str = this.title;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.downloadUrl;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num2 = this.linkType;
        int iHashCode4 = (iHashCode3 + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str3 = this.size;
        int iHashCode5 = (iHashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.uploadBy;
        int iHashCode6 = (iHashCode5 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.resourceId;
        int iHashCode7 = (iHashCode6 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.postId;
        int iHashCode8 = (iHashCode7 + (str6 == null ? 0 : str6.hashCode())) * 31;
        List<SubtitleItem> list = this.extCaptions;
        int iHashCode9 = (iHashCode8 + (list == null ? 0 : list.hashCode())) * 31;
        Integer num3 = this.se;
        int iHashCode10 = (iHashCode9 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Integer num4 = this.ep;
        int iHashCode11 = (iHashCode10 + (num4 == null ? 0 : num4.hashCode())) * 31;
        String str7 = this.sourceUrl;
        int iHashCode12 = (iHashCode11 + (str7 == null ? 0 : str7.hashCode())) * 31;
        Integer num5 = this.resolution;
        return iHashCode12 + (num5 != null ? num5.hashCode() : 0);
    }

    public final void setDownloadUrl(String str) {
        this.downloadUrl = str;
    }

    public final void setEp(Integer num) {
        this.ep = num;
    }

    public final void setEpisode(Integer num) {
        this.episode = num;
    }

    public final void setExtCaptions(List<SubtitleItem> list) {
        this.extCaptions = list;
    }

    public final void setLinkType(Integer num) {
        this.linkType = num;
    }

    public final void setPostId(String str) {
        this.postId = str;
    }

    public final void setResolution(Integer num) {
        this.resolution = num;
    }

    public final void setResourceId(String str) {
        this.resourceId = str;
    }

    public final void setSe(Integer num) {
        this.se = num;
    }

    public final void setSize(String str) {
        this.size = str;
    }

    public final void setSourceUrl(String str) {
        this.sourceUrl = str;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public final void setUploadBy(String str) {
        this.uploadBy = str;
    }

    public String toString() {
        return "ResolutionListBean(episode=" + this.episode + ", title=" + this.title + ", downloadUrl=" + this.downloadUrl + ", linkType=" + this.linkType + ", size=" + this.size + ", uploadBy=" + this.uploadBy + ", resourceId=" + this.resourceId + ", postId=" + this.postId + ", extCaptions=" + this.extCaptions + ", se=" + this.se + ", ep=" + this.ep + ", sourceUrl=" + this.sourceUrl + ", resolution=" + this.resolution + ")";
    }
}
