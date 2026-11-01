package com.transsion.rewardscenterapi;

import androidx.annotation.Keep;
import androidx.compose.animation.core.r;
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
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b/\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B·\u0001\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0007\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0013\u0010\u0014J\u000b\u0010&\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010)\u001a\u00020\u0007HÆ\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010,\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010-\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010.\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u00103\u001a\u00020\u0007HÆ\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\u0003HÆ\u0003J¹\u0001\u00105\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0011\u001a\u00020\u00072\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u00106\u001a\u0002072\b\u00108\u001a\u0004\u0018\u000109HÖ\u0003J\t\u0010:\u001a\u00020;HÖ\u0001J\t\u0010<\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0016R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0016R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0013\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0016R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0016R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0016R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0016R\u0013\u0010\f\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0016R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0016R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u0016R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u0016R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u0016R\u0011\u0010\u0011\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u001aR\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u0016¨\u0006="}, d2 = {"Lcom/transsion/rewardscenterapi/SkuPoint;", "Ljava/io/Serializable;", "skuId", "", "countryCode", "currency", BidResponsed.KEY_PRICE, "", "category", "coin", "duration", "formattedPrice", TrackingKey.DESCRIPTION, "subDescription", "durationUnitDesc", "durationCount", "currencySymbol", "priceUnit", "bizType", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V", "getSkuId", "()Ljava/lang/String;", "getCountryCode", "getCurrency", "getPrice", "()D", "getCategory", "getCoin", "getDuration", "getFormattedPrice", "getDescription", "getSubDescription", "getDurationUnitDesc", "getDurationCount", "getCurrencySymbol", "getPriceUnit", "getBizType", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "RewardsCenterApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class SkuPoint implements Serializable {
    private final String bizType;
    private final String category;
    private final String coin;
    private final String countryCode;
    private final String currency;
    private final String currencySymbol;
    private final String description;
    private final String duration;
    private final String durationCount;
    private final String durationUnitDesc;
    private final String formattedPrice;
    private final double price;
    private final double priceUnit;
    private final String skuId;
    private final String subDescription;

    public SkuPoint() {
        this(null, null, null, 0.0d, null, null, null, null, null, null, null, null, null, 0.0d, null, 32767, null);
    }

    public SkuPoint(String str, String str2, String str3, double d11, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, double d12, String str13) {
        this.skuId = str;
        this.countryCode = str2;
        this.currency = str3;
        this.price = d11;
        this.category = str4;
        this.coin = str5;
        this.duration = str6;
        this.formattedPrice = str7;
        this.description = str8;
        this.subDescription = str9;
        this.durationUnitDesc = str10;
        this.durationCount = str11;
        this.currencySymbol = str12;
        this.priceUnit = d12;
        this.bizType = str13;
    }

    public /* synthetic */ SkuPoint(String str, String str2, String str3, double d11, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, double d12, String str13, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, (i11 & 8) != 0 ? 0.0d : d11, (i11 & 16) != 0 ? null : str4, (i11 & 32) != 0 ? null : str5, (i11 & 64) != 0 ? null : str6, (i11 & 128) != 0 ? null : str7, (i11 & 256) != 0 ? null : str8, (i11 & 512) != 0 ? null : str9, (i11 & 1024) != 0 ? null : str10, (i11 & 2048) != 0 ? null : str11, (i11 & 4096) != 0 ? null : str12, (i11 & 8192) != 0 ? 0.0d : d12, (i11 & 16384) != 0 ? null : str13);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getSkuId() {
        return this.skuId;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getSubDescription() {
        return this.subDescription;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final String getDurationUnitDesc() {
        return this.durationUnitDesc;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final String getDurationCount() {
        return this.durationCount;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final String getCurrencySymbol() {
        return this.currencySymbol;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final double getPriceUnit() {
        return this.priceUnit;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final String getBizType() {
        return this.bizType;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getCountryCode() {
        return this.countryCode;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getCurrency() {
        return this.currency;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final double getPrice() {
        return this.price;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getCategory() {
        return this.category;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getCoin() {
        return this.coin;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getDuration() {
        return this.duration;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getFormattedPrice() {
        return this.formattedPrice;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getDescription() {
        return this.description;
    }

    public final SkuPoint copy(String skuId, String countryCode, String currency, double price, String category, String coin, String duration, String formattedPrice, String description, String subDescription, String durationUnitDesc, String durationCount, String currencySymbol, double priceUnit, String bizType) {
        return new SkuPoint(skuId, countryCode, currency, price, category, coin, duration, formattedPrice, description, subDescription, durationUnitDesc, durationCount, currencySymbol, priceUnit, bizType);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SkuPoint)) {
            return false;
        }
        SkuPoint skuPoint = (SkuPoint) other;
        return Intrinsics.c(this.skuId, skuPoint.skuId) && Intrinsics.c(this.countryCode, skuPoint.countryCode) && Intrinsics.c(this.currency, skuPoint.currency) && Double.compare(this.price, skuPoint.price) == 0 && Intrinsics.c(this.category, skuPoint.category) && Intrinsics.c(this.coin, skuPoint.coin) && Intrinsics.c(this.duration, skuPoint.duration) && Intrinsics.c(this.formattedPrice, skuPoint.formattedPrice) && Intrinsics.c(this.description, skuPoint.description) && Intrinsics.c(this.subDescription, skuPoint.subDescription) && Intrinsics.c(this.durationUnitDesc, skuPoint.durationUnitDesc) && Intrinsics.c(this.durationCount, skuPoint.durationCount) && Intrinsics.c(this.currencySymbol, skuPoint.currencySymbol) && Double.compare(this.priceUnit, skuPoint.priceUnit) == 0 && Intrinsics.c(this.bizType, skuPoint.bizType);
    }

    public final String getBizType() {
        return this.bizType;
    }

    public final String getCategory() {
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

    public final String getCurrencySymbol() {
        return this.currencySymbol;
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getDuration() {
        return this.duration;
    }

    public final String getDurationCount() {
        return this.durationCount;
    }

    public final String getDurationUnitDesc() {
        return this.durationUnitDesc;
    }

    public final String getFormattedPrice() {
        return this.formattedPrice;
    }

    public final double getPrice() {
        return this.price;
    }

    public final double getPriceUnit() {
        return this.priceUnit;
    }

    public final String getSkuId() {
        return this.skuId;
    }

    public final String getSubDescription() {
        return this.subDescription;
    }

    public int hashCode() {
        String str = this.skuId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.countryCode;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.currency;
        int iHashCode3 = (((iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31) + r.a(this.price)) * 31;
        String str4 = this.category;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.coin;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.duration;
        int iHashCode6 = (iHashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.formattedPrice;
        int iHashCode7 = (iHashCode6 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.description;
        int iHashCode8 = (iHashCode7 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.subDescription;
        int iHashCode9 = (iHashCode8 + (str9 == null ? 0 : str9.hashCode())) * 31;
        String str10 = this.durationUnitDesc;
        int iHashCode10 = (iHashCode9 + (str10 == null ? 0 : str10.hashCode())) * 31;
        String str11 = this.durationCount;
        int iHashCode11 = (iHashCode10 + (str11 == null ? 0 : str11.hashCode())) * 31;
        String str12 = this.currencySymbol;
        int iHashCode12 = (((iHashCode11 + (str12 == null ? 0 : str12.hashCode())) * 31) + r.a(this.priceUnit)) * 31;
        String str13 = this.bizType;
        return iHashCode12 + (str13 != null ? str13.hashCode() : 0);
    }

    public String toString() {
        return "SkuPoint(skuId=" + this.skuId + ", countryCode=" + this.countryCode + ", currency=" + this.currency + ", price=" + this.price + ", category=" + this.category + ", coin=" + this.coin + ", duration=" + this.duration + ", formattedPrice=" + this.formattedPrice + ", description=" + this.description + ", subDescription=" + this.subDescription + ", durationUnitDesc=" + this.durationUnitDesc + ", durationCount=" + this.durationCount + ", currencySymbol=" + this.currencySymbol + ", priceUnit=" + this.priceUnit + ", bizType=" + this.bizType + ")";
    }
}
