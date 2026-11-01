package com.transsion.usercenter.profile.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.android.gms.common.Scopes;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b'\n\u0002\u0010\u000b\n\u0002\b\u0016\b\u0087\b\u0018\u0000 @2\u00020\u0001:\u0001AB\u009d\u0001\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0015\u0010\u0016J\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b\u0017\u0010\u0018J\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0019\u0010\u0016J\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u001a\u0010\u0016J\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u001b\u0010\u0016J\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b\u001c\u0010\u0018J\u0012\u0010\u001d\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u001d\u0010\u0016J\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b\u001e\u0010\u0018J\u0012\u0010\u001f\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u001f\u0010\u0016J\u0012\u0010 \u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b \u0010\u0016J\u0012\u0010!\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b!\u0010\u0016J\u0012\u0010\"\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\"\u0010\u0016J\u0012\u0010#\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b#\u0010\u0016J\u0012\u0010$\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b$\u0010\u0016J\u0012\u0010%\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b%\u0010\u0016JÄ\u0001\u0010&\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0002HÆ\u0001¢\u0006\u0004\b&\u0010'J\u0010\u0010(\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b(\u0010\u0016J\u0010\u0010)\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b)\u0010*J\u001a\u0010-\u001a\u00020,2\b\u0010+\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b-\u0010.R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0003\u0010/\u001a\u0004\b0\u0010\u0016R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0005\u00101\u001a\u0004\b2\u0010\u0018R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0006\u0010/\u001a\u0004\b3\u0010\u0016R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0007\u0010/\u001a\u0004\b4\u0010\u0016R\u001c\u0010\b\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\b\u0010/\u001a\u0004\b5\u0010\u0016R\u001c\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\t\u00101\u001a\u0004\b6\u0010\u0018R\u001c\u0010\n\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\n\u0010/\u001a\u0004\b7\u0010\u0016R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u000b\u00101\u001a\u0004\b8\u0010\u0018R\u001c\u0010\f\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\f\u0010/\u001a\u0004\b9\u0010\u0016R\u001c\u0010\r\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\r\u0010/\u001a\u0004\b:\u0010\u0016R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u000e\u0010/\u001a\u0004\b;\u0010\u0016R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u000f\u0010/\u001a\u0004\b<\u0010\u0016R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0010\u0010/\u001a\u0004\b=\u0010\u0016R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0011\u0010/\u001a\u0004\b>\u0010\u0016R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0012\u0010/\u001a\u0004\b?\u0010\u0016¨\u0006B"}, d2 = {"Lcom/transsion/usercenter/profile/bean/BffUserInfo;", "", "", "userId", "", "userType", "username", "nickname", "avatar", "gender", "birthday", "age", PlaceTypes.COUNTRY, "province", "city", "cc", "phone", "email", Scopes.PROFILE, "<init>", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "component1", "()Ljava/lang/String;", "component2", "()Ljava/lang/Integer;", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "copy", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/usercenter/profile/bean/BffUserInfo;", "toString", "hashCode", "()I", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getUserId", "Ljava/lang/Integer;", "getUserType", "getUsername", "getNickname", "getAvatar", "getGender", "getBirthday", "getAge", "getCountry", "getProvince", "getCity", "getCc", "getPhone", "getEmail", "getProfile", "Companion", "a", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class BffUserInfo {
    public static final int USER_TYPE_FORMAL = 1;
    public static final int USER_TYPE_GUEST = 0;
    public static final int USER_TYPE_MOCK = 2;

    @SerializedName("age")
    private final Integer age;

    @SerializedName("avatar")
    private final String avatar;

    @SerializedName("birthday")
    private final String birthday;

    @SerializedName("cc")
    private final String cc;

    @SerializedName("city")
    private final String city;

    @SerializedName(PlaceTypes.COUNTRY)
    private final String country;

    @SerializedName("mail")
    private final String email;

    @SerializedName("gender")
    private final Integer gender;

    @SerializedName("nickname")
    private final String nickname;

    @SerializedName("phone")
    private final String phone;

    @SerializedName(Scopes.PROFILE)
    private final String profile;

    @SerializedName("province")
    private final String province;

    @SerializedName("userId")
    private final String userId;

    @SerializedName("userType")
    private final Integer userType;

    @SerializedName("username")
    private final String username;

    public BffUserInfo(String str, Integer num, String str2, String str3, String str4, Integer num2, String str5, Integer num3, String str6, String str7, String str8, String str9, String str10, String str11, String str12) {
        this.userId = str;
        this.userType = num;
        this.username = str2;
        this.nickname = str3;
        this.avatar = str4;
        this.gender = num2;
        this.birthday = str5;
        this.age = num3;
        this.country = str6;
        this.province = str7;
        this.city = str8;
        this.cc = str9;
        this.phone = str10;
        this.email = str11;
        this.profile = str12;
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
    public final String getEmail() {
        return this.email;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final String getProfile() {
        return this.profile;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Integer getUserType() {
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
    public final Integer getGender() {
        return this.gender;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getBirthday() {
        return this.birthday;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final Integer getAge() {
        return this.age;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getCountry() {
        return this.country;
    }

    public final BffUserInfo copy(String userId, Integer userType, String username, String nickname, String avatar, Integer gender, String birthday, Integer age, String country, String province, String city, String cc2, String phone, String email, String profile) {
        return new BffUserInfo(userId, userType, username, nickname, avatar, gender, birthday, age, country, province, city, cc2, phone, email, profile);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof BffUserInfo)) {
            return false;
        }
        BffUserInfo bffUserInfo = (BffUserInfo) other;
        return Intrinsics.c(this.userId, bffUserInfo.userId) && Intrinsics.c(this.userType, bffUserInfo.userType) && Intrinsics.c(this.username, bffUserInfo.username) && Intrinsics.c(this.nickname, bffUserInfo.nickname) && Intrinsics.c(this.avatar, bffUserInfo.avatar) && Intrinsics.c(this.gender, bffUserInfo.gender) && Intrinsics.c(this.birthday, bffUserInfo.birthday) && Intrinsics.c(this.age, bffUserInfo.age) && Intrinsics.c(this.country, bffUserInfo.country) && Intrinsics.c(this.province, bffUserInfo.province) && Intrinsics.c(this.city, bffUserInfo.city) && Intrinsics.c(this.cc, bffUserInfo.cc) && Intrinsics.c(this.phone, bffUserInfo.phone) && Intrinsics.c(this.email, bffUserInfo.email) && Intrinsics.c(this.profile, bffUserInfo.profile);
    }

    public final Integer getAge() {
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

    public final String getEmail() {
        return this.email;
    }

    public final Integer getGender() {
        return this.gender;
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

    public final Integer getUserType() {
        return this.userType;
    }

    public final String getUsername() {
        return this.username;
    }

    public int hashCode() {
        String str = this.userId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        Integer num = this.userType;
        int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        String str2 = this.username;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.nickname;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.avatar;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Integer num2 = this.gender;
        int iHashCode6 = (iHashCode5 + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str5 = this.birthday;
        int iHashCode7 = (iHashCode6 + (str5 == null ? 0 : str5.hashCode())) * 31;
        Integer num3 = this.age;
        int iHashCode8 = (iHashCode7 + (num3 == null ? 0 : num3.hashCode())) * 31;
        String str6 = this.country;
        int iHashCode9 = (iHashCode8 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.province;
        int iHashCode10 = (iHashCode9 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.city;
        int iHashCode11 = (iHashCode10 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.cc;
        int iHashCode12 = (iHashCode11 + (str9 == null ? 0 : str9.hashCode())) * 31;
        String str10 = this.phone;
        int iHashCode13 = (iHashCode12 + (str10 == null ? 0 : str10.hashCode())) * 31;
        String str11 = this.email;
        int iHashCode14 = (iHashCode13 + (str11 == null ? 0 : str11.hashCode())) * 31;
        String str12 = this.profile;
        return iHashCode14 + (str12 != null ? str12.hashCode() : 0);
    }

    public String toString() {
        return "BffUserInfo(userId=" + this.userId + ", userType=" + this.userType + ", username=" + this.username + ", nickname=" + this.nickname + ", avatar=" + this.avatar + ", gender=" + this.gender + ", birthday=" + this.birthday + ", age=" + this.age + ", country=" + this.country + ", province=" + this.province + ", city=" + this.city + ", cc=" + this.cc + ", phone=" + this.phone + ", email=" + this.email + ", profile=" + this.profile + ")";
    }
}
