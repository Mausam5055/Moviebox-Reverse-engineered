package com.transsion.baselib.db.mcc;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
@Keep
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u001b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B1\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0005¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0005HÆ\u0003J;\u0010\u001e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\u0005HÆ\u0001J\u0006\u0010\u001f\u001a\u00020\u0003J\u0013\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010#HÖ\u0003J\t\u0010$\u001a\u00020\u0003HÖ\u0001J\t\u0010%\u001a\u00020\u0005HÖ\u0001J\u0016\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u0003R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0010\"\u0004\b\u0014\u0010\u0012R\u001a\u0010\u0007\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0010\"\u0004\b\u0016\u0010\u0012R\u001a\u0010\b\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0010\"\u0004\b\u0018\u0010\u0012¨\u0006+"}, d2 = {"Lcom/transsion/baselib/db/mcc/LocalMcc;", "Landroid/os/Parcelable;", "id", "", "Country", "", "Mcc", "Iso", "CountryCode", "<init>", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getId", "()I", "setId", "(I)V", "getCountry", "()Ljava/lang/String;", "setCountry", "(Ljava/lang/String;)V", "getMcc", "setMcc", "getIso", "setIso", "getCountryCode", "setCountryCode", "component1", "component2", "component3", "component4", "component5", "copy", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "BaseLib_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class LocalMcc implements Parcelable {
    public static final Parcelable.Creator<LocalMcc> CREATOR = new a();
    private String Country;
    private String CountryCode;
    private String Iso;
    private String Mcc;
    private int id;

    /* JADX INFO: loaded from: classes5.dex */
    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LocalMcc createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new LocalMcc(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final LocalMcc[] newArray(int i11) {
            return new LocalMcc[i11];
        }
    }

    public LocalMcc(int i11, String Country, String Mcc, String Iso, String CountryCode) {
        Intrinsics.h(Country, "Country");
        Intrinsics.h(Mcc, "Mcc");
        Intrinsics.h(Iso, "Iso");
        Intrinsics.h(CountryCode, "CountryCode");
        this.id = i11;
        this.Country = Country;
        this.Mcc = Mcc;
        this.Iso = Iso;
        this.CountryCode = CountryCode;
    }

    public /* synthetic */ LocalMcc(int i11, String str, String str2, String str3, String str4, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 0 : i11, str, str2, str3, str4);
    }

    public static /* synthetic */ LocalMcc copy$default(LocalMcc localMcc, int i11, String str, String str2, String str3, String str4, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i11 = localMcc.id;
        }
        if ((i12 & 2) != 0) {
            str = localMcc.Country;
        }
        String str5 = str;
        if ((i12 & 4) != 0) {
            str2 = localMcc.Mcc;
        }
        String str6 = str2;
        if ((i12 & 8) != 0) {
            str3 = localMcc.Iso;
        }
        String str7 = str3;
        if ((i12 & 16) != 0) {
            str4 = localMcc.CountryCode;
        }
        return localMcc.copy(i11, str5, str6, str7, str4);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getCountry() {
        return this.Country;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getMcc() {
        return this.Mcc;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getIso() {
        return this.Iso;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getCountryCode() {
        return this.CountryCode;
    }

    public final LocalMcc copy(int id2, String Country, String Mcc, String Iso, String CountryCode) {
        Intrinsics.h(Country, "Country");
        Intrinsics.h(Mcc, "Mcc");
        Intrinsics.h(Iso, "Iso");
        Intrinsics.h(CountryCode, "CountryCode");
        return new LocalMcc(id2, Country, Mcc, Iso, CountryCode);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LocalMcc)) {
            return false;
        }
        LocalMcc localMcc = (LocalMcc) other;
        return this.id == localMcc.id && Intrinsics.c(this.Country, localMcc.Country) && Intrinsics.c(this.Mcc, localMcc.Mcc) && Intrinsics.c(this.Iso, localMcc.Iso) && Intrinsics.c(this.CountryCode, localMcc.CountryCode);
    }

    public final String getCountry() {
        return this.Country;
    }

    public final String getCountryCode() {
        return this.CountryCode;
    }

    public final int getId() {
        return this.id;
    }

    public final String getIso() {
        return this.Iso;
    }

    public final String getMcc() {
        return this.Mcc;
    }

    public int hashCode() {
        return (((((((this.id * 31) + this.Country.hashCode()) * 31) + this.Mcc.hashCode()) * 31) + this.Iso.hashCode()) * 31) + this.CountryCode.hashCode();
    }

    public final void setCountry(String str) {
        Intrinsics.h(str, "<set-?>");
        this.Country = str;
    }

    public final void setCountryCode(String str) {
        Intrinsics.h(str, "<set-?>");
        this.CountryCode = str;
    }

    public final void setId(int i11) {
        this.id = i11;
    }

    public final void setIso(String str) {
        Intrinsics.h(str, "<set-?>");
        this.Iso = str;
    }

    public final void setMcc(String str) {
        Intrinsics.h(str, "<set-?>");
        this.Mcc = str;
    }

    public String toString() {
        return "LocalMcc(id=" + this.id + ", Country=" + this.Country + ", Mcc=" + this.Mcc + ", Iso=" + this.Iso + ", CountryCode=" + this.CountryCode + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeInt(this.id);
        dest.writeString(this.Country);
        dest.writeString(this.Mcc);
        dest.writeString(this.Iso);
        dest.writeString(this.CountryCode);
    }
}
