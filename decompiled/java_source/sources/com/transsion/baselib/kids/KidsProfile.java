package com.transsion.baselib.kids;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u001e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001Bk\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u000e\u0010\u000fJ\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0006HÆ\u0003J\u0010\u0010!\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u0016J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000f\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00030\fHÆ\u0003J\u0010\u0010&\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u0016Jx\u0010'\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0006HÆ\u0001¢\u0006\u0002\u0010(J\u0006\u0010)\u001a\u00020\u0006J\u0013\u0010*\u001a\u00020+2\b\u0010,\u001a\u0004\u0018\u00010-HÖ\u0003J\t\u0010.\u001a\u00020\u0006HÖ\u0001J\t\u0010/\u001a\u00020\u0003HÖ\u0001J\u0016\u00100\u001a\u0002012\u0006\u00102\u001a\u0002032\u0006\u00104\u001a\u00020\u0006R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011R\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0017\u001a\u0004\b\u0015\u0010\u0016R\u0018\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0011R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0011R\u0018\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0011R\u001c\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u001a\u0010\r\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0017\u001a\u0004\b\u001d\u0010\u0016¨\u00065"}, d2 = {"Lcom/transsion/baselib/kids/KidsProfile;", "Landroid/os/Parcelable;", "kidsId", "", "name", "avatarResId", "", "gender", "birthday", "pinHash", "avatarLocalPath", "favorites", "", "age", "<init>", "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;)V", "getKidsId", "()Ljava/lang/String;", "getName", "getAvatarResId", "()I", "getGender", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getBirthday", "getPinHash", "getAvatarLocalPath", "getFavorites", "()Ljava/util/List;", "getAge", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;)Lcom/transsion/baselib/kids/KidsProfile;", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "BaseLib_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class KidsProfile implements Parcelable {
    public static final Parcelable.Creator<KidsProfile> CREATOR = new a();

    @SerializedName("age")
    private final Integer age;

    @SerializedName("avatarLocalPath")
    private final String avatarLocalPath;

    @SerializedName("avatarResId")
    private final int avatarResId;

    @SerializedName("birthday")
    private final String birthday;

    @SerializedName("favorites")
    private final List<String> favorites;

    @SerializedName("gender")
    private final Integer gender;

    @SerializedName("kidsId")
    private final String kidsId;

    @SerializedName("name")
    private final String name;

    @SerializedName("pinHash")
    private final String pinHash;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final KidsProfile createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new KidsProfile(parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readString(), parcel.readString(), parcel.readString(), parcel.createStringArrayList(), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()));
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final KidsProfile[] newArray(int i11) {
            return new KidsProfile[i11];
        }
    }

    public KidsProfile(String kidsId, String name, int i11, Integer num, String str, String str2, String str3, List<String> favorites, Integer num2) {
        Intrinsics.h(kidsId, "kidsId");
        Intrinsics.h(name, "name");
        Intrinsics.h(favorites, "favorites");
        this.kidsId = kidsId;
        this.name = name;
        this.avatarResId = i11;
        this.gender = num;
        this.birthday = str;
        this.pinHash = str2;
        this.avatarLocalPath = str3;
        this.favorites = favorites;
        this.age = num2;
    }

    public /* synthetic */ KidsProfile(String str, String str2, int i11, Integer num, String str3, String str4, String str5, List list, Integer num2, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, i11, (i12 & 8) != 0 ? null : num, (i12 & 16) != 0 ? null : str3, (i12 & 32) != 0 ? null : str4, (i12 & 64) != 0 ? null : str5, (i12 & 128) != 0 ? CollectionsKt.l() : list, (i12 & 256) != 0 ? null : num2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getKidsId() {
        return this.kidsId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getAvatarResId() {
        return this.avatarResId;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Integer getGender() {
        return this.gender;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getBirthday() {
        return this.birthday;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getPinHash() {
        return this.pinHash;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getAvatarLocalPath() {
        return this.avatarLocalPath;
    }

    public final List<String> component8() {
        return this.favorites;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final Integer getAge() {
        return this.age;
    }

    public final KidsProfile copy(String kidsId, String name, int avatarResId, Integer gender, String birthday, String pinHash, String avatarLocalPath, List<String> favorites, Integer age) {
        Intrinsics.h(kidsId, "kidsId");
        Intrinsics.h(name, "name");
        Intrinsics.h(favorites, "favorites");
        return new KidsProfile(kidsId, name, avatarResId, gender, birthday, pinHash, avatarLocalPath, favorites, age);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof KidsProfile)) {
            return false;
        }
        KidsProfile kidsProfile = (KidsProfile) other;
        return Intrinsics.c(this.kidsId, kidsProfile.kidsId) && Intrinsics.c(this.name, kidsProfile.name) && this.avatarResId == kidsProfile.avatarResId && Intrinsics.c(this.gender, kidsProfile.gender) && Intrinsics.c(this.birthday, kidsProfile.birthday) && Intrinsics.c(this.pinHash, kidsProfile.pinHash) && Intrinsics.c(this.avatarLocalPath, kidsProfile.avatarLocalPath) && Intrinsics.c(this.favorites, kidsProfile.favorites) && Intrinsics.c(this.age, kidsProfile.age);
    }

    public final Integer getAge() {
        return this.age;
    }

    public final String getAvatarLocalPath() {
        return this.avatarLocalPath;
    }

    public final int getAvatarResId() {
        return this.avatarResId;
    }

    public final String getBirthday() {
        return this.birthday;
    }

    public final List<String> getFavorites() {
        return this.favorites;
    }

    public final Integer getGender() {
        return this.gender;
    }

    public final String getKidsId() {
        return this.kidsId;
    }

    public final String getName() {
        return this.name;
    }

    public final String getPinHash() {
        return this.pinHash;
    }

    public int hashCode() {
        int iHashCode = ((((this.kidsId.hashCode() * 31) + this.name.hashCode()) * 31) + this.avatarResId) * 31;
        Integer num = this.gender;
        int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        String str = this.birthday;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.pinHash;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.avatarLocalPath;
        int iHashCode5 = (((iHashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31) + this.favorites.hashCode()) * 31;
        Integer num2 = this.age;
        return iHashCode5 + (num2 != null ? num2.hashCode() : 0);
    }

    public String toString() {
        return "KidsProfile(kidsId=" + this.kidsId + ", name=" + this.name + ", avatarResId=" + this.avatarResId + ", gender=" + this.gender + ", birthday=" + this.birthday + ", pinHash=" + this.pinHash + ", avatarLocalPath=" + this.avatarLocalPath + ", favorites=" + this.favorites + ", age=" + this.age + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.kidsId);
        dest.writeString(this.name);
        dest.writeInt(this.avatarResId);
        Integer num = this.gender;
        if (num == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num.intValue());
        }
        dest.writeString(this.birthday);
        dest.writeString(this.pinHash);
        dest.writeString(this.avatarLocalPath);
        dest.writeStringList(this.favorites);
        Integer num2 = this.age;
        if (num2 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num2.intValue());
        }
    }
}
