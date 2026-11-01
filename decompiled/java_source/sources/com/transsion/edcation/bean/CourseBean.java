package com.transsion.edcation.bean;

import androidx.collection.s;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.moviedetailapi.bean.Cover;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b$\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B\u0085\u0001\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000f\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0011\u0010\u0012J\u000b\u0010&\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010'\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0016J\t\u0010(\u001a\u00020\u0005HÆ\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010,\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010-\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010.\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0016J\t\u0010/\u001a\u00020\u000fHÆ\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u008e\u0001\u00101\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u00102J\u0013\u00103\u001a\u0002042\b\u00105\u001a\u0004\u0018\u000106HÖ\u0003J\t\u00107\u001a\u00020\u0005HÖ\u0001J\t\u00108\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\u0017\u001a\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0014R\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0014R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0014R\u0013\u0010\f\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u0014R\u0015\u0010\r\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\u0017\u001a\u0004\b\"\u0010\u0016R\u0011\u0010\u000e\u001a\u00020\u000f¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u0014¨\u00069"}, d2 = {"Lcom/transsion/edcation/bean/CourseBean;", "Ljava/io/Serializable;", "subjectId", "", "subjectType", "", "seenStatus", CampaignEx.JSON_KEY_TITLE, "cover", "Lcom/transsion/moviedetailapi/bean/Cover;", "category", "contentRating", "genre", "durationSeconds", "viewers", "", "countryName", "<init>", "(Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/String;Lcom/transsion/moviedetailapi/bean/Cover;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;JLjava/lang/String;)V", "getSubjectId", "()Ljava/lang/String;", "getSubjectType", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getSeenStatus", "()I", "setSeenStatus", "(I)V", "getTitle", "getCover", "()Lcom/transsion/moviedetailapi/bean/Cover;", "getCategory", "getContentRating", "getGenre", "getDurationSeconds", "getViewers", "()J", "getCountryName", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "copy", "(Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/String;Lcom/transsion/moviedetailapi/bean/Cover;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;JLjava/lang/String;)Lcom/transsion/edcation/bean/CourseBean;", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "Education_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class CourseBean implements Serializable {
    private final String category;
    private final String contentRating;
    private final String countryName;
    private final Cover cover;
    private final Integer durationSeconds;
    private final String genre;
    private int seenStatus;
    private final String subjectId;
    private final Integer subjectType;
    private final String title;
    private final long viewers;

    public CourseBean(String str, Integer num, int i11, String str2, Cover cover, String str3, String str4, String str5, Integer num2, long j11, String str6) {
        this.subjectId = str;
        this.subjectType = num;
        this.seenStatus = i11;
        this.title = str2;
        this.cover = cover;
        this.category = str3;
        this.contentRating = str4;
        this.genre = str5;
        this.durationSeconds = num2;
        this.viewers = j11;
        this.countryName = str6;
    }

    public /* synthetic */ CourseBean(String str, Integer num, int i11, String str2, Cover cover, String str3, String str4, String str5, Integer num2, long j11, String str6, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i12 & 2) != 0 ? null : num, (i12 & 4) != 0 ? 0 : i11, (i12 & 8) != 0 ? null : str2, (i12 & 16) != 0 ? null : cover, (i12 & 32) != 0 ? null : str3, (i12 & 64) != 0 ? null : str4, (i12 & 128) != 0 ? null : str5, (i12 & 256) != 0 ? 0 : num2, (i12 & 512) != 0 ? 0L : j11, (i12 & 1024) == 0 ? str6 : null);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getSubjectId() {
        return this.subjectId;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final long getViewers() {
        return this.viewers;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final String getCountryName() {
        return this.countryName;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Integer getSubjectType() {
        return this.subjectType;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getSeenStatus() {
        return this.seenStatus;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Cover getCover() {
        return this.cover;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getCategory() {
        return this.category;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getContentRating() {
        return this.contentRating;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getGenre() {
        return this.genre;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final Integer getDurationSeconds() {
        return this.durationSeconds;
    }

    public final CourseBean copy(String subjectId, Integer subjectType, int seenStatus, String title, Cover cover, String category, String contentRating, String genre, Integer durationSeconds, long viewers, String countryName) {
        return new CourseBean(subjectId, subjectType, seenStatus, title, cover, category, contentRating, genre, durationSeconds, viewers, countryName);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CourseBean)) {
            return false;
        }
        CourseBean courseBean = (CourseBean) other;
        return Intrinsics.c(this.subjectId, courseBean.subjectId) && Intrinsics.c(this.subjectType, courseBean.subjectType) && this.seenStatus == courseBean.seenStatus && Intrinsics.c(this.title, courseBean.title) && Intrinsics.c(this.cover, courseBean.cover) && Intrinsics.c(this.category, courseBean.category) && Intrinsics.c(this.contentRating, courseBean.contentRating) && Intrinsics.c(this.genre, courseBean.genre) && Intrinsics.c(this.durationSeconds, courseBean.durationSeconds) && this.viewers == courseBean.viewers && Intrinsics.c(this.countryName, courseBean.countryName);
    }

    public final String getCategory() {
        return this.category;
    }

    public final String getContentRating() {
        return this.contentRating;
    }

    public final String getCountryName() {
        return this.countryName;
    }

    public final Cover getCover() {
        return this.cover;
    }

    public final Integer getDurationSeconds() {
        return this.durationSeconds;
    }

    public final String getGenre() {
        return this.genre;
    }

    public final int getSeenStatus() {
        return this.seenStatus;
    }

    public final String getSubjectId() {
        return this.subjectId;
    }

    public final Integer getSubjectType() {
        return this.subjectType;
    }

    public final String getTitle() {
        return this.title;
    }

    public final long getViewers() {
        return this.viewers;
    }

    public int hashCode() {
        String str = this.subjectId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        Integer num = this.subjectType;
        int iHashCode2 = (((iHashCode + (num == null ? 0 : num.hashCode())) * 31) + this.seenStatus) * 31;
        String str2 = this.title;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Cover cover = this.cover;
        int iHashCode4 = (iHashCode3 + (cover == null ? 0 : cover.hashCode())) * 31;
        String str3 = this.category;
        int iHashCode5 = (iHashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.contentRating;
        int iHashCode6 = (iHashCode5 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.genre;
        int iHashCode7 = (iHashCode6 + (str5 == null ? 0 : str5.hashCode())) * 31;
        Integer num2 = this.durationSeconds;
        int iHashCode8 = (((iHashCode7 + (num2 == null ? 0 : num2.hashCode())) * 31) + s.a(this.viewers)) * 31;
        String str6 = this.countryName;
        return iHashCode8 + (str6 != null ? str6.hashCode() : 0);
    }

    public final void setSeenStatus(int i11) {
        this.seenStatus = i11;
    }

    public String toString() {
        return "CourseBean(subjectId=" + this.subjectId + ", subjectType=" + this.subjectType + ", seenStatus=" + this.seenStatus + ", title=" + this.title + ", cover=" + this.cover + ", category=" + this.category + ", contentRating=" + this.contentRating + ", genre=" + this.genre + ", durationSeconds=" + this.durationSeconds + ", viewers=" + this.viewers + ", countryName=" + this.countryName + ")";
    }
}
