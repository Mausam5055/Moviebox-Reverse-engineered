package com.tn.tranpay.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Keep
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J'\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001J\u0019\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\b¨\u0006\u001c"}, d2 = {"Lcom/tn/tranpay/bean/CurrencyInfoBean;", "Landroid/os/Parcelable;", "countryCode", "", "currency", "mobileCode", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getCountryCode", "()Ljava/lang/String;", "getCurrency", "getMobileCode", "component1", "component2", "component3", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "lib_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class CurrencyInfoBean implements Parcelable {
    public static final Parcelable.Creator<CurrencyInfoBean> CREATOR = new a();
    private final String countryCode;
    private final String currency;
    private final String mobileCode;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CurrencyInfoBean createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new CurrencyInfoBean(parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final CurrencyInfoBean[] newArray(int i11) {
            return new CurrencyInfoBean[i11];
        }
    }

    public CurrencyInfoBean(String countryCode, String currency, String mobileCode) {
        Intrinsics.h(countryCode, "countryCode");
        Intrinsics.h(currency, "currency");
        Intrinsics.h(mobileCode, "mobileCode");
        this.countryCode = countryCode;
        this.currency = currency;
        this.mobileCode = mobileCode;
    }

    public static /* synthetic */ CurrencyInfoBean copy$default(CurrencyInfoBean currencyInfoBean, String str, String str2, String str3, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = currencyInfoBean.countryCode;
        }
        if ((i11 & 2) != 0) {
            str2 = currencyInfoBean.currency;
        }
        if ((i11 & 4) != 0) {
            str3 = currencyInfoBean.mobileCode;
        }
        return currencyInfoBean.copy(str, str2, str3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getCountryCode() {
        return this.countryCode;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getCurrency() {
        return this.currency;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getMobileCode() {
        return this.mobileCode;
    }

    public final CurrencyInfoBean copy(String countryCode, String currency, String mobileCode) {
        Intrinsics.h(countryCode, "countryCode");
        Intrinsics.h(currency, "currency");
        Intrinsics.h(mobileCode, "mobileCode");
        return new CurrencyInfoBean(countryCode, currency, mobileCode);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CurrencyInfoBean)) {
            return false;
        }
        CurrencyInfoBean currencyInfoBean = (CurrencyInfoBean) other;
        return Intrinsics.c(this.countryCode, currencyInfoBean.countryCode) && Intrinsics.c(this.currency, currencyInfoBean.currency) && Intrinsics.c(this.mobileCode, currencyInfoBean.mobileCode);
    }

    public final String getCountryCode() {
        return this.countryCode;
    }

    public final String getCurrency() {
        return this.currency;
    }

    public final String getMobileCode() {
        return this.mobileCode;
    }

    public int hashCode() {
        return (((this.countryCode.hashCode() * 31) + this.currency.hashCode()) * 31) + this.mobileCode.hashCode();
    }

    public String toString() {
        return "CurrencyInfoBean(countryCode=" + this.countryCode + ", currency=" + this.currency + ", mobileCode=" + this.mobileCode + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.h(parcel, "out");
        parcel.writeString(this.countryCode);
        parcel.writeString(this.currency);
        parcel.writeString(this.mobileCode);
    }
}
