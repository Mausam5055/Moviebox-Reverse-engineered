package com.tn.tranpay.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Keep
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b \n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003¢\u0006\u0002\u0010\nJ\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0003HÆ\u0003J\t\u0010!\u001a\u00020\u0003HÆ\u0003JO\u0010\"\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u0003HÆ\u0001J\t\u0010#\u001a\u00020$HÖ\u0001J\u0013\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010(HÖ\u0003J\t\u0010)\u001a\u00020$HÖ\u0001J\t\u0010*\u001a\u00020\u0003HÖ\u0001J\u0019\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020$HÖ\u0001R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\t\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\f\"\u0004\b\u0010\u0010\u000eR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\f\"\u0004\b\u0012\u0010\u000eR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\f\"\u0004\b\u0014\u0010\u000eR\u001a\u0010\b\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\f\"\u0004\b\u0016\u0010\u000eR\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\f\"\u0004\b\u0018\u0010\u000eR\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\f\"\u0004\b\u001a\u0010\u000e¨\u00060"}, d2 = {"Lcom/tn/tranpay/bean/PrePayInfoBean;", "Landroid/os/Parcelable;", "companyName", "", "applicationIcon", RewardPlus.AMOUNT, "orderId", "orderDescription", "currencySymbol", "amountFormatPattern", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getAmount", "()Ljava/lang/String;", "setAmount", "(Ljava/lang/String;)V", "getAmountFormatPattern", "setAmountFormatPattern", "getApplicationIcon", "setApplicationIcon", "getCompanyName", "setCompanyName", "getCurrencySymbol", "setCurrencySymbol", "getOrderDescription", "setOrderDescription", "getOrderId", "setOrderId", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "lib_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class PrePayInfoBean implements Parcelable {
    public static final Parcelable.Creator<PrePayInfoBean> CREATOR = new a();
    private String amount;
    private String amountFormatPattern;
    private String applicationIcon;
    private String companyName;
    private String currencySymbol;
    private String orderDescription;
    private String orderId;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final PrePayInfoBean createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new PrePayInfoBean(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final PrePayInfoBean[] newArray(int i11) {
            return new PrePayInfoBean[i11];
        }
    }

    public PrePayInfoBean(String companyName, String applicationIcon, String amount, String orderId, String orderDescription, String currencySymbol, String amountFormatPattern) {
        Intrinsics.h(companyName, "companyName");
        Intrinsics.h(applicationIcon, "applicationIcon");
        Intrinsics.h(amount, "amount");
        Intrinsics.h(orderId, "orderId");
        Intrinsics.h(orderDescription, "orderDescription");
        Intrinsics.h(currencySymbol, "currencySymbol");
        Intrinsics.h(amountFormatPattern, "amountFormatPattern");
        this.companyName = companyName;
        this.applicationIcon = applicationIcon;
        this.amount = amount;
        this.orderId = orderId;
        this.orderDescription = orderDescription;
        this.currencySymbol = currencySymbol;
        this.amountFormatPattern = amountFormatPattern;
    }

    public static /* synthetic */ PrePayInfoBean copy$default(PrePayInfoBean prePayInfoBean, String str, String str2, String str3, String str4, String str5, String str6, String str7, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = prePayInfoBean.companyName;
        }
        if ((i11 & 2) != 0) {
            str2 = prePayInfoBean.applicationIcon;
        }
        String str8 = str2;
        if ((i11 & 4) != 0) {
            str3 = prePayInfoBean.amount;
        }
        String str9 = str3;
        if ((i11 & 8) != 0) {
            str4 = prePayInfoBean.orderId;
        }
        String str10 = str4;
        if ((i11 & 16) != 0) {
            str5 = prePayInfoBean.orderDescription;
        }
        String str11 = str5;
        if ((i11 & 32) != 0) {
            str6 = prePayInfoBean.currencySymbol;
        }
        String str12 = str6;
        if ((i11 & 64) != 0) {
            str7 = prePayInfoBean.amountFormatPattern;
        }
        return prePayInfoBean.copy(str, str8, str9, str10, str11, str12, str7);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getCompanyName() {
        return this.companyName;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getApplicationIcon() {
        return this.applicationIcon;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getAmount() {
        return this.amount;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getOrderId() {
        return this.orderId;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getOrderDescription() {
        return this.orderDescription;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getCurrencySymbol() {
        return this.currencySymbol;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getAmountFormatPattern() {
        return this.amountFormatPattern;
    }

    public final PrePayInfoBean copy(String companyName, String applicationIcon, String amount, String orderId, String orderDescription, String currencySymbol, String amountFormatPattern) {
        Intrinsics.h(companyName, "companyName");
        Intrinsics.h(applicationIcon, "applicationIcon");
        Intrinsics.h(amount, "amount");
        Intrinsics.h(orderId, "orderId");
        Intrinsics.h(orderDescription, "orderDescription");
        Intrinsics.h(currencySymbol, "currencySymbol");
        Intrinsics.h(amountFormatPattern, "amountFormatPattern");
        return new PrePayInfoBean(companyName, applicationIcon, amount, orderId, orderDescription, currencySymbol, amountFormatPattern);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
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
        return Intrinsics.c(this.companyName, prePayInfoBean.companyName) && Intrinsics.c(this.applicationIcon, prePayInfoBean.applicationIcon) && Intrinsics.c(this.amount, prePayInfoBean.amount) && Intrinsics.c(this.orderId, prePayInfoBean.orderId) && Intrinsics.c(this.orderDescription, prePayInfoBean.orderDescription) && Intrinsics.c(this.currencySymbol, prePayInfoBean.currencySymbol) && Intrinsics.c(this.amountFormatPattern, prePayInfoBean.amountFormatPattern);
    }

    public final String getAmount() {
        return this.amount;
    }

    public final String getAmountFormatPattern() {
        return this.amountFormatPattern;
    }

    public final String getApplicationIcon() {
        return this.applicationIcon;
    }

    public final String getCompanyName() {
        return this.companyName;
    }

    public final String getCurrencySymbol() {
        return this.currencySymbol;
    }

    public final String getOrderDescription() {
        return this.orderDescription;
    }

    public final String getOrderId() {
        return this.orderId;
    }

    public int hashCode() {
        return (((((((((((this.companyName.hashCode() * 31) + this.applicationIcon.hashCode()) * 31) + this.amount.hashCode()) * 31) + this.orderId.hashCode()) * 31) + this.orderDescription.hashCode()) * 31) + this.currencySymbol.hashCode()) * 31) + this.amountFormatPattern.hashCode();
    }

    public final void setAmount(String str) {
        Intrinsics.h(str, "<set-?>");
        this.amount = str;
    }

    public final void setAmountFormatPattern(String str) {
        Intrinsics.h(str, "<set-?>");
        this.amountFormatPattern = str;
    }

    public final void setApplicationIcon(String str) {
        Intrinsics.h(str, "<set-?>");
        this.applicationIcon = str;
    }

    public final void setCompanyName(String str) {
        Intrinsics.h(str, "<set-?>");
        this.companyName = str;
    }

    public final void setCurrencySymbol(String str) {
        Intrinsics.h(str, "<set-?>");
        this.currencySymbol = str;
    }

    public final void setOrderDescription(String str) {
        Intrinsics.h(str, "<set-?>");
        this.orderDescription = str;
    }

    public final void setOrderId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.orderId = str;
    }

    public String toString() {
        return "PrePayInfoBean(companyName=" + this.companyName + ", applicationIcon=" + this.applicationIcon + ", amount=" + this.amount + ", orderId=" + this.orderId + ", orderDescription=" + this.orderDescription + ", currencySymbol=" + this.currencySymbol + ", amountFormatPattern=" + this.amountFormatPattern + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.h(parcel, "out");
        parcel.writeString(this.companyName);
        parcel.writeString(this.applicationIcon);
        parcel.writeString(this.amount);
        parcel.writeString(this.orderId);
        parcel.writeString(this.orderDescription);
        parcel.writeString(this.currencySymbol);
        parcel.writeString(this.amountFormatPattern);
    }
}
