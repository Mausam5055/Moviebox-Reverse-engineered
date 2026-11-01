package com.transsion.home.tv.bean;

import android.os.Parcel;
import android.os.Parcelable;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B9\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\t\u0010\nJ\u000b\u0010 \u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0003HÆ\u0003JE\u0010%\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0006\u0010&\u001a\u00020'J\u0013\u0010(\u001a\u00020\u001a2\b\u0010)\u001a\u0004\u0018\u00010*HÖ\u0003J\t\u0010+\u001a\u00020'HÖ\u0001J\t\u0010,\u001a\u00020\u0003HÖ\u0001J\u0016\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020'R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\f\"\u0004\b\u0010\u0010\u000eR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\f\"\u0004\b\u0012\u0010\u000eR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\f\"\u0004\b\u0018\u0010\u000eR \u0010\u0019\u001a\u00020\u001aX\u0086\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u0019\u0010\u001d\"\u0004\b\u001e\u0010\u001f¨\u00062"}, d2 = {"Lcom/transsion/home/tv/bean/CountryItem;", "Landroid/os/Parcelable;", "timezone", "", "countryCode", "countryName", "countryFlagImage", "Lcom/transsion/home/tv/bean/ImageInfo;", "countryFlag", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/home/tv/bean/ImageInfo;Ljava/lang/String;)V", "getTimezone", "()Ljava/lang/String;", "setTimezone", "(Ljava/lang/String;)V", "getCountryCode", "setCountryCode", "getCountryName", "setCountryName", "getCountryFlagImage", "()Lcom/transsion/home/tv/bean/ImageInfo;", "setCountryFlagImage", "(Lcom/transsion/home/tv/bean/ImageInfo;)V", "getCountryFlag", "setCountryFlag", "isSelected", "", "isSelected$annotations", "()V", "()Z", "setSelected", "(Z)V", "component1", "component2", "component3", "component4", "component5", "copy", "describeContents", "", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class CountryItem implements Parcelable {
    private String countryCode;
    private String countryFlag;
    private ImageInfo countryFlagImage;
    private String countryName;
    private transient boolean isSelected;
    private String timezone;
    public static final Parcelable.Creator<CountryItem> CREATOR = new a();
    public static final int $stable = 8;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CountryItem createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new CountryItem(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : ImageInfo.CREATOR.createFromParcel(parcel), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final CountryItem[] newArray(int i11) {
            return new CountryItem[i11];
        }
    }

    public CountryItem(String str, String str2, String str3, ImageInfo imageInfo, String str4) {
        this.timezone = str;
        this.countryCode = str2;
        this.countryName = str3;
        this.countryFlagImage = imageInfo;
        this.countryFlag = str4;
    }

    public static /* synthetic */ CountryItem copy$default(CountryItem countryItem, String str, String str2, String str3, ImageInfo imageInfo, String str4, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = countryItem.timezone;
        }
        if ((i11 & 2) != 0) {
            str2 = countryItem.countryCode;
        }
        String str5 = str2;
        if ((i11 & 4) != 0) {
            str3 = countryItem.countryName;
        }
        String str6 = str3;
        if ((i11 & 8) != 0) {
            imageInfo = countryItem.countryFlagImage;
        }
        ImageInfo imageInfo2 = imageInfo;
        if ((i11 & 16) != 0) {
            str4 = countryItem.countryFlag;
        }
        return countryItem.copy(str, str5, str6, imageInfo2, str4);
    }

    public static /* synthetic */ void isSelected$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getTimezone() {
        return this.timezone;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getCountryCode() {
        return this.countryCode;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getCountryName() {
        return this.countryName;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final ImageInfo getCountryFlagImage() {
        return this.countryFlagImage;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getCountryFlag() {
        return this.countryFlag;
    }

    public final CountryItem copy(String timezone, String countryCode, String countryName, ImageInfo countryFlagImage, String countryFlag) {
        return new CountryItem(timezone, countryCode, countryName, countryFlagImage, countryFlag);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CountryItem)) {
            return false;
        }
        CountryItem countryItem = (CountryItem) other;
        return Intrinsics.c(this.timezone, countryItem.timezone) && Intrinsics.c(this.countryCode, countryItem.countryCode) && Intrinsics.c(this.countryName, countryItem.countryName) && Intrinsics.c(this.countryFlagImage, countryItem.countryFlagImage) && Intrinsics.c(this.countryFlag, countryItem.countryFlag);
    }

    public final String getCountryCode() {
        return this.countryCode;
    }

    public final String getCountryFlag() {
        return this.countryFlag;
    }

    public final ImageInfo getCountryFlagImage() {
        return this.countryFlagImage;
    }

    public final String getCountryName() {
        return this.countryName;
    }

    public final String getTimezone() {
        return this.timezone;
    }

    public int hashCode() {
        String str = this.timezone;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.countryCode;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.countryName;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        ImageInfo imageInfo = this.countryFlagImage;
        int iHashCode4 = (iHashCode3 + (imageInfo == null ? 0 : imageInfo.hashCode())) * 31;
        String str4 = this.countryFlag;
        return iHashCode4 + (str4 != null ? str4.hashCode() : 0);
    }

    /* JADX INFO: renamed from: isSelected, reason: from getter */
    public final boolean getIsSelected() {
        return this.isSelected;
    }

    public final void setCountryCode(String str) {
        this.countryCode = str;
    }

    public final void setCountryFlag(String str) {
        this.countryFlag = str;
    }

    public final void setCountryFlagImage(ImageInfo imageInfo) {
        this.countryFlagImage = imageInfo;
    }

    public final void setCountryName(String str) {
        this.countryName = str;
    }

    public final void setSelected(boolean z10) {
        this.isSelected = z10;
    }

    public final void setTimezone(String str) {
        this.timezone = str;
    }

    public String toString() {
        return "CountryItem(timezone=" + this.timezone + ", countryCode=" + this.countryCode + ", countryName=" + this.countryName + ", countryFlagImage=" + this.countryFlagImage + ", countryFlag=" + this.countryFlag + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.timezone);
        dest.writeString(this.countryCode);
        dest.writeString(this.countryName);
        ImageInfo imageInfo = this.countryFlagImage;
        if (imageInfo == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            imageInfo.writeToParcel(dest, flags);
        }
        dest.writeString(this.countryFlag);
    }
}
