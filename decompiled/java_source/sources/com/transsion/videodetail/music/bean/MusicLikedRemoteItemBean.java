package com.transsion.videodetail.music.bean;

import android.os.Parcel;
import android.os.Parcelable;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.moviedetailapi.bean.Cover;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b3\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u008b\u0001\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\u0012\u0010\u0013J\u000b\u00106\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00107\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00108\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u00109\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010:\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010<\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u0010%J\u000b\u0010=\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010>\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010?\u001a\u0004\u0018\u00010\u000fHÆ\u0003¢\u0006\u0002\u0010.J\u000b\u0010@\u001a\u0004\u0018\u00010\u0011HÆ\u0003J\u0092\u0001\u0010A\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÆ\u0001¢\u0006\u0002\u0010BJ\u0006\u0010C\u001a\u00020\u000bJ\u0013\u0010D\u001a\u00020E2\b\u0010F\u001a\u0004\u0018\u00010GHÖ\u0003J\t\u0010H\u001a\u00020\u000bHÖ\u0001J\t\u0010I\u001a\u00020\u0003HÖ\u0001J\u0016\u0010J\u001a\u00020K2\u0006\u0010L\u001a\u00020M2\u0006\u0010N\u001a\u00020\u000bR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0015\"\u0004\b\u0019\u0010\u0017R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u0015\"\u0004\b\u001f\u0010\u0017R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0015\"\u0004\b!\u0010\u0017R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0015\"\u0004\b#\u0010\u0017R\u001e\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010(\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u001c\u0010\f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010\u0015\"\u0004\b*\u0010\u0017R\u001c\u0010\r\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\u0015\"\u0004\b,\u0010\u0017R\u001e\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u0010\n\u0002\u00101\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u00103\"\u0004\b4\u00105¨\u0006O"}, d2 = {"Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;", "Landroid/os/Parcelable;", "subjectId", "", CampaignEx.JSON_KEY_TITLE, "cover", "Lcom/transsion/moviedetailapi/bean/Cover;", "countryName", "genre", "releaseDate", "durationSeconds", "", "singerName", "singerAvatar", "likeTime", "", "actionEnum", "Lcom/transsion/videodetail/music/bean/LikeListActionEnum;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Cover;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/transsion/videodetail/music/bean/LikeListActionEnum;)V", "getSubjectId", "()Ljava/lang/String;", "setSubjectId", "(Ljava/lang/String;)V", "getTitle", "setTitle", "getCover", "()Lcom/transsion/moviedetailapi/bean/Cover;", "setCover", "(Lcom/transsion/moviedetailapi/bean/Cover;)V", "getCountryName", "setCountryName", "getGenre", "setGenre", "getReleaseDate", "setReleaseDate", "getDurationSeconds", "()Ljava/lang/Integer;", "setDurationSeconds", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getSingerName", "setSingerName", "getSingerAvatar", "setSingerAvatar", "getLikeTime", "()Ljava/lang/Long;", "setLikeTime", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "getActionEnum", "()Lcom/transsion/videodetail/music/bean/LikeListActionEnum;", "setActionEnum", "(Lcom/transsion/videodetail/music/bean/LikeListActionEnum;)V", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "copy", "(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Cover;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/transsion/videodetail/music/bean/LikeListActionEnum;)Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "VideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class MusicLikedRemoteItemBean implements Parcelable {
    public static final Parcelable.Creator<MusicLikedRemoteItemBean> CREATOR = new a();
    private LikeListActionEnum actionEnum;
    private String countryName;
    private Cover cover;
    private Integer durationSeconds;
    private String genre;
    private Long likeTime;
    private String releaseDate;
    private String singerAvatar;
    private String singerName;
    private String subjectId;
    private String title;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final MusicLikedRemoteItemBean createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new MusicLikedRemoteItemBean(parcel.readString(), parcel.readString(), (Cover) parcel.readSerializable(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong()), parcel.readInt() == 0 ? null : LikeListActionEnum.valueOf(parcel.readString()));
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final MusicLikedRemoteItemBean[] newArray(int i11) {
            return new MusicLikedRemoteItemBean[i11];
        }
    }

    public MusicLikedRemoteItemBean() {
        this(null, null, null, null, null, null, null, null, null, null, null, 2047, null);
    }

    public MusicLikedRemoteItemBean(String str, String str2, Cover cover, String str3, String str4, String str5, Integer num, String str6, String str7, Long l11, LikeListActionEnum likeListActionEnum) {
        this.subjectId = str;
        this.title = str2;
        this.cover = cover;
        this.countryName = str3;
        this.genre = str4;
        this.releaseDate = str5;
        this.durationSeconds = num;
        this.singerName = str6;
        this.singerAvatar = str7;
        this.likeTime = l11;
        this.actionEnum = likeListActionEnum;
    }

    public /* synthetic */ MusicLikedRemoteItemBean(String str, String str2, Cover cover, String str3, String str4, String str5, Integer num, String str6, String str7, Long l11, LikeListActionEnum likeListActionEnum, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : cover, (i11 & 8) != 0 ? null : str3, (i11 & 16) != 0 ? null : str4, (i11 & 32) != 0 ? null : str5, (i11 & 64) != 0 ? null : num, (i11 & 128) != 0 ? null : str6, (i11 & 256) != 0 ? null : str7, (i11 & 512) != 0 ? null : l11, (i11 & 1024) == 0 ? likeListActionEnum : null);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getSubjectId() {
        return this.subjectId;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final Long getLikeTime() {
        return this.likeTime;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final LikeListActionEnum getActionEnum() {
        return this.actionEnum;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Cover getCover() {
        return this.cover;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getCountryName() {
        return this.countryName;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getGenre() {
        return this.genre;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getReleaseDate() {
        return this.releaseDate;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final Integer getDurationSeconds() {
        return this.durationSeconds;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getSingerName() {
        return this.singerName;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getSingerAvatar() {
        return this.singerAvatar;
    }

    public final MusicLikedRemoteItemBean copy(String subjectId, String title, Cover cover, String countryName, String genre, String releaseDate, Integer durationSeconds, String singerName, String singerAvatar, Long likeTime, LikeListActionEnum actionEnum) {
        return new MusicLikedRemoteItemBean(subjectId, title, cover, countryName, genre, releaseDate, durationSeconds, singerName, singerAvatar, likeTime, actionEnum);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MusicLikedRemoteItemBean)) {
            return false;
        }
        MusicLikedRemoteItemBean musicLikedRemoteItemBean = (MusicLikedRemoteItemBean) other;
        return Intrinsics.c(this.subjectId, musicLikedRemoteItemBean.subjectId) && Intrinsics.c(this.title, musicLikedRemoteItemBean.title) && Intrinsics.c(this.cover, musicLikedRemoteItemBean.cover) && Intrinsics.c(this.countryName, musicLikedRemoteItemBean.countryName) && Intrinsics.c(this.genre, musicLikedRemoteItemBean.genre) && Intrinsics.c(this.releaseDate, musicLikedRemoteItemBean.releaseDate) && Intrinsics.c(this.durationSeconds, musicLikedRemoteItemBean.durationSeconds) && Intrinsics.c(this.singerName, musicLikedRemoteItemBean.singerName) && Intrinsics.c(this.singerAvatar, musicLikedRemoteItemBean.singerAvatar) && Intrinsics.c(this.likeTime, musicLikedRemoteItemBean.likeTime) && this.actionEnum == musicLikedRemoteItemBean.actionEnum;
    }

    public final LikeListActionEnum getActionEnum() {
        return this.actionEnum;
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

    public final Long getLikeTime() {
        return this.likeTime;
    }

    public final String getReleaseDate() {
        return this.releaseDate;
    }

    public final String getSingerAvatar() {
        return this.singerAvatar;
    }

    public final String getSingerName() {
        return this.singerName;
    }

    public final String getSubjectId() {
        return this.subjectId;
    }

    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        String str = this.subjectId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.title;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        Cover cover = this.cover;
        int iHashCode3 = (iHashCode2 + (cover == null ? 0 : cover.hashCode())) * 31;
        String str3 = this.countryName;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.genre;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.releaseDate;
        int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        Integer num = this.durationSeconds;
        int iHashCode7 = (iHashCode6 + (num == null ? 0 : num.hashCode())) * 31;
        String str6 = this.singerName;
        int iHashCode8 = (iHashCode7 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.singerAvatar;
        int iHashCode9 = (iHashCode8 + (str7 == null ? 0 : str7.hashCode())) * 31;
        Long l11 = this.likeTime;
        int iHashCode10 = (iHashCode9 + (l11 == null ? 0 : l11.hashCode())) * 31;
        LikeListActionEnum likeListActionEnum = this.actionEnum;
        return iHashCode10 + (likeListActionEnum != null ? likeListActionEnum.hashCode() : 0);
    }

    public final void setActionEnum(LikeListActionEnum likeListActionEnum) {
        this.actionEnum = likeListActionEnum;
    }

    public final void setCountryName(String str) {
        this.countryName = str;
    }

    public final void setCover(Cover cover) {
        this.cover = cover;
    }

    public final void setDurationSeconds(Integer num) {
        this.durationSeconds = num;
    }

    public final void setGenre(String str) {
        this.genre = str;
    }

    public final void setLikeTime(Long l11) {
        this.likeTime = l11;
    }

    public final void setReleaseDate(String str) {
        this.releaseDate = str;
    }

    public final void setSingerAvatar(String str) {
        this.singerAvatar = str;
    }

    public final void setSingerName(String str) {
        this.singerName = str;
    }

    public final void setSubjectId(String str) {
        this.subjectId = str;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public String toString() {
        return "MusicLikedRemoteItemBean(subjectId=" + this.subjectId + ", title=" + this.title + ", cover=" + this.cover + ", countryName=" + this.countryName + ", genre=" + this.genre + ", releaseDate=" + this.releaseDate + ", durationSeconds=" + this.durationSeconds + ", singerName=" + this.singerName + ", singerAvatar=" + this.singerAvatar + ", likeTime=" + this.likeTime + ", actionEnum=" + this.actionEnum + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.subjectId);
        dest.writeString(this.title);
        dest.writeSerializable(this.cover);
        dest.writeString(this.countryName);
        dest.writeString(this.genre);
        dest.writeString(this.releaseDate);
        Integer num = this.durationSeconds;
        if (num == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num.intValue());
        }
        dest.writeString(this.singerName);
        dest.writeString(this.singerAvatar);
        Long l11 = this.likeTime;
        if (l11 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeLong(l11.longValue());
        }
        LikeListActionEnum likeListActionEnum = this.actionEnum;
        if (likeListActionEnum == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeString(likeListActionEnum.name());
        }
    }
}
