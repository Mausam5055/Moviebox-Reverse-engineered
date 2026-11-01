package com.transsion.payment.lib.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b%\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001Bk\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\r\u0010\u000eJ\u000b\u0010%\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\nHÆ\u0003J\u000b\u0010,\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010-\u001a\u0004\u0018\u00010\u0003HÆ\u0003Ju\u0010.\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0006\u0010/\u001a\u000200J\u0013\u00101\u001a\u0002022\b\u00103\u001a\u0004\u0018\u000104HÖ\u0003J\t\u00105\u001a\u000200HÖ\u0001J\t\u00106\u001a\u00020\u0003HÖ\u0001J\u0016\u00107\u001a\u0002082\u0006\u00109\u001a\u00020:2\u0006\u0010;\u001a\u000200R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0010\"\u0004\b\u0014\u0010\u0012R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0010\"\u0004\b\u0016\u0010\u0012R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0010\"\u0004\b\u0018\u0010\u0012R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0010\"\u0004\b\u001a\u0010\u0012R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0010\"\u0004\b\u001c\u0010\u0012R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\u0010\"\u0004\b\"\u0010\u0012R\u001c\u0010\f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u0010\"\u0004\b$\u0010\u0012¨\u0006<"}, d2 = {"Lcom/transsion/payment/lib/bean/SkuBean;", "Landroid/os/Parcelable;", "skuId", "", "coin", "currency", "formattedPrice", "countryCode", BidResponsed.KEY_PRICE, "category", "Lcom/transsion/payment/lib/bean/SkuCategory;", "duration", TrackingKey.DESCRIPTION, "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/payment/lib/bean/SkuCategory;Ljava/lang/String;Ljava/lang/String;)V", "getSkuId", "()Ljava/lang/String;", "setSkuId", "(Ljava/lang/String;)V", "getCoin", "setCoin", "getCurrency", "setCurrency", "getFormattedPrice", "setFormattedPrice", "getCountryCode", "setCountryCode", "getPrice", "setPrice", "getCategory", "()Lcom/transsion/payment/lib/bean/SkuCategory;", "setCategory", "(Lcom/transsion/payment/lib/bean/SkuCategory;)V", "getDuration", "setDuration", "getDescription", "setDescription", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "LibPayment_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class SkuBean implements Parcelable {
    public static final Parcelable.Creator<SkuBean> CREATOR = new a();
    private SkuCategory category;
    private String coin;
    private String countryCode;
    private String currency;
    private String description;
    private String duration;
    private String formattedPrice;
    private String price;
    private String skuId;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SkuBean createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new SkuBean(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : SkuCategory.valueOf(parcel.readString()), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final SkuBean[] newArray(int i11) {
            return new SkuBean[i11];
        }
    }

    public SkuBean(String str, String str2, String str3, String str4, String str5, String str6, SkuCategory skuCategory, String str7, String str8) {
        this.skuId = str;
        this.coin = str2;
        this.currency = str3;
        this.formattedPrice = str4;
        this.countryCode = str5;
        this.price = str6;
        this.category = skuCategory;
        this.duration = str7;
        this.description = str8;
    }

    public /* synthetic */ SkuBean(String str, String str2, String str3, String str4, String str5, String str6, SkuCategory skuCategory, String str7, String str8, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, (i11 & 16) != 0 ? null : str5, (i11 & 32) != 0 ? null : str6, (i11 & 64) != 0 ? SkuCategory.SkuCategoryOnceRecharge : skuCategory, (i11 & 128) != 0 ? null : str7, (i11 & 256) != 0 ? null : str8);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getSkuId() {
        return this.skuId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getCoin() {
        return this.coin;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getCurrency() {
        return this.currency;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getFormattedPrice() {
        return this.formattedPrice;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getCountryCode() {
        return this.countryCode;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getPrice() {
        return this.price;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final SkuCategory getCategory() {
        return this.category;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getDuration() {
        return this.duration;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getDescription() {
        return this.description;
    }

    public final SkuBean copy(String skuId, String coin, String currency, String formattedPrice, String countryCode, String price, SkuCategory category, String duration, String description) {
        return new SkuBean(skuId, coin, currency, formattedPrice, countryCode, price, category, duration, description);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SkuBean)) {
            return false;
        }
        SkuBean skuBean = (SkuBean) other;
        return Intrinsics.c(this.skuId, skuBean.skuId) && Intrinsics.c(this.coin, skuBean.coin) && Intrinsics.c(this.currency, skuBean.currency) && Intrinsics.c(this.formattedPrice, skuBean.formattedPrice) && Intrinsics.c(this.countryCode, skuBean.countryCode) && Intrinsics.c(this.price, skuBean.price) && this.category == skuBean.category && Intrinsics.c(this.duration, skuBean.duration) && Intrinsics.c(this.description, skuBean.description);
    }

    public final SkuCategory getCategory() {
        return this.category;
    }

    public final String getCoin() {
        return this.coin;
    }

    public final String getCountryCode() {
        return this.countryCode;
    }

    public final String getCurrency() {
        return this.currency;
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getDuration() {
        return this.duration;
    }

    public final String getFormattedPrice() {
        return this.formattedPrice;
    }

    public final String getPrice() {
        return this.price;
    }

    public final String getSkuId() {
        return this.skuId;
    }

    public int hashCode() {
        String str = this.skuId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.coin;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.currency;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.formattedPrice;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.countryCode;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.price;
        int iHashCode6 = (iHashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31;
        SkuCategory skuCategory = this.category;
        int iHashCode7 = (iHashCode6 + (skuCategory == null ? 0 : skuCategory.hashCode())) * 31;
        String str7 = this.duration;
        int iHashCode8 = (iHashCode7 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.description;
        return iHashCode8 + (str8 != null ? str8.hashCode() : 0);
    }

    public final void setCategory(SkuCategory skuCategory) {
        this.category = skuCategory;
    }

    public final void setCoin(String str) {
        this.coin = str;
    }

    public final void setCountryCode(String str) {
        this.countryCode = str;
    }

    public final void setCurrency(String str) {
        this.currency = str;
    }

    public final void setDescription(String str) {
        this.description = str;
    }

    public final void setDuration(String str) {
        this.duration = str;
    }

    public final void setFormattedPrice(String str) {
        this.formattedPrice = str;
    }

    public final void setPrice(String str) {
        this.price = str;
    }

    public final void setSkuId(String str) {
        this.skuId = str;
    }

    public String toString() {
        return "SkuBean(skuId=" + this.skuId + ", coin=" + this.coin + ", currency=" + this.currency + ", formattedPrice=" + this.formattedPrice + ", countryCode=" + this.countryCode + ", price=" + this.price + ", category=" + this.category + ", duration=" + this.duration + ", description=" + this.description + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.skuId);
        dest.writeString(this.coin);
        dest.writeString(this.currency);
        dest.writeString(this.formattedPrice);
        dest.writeString(this.countryCode);
        dest.writeString(this.price);
        SkuCategory skuCategory = this.category;
        if (skuCategory == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeString(skuCategory.name());
        }
        dest.writeString(this.duration);
        dest.writeString(this.description);
    }
}
