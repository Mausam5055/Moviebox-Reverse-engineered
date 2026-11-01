package com.transsion.search.bean;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import androidx.annotation.Keep;
import com.blankj.utilcode.util.c0;
import com.blankj.utilcode.util.u;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.baselib.db.download.VipInfo;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.Subject;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Calendar;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0010\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001By\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0011\u0010\u0012J\u0006\u00102\u001a\u00020\u0003J\u0006\u00103\u001a\u000204J\u0006\u00105\u001a\u000206J\u000b\u00107\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u00108\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0018J\u000b\u00109\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010:\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010<\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010=\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u000b\u0010>\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010?\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010@\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010A\u001a\u0004\u0018\u00010\u0010HÆ\u0003J\u0092\u0001\u0010B\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÆ\u0001¢\u0006\u0002\u0010CJ\u0006\u0010D\u001a\u00020\u0005J\u0013\u0010E\u001a\u0002062\b\u0010F\u001a\u0004\u0018\u00010GHÖ\u0003J\t\u0010H\u001a\u00020\u0005HÖ\u0001J\t\u0010I\u001a\u00020\u0003HÖ\u0001J\u0016\u0010J\u001a\u00020K2\u0006\u0010L\u001a\u00020M2\u0006\u0010N\u001a\u00020\u0005R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001b\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0014\"\u0004\b\u001d\u0010\u0016R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u0014\"\u0004\b\u001f\u0010\u0016R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0014\"\u0004\b!\u0010\u0016R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0014\"\u0004\b#\u0010\u0016R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u001c\u0010\f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u0014\"\u0004\b)\u0010\u0016R\u001c\u0010\r\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010\u0014\"\u0004\b+\u0010\u0016R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010\u0014\"\u0004\b-\u0010\u0016R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010/\"\u0004\b0\u00101¨\u0006O"}, d2 = {"Lcom/transsion/search/bean/HotSubject;", "Landroid/os/Parcelable;", "subjectId", "", "subjectType", "", CampaignEx.JSON_KEY_TITLE, "ops", "releaseDate", "genre", "cover", "Lcom/transsion/search/bean/HotCover;", "countryName", "imdbRatingValue", "corner", "vipInfo", "Lcom/transsion/baselib/db/download/VipInfo;", "<init>", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/search/bean/HotCover;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/baselib/db/download/VipInfo;)V", "getSubjectId", "()Ljava/lang/String;", "setSubjectId", "(Ljava/lang/String;)V", "getSubjectType", "()Ljava/lang/Integer;", "setSubjectType", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getTitle", "setTitle", "getOps", "setOps", "getReleaseDate", "setReleaseDate", "getGenre", "setGenre", "getCover", "()Lcom/transsion/search/bean/HotCover;", "setCover", "(Lcom/transsion/search/bean/HotCover;)V", "getCountryName", "setCountryName", "getImdbRatingValue", "setImdbRatingValue", "getCorner", "setCorner", "getVipInfo", "()Lcom/transsion/baselib/db/download/VipInfo;", "setVipInfo", "(Lcom/transsion/baselib/db/download/VipInfo;)V", "getDisplayFull", "transferSubject", "Lcom/transsion/moviedetailapi/bean/Subject;", "isMusicType", "", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "copy", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/search/bean/HotCover;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/baselib/db/download/VipInfo;)Lcom/transsion/search/bean/HotSubject;", "describeContents", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final /* data */ class HotSubject implements Parcelable {
    public static final Parcelable.Creator<HotSubject> CREATOR = new a();
    private String corner;
    private String countryName;
    private HotCover cover;
    private String genre;
    private String imdbRatingValue;
    private String ops;
    private String releaseDate;
    private String subjectId;
    private Integer subjectType;
    private String title;
    private VipInfo vipInfo;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HotSubject createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new HotSubject(parcel.readString(), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? HotCover.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readString(), parcel.readString(), (VipInfo) parcel.readParcelable(HotSubject.class.getClassLoader()));
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final HotSubject[] newArray(int i11) {
            return new HotSubject[i11];
        }
    }

    public HotSubject(String str, Integer num, String str2, String str3, String str4, String str5, HotCover hotCover, String str6, String str7, String str8, VipInfo vipInfo) {
        this.subjectId = str;
        this.subjectType = num;
        this.title = str2;
        this.ops = str3;
        this.releaseDate = str4;
        this.genre = str5;
        this.cover = hotCover;
        this.countryName = str6;
        this.imdbRatingValue = str7;
        this.corner = str8;
        this.vipInfo = vipInfo;
    }

    public /* synthetic */ HotSubject(String str, Integer num, String str2, String str3, String str4, String str5, HotCover hotCover, String str6, String str7, String str8, VipInfo vipInfo, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, num, str2, str3, str4, str5, hotCover, str6, str7, (i11 & 512) != 0 ? null : str8, (i11 & 1024) != 0 ? null : vipInfo);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getSubjectId() {
        return this.subjectId;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getCorner() {
        return this.corner;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final VipInfo getVipInfo() {
        return this.vipInfo;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Integer getSubjectType() {
        return this.subjectType;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getOps() {
        return this.ops;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getReleaseDate() {
        return this.releaseDate;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getGenre() {
        return this.genre;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final HotCover getCover() {
        return this.cover;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getCountryName() {
        return this.countryName;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getImdbRatingValue() {
        return this.imdbRatingValue;
    }

    public final HotSubject copy(String subjectId, Integer subjectType, String title, String ops, String releaseDate, String genre, HotCover cover, String countryName, String imdbRatingValue, String corner, VipInfo vipInfo) {
        return new HotSubject(subjectId, subjectType, title, ops, releaseDate, genre, cover, countryName, imdbRatingValue, corner, vipInfo);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof HotSubject)) {
            return false;
        }
        HotSubject hotSubject = (HotSubject) other;
        return Intrinsics.c(this.subjectId, hotSubject.subjectId) && Intrinsics.c(this.subjectType, hotSubject.subjectType) && Intrinsics.c(this.title, hotSubject.title) && Intrinsics.c(this.ops, hotSubject.ops) && Intrinsics.c(this.releaseDate, hotSubject.releaseDate) && Intrinsics.c(this.genre, hotSubject.genre) && Intrinsics.c(this.cover, hotSubject.cover) && Intrinsics.c(this.countryName, hotSubject.countryName) && Intrinsics.c(this.imdbRatingValue, hotSubject.imdbRatingValue) && Intrinsics.c(this.corner, hotSubject.corner) && Intrinsics.c(this.vipInfo, hotSubject.vipInfo);
    }

    public final String getCorner() {
        return this.corner;
    }

    public final String getCountryName() {
        return this.countryName;
    }

    public final HotCover getCover() {
        return this.cover;
    }

    public final String getDisplayFull() {
        Date dateL = c0.l(this.releaseDate, "yyyy-MM-dd");
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(dateL);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) String.valueOf(calendar.get(1)));
        if (!TextUtils.isEmpty(this.countryName)) {
            spannableStringBuilder.append((CharSequence) " · ").append((CharSequence) this.countryName);
        }
        String[] strArrA = u.a(this.genre, ",");
        if (strArrA != null) {
            for (String str : strArrA) {
                spannableStringBuilder.append((CharSequence) " · ").append((CharSequence) str);
            }
        }
        String string = spannableStringBuilder.toString();
        Intrinsics.g(string, "toString(...)");
        return string;
    }

    public final String getGenre() {
        return this.genre;
    }

    public final String getImdbRatingValue() {
        return this.imdbRatingValue;
    }

    public final String getOps() {
        return this.ops;
    }

    public final String getReleaseDate() {
        return this.releaseDate;
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

    public final VipInfo getVipInfo() {
        return this.vipInfo;
    }

    public int hashCode() {
        String str = this.subjectId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        Integer num = this.subjectType;
        int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        String str2 = this.title;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.ops;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.releaseDate;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.genre;
        int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        HotCover hotCover = this.cover;
        int iHashCode7 = (iHashCode6 + (hotCover == null ? 0 : hotCover.hashCode())) * 31;
        String str6 = this.countryName;
        int iHashCode8 = (iHashCode7 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.imdbRatingValue;
        int iHashCode9 = (iHashCode8 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.corner;
        int iHashCode10 = (iHashCode9 + (str8 == null ? 0 : str8.hashCode())) * 31;
        VipInfo vipInfo = this.vipInfo;
        return iHashCode10 + (vipInfo != null ? vipInfo.hashCode() : 0);
    }

    public final boolean isMusicType() {
        Integer num = this.subjectType;
        SubjectType subjectType = SubjectType.MUSIC;
        if (!Intrinsics.c(num, subjectType != null ? Integer.valueOf(subjectType.getValue()) : null)) {
            Integer num2 = this.subjectType;
            SubjectType subjectType2 = SubjectType.AUDIO;
            if (!Intrinsics.c(num2, subjectType2 != null ? Integer.valueOf(subjectType2.getValue()) : null)) {
                return false;
            }
        }
        return true;
    }

    public final void setCorner(String str) {
        this.corner = str;
    }

    public final void setCountryName(String str) {
        this.countryName = str;
    }

    public final void setCover(HotCover hotCover) {
        this.cover = hotCover;
    }

    public final void setGenre(String str) {
        this.genre = str;
    }

    public final void setImdbRatingValue(String str) {
        this.imdbRatingValue = str;
    }

    public final void setOps(String str) {
        this.ops = str;
    }

    public final void setReleaseDate(String str) {
        this.releaseDate = str;
    }

    public final void setSubjectId(String str) {
        this.subjectId = str;
    }

    public final void setSubjectType(Integer num) {
        this.subjectType = num;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public final void setVipInfo(VipInfo vipInfo) {
        this.vipInfo = vipInfo;
    }

    public String toString() {
        return "HotSubject(subjectId=" + this.subjectId + ", subjectType=" + this.subjectType + ", title=" + this.title + ", ops=" + this.ops + ", releaseDate=" + this.releaseDate + ", genre=" + this.genre + ", cover=" + this.cover + ", countryName=" + this.countryName + ", imdbRatingValue=" + this.imdbRatingValue + ", corner=" + this.corner + ", vipInfo=" + this.vipInfo + ")";
    }

    public final Subject transferSubject() {
        String str = this.subjectId;
        Integer num = this.subjectType;
        String str2 = this.title;
        String str3 = this.ops;
        return new Subject(str, num, str2, this.countryName, null, this.releaseDate, null, null, null, this.genre, null, null, this.imdbRatingValue, null, null, null, null, null, null, str3, null, null, null, null, false, false, null, null, null, null, null, false, false, null, null, 0, false, false, 0L, null, null, 0L, null, 0, false, null, 0, null, null, null, this.corner, null, 0, null, null, null, null, null, null, -528944, 133955583, null);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.subjectId);
        Integer num = this.subjectType;
        if (num == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num.intValue());
        }
        dest.writeString(this.title);
        dest.writeString(this.ops);
        dest.writeString(this.releaseDate);
        dest.writeString(this.genre);
        HotCover hotCover = this.cover;
        if (hotCover == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            hotCover.writeToParcel(dest, flags);
        }
        dest.writeString(this.countryName);
        dest.writeString(this.imdbRatingValue);
        dest.writeString(this.corner);
        dest.writeParcelable(this.vipInfo, flags);
    }
}
