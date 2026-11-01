package com.transsion.memberapi;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u000f\n\u0002\u0010\b\n\u0002\b3\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B÷\u0001\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0017¢\u0006\u0004\b\u0019\u0010\u001aJ\u000b\u00104\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u00107\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010 J\u000b\u00108\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00109\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010:\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010<\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010=\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010>\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010?\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010@\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010A\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010 J\u000b\u0010B\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010C\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010D\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010E\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010 J\u0010\u0010F\u001a\u0004\u0018\u00010\u0017HÆ\u0003¢\u0006\u0002\u00101J\u0010\u0010G\u001a\u0004\u0018\u00010\u0017HÆ\u0003¢\u0006\u0002\u00101Jþ\u0001\u0010H\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0017HÆ\u0001¢\u0006\u0002\u0010IJ\u0013\u0010J\u001a\u00020K2\b\u0010L\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010M\u001a\u00020\u0017HÖ\u0001J\t\u0010N\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001cR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001cR\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\n\n\u0002\u0010!\u001a\u0004\b\u001f\u0010 R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u001cR\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u001cR\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u001cR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u001cR\u0013\u0010\f\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\u001cR\u0013\u0010\r\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\u001cR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b(\u0010\u001cR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b)\u0010\u001cR\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b*\u0010\u001cR\u0015\u0010\u0011\u001a\u0004\u0018\u00010\u0007¢\u0006\n\n\u0002\u0010!\u001a\u0004\b+\u0010 R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b,\u0010\u001cR\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b-\u0010\u001cR\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b.\u0010\u001cR\u0015\u0010\u0015\u001a\u0004\u0018\u00010\u0007¢\u0006\n\n\u0002\u0010!\u001a\u0004\b/\u0010 R\u0015\u0010\u0016\u001a\u0004\u0018\u00010\u0017¢\u0006\n\n\u0002\u00102\u001a\u0004\b0\u00101R\u0015\u0010\u0018\u001a\u0004\u0018\u00010\u0017¢\u0006\n\n\u0002\u00102\u001a\u0004\b3\u00101¨\u0006O"}, d2 = {"Lcom/transsion/memberapi/SkuPromotionSku;", "", "skuId", "", "countryCode", "currency", BidResponsed.KEY_PRICE, "", "category", "coin", "duration", "formattedPrice", TrackingKey.DESCRIPTION, "subDescription", "durationUnitDesc", "durationCount", "currencySymbol", "priceUnit", "bizType", CampaignEx.JSON_KEY_TITLE, "hotIcon", "discountPrice", "discountRate", "", "vipLevel", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;)V", "getSkuId", "()Ljava/lang/String;", "getCountryCode", "getCurrency", "getPrice", "()Ljava/lang/Double;", "Ljava/lang/Double;", "getCategory", "getCoin", "getDuration", "getFormattedPrice", "getDescription", "getSubDescription", "getDurationUnitDesc", "getDurationCount", "getCurrencySymbol", "getPriceUnit", "getBizType", "getTitle", "getHotIcon", "getDiscountPrice", "getDiscountRate", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getVipLevel", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component20", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/transsion/memberapi/SkuPromotionSku;", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "toString", "MemberApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class SkuPromotionSku {
    private final String bizType;
    private final String category;
    private final String coin;
    private final String countryCode;
    private final String currency;
    private final String currencySymbol;
    private final String description;
    private final Double discountPrice;
    private final Integer discountRate;
    private final String duration;
    private final String durationCount;
    private final String durationUnitDesc;
    private final String formattedPrice;
    private final String hotIcon;
    private final Double price;
    private final Double priceUnit;
    private final String skuId;
    private final String subDescription;
    private final String title;
    private final Integer vipLevel;

    public SkuPromotionSku() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 1048575, null);
    }

    public SkuPromotionSku(String str, String str2, String str3, Double d11, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, Double d12, String str13, String str14, String str15, Double d13, Integer num, Integer num2) {
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
        this.title = str14;
        this.hotIcon = str15;
        this.discountPrice = d13;
        this.discountRate = num;
        this.vipLevel = num2;
    }

    public /* synthetic */ SkuPromotionSku(String str, String str2, String str3, Double d11, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, Double d12, String str13, String str14, String str15, Double d13, Integer num, Integer num2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, (i11 & 8) != 0 ? null : d11, (i11 & 16) != 0 ? null : str4, (i11 & 32) != 0 ? null : str5, (i11 & 64) != 0 ? null : str6, (i11 & 128) != 0 ? null : str7, (i11 & 256) != 0 ? null : str8, (i11 & 512) != 0 ? null : str9, (i11 & 1024) != 0 ? null : str10, (i11 & 2048) != 0 ? null : str11, (i11 & 4096) != 0 ? null : str12, (i11 & 8192) != 0 ? null : d12, (i11 & 16384) != 0 ? null : str13, (i11 & 32768) != 0 ? null : str14, (i11 & 65536) != 0 ? null : str15, (i11 & 131072) != 0 ? null : d13, (i11 & 262144) != 0 ? null : num, (i11 & 524288) != 0 ? null : num2);
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
    public final Double getPriceUnit() {
        return this.priceUnit;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final String getBizType() {
        return this.bizType;
    }

    /* JADX INFO: renamed from: component16, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component17, reason: from getter */
    public final String getHotIcon() {
        return this.hotIcon;
    }

    /* JADX INFO: renamed from: component18, reason: from getter */
    public final Double getDiscountPrice() {
        return this.discountPrice;
    }

    /* JADX INFO: renamed from: component19, reason: from getter */
    public final Integer getDiscountRate() {
        return this.discountRate;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getCountryCode() {
        return this.countryCode;
    }

    /* JADX INFO: renamed from: component20, reason: from getter */
    public final Integer getVipLevel() {
        return this.vipLevel;
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

    public final SkuPromotionSku copy(String skuId, String countryCode, String currency, Double price, String category, String coin, String duration, String formattedPrice, String description, String subDescription, String durationUnitDesc, String durationCount, String currencySymbol, Double priceUnit, String bizType, String title, String hotIcon, Double discountPrice, Integer discountRate, Integer vipLevel) {
        return new SkuPromotionSku(skuId, countryCode, currency, price, category, coin, duration, formattedPrice, description, subDescription, durationUnitDesc, durationCount, currencySymbol, priceUnit, bizType, title, hotIcon, discountPrice, discountRate, vipLevel);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SkuPromotionSku)) {
            return false;
        }
        SkuPromotionSku skuPromotionSku = (SkuPromotionSku) other;
        return Intrinsics.c(this.skuId, skuPromotionSku.skuId) && Intrinsics.c(this.countryCode, skuPromotionSku.countryCode) && Intrinsics.c(this.currency, skuPromotionSku.currency) && Intrinsics.c(this.price, skuPromotionSku.price) && Intrinsics.c(this.category, skuPromotionSku.category) && Intrinsics.c(this.coin, skuPromotionSku.coin) && Intrinsics.c(this.duration, skuPromotionSku.duration) && Intrinsics.c(this.formattedPrice, skuPromotionSku.formattedPrice) && Intrinsics.c(this.description, skuPromotionSku.description) && Intrinsics.c(this.subDescription, skuPromotionSku.subDescription) && Intrinsics.c(this.durationUnitDesc, skuPromotionSku.durationUnitDesc) && Intrinsics.c(this.durationCount, skuPromotionSku.durationCount) && Intrinsics.c(this.currencySymbol, skuPromotionSku.currencySymbol) && Intrinsics.c(this.priceUnit, skuPromotionSku.priceUnit) && Intrinsics.c(this.bizType, skuPromotionSku.bizType) && Intrinsics.c(this.title, skuPromotionSku.title) && Intrinsics.c(this.hotIcon, skuPromotionSku.hotIcon) && Intrinsics.c(this.discountPrice, skuPromotionSku.discountPrice) && Intrinsics.c(this.discountRate, skuPromotionSku.discountRate) && Intrinsics.c(this.vipLevel, skuPromotionSku.vipLevel);
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

    public final Double getDiscountPrice() {
        return this.discountPrice;
    }

    public final Integer getDiscountRate() {
        return this.discountRate;
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

    public final String getHotIcon() {
        return this.hotIcon;
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

    public final String getSubDescription() {
        return this.subDescription;
    }

    public final String getTitle() {
        return this.title;
    }

    public final Integer getVipLevel() {
        return this.vipLevel;
    }

    public int hashCode() {
        String str = this.skuId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.countryCode;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.currency;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Double d11 = this.price;
        int iHashCode4 = (iHashCode3 + (d11 == null ? 0 : d11.hashCode())) * 31;
        String str4 = this.category;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.coin;
        int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.duration;
        int iHashCode7 = (iHashCode6 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.formattedPrice;
        int iHashCode8 = (iHashCode7 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.description;
        int iHashCode9 = (iHashCode8 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.subDescription;
        int iHashCode10 = (iHashCode9 + (str9 == null ? 0 : str9.hashCode())) * 31;
        String str10 = this.durationUnitDesc;
        int iHashCode11 = (iHashCode10 + (str10 == null ? 0 : str10.hashCode())) * 31;
        String str11 = this.durationCount;
        int iHashCode12 = (iHashCode11 + (str11 == null ? 0 : str11.hashCode())) * 31;
        String str12 = this.currencySymbol;
        int iHashCode13 = (iHashCode12 + (str12 == null ? 0 : str12.hashCode())) * 31;
        Double d12 = this.priceUnit;
        int iHashCode14 = (iHashCode13 + (d12 == null ? 0 : d12.hashCode())) * 31;
        String str13 = this.bizType;
        int iHashCode15 = (iHashCode14 + (str13 == null ? 0 : str13.hashCode())) * 31;
        String str14 = this.title;
        int iHashCode16 = (iHashCode15 + (str14 == null ? 0 : str14.hashCode())) * 31;
        String str15 = this.hotIcon;
        int iHashCode17 = (iHashCode16 + (str15 == null ? 0 : str15.hashCode())) * 31;
        Double d13 = this.discountPrice;
        int iHashCode18 = (iHashCode17 + (d13 == null ? 0 : d13.hashCode())) * 31;
        Integer num = this.discountRate;
        int iHashCode19 = (iHashCode18 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.vipLevel;
        return iHashCode19 + (num2 != null ? num2.hashCode() : 0);
    }

    public String toString() {
        return "SkuPromotionSku(skuId=" + this.skuId + ", countryCode=" + this.countryCode + ", currency=" + this.currency + ", price=" + this.price + ", category=" + this.category + ", coin=" + this.coin + ", duration=" + this.duration + ", formattedPrice=" + this.formattedPrice + ", description=" + this.description + ", subDescription=" + this.subDescription + ", durationUnitDesc=" + this.durationUnitDesc + ", durationCount=" + this.durationCount + ", currencySymbol=" + this.currencySymbol + ", priceUnit=" + this.priceUnit + ", bizType=" + this.bizType + ", title=" + this.title + ", hotIcon=" + this.hotIcon + ", discountPrice=" + this.discountPrice + ", discountRate=" + this.discountRate + ", vipLevel=" + this.vipLevel + ")";
    }
}
