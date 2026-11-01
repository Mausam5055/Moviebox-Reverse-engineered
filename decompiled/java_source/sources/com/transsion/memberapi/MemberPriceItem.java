package com.transsion.memberapi;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0006\n\u0002\b\u001f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001Bs\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0011J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010\"\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010#\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u0019J\u0010\u0010$\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u0019J\u0010\u0010%\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u0019J\u000b\u0010&\u001a\u0004\u0018\u00010\u0005HÆ\u0003Jz\u0010'\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010(J\u0013\u0010)\u001a\u00020*2\b\u0010+\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010,\u001a\u00020\u0003HÖ\u0001J\t\u0010-\u001a\u00020\u0005HÖ\u0001R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0010\u0010\u0011R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0014R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0014R\u0015\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0017\u0010\u0011R\u0015\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\n\n\u0002\u0010\u001a\u001a\u0004\b\u0018\u0010\u0019R\u0015\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\n\n\u0002\u0010\u001a\u001a\u0004\b\u001b\u0010\u0019R\u0015\u0010\f\u001a\u0004\u0018\u00010\n¢\u0006\n\n\u0002\u0010\u001a\u001a\u0004\b\u001c\u0010\u0019R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0014¨\u0006."}, d2 = {"Lcom/transsion/memberapi/MemberPriceItem;", "", "memberType", "", TrackingKey.DESCRIPTION, "", "duration", "currencySymbol", "discountRate", "discountPrice", "", "priceUnit", BidResponsed.KEY_PRICE, "skuId", "<init>", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)V", "getMemberType", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getDescription", "()Ljava/lang/String;", "getDuration", "getCurrencySymbol", "getDiscountRate", "getDiscountPrice", "()Ljava/lang/Double;", "Ljava/lang/Double;", "getPriceUnit", "getPrice", "getSkuId", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)Lcom/transsion/memberapi/MemberPriceItem;", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "toString", "MemberApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class MemberPriceItem {
    private final String currencySymbol;
    private final String description;
    private final Double discountPrice;
    private final Integer discountRate;
    private final String duration;
    private final Integer memberType;
    private final Double price;
    private final Double priceUnit;
    private final String skuId;

    public MemberPriceItem() {
        this(null, null, null, null, null, null, null, null, null, 511, null);
    }

    public MemberPriceItem(Integer num, String str, String str2, String str3, Integer num2, Double d11, Double d12, Double d13, String str4) {
        this.memberType = num;
        this.description = str;
        this.duration = str2;
        this.currencySymbol = str3;
        this.discountRate = num2;
        this.discountPrice = d11;
        this.priceUnit = d12;
        this.price = d13;
        this.skuId = str4;
    }

    public /* synthetic */ MemberPriceItem(Integer num, String str, String str2, String str3, Integer num2, Double d11, Double d12, Double d13, String str4, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : num, (i11 & 2) != 0 ? null : str, (i11 & 4) != 0 ? null : str2, (i11 & 8) != 0 ? null : str3, (i11 & 16) != 0 ? null : num2, (i11 & 32) != 0 ? null : d11, (i11 & 64) != 0 ? null : d12, (i11 & 128) != 0 ? null : d13, (i11 & 256) == 0 ? str4 : null);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Integer getMemberType() {
        return this.memberType;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getDescription() {
        return this.description;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getDuration() {
        return this.duration;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getCurrencySymbol() {
        return this.currencySymbol;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Integer getDiscountRate() {
        return this.discountRate;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final Double getDiscountPrice() {
        return this.discountPrice;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final Double getPriceUnit() {
        return this.priceUnit;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final Double getPrice() {
        return this.price;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getSkuId() {
        return this.skuId;
    }

    public final MemberPriceItem copy(Integer memberType, String description, String duration, String currencySymbol, Integer discountRate, Double discountPrice, Double priceUnit, Double price, String skuId) {
        return new MemberPriceItem(memberType, description, duration, currencySymbol, discountRate, discountPrice, priceUnit, price, skuId);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MemberPriceItem)) {
            return false;
        }
        MemberPriceItem memberPriceItem = (MemberPriceItem) other;
        return Intrinsics.c(this.memberType, memberPriceItem.memberType) && Intrinsics.c(this.description, memberPriceItem.description) && Intrinsics.c(this.duration, memberPriceItem.duration) && Intrinsics.c(this.currencySymbol, memberPriceItem.currencySymbol) && Intrinsics.c(this.discountRate, memberPriceItem.discountRate) && Intrinsics.c(this.discountPrice, memberPriceItem.discountPrice) && Intrinsics.c(this.priceUnit, memberPriceItem.priceUnit) && Intrinsics.c(this.price, memberPriceItem.price) && Intrinsics.c(this.skuId, memberPriceItem.skuId);
    }

    public final String getCurrencySymbol() {
        return this.currencySymbol;
    }

    public final String getDescription() {
        return this.description;
    }

    public final Double getDiscountPrice() {
        return this.discountPrice;
    }

    public final Integer getDiscountRate() {
        return this.discountRate;
    }

    public final String getDuration() {
        return this.duration;
    }

    public final Integer getMemberType() {
        return this.memberType;
    }

    public final Double getPrice() {
        return this.price;
    }

    public final Double getPriceUnit() {
        return this.priceUnit;
    }

    public final String getSkuId() {
        return this.skuId;
    }

    public int hashCode() {
        Integer num = this.memberType;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        String str = this.description;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.duration;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.currencySymbol;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Integer num2 = this.discountRate;
        int iHashCode5 = (iHashCode4 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Double d11 = this.discountPrice;
        int iHashCode6 = (iHashCode5 + (d11 == null ? 0 : d11.hashCode())) * 31;
        Double d12 = this.priceUnit;
        int iHashCode7 = (iHashCode6 + (d12 == null ? 0 : d12.hashCode())) * 31;
        Double d13 = this.price;
        int iHashCode8 = (iHashCode7 + (d13 == null ? 0 : d13.hashCode())) * 31;
        String str4 = this.skuId;
        return iHashCode8 + (str4 != null ? str4.hashCode() : 0);
    }

    public String toString() {
        return "MemberPriceItem(memberType=" + this.memberType + ", description=" + this.description + ", duration=" + this.duration + ", currencySymbol=" + this.currencySymbol + ", discountRate=" + this.discountRate + ", discountPrice=" + this.discountPrice + ", priceUnit=" + this.priceUnit + ", price=" + this.price + ", skuId=" + this.skuId + ")";
    }
}
