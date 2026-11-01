package com.transsion.baselib.db.video;

import androidx.annotation.Keep;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b-\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u009d\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0011\u001a\u00020\n\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0013\u0010\u0014J\t\u0010(\u001a\u00020\u0003HÆ\u0003J\t\u0010)\u001a\u00020\u0003HÆ\u0003J\t\u0010*\u001a\u00020\u0006HÆ\u0003J\t\u0010+\u001a\u00020\u0006HÆ\u0003J\t\u0010,\u001a\u00020\u0006HÆ\u0003J\t\u0010-\u001a\u00020\nHÆ\u0003J\u000b\u0010.\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00103\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u00104\u001a\u00020\nHÆ\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\u0003HÆ\u0003J£\u0001\u00106\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0011\u001a\u00020\n2\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u00107\u001a\u0002082\b\u00109\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010:\u001a\u00020\u0006HÖ\u0001J\t\u0010;\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0016R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0011\u0010\u0007\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0019R\u0011\u0010\b\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0019R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0016R\u0013\u0010\f\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0016R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0016R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u0016R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u0016R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u0016R\u0011\u0010\u0011\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u001dR\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u0016\"\u0004\b&\u0010'¨\u0006<"}, d2 = {"Lcom/transsion/baselib/db/video/ShortTVPlayBean;", "", "subjectId", "", "id", "ep", "", "se", "totalEp", NotificationCompat.CATEGORY_PROGRESS, "", CampaignEx.JSON_KEY_TITLE, TrackingKey.DESCRIPTION, "coverUrl", "thumbnail", "videoId", "videoUrl", "timeStamp", "subtitleSelectId", "<init>", "(Ljava/lang/String;Ljava/lang/String;IIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V", "getSubjectId", "()Ljava/lang/String;", "getId", "getEp", "()I", "getSe", "getTotalEp", "getProgress", "()J", "getTitle", "getDescription", "getCoverUrl", "getThumbnail", "getVideoId", "getVideoUrl", "getTimeStamp", "getSubtitleSelectId", "setSubtitleSelectId", "(Ljava/lang/String;)V", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "toString", "BaseLib_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ShortTVPlayBean {
    private final String coverUrl;
    private final String description;
    private final int ep;
    private final String id;
    private final long progress;
    private final int se;
    private final String subjectId;
    private String subtitleSelectId;
    private final String thumbnail;
    private final long timeStamp;
    private final String title;
    private final int totalEp;
    private final String videoId;
    private final String videoUrl;

    public ShortTVPlayBean(String subjectId, String id2, int i11, int i12, int i13, long j11, String str, String str2, String str3, String str4, String str5, String str6, long j12, String str7) {
        Intrinsics.h(subjectId, "subjectId");
        Intrinsics.h(id2, "id");
        this.subjectId = subjectId;
        this.id = id2;
        this.ep = i11;
        this.se = i12;
        this.totalEp = i13;
        this.progress = j11;
        this.title = str;
        this.description = str2;
        this.coverUrl = str3;
        this.thumbnail = str4;
        this.videoId = str5;
        this.videoUrl = str6;
        this.timeStamp = j12;
        this.subtitleSelectId = str7;
    }

    public /* synthetic */ ShortTVPlayBean(String str, String str2, int i11, int i12, int i13, long j11, String str3, String str4, String str5, String str6, String str7, String str8, long j12, String str9, int i14, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i14 & 4) != 0 ? 0 : i11, (i14 & 8) != 0 ? 0 : i12, (i14 & 16) != 0 ? 0 : i13, (i14 & 32) != 0 ? 0L : j11, (i14 & 64) != 0 ? null : str3, (i14 & 128) != 0 ? null : str4, (i14 & 256) != 0 ? null : str5, (i14 & 512) != 0 ? null : str6, (i14 & 1024) != 0 ? null : str7, (i14 & 2048) != 0 ? null : str8, (i14 & 4096) != 0 ? 0L : j12, (i14 & 8192) != 0 ? "" : str9);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getSubjectId() {
        return this.subjectId;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getThumbnail() {
        return this.thumbnail;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final String getVideoId() {
        return this.videoId;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final String getVideoUrl() {
        return this.videoUrl;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final long getTimeStamp() {
        return this.timeStamp;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final String getSubtitleSelectId() {
        return this.subtitleSelectId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getEp() {
        return this.ep;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final int getSe() {
        return this.se;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final int getTotalEp() {
        return this.totalEp;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final long getProgress() {
        return this.progress;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getDescription() {
        return this.description;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getCoverUrl() {
        return this.coverUrl;
    }

    public final ShortTVPlayBean copy(String subjectId, String id2, int ep2, int se2, int totalEp, long progress, String title, String description, String coverUrl, String thumbnail, String videoId, String videoUrl, long timeStamp, String subtitleSelectId) {
        Intrinsics.h(subjectId, "subjectId");
        Intrinsics.h(id2, "id");
        return new ShortTVPlayBean(subjectId, id2, ep2, se2, totalEp, progress, title, description, coverUrl, thumbnail, videoId, videoUrl, timeStamp, subtitleSelectId);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ShortTVPlayBean)) {
            return false;
        }
        ShortTVPlayBean shortTVPlayBean = (ShortTVPlayBean) other;
        return Intrinsics.c(this.subjectId, shortTVPlayBean.subjectId) && Intrinsics.c(this.id, shortTVPlayBean.id) && this.ep == shortTVPlayBean.ep && this.se == shortTVPlayBean.se && this.totalEp == shortTVPlayBean.totalEp && this.progress == shortTVPlayBean.progress && Intrinsics.c(this.title, shortTVPlayBean.title) && Intrinsics.c(this.description, shortTVPlayBean.description) && Intrinsics.c(this.coverUrl, shortTVPlayBean.coverUrl) && Intrinsics.c(this.thumbnail, shortTVPlayBean.thumbnail) && Intrinsics.c(this.videoId, shortTVPlayBean.videoId) && Intrinsics.c(this.videoUrl, shortTVPlayBean.videoUrl) && this.timeStamp == shortTVPlayBean.timeStamp && Intrinsics.c(this.subtitleSelectId, shortTVPlayBean.subtitleSelectId);
    }

    public final String getCoverUrl() {
        return this.coverUrl;
    }

    public final String getDescription() {
        return this.description;
    }

    public final int getEp() {
        return this.ep;
    }

    public final String getId() {
        return this.id;
    }

    public final long getProgress() {
        return this.progress;
    }

    public final int getSe() {
        return this.se;
    }

    public final String getSubjectId() {
        return this.subjectId;
    }

    public final String getSubtitleSelectId() {
        return this.subtitleSelectId;
    }

    public final String getThumbnail() {
        return this.thumbnail;
    }

    public final long getTimeStamp() {
        return this.timeStamp;
    }

    public final String getTitle() {
        return this.title;
    }

    public final int getTotalEp() {
        return this.totalEp;
    }

    public final String getVideoId() {
        return this.videoId;
    }

    public final String getVideoUrl() {
        return this.videoUrl;
    }

    public int hashCode() {
        int iHashCode = ((((((((((this.subjectId.hashCode() * 31) + this.id.hashCode()) * 31) + this.ep) * 31) + this.se) * 31) + this.totalEp) * 31) + androidx.collection.s.a(this.progress)) * 31;
        String str = this.title;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.description;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.coverUrl;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.thumbnail;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.videoId;
        int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.videoUrl;
        int iHashCode7 = (((iHashCode6 + (str6 == null ? 0 : str6.hashCode())) * 31) + androidx.collection.s.a(this.timeStamp)) * 31;
        String str7 = this.subtitleSelectId;
        return iHashCode7 + (str7 != null ? str7.hashCode() : 0);
    }

    public final void setSubtitleSelectId(String str) {
        this.subtitleSelectId = str;
    }

    public String toString() {
        return "ShortTVPlayBean(subjectId=" + this.subjectId + ", id=" + this.id + ", ep=" + this.ep + ", se=" + this.se + ", totalEp=" + this.totalEp + ", progress=" + this.progress + ", title=" + this.title + ", description=" + this.description + ", coverUrl=" + this.coverUrl + ", thumbnail=" + this.thumbnail + ", videoId=" + this.videoId + ", videoUrl=" + this.videoUrl + ", timeStamp=" + this.timeStamp + ", subtitleSelectId=" + this.subtitleSelectId + ")";
    }
}
