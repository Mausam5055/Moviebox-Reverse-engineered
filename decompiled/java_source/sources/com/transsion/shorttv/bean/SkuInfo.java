package com.transsion.shorttv.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u001d\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BO\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\t\u0010\nJ\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003JQ\u0010\u001f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010#HÖ\u0003J\t\u0010$\u001a\u00020%HÖ\u0001J\t\u0010&\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\f\"\u0004\b\u0010\u0010\u000eR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\f\"\u0004\b\u0012\u0010\u000eR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\f\"\u0004\b\u0014\u0010\u000eR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\f\"\u0004\b\u0016\u0010\u000eR\u001c\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\f\"\u0004\b\u0018\u0010\u000e¨\u0006'"}, d2 = {"Lcom/transsion/shorttv/bean/SkuInfo;", "Ljava/io/Serializable;", "skuId", "", "countryCode", BidResponsed.KEY_PRICE, "currency", TrackingKey.DESCRIPTION, "currencySymbol", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getSkuId", "()Ljava/lang/String;", "setSkuId", "(Ljava/lang/String;)V", "getCountryCode", "setCountryCode", "getPrice", "setPrice", "getCurrency", "setCurrency", "getDescription", "setDescription", "getCurrencySymbol", "setCurrencySymbol", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class SkuInfo implements Serializable {
    private String countryCode;
    private String currency;
    private String currencySymbol;
    private String description;
    private String price;
    private String skuId;

    public SkuInfo() {
        this(null, null, null, null, null, null, 63, null);
    }

    public SkuInfo(String str, String str2, String str3, String str4, String str5, String str6) {
        this.skuId = str;
        this.countryCode = str2;
        this.price = str3;
        this.currency = str4;
        this.description = str5;
        this.currencySymbol = str6;
    }

    public /* synthetic */ SkuInfo(String str, String str2, String str3, String str4, String str5, String str6, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, (i11 & 8) != 0 ? null : str4, (i11 & 16) != 0 ? null : str5, (i11 & 32) != 0 ? null : str6);
    }

    public static /* synthetic */ SkuInfo copy$default(SkuInfo skuInfo, String str, String str2, String str3, String str4, String str5, String str6, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = skuInfo.skuId;
        }
        if ((i11 & 2) != 0) {
            str2 = skuInfo.countryCode;
        }
        String str7 = str2;
        if ((i11 & 4) != 0) {
            str3 = skuInfo.price;
        }
        String str8 = str3;
        if ((i11 & 8) != 0) {
            str4 = skuInfo.currency;
        }
        String str9 = str4;
        if ((i11 & 16) != 0) {
            str5 = skuInfo.description;
        }
        String str10 = str5;
        if ((i11 & 32) != 0) {
            str6 = skuInfo.currencySymbol;
        }
        return skuInfo.copy(str, str7, str8, str9, str10, str6);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getSkuId() {
        return this.skuId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getCountryCode() {
        return this.countryCode;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getPrice() {
        return this.price;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getCurrency() {
        return this.currency;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getDescription() {
        return this.description;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getCurrencySymbol() {
        return this.currencySymbol;
    }

    public final SkuInfo copy(String skuId, String countryCode, String price, String currency, String description, String currencySymbol) {
        return new SkuInfo(skuId, countryCode, price, currency, description, currencySymbol);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SkuInfo)) {
            return false;
        }
        SkuInfo skuInfo = (SkuInfo) other;
        return Intrinsics.c(this.skuId, skuInfo.skuId) && Intrinsics.c(this.countryCode, skuInfo.countryCode) && Intrinsics.c(this.price, skuInfo.price) && Intrinsics.c(this.currency, skuInfo.currency) && Intrinsics.c(this.description, skuInfo.description) && Intrinsics.c(this.currencySymbol, skuInfo.currencySymbol);
    }

    public final String getCountryCode() {
        return this.countryCode;
    }

    public final String getCurrency() {
        return this.currency;
    }

    public final String getCurrencySymbol() {
        return this.currencySymbol;
    }

    public final String getDescription() {
        return this.description;
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
        String str2 = this.countryCode;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.price;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.currency;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.description;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.currencySymbol;
        return iHashCode5 + (str6 != null ? str6.hashCode() : 0);
    }

    public final void setCountryCode(String str) {
        this.countryCode = str;
    }

    public final void setCurrency(String str) {
        this.currency = str;
    }

    public final void setCurrencySymbol(String str) {
        this.currencySymbol = str;
    }

    public final void setDescription(String str) {
        this.description = str;
    }

    public final void setPrice(String str) {
        this.price = str;
    }

    public final void setSkuId(String str) {
        this.skuId = str;
    }

    public String toString() {
        return "SkuInfo(skuId=" + this.skuId + ", countryCode=" + this.countryCode + ", price=" + this.price + ", currency=" + this.currency + ", description=" + this.description + ", currencySymbol=" + this.currencySymbol + ")";
    }
}
