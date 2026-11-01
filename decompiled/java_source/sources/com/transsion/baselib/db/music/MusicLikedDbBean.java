package com.transsion.baselib.db.music;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import androidx.collection.s;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b,\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0083\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000f¢\u0006\u0004\b\u0010\u0010\u0011J\t\u0010.\u001a\u00020\u0003HÆ\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00103\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u00104\u001a\u00020\nHÆ\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00107\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u00108\u001a\u00020\u000fHÆ\u0003J\u0087\u0001\u00109\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\t\u001a\u00020\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u000e\u001a\u00020\u000fHÆ\u0001J\u0006\u0010:\u001a\u00020\nJ\u0013\u0010;\u001a\u00020<2\b\u0010=\u001a\u0004\u0018\u00010>HÖ\u0003J\t\u0010?\u001a\u00020\nHÖ\u0001J\t\u0010@\u001a\u00020\u0003HÖ\u0001J\u0016\u0010A\u001a\u00020B2\u0006\u0010C\u001a\u00020D2\u0006\u0010E\u001a\u00020\nR\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0013\"\u0004\b\u0017\u0010\u0015R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0013\"\u0004\b\u0019\u0010\u0015R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0013\"\u0004\b\u001b\u0010\u0015R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0013\"\u0004\b\u001d\u0010\u0015R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u0013\"\u0004\b\u001f\u0010\u0015R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\u0013\"\u0004\b%\u0010\u0015R\u001c\u0010\f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u0013\"\u0004\b'\u0010\u0015R\u001c\u0010\r\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u0013\"\u0004\b)\u0010\u0015R\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-¨\u0006F"}, d2 = {"Lcom/transsion/baselib/db/music/MusicLikedDbBean;", "Landroid/os/Parcelable;", "subjectId", "", CampaignEx.JSON_KEY_TITLE, "coverUrl", "countryName", "genre", "releaseDate", "durationSeconds", "", "singerName", "singerAvatar", "path", "timeStamp", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V", "getSubjectId", "()Ljava/lang/String;", "setSubjectId", "(Ljava/lang/String;)V", "getTitle", "setTitle", "getCoverUrl", "setCoverUrl", "getCountryName", "setCountryName", "getGenre", "setGenre", "getReleaseDate", "setReleaseDate", "getDurationSeconds", "()I", "setDurationSeconds", "(I)V", "getSingerName", "setSingerName", "getSingerAvatar", "setSingerAvatar", "getPath", "setPath", "getTimeStamp", "()J", "setTimeStamp", "(J)V", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "copy", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "BaseLib_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class MusicLikedDbBean implements Parcelable {
    public static final Parcelable.Creator<MusicLikedDbBean> CREATOR = new a();
    private String countryName;
    private String coverUrl;
    private int durationSeconds;
    private String genre;
    private String path;
    private String releaseDate;
    private String singerAvatar;
    private String singerName;
    private String subjectId;
    private long timeStamp;
    private String title;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final MusicLikedDbBean createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new MusicLikedDbBean(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readLong());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final MusicLikedDbBean[] newArray(int i11) {
            return new MusicLikedDbBean[i11];
        }
    }

    public MusicLikedDbBean(String subjectId, String str, String str2, String str3, String str4, String str5, int i11, String str6, String str7, String str8, long j11) {
        Intrinsics.h(subjectId, "subjectId");
        this.subjectId = subjectId;
        this.title = str;
        this.coverUrl = str2;
        this.countryName = str3;
        this.genre = str4;
        this.releaseDate = str5;
        this.durationSeconds = i11;
        this.singerName = str6;
        this.singerAvatar = str7;
        this.path = str8;
        this.timeStamp = j11;
    }

    public /* synthetic */ MusicLikedDbBean(String str, String str2, String str3, String str4, String str5, String str6, int i11, String str7, String str8, String str9, long j11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i12 & 2) != 0 ? null : str2, (i12 & 4) != 0 ? null : str3, (i12 & 8) != 0 ? null : str4, (i12 & 16) != 0 ? null : str5, (i12 & 32) != 0 ? null : str6, (i12 & 64) != 0 ? 0 : i11, (i12 & 128) != 0 ? null : str7, (i12 & 256) != 0 ? null : str8, (i12 & 512) == 0 ? str9 : null, (i12 & 1024) != 0 ? 0L : j11);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getSubjectId() {
        return this.subjectId;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getPath() {
        return this.path;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final long getTimeStamp() {
        return this.timeStamp;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getCoverUrl() {
        return this.coverUrl;
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
    public final int getDurationSeconds() {
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

    public final MusicLikedDbBean copy(String subjectId, String title, String coverUrl, String countryName, String genre, String releaseDate, int durationSeconds, String singerName, String singerAvatar, String path, long timeStamp) {
        Intrinsics.h(subjectId, "subjectId");
        return new MusicLikedDbBean(subjectId, title, coverUrl, countryName, genre, releaseDate, durationSeconds, singerName, singerAvatar, path, timeStamp);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MusicLikedDbBean)) {
            return false;
        }
        MusicLikedDbBean musicLikedDbBean = (MusicLikedDbBean) other;
        return Intrinsics.c(this.subjectId, musicLikedDbBean.subjectId) && Intrinsics.c(this.title, musicLikedDbBean.title) && Intrinsics.c(this.coverUrl, musicLikedDbBean.coverUrl) && Intrinsics.c(this.countryName, musicLikedDbBean.countryName) && Intrinsics.c(this.genre, musicLikedDbBean.genre) && Intrinsics.c(this.releaseDate, musicLikedDbBean.releaseDate) && this.durationSeconds == musicLikedDbBean.durationSeconds && Intrinsics.c(this.singerName, musicLikedDbBean.singerName) && Intrinsics.c(this.singerAvatar, musicLikedDbBean.singerAvatar) && Intrinsics.c(this.path, musicLikedDbBean.path) && this.timeStamp == musicLikedDbBean.timeStamp;
    }

    public final String getCountryName() {
        return this.countryName;
    }

    public final String getCoverUrl() {
        return this.coverUrl;
    }

    public final int getDurationSeconds() {
        return this.durationSeconds;
    }

    public final String getGenre() {
        return this.genre;
    }

    public final String getPath() {
        return this.path;
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

    public final long getTimeStamp() {
        return this.timeStamp;
    }

    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        int iHashCode = this.subjectId.hashCode() * 31;
        String str = this.title;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.coverUrl;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.countryName;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.genre;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.releaseDate;
        int iHashCode6 = (((iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31) + this.durationSeconds) * 31;
        String str6 = this.singerName;
        int iHashCode7 = (iHashCode6 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.singerAvatar;
        int iHashCode8 = (iHashCode7 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.path;
        return ((iHashCode8 + (str8 != null ? str8.hashCode() : 0)) * 31) + s.a(this.timeStamp);
    }

    public final void setCountryName(String str) {
        this.countryName = str;
    }

    public final void setCoverUrl(String str) {
        this.coverUrl = str;
    }

    public final void setDurationSeconds(int i11) {
        this.durationSeconds = i11;
    }

    public final void setGenre(String str) {
        this.genre = str;
    }

    public final void setPath(String str) {
        this.path = str;
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
        Intrinsics.h(str, "<set-?>");
        this.subjectId = str;
    }

    public final void setTimeStamp(long j11) {
        this.timeStamp = j11;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public String toString() {
        return "MusicLikedDbBean(subjectId=" + this.subjectId + ", title=" + this.title + ", coverUrl=" + this.coverUrl + ", countryName=" + this.countryName + ", genre=" + this.genre + ", releaseDate=" + this.releaseDate + ", durationSeconds=" + this.durationSeconds + ", singerName=" + this.singerName + ", singerAvatar=" + this.singerAvatar + ", path=" + this.path + ", timeStamp=" + this.timeStamp + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.subjectId);
        dest.writeString(this.title);
        dest.writeString(this.coverUrl);
        dest.writeString(this.countryName);
        dest.writeString(this.genre);
        dest.writeString(this.releaseDate);
        dest.writeInt(this.durationSeconds);
        dest.writeString(this.singerName);
        dest.writeString(this.singerAvatar);
        dest.writeString(this.path);
        dest.writeLong(this.timeStamp);
    }
}
