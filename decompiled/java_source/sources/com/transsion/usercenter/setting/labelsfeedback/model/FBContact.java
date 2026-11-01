package com.transsion.usercenter.setting.labelsfeedback.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.transsnet.loginapi.bean.Country;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0005HÆ\u0003J\u001f\u0010\u001a\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0006\u0010\u001b\u001a\u00020\u001cJ\u0013\u0010\u001d\u001a\u00020\u00132\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fHÖ\u0003J\t\u0010 \u001a\u00020\u001cHÖ\u0001J\t\u0010!\u001a\u00020\u0005HÖ\u0001J\u0016\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u001cR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u00058F¢\u0006\u0006\u001a\u0004\b\u0011\u0010\rR\u0011\u0010\u0012\u001a\u00020\u00138F¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0016\u001a\u00020\u00138F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0015¨\u0006'"}, d2 = {"Lcom/transsion/usercenter/setting/labelsfeedback/model/FBContact;", "Landroid/os/Parcelable;", PlaceTypes.COUNTRY, "Lcom/transsnet/loginapi/bean/Country;", "phone", "", "<init>", "(Lcom/transsnet/loginapi/bean/Country;Ljava/lang/String;)V", "getCountry", "()Lcom/transsnet/loginapi/bean/Country;", "setCountry", "(Lcom/transsnet/loginapi/bean/Country;)V", "getPhone", "()Ljava/lang/String;", "setPhone", "(Ljava/lang/String;)V", "whole", "getWhole", "needCountry", "", "getNeedCountry", "()Z", "needPhone", "getNeedPhone", "component1", "component2", "copy", "describeContents", "", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class FBContact implements Parcelable {
    public static final Parcelable.Creator<FBContact> CREATOR = new a();
    private Country country;
    private String phone;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final FBContact createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new FBContact((Country) parcel.readSerializable(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final FBContact[] newArray(int i11) {
            return new FBContact[i11];
        }
    }

    public FBContact(Country country, String phone) {
        Intrinsics.h(phone, "phone");
        this.country = country;
        this.phone = phone;
    }

    public /* synthetic */ FBContact(Country country, String str, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(country, (i11 & 2) != 0 ? "" : str);
    }

    public static /* synthetic */ FBContact copy$default(FBContact fBContact, Country country, String str, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            country = fBContact.country;
        }
        if ((i11 & 2) != 0) {
            str = fBContact.phone;
        }
        return fBContact.copy(country, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Country getCountry() {
        return this.country;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getPhone() {
        return this.phone;
    }

    public final FBContact copy(Country country, String phone) {
        Intrinsics.h(phone, "phone");
        return new FBContact(country, phone);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof FBContact)) {
            return false;
        }
        FBContact fBContact = (FBContact) other;
        return Intrinsics.c(this.country, fBContact.country) && Intrinsics.c(this.phone, fBContact.phone);
    }

    public final Country getCountry() {
        return this.country;
    }

    public final boolean getNeedCountry() {
        return this.phone.length() > 0 && this.country == null;
    }

    public final boolean getNeedPhone() {
        return this.country != null && this.phone.length() == 0;
    }

    public final String getPhone() {
        return this.phone;
    }

    public final String getWhole() {
        Country country = this.country;
        if (country == null || this.phone.length() <= 0) {
            return null;
        }
        return country.getCountry_s() + " +" + country.getCode() + " " + this.phone;
    }

    public int hashCode() {
        Country country = this.country;
        return ((country == null ? 0 : country.hashCode()) * 31) + this.phone.hashCode();
    }

    public final void setCountry(Country country) {
        this.country = country;
    }

    public final void setPhone(String str) {
        Intrinsics.h(str, "<set-?>");
        this.phone = str;
    }

    public String toString() {
        return "FBContact(country=" + this.country + ", phone=" + this.phone + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeSerializable(this.country);
        dest.writeString(this.phone);
    }
}
