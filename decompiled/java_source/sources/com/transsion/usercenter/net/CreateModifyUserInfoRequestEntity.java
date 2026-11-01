package com.transsion.usercenter.net;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b%\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BG\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003¢\u0006\u0004\b\f\u0010\rJ\t\u0010\"\u001a\u00020\u0003HÆ\u0003J\t\u0010#\u001a\u00020\u0003HÆ\u0003J\t\u0010$\u001a\u00020\u0003HÆ\u0003J\t\u0010%\u001a\u00020\u0007HÆ\u0003J\t\u0010&\u001a\u00020\u0003HÆ\u0003J\t\u0010'\u001a\u00020\u0003HÆ\u0003J\t\u0010(\u001a\u00020\u0003HÆ\u0003J\t\u0010)\u001a\u00020\u0003HÆ\u0003JY\u0010*\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u0003HÆ\u0001J\u0006\u0010+\u001a\u00020\u0007J\u0013\u0010,\u001a\u00020-2\b\u0010.\u001a\u0004\u0018\u00010/HÖ\u0003J\t\u00100\u001a\u00020\u0007HÖ\u0001J\t\u00101\u001a\u00020\u0003HÖ\u0001J\u0016\u00102\u001a\u0002032\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u00020\u0007R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u000f\"\u0004\b\u0013\u0010\u0011R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u000f\"\u0004\b\u0015\u0010\u0011R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001a\u0010\b\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u000f\"\u0004\b\u001b\u0010\u0011R\u001a\u0010\t\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u000f\"\u0004\b\u001d\u0010\u0011R\u001a\u0010\n\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u000f\"\u0004\b\u001f\u0010\u0011R\u001a\u0010\u000b\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u000f\"\u0004\b!\u0010\u0011¨\u00067"}, d2 = {"Lcom/transsion/usercenter/net/CreateModifyUserInfoRequestEntity;", "Landroid/os/Parcelable;", "nickname", "", "avatar", "newAvatarPath", "gender", "", "birthday", PlaceTypes.COUNTRY, "province", "city", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getNickname", "()Ljava/lang/String;", "setNickname", "(Ljava/lang/String;)V", "getAvatar", "setAvatar", "getNewAvatarPath", "setNewAvatarPath", "getGender", "()I", "setGender", "(I)V", "getBirthday", "setBirthday", "getCountry", "setCountry", "getProvince", "setProvince", "getCity", "setCity", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class CreateModifyUserInfoRequestEntity implements Parcelable {
    public static final Parcelable.Creator<CreateModifyUserInfoRequestEntity> CREATOR = new a();
    private String avatar;
    private String birthday;
    private String city;
    private String country;
    private int gender;
    private String newAvatarPath;
    private String nickname;
    private String province;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CreateModifyUserInfoRequestEntity createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new CreateModifyUserInfoRequestEntity(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final CreateModifyUserInfoRequestEntity[] newArray(int i11) {
            return new CreateModifyUserInfoRequestEntity[i11];
        }
    }

    public CreateModifyUserInfoRequestEntity(String nickname, String avatar, String newAvatarPath, int i11, String birthday, String country, String province, String city) {
        Intrinsics.h(nickname, "nickname");
        Intrinsics.h(avatar, "avatar");
        Intrinsics.h(newAvatarPath, "newAvatarPath");
        Intrinsics.h(birthday, "birthday");
        Intrinsics.h(country, "country");
        Intrinsics.h(province, "province");
        Intrinsics.h(city, "city");
        this.nickname = nickname;
        this.avatar = avatar;
        this.newAvatarPath = newAvatarPath;
        this.gender = i11;
        this.birthday = birthday;
        this.country = country;
        this.province = province;
        this.city = city;
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getNickname() {
        return this.nickname;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getAvatar() {
        return this.avatar;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getNewAvatarPath() {
        return this.newAvatarPath;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final int getGender() {
        return this.gender;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getBirthday() {
        return this.birthday;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getCountry() {
        return this.country;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getProvince() {
        return this.province;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getCity() {
        return this.city;
    }

    public final CreateModifyUserInfoRequestEntity copy(String nickname, String avatar, String newAvatarPath, int gender, String birthday, String country, String province, String city) {
        Intrinsics.h(nickname, "nickname");
        Intrinsics.h(avatar, "avatar");
        Intrinsics.h(newAvatarPath, "newAvatarPath");
        Intrinsics.h(birthday, "birthday");
        Intrinsics.h(country, "country");
        Intrinsics.h(province, "province");
        Intrinsics.h(city, "city");
        return new CreateModifyUserInfoRequestEntity(nickname, avatar, newAvatarPath, gender, birthday, country, province, city);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CreateModifyUserInfoRequestEntity)) {
            return false;
        }
        CreateModifyUserInfoRequestEntity createModifyUserInfoRequestEntity = (CreateModifyUserInfoRequestEntity) other;
        return Intrinsics.c(this.nickname, createModifyUserInfoRequestEntity.nickname) && Intrinsics.c(this.avatar, createModifyUserInfoRequestEntity.avatar) && Intrinsics.c(this.newAvatarPath, createModifyUserInfoRequestEntity.newAvatarPath) && this.gender == createModifyUserInfoRequestEntity.gender && Intrinsics.c(this.birthday, createModifyUserInfoRequestEntity.birthday) && Intrinsics.c(this.country, createModifyUserInfoRequestEntity.country) && Intrinsics.c(this.province, createModifyUserInfoRequestEntity.province) && Intrinsics.c(this.city, createModifyUserInfoRequestEntity.city);
    }

    public final String getAvatar() {
        return this.avatar;
    }

    public final String getBirthday() {
        return this.birthday;
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

    public final String getNewAvatarPath() {
        return this.newAvatarPath;
    }

    public final String getNickname() {
        return this.nickname;
    }

    public final String getProvince() {
        return this.province;
    }

    public int hashCode() {
        return (((((((((((((this.nickname.hashCode() * 31) + this.avatar.hashCode()) * 31) + this.newAvatarPath.hashCode()) * 31) + this.gender) * 31) + this.birthday.hashCode()) * 31) + this.country.hashCode()) * 31) + this.province.hashCode()) * 31) + this.city.hashCode();
    }

    public final void setAvatar(String str) {
        Intrinsics.h(str, "<set-?>");
        this.avatar = str;
    }

    public final void setBirthday(String str) {
        Intrinsics.h(str, "<set-?>");
        this.birthday = str;
    }

    public final void setCity(String str) {
        Intrinsics.h(str, "<set-?>");
        this.city = str;
    }

    public final void setCountry(String str) {
        Intrinsics.h(str, "<set-?>");
        this.country = str;
    }

    public final void setGender(int i11) {
        this.gender = i11;
    }

    public final void setNewAvatarPath(String str) {
        Intrinsics.h(str, "<set-?>");
        this.newAvatarPath = str;
    }

    public final void setNickname(String str) {
        Intrinsics.h(str, "<set-?>");
        this.nickname = str;
    }

    public final void setProvince(String str) {
        Intrinsics.h(str, "<set-?>");
        this.province = str;
    }

    public String toString() {
        return "CreateModifyUserInfoRequestEntity(nickname=" + this.nickname + ", avatar=" + this.avatar + ", newAvatarPath=" + this.newAvatarPath + ", gender=" + this.gender + ", birthday=" + this.birthday + ", country=" + this.country + ", province=" + this.province + ", city=" + this.city + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.nickname);
        dest.writeString(this.avatar);
        dest.writeString(this.newAvatarPath);
        dest.writeInt(this.gender);
        dest.writeString(this.birthday);
        dest.writeString(this.country);
        dest.writeString(this.province);
        dest.writeString(this.city);
    }
}
