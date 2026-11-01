package com.transsion.shorttv.order.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u001e\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001Ba\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u000e\u0010\u000fJ\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010!\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0015J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010$\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u0010\u001aJ\u000b\u0010%\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u0003HÆ\u0003Jz\u0010'\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010(J\u0006\u0010)\u001a\u00020*J\u0013\u0010+\u001a\u00020\u000b2\b\u0010,\u001a\u0004\u0018\u00010-HÖ\u0003J\t\u0010.\u001a\u00020*HÖ\u0001J\t\u0010/\u001a\u00020\u0003HÖ\u0001J\u0016\u00100\u001a\u0002012\u0006\u00102\u001a\u0002032\u0006\u00104\u001a\u00020*R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0011R\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u0014\u0010\u0015R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0011R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0011R\u0015\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\n\n\u0002\u0010\u001b\u001a\u0004\b\u0019\u0010\u001aR\u0013\u0010\f\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0011R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0011¨\u00065"}, d2 = {"Lcom/transsion/shorttv/order/bean/PrePayInfoBean;", "Landroid/os/Parcelable;", "orderId", "", "skuId", "currency", BidResponsed.KEY_PRICE, "", TrackingKey.DESCRIPTION, "cpFrontPage", "payByLocalCurrency", "", "referenceNo", "memo", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V", "getOrderId", "()Ljava/lang/String;", "getSkuId", "getCurrency", "getPrice", "()Ljava/lang/Double;", "Ljava/lang/Double;", "getDescription", "getCpFrontPage", "getPayByLocalCurrency", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getReferenceNo", "getMemo", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/shorttv/order/bean/PrePayInfoBean;", "describeContents", "", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class PrePayInfoBean implements Parcelable {
    public static final Parcelable.Creator<PrePayInfoBean> CREATOR = new a();
    private final String cpFrontPage;
    private final String currency;
    private final String description;
    private final String memo;
    private final String orderId;
    private final Boolean payByLocalCurrency;
    private final Double price;
    private final String referenceNo;
    private final String skuId;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final PrePayInfoBean createFromParcel(Parcel parcel) {
            Boolean boolValueOf;
            Intrinsics.h(parcel, "parcel");
            String string = parcel.readString();
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            Double dValueOf = parcel.readInt() == 0 ? null : Double.valueOf(parcel.readDouble());
            String string4 = parcel.readString();
            String string5 = parcel.readString();
            if (parcel.readInt() == 0) {
                boolValueOf = null;
            } else {
                boolValueOf = Boolean.valueOf(parcel.readInt() != 0);
            }
            return new PrePayInfoBean(string, string2, string3, dValueOf, string4, string5, boolValueOf, parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final PrePayInfoBean[] newArray(int i11) {
            return new PrePayInfoBean[i11];
        }
    }

    public PrePayInfoBean(String str, String str2, String str3, Double d11, String str4, String str5, Boolean bool, String str6, String str7) {
        this.orderId = str;
        this.skuId = str2;
        this.currency = str3;
        this.price = d11;
        this.description = str4;
        this.cpFrontPage = str5;
        this.payByLocalCurrency = bool;
        this.referenceNo = str6;
        this.memo = str7;
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getOrderId() {
        return this.orderId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getSkuId() {
        return this.skuId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getCurrency() {
        return this.currency;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Double getPrice() {
        return this.price;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getDescription() {
        return this.description;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getCpFrontPage() {
        return this.cpFrontPage;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final Boolean getPayByLocalCurrency() {
        return this.payByLocalCurrency;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getReferenceNo() {
        return this.referenceNo;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getMemo() {
        return this.memo;
    }

    public final PrePayInfoBean copy(String orderId, String skuId, String currency, Double price, String description, String cpFrontPage, Boolean payByLocalCurrency, String referenceNo, String memo) {
        return new PrePayInfoBean(orderId, skuId, currency, price, description, cpFrontPage, payByLocalCurrency, referenceNo, memo);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PrePayInfoBean)) {
            return false;
        }
        PrePayInfoBean prePayInfoBean = (PrePayInfoBean) other;
        return Intrinsics.c(this.orderId, prePayInfoBean.orderId) && Intrinsics.c(this.skuId, prePayInfoBean.skuId) && Intrinsics.c(this.currency, prePayInfoBean.currency) && Intrinsics.c(this.price, prePayInfoBean.price) && Intrinsics.c(this.description, prePayInfoBean.description) && Intrinsics.c(this.cpFrontPage, prePayInfoBean.cpFrontPage) && Intrinsics.c(this.payByLocalCurrency, prePayInfoBean.payByLocalCurrency) && Intrinsics.c(this.referenceNo, prePayInfoBean.referenceNo) && Intrinsics.c(this.memo, prePayInfoBean.memo);
    }

    public final String getCpFrontPage() {
        return this.cpFrontPage;
    }

    public final String getCurrency() {
        return this.currency;
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getMemo() {
        return this.memo;
    }

    public final String getOrderId() {
        return this.orderId;
    }

    public final Boolean getPayByLocalCurrency() {
        return this.payByLocalCurrency;
    }

    public final Double getPrice() {
        return this.price;
    }

    public final String getReferenceNo() {
        return this.referenceNo;
    }

    public final String getSkuId() {
        return this.skuId;
    }

    public int hashCode() {
        String str = this.orderId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.skuId;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.currency;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Double d11 = this.price;
        int iHashCode4 = (iHashCode3 + (d11 == null ? 0 : d11.hashCode())) * 31;
        String str4 = this.description;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.cpFrontPage;
        int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        Boolean bool = this.payByLocalCurrency;
        int iHashCode7 = (iHashCode6 + (bool == null ? 0 : bool.hashCode())) * 31;
        String str6 = this.referenceNo;
        int iHashCode8 = (iHashCode7 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.memo;
        return iHashCode8 + (str7 != null ? str7.hashCode() : 0);
    }

    public String toString() {
        return "PrePayInfoBean(orderId=" + this.orderId + ", skuId=" + this.skuId + ", currency=" + this.currency + ", price=" + this.price + ", description=" + this.description + ", cpFrontPage=" + this.cpFrontPage + ", payByLocalCurrency=" + this.payByLocalCurrency + ", referenceNo=" + this.referenceNo + ", memo=" + this.memo + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.orderId);
        dest.writeString(this.skuId);
        dest.writeString(this.currency);
        Double d11 = this.price;
        if (d11 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeDouble(d11.doubleValue());
        }
        dest.writeString(this.description);
        dest.writeString(this.cpFrontPage);
        Boolean bool = this.payByLocalCurrency;
        if (bool == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(bool.booleanValue() ? 1 : 0);
        }
        dest.writeString(this.referenceNo);
        dest.writeString(this.memo);
    }
}
