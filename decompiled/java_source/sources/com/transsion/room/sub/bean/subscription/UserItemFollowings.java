package com.transsion.room.sub.bean.subscription;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.android.gms.common.Scopes;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\bC\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001Bµ\u0001\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\t\u001a\u00020\u0005\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0005\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0013\u0010\u0014J\u000b\u00107\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u00108\u001a\u00020\u0005HÆ\u0003J\u000b\u00109\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010:\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010<\u001a\u00020\u0005HÆ\u0003J\u000b\u0010=\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010>\u001a\u00020\u0005HÆ\u0003J\u000b\u0010?\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010@\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010A\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010B\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010C\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010D\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010E\u001a\u0004\u0018\u00010\u0003HÆ\u0003J·\u0001\u0010F\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\t\u001a\u00020\u00052\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00052\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0006\u0010G\u001a\u00020\u0005J\u0013\u0010H\u001a\u00020I2\b\u0010J\u001a\u0004\u0018\u00010KHÖ\u0003J\t\u0010L\u001a\u00020\u0005HÖ\u0001J\t\u0010M\u001a\u00020\u0003HÖ\u0001J\u0016\u0010N\u001a\u00020O2\u0006\u0010P\u001a\u00020Q2\u0006\u0010R\u001a\u00020\u0005R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0016\"\u0004\b\u001e\u0010\u0018R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0016\"\u0004\b \u0010\u0018R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\u0016\"\u0004\b\"\u0010\u0018R\u001a\u0010\t\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u001a\"\u0004\b$\u0010\u001cR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u0016\"\u0004\b&\u0010\u0018R\u001a\u0010\u000b\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010\u001a\"\u0004\b(\u0010\u001cR\u001c\u0010\f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010\u0016\"\u0004\b*\u0010\u0018R\u001c\u0010\r\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\u0016\"\u0004\b,\u0010\u0018R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010\u0016\"\u0004\b.\u0010\u0018R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u0010\u0016\"\u0004\b0\u0010\u0018R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010\u0016\"\u0004\b2\u0010\u0018R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b3\u0010\u0016\"\u0004\b4\u0010\u0018R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u0010\u0016\"\u0004\b6\u0010\u0018¨\u0006S"}, d2 = {"Lcom/transsion/room/sub/bean/subscription/UserItemFollowings;", "Landroid/os/Parcelable;", "userId", "", "userType", "", "username", "nickname", "avatar", "gender", "birthday", "age", PlaceTypes.COUNTRY, "province", "city", "cc", "phone", "mail", Scopes.PROFILE, "<init>", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getUserId", "()Ljava/lang/String;", "setUserId", "(Ljava/lang/String;)V", "getUserType", "()I", "setUserType", "(I)V", "getUsername", "setUsername", "getNickname", "setNickname", "getAvatar", "setAvatar", "getGender", "setGender", "getBirthday", "setBirthday", "getAge", "setAge", "getCountry", "setCountry", "getProvince", "setProvince", "getCity", "setCity", "getCc", "setCc", "getPhone", "setPhone", "getMail", "setMail", "getProfile", "setProfile", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "copy", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class UserItemFollowings implements Parcelable {
    public static final Parcelable.Creator<UserItemFollowings> CREATOR = new a();
    private int age;
    private String avatar;
    private String birthday;
    private String cc;
    private String city;
    private String country;
    private int gender;
    private String mail;
    private String nickname;
    private String phone;
    private String profile;
    private String province;
    private String userId;
    private int userType;
    private String username;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UserItemFollowings createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new UserItemFollowings(parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final UserItemFollowings[] newArray(int i11) {
            return new UserItemFollowings[i11];
        }
    }

    public UserItemFollowings() {
        this(null, 0, null, null, null, 0, null, 0, null, null, null, null, null, null, null, 32767, null);
    }

    public UserItemFollowings(String str, int i11, String str2, String str3, String str4, int i12, String str5, int i13, String str6, String str7, String str8, String str9, String str10, String str11, String str12) {
        this.userId = str;
        this.userType = i11;
        this.username = str2;
        this.nickname = str3;
        this.avatar = str4;
        this.gender = i12;
        this.birthday = str5;
        this.age = i13;
        this.country = str6;
        this.province = str7;
        this.city = str8;
        this.cc = str9;
        this.phone = str10;
        this.mail = str11;
        this.profile = str12;
    }

    public /* synthetic */ UserItemFollowings(String str, int i11, String str2, String str3, String str4, int i12, String str5, int i13, String str6, String str7, String str8, String str9, String str10, String str11, String str12, int i14, DefaultConstructorMarker defaultConstructorMarker) {
        this((i14 & 1) != 0 ? null : str, (i14 & 2) != 0 ? 0 : i11, (i14 & 4) != 0 ? null : str2, (i14 & 8) != 0 ? null : str3, (i14 & 16) != 0 ? null : str4, (i14 & 32) != 0 ? 0 : i12, (i14 & 64) != 0 ? null : str5, (i14 & 128) == 0 ? i13 : 0, (i14 & 256) != 0 ? null : str6, (i14 & 512) != 0 ? null : str7, (i14 & 1024) != 0 ? null : str8, (i14 & 2048) != 0 ? null : str9, (i14 & 4096) != 0 ? null : str10, (i14 & 8192) != 0 ? null : str11, (i14 & 16384) == 0 ? str12 : null);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getUserId() {
        return this.userId;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getProvince() {
        return this.province;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final String getCity() {
        return this.city;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final String getCc() {
        return this.cc;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final String getPhone() {
        return this.phone;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final String getMail() {
        return this.mail;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final String getProfile() {
        return this.profile;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getUserType() {
        return this.userType;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getUsername() {
        return this.username;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getNickname() {
        return this.nickname;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getAvatar() {
        return this.avatar;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final int getGender() {
        return this.gender;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getBirthday() {
        return this.birthday;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final int getAge() {
        return this.age;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getCountry() {
        return this.country;
    }

    public final UserItemFollowings copy(String userId, int userType, String username, String nickname, String avatar, int gender, String birthday, int age, String country, String province, String city, String cc2, String phone, String mail, String profile) {
        return new UserItemFollowings(userId, userType, username, nickname, avatar, gender, birthday, age, country, province, city, cc2, phone, mail, profile);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UserItemFollowings)) {
            return false;
        }
        UserItemFollowings userItemFollowings = (UserItemFollowings) other;
        return Intrinsics.c(this.userId, userItemFollowings.userId) && this.userType == userItemFollowings.userType && Intrinsics.c(this.username, userItemFollowings.username) && Intrinsics.c(this.nickname, userItemFollowings.nickname) && Intrinsics.c(this.avatar, userItemFollowings.avatar) && this.gender == userItemFollowings.gender && Intrinsics.c(this.birthday, userItemFollowings.birthday) && this.age == userItemFollowings.age && Intrinsics.c(this.country, userItemFollowings.country) && Intrinsics.c(this.province, userItemFollowings.province) && Intrinsics.c(this.city, userItemFollowings.city) && Intrinsics.c(this.cc, userItemFollowings.cc) && Intrinsics.c(this.phone, userItemFollowings.phone) && Intrinsics.c(this.mail, userItemFollowings.mail) && Intrinsics.c(this.profile, userItemFollowings.profile);
    }

    public final int getAge() {
        return this.age;
    }

    public final String getAvatar() {
        return this.avatar;
    }

    public final String getBirthday() {
        return this.birthday;
    }

    public final String getCc() {
        return this.cc;
    }

    public final String getCity() {
        return this.city;
    }

    public final String getCountry() {
        return this.country;
    }

    public final int getGender() {
        return this.gender;
    }

    public final String getMail() {
        return this.mail;
    }

    public final String getNickname() {
        return this.nickname;
    }

    public final String getPhone() {
        return this.phone;
    }

    public final String getProfile() {
        return this.profile;
    }

    public final String getProvince() {
        return this.province;
    }

    public final String getUserId() {
        return this.userId;
    }

    public final int getUserType() {
        return this.userType;
    }

    public final String getUsername() {
        return this.username;
    }

    public int hashCode() {
        String str = this.userId;
        int iHashCode = (((str == null ? 0 : str.hashCode()) * 31) + this.userType) * 31;
        String str2 = this.username;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.nickname;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.avatar;
        int iHashCode4 = (((iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31) + this.gender) * 31;
        String str5 = this.birthday;
        int iHashCode5 = (((iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31) + this.age) * 31;
        String str6 = this.country;
        int iHashCode6 = (iHashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.province;
        int iHashCode7 = (iHashCode6 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.city;
        int iHashCode8 = (iHashCode7 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.cc;
        int iHashCode9 = (iHashCode8 + (str9 == null ? 0 : str9.hashCode())) * 31;
        String str10 = this.phone;
        int iHashCode10 = (iHashCode9 + (str10 == null ? 0 : str10.hashCode())) * 31;
        String str11 = this.mail;
        int iHashCode11 = (iHashCode10 + (str11 == null ? 0 : str11.hashCode())) * 31;
        String str12 = this.profile;
        return iHashCode11 + (str12 != null ? str12.hashCode() : 0);
    }

    public final void setAge(int i11) {
        this.age = i11;
    }

    public final void setAvatar(String str) {
        this.avatar = str;
    }

    public final void setBirthday(String str) {
        this.birthday = str;
    }

    public final void setCc(String str) {
        this.cc = str;
    }

    public final void setCity(String str) {
        this.city = str;
    }

    public final void setCountry(String str) {
        this.country = str;
    }

    public final void setGender(int i11) {
        this.gender = i11;
    }

    public final void setMail(String str) {
        this.mail = str;
    }

    public final void setNickname(String str) {
        this.nickname = str;
    }

    public final void setPhone(String str) {
        this.phone = str;
    }

    public final void setProfile(String str) {
        this.profile = str;
    }

    public final void setProvince(String str) {
        this.province = str;
    }

    public final void setUserId(String str) {
        this.userId = str;
    }

    public final void setUserType(int i11) {
        this.userType = i11;
    }

    public final void setUsername(String str) {
        this.username = str;
    }

    public String toString() {
        return "UserItemFollowings(userId=" + this.userId + ", userType=" + this.userType + ", username=" + this.username + ", nickname=" + this.nickname + ", avatar=" + this.avatar + ", gender=" + this.gender + ", birthday=" + this.birthday + ", age=" + this.age + ", country=" + this.country + ", province=" + this.province + ", city=" + this.city + ", cc=" + this.cc + ", phone=" + this.phone + ", mail=" + this.mail + ", profile=" + this.profile + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.userId);
        dest.writeInt(this.userType);
        dest.writeString(this.username);
        dest.writeString(this.nickname);
        dest.writeString(this.avatar);
        dest.writeInt(this.gender);
        dest.writeString(this.birthday);
        dest.writeInt(this.age);
        dest.writeString(this.country);
        dest.writeString(this.province);
        dest.writeString(this.city);
        dest.writeString(this.cc);
        dest.writeString(this.phone);
        dest.writeString(this.mail);
        dest.writeString(this.profile);
    }
}
