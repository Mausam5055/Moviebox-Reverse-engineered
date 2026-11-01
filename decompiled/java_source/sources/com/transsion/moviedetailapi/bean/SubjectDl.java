package com.transsion.moviedetailapi.bean;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u001e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BI\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n¢\u0006\u0004\b\f\u0010\rJ\u000b\u0010!\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010#\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u0015J\u000b\u0010$\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010&\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nHÆ\u0003J\\\u0010'\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nHÆ\u0001¢\u0006\u0002\u0010(J\u0013\u0010)\u001a\u00020*2\b\u0010+\u001a\u0004\u0018\u00010,HÖ\u0003J\t\u0010-\u001a\u00020.HÖ\u0001J\t\u0010/\u001a\u00020\u0003HÖ\u0001R \u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R \u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u000f\"\u0004\b\u0013\u0010\u0011R\"\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0018\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R \u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u000f\"\u0004\b\u001a\u0010\u0011R \u0010\b\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u000f\"\u0004\b\u001c\u0010\u0011R&\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u00060"}, d2 = {"Lcom/transsion/moviedetailapi/bean/SubjectDl;", "Ljava/io/Serializable;", "resourceId", "", "url", "size", "", "sourceUrl", "postId", "extSubtitle", "", "Lcom/transsion/moviedetailapi/bean/SubtitleItem;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "getResourceId", "()Ljava/lang/String;", "setResourceId", "(Ljava/lang/String;)V", "getUrl", "setUrl", "getSize", "()Ljava/lang/Long;", "setSize", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "getSourceUrl", "setSourceUrl", "getPostId", "setPostId", "getExtSubtitle", "()Ljava/util/List;", "setExtSubtitle", "(Ljava/util/List;)V", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/transsion/moviedetailapi/bean/SubjectDl;", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "MovieDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class SubjectDl implements Serializable {

    @SerializedName("extCaptions")
    private List<SubtitleItem> extSubtitle;

    @SerializedName("postId")
    private String postId;

    @SerializedName("id")
    private String resourceId;

    @SerializedName("size")
    private Long size;

    @SerializedName("sourceUrl")
    private String sourceUrl;

    @SerializedName("url")
    private String url;

    public SubjectDl(String str, String str2, Long l11, String str3, String str4, List<SubtitleItem> list) {
        this.resourceId = str;
        this.url = str2;
        this.size = l11;
        this.sourceUrl = str3;
        this.postId = str4;
        this.extSubtitle = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SubjectDl copy$default(SubjectDl subjectDl, String str, String str2, Long l11, String str3, String str4, List list, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = subjectDl.resourceId;
        }
        if ((i11 & 2) != 0) {
            str2 = subjectDl.url;
        }
        String str5 = str2;
        if ((i11 & 4) != 0) {
            l11 = subjectDl.size;
        }
        Long l12 = l11;
        if ((i11 & 8) != 0) {
            str3 = subjectDl.sourceUrl;
        }
        String str6 = str3;
        if ((i11 & 16) != 0) {
            str4 = subjectDl.postId;
        }
        String str7 = str4;
        if ((i11 & 32) != 0) {
            list = subjectDl.extSubtitle;
        }
        return subjectDl.copy(str, str5, l12, str6, str7, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getResourceId() {
        return this.resourceId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getUrl() {
        return this.url;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Long getSize() {
        return this.size;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getSourceUrl() {
        return this.sourceUrl;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getPostId() {
        return this.postId;
    }

    public final List<SubtitleItem> component6() {
        return this.extSubtitle;
    }

    public final SubjectDl copy(String resourceId, String url, Long size, String sourceUrl, String postId, List<SubtitleItem> extSubtitle) {
        return new SubjectDl(resourceId, url, size, sourceUrl, postId, extSubtitle);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SubjectDl)) {
            return false;
        }
        SubjectDl subjectDl = (SubjectDl) other;
        return Intrinsics.c(this.resourceId, subjectDl.resourceId) && Intrinsics.c(this.url, subjectDl.url) && Intrinsics.c(this.size, subjectDl.size) && Intrinsics.c(this.sourceUrl, subjectDl.sourceUrl) && Intrinsics.c(this.postId, subjectDl.postId) && Intrinsics.c(this.extSubtitle, subjectDl.extSubtitle);
    }

    public final List<SubtitleItem> getExtSubtitle() {
        return this.extSubtitle;
    }

    public final String getPostId() {
        return this.postId;
    }

    public final String getResourceId() {
        return this.resourceId;
    }

    public final Long getSize() {
        return this.size;
    }

    public final String getSourceUrl() {
        return this.sourceUrl;
    }

    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        String str = this.resourceId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.url;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        Long l11 = this.size;
        int iHashCode3 = (iHashCode2 + (l11 == null ? 0 : l11.hashCode())) * 31;
        String str3 = this.sourceUrl;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.postId;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        List<SubtitleItem> list = this.extSubtitle;
        return iHashCode5 + (list != null ? list.hashCode() : 0);
    }

    public final void setExtSubtitle(List<SubtitleItem> list) {
        this.extSubtitle = list;
    }

    public final void setPostId(String str) {
        this.postId = str;
    }

    public final void setResourceId(String str) {
        this.resourceId = str;
    }

    public final void setSize(Long l11) {
        this.size = l11;
    }

    public final void setSourceUrl(String str) {
        this.sourceUrl = str;
    }

    public final void setUrl(String str) {
        this.url = str;
    }

    public String toString() {
        return "SubjectDl(resourceId=" + this.resourceId + ", url=" + this.url + ", size=" + this.size + ", sourceUrl=" + this.sourceUrl + ", postId=" + this.postId + ", extSubtitle=" + this.extSubtitle + ")";
    }
}
