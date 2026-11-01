package com.transsion.memberapi;

import androidx.annotation.Keep;
import androidx.compose.animation.core.r;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Keep
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\bA\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001B\u0097\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u0006\u0010\u0010\u001a\u00020\u0003\u0012\u0006\u0010\u0011\u001a\u00020\u0007\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\t\u0010D\u001a\u00020\u0003HÆ\u0003J\t\u0010E\u001a\u00020\u0003HÆ\u0003J\t\u0010F\u001a\u00020\u0003HÆ\u0003J\t\u0010G\u001a\u00020\u0007HÆ\u0003J\t\u0010H\u001a\u00020\u0003HÆ\u0003J\t\u0010I\u001a\u00020\u0003HÆ\u0003J\t\u0010J\u001a\u00020\u0003HÆ\u0003J\t\u0010K\u001a\u00020\u0003HÆ\u0003J\u000b\u0010L\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010M\u001a\u00020\u0003HÆ\u0003J\t\u0010N\u001a\u00020\u0003HÆ\u0003J\t\u0010O\u001a\u00020\u0003HÆ\u0003J\t\u0010P\u001a\u00020\u0003HÆ\u0003J\t\u0010Q\u001a\u00020\u0007HÆ\u0003J\u0010\u0010R\u001a\u0004\u0018\u00010\u0013HÆ\u0003¢\u0006\u0002\u0010:J\u000b\u0010S\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010T\u001a\u0004\u0018\u00010\u0016HÆ\u0003JÀ\u0001\u0010U\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\r\u001a\u00020\u00032\b\b\u0002\u0010\u000e\u001a\u00020\u00032\b\b\u0002\u0010\u000f\u001a\u00020\u00032\b\b\u0002\u0010\u0010\u001a\u00020\u00032\b\b\u0002\u0010\u0011\u001a\u00020\u00072\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016HÆ\u0001¢\u0006\u0002\u0010VJ\u0013\u0010W\u001a\u00020X2\b\u0010Y\u001a\u0004\u0018\u00010ZHÖ\u0003J\t\u0010[\u001a\u00020\u0013HÖ\u0001J\t\u0010\\\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001a\"\u0004\b\u001e\u0010\u001cR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u001a\"\u0004\b \u0010\u001cR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u001a\u0010\b\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u001a\"\u0004\b&\u0010\u001cR\u001a\u0010\t\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010\u001a\"\u0004\b(\u0010\u001cR\u001a\u0010\n\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010\u001a\"\u0004\b*\u0010\u001cR\u001a\u0010\u000b\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\u001a\"\u0004\b,\u0010\u001cR\u001c\u0010\f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010\u001a\"\u0004\b.\u0010\u001cR\u001a\u0010\r\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u0010\u001a\"\u0004\b0\u0010\u001cR\u001a\u0010\u000e\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010\u001a\"\u0004\b2\u0010\u001cR\u001a\u0010\u000f\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b3\u0010\u001a\"\u0004\b4\u0010\u001cR\u001a\u0010\u0010\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u0010\u001a\"\u0004\b6\u0010\u001cR\u001a\u0010\u0011\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u0010\"\"\u0004\b8\u0010$R\u001e\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u0010\n\u0002\u0010=\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b>\u0010\u001a\"\u0004\b?\u0010\u001cR\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b@\u0010A\"\u0004\bB\u0010C¨\u0006]"}, d2 = {"Lcom/transsion/memberapi/SkuItem;", "Ljava/io/Serializable;", "skuId", "", "countryCode", "currency", BidResponsed.KEY_PRICE, "", "category", "coin", "duration", TrackingKey.DESCRIPTION, "subDescription", "formattedPrice", "durationUnitDesc", "durationCount", "currencySymbol", "priceUnit", "userPoints", "", "hotIcon", "memberDetail", "Lcom/transsion/memberapi/MemberDetail;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/Integer;Ljava/lang/String;Lcom/transsion/memberapi/MemberDetail;)V", "getSkuId", "()Ljava/lang/String;", "setSkuId", "(Ljava/lang/String;)V", "getCountryCode", "setCountryCode", "getCurrency", "setCurrency", "getPrice", "()D", "setPrice", "(D)V", "getCategory", "setCategory", "getCoin", "setCoin", "getDuration", "setDuration", "getDescription", "setDescription", "getSubDescription", "setSubDescription", "getFormattedPrice", "setFormattedPrice", "getDurationUnitDesc", "setDurationUnitDesc", "getDurationCount", "setDurationCount", "getCurrencySymbol", "setCurrencySymbol", "getPriceUnit", "setPriceUnit", "getUserPoints", "()Ljava/lang/Integer;", "setUserPoints", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getHotIcon", "setHotIcon", "getMemberDetail", "()Lcom/transsion/memberapi/MemberDetail;", "setMemberDetail", "(Lcom/transsion/memberapi/MemberDetail;)V", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/Integer;Ljava/lang/String;Lcom/transsion/memberapi/MemberDetail;)Lcom/transsion/memberapi/SkuItem;", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "MemberApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class SkuItem implements Serializable {
    private String category;
    private String coin;
    private String countryCode;
    private String currency;
    private String currencySymbol;
    private String description;
    private String duration;
    private String durationCount;
    private String durationUnitDesc;
    private String formattedPrice;
    private String hotIcon;
    private MemberDetail memberDetail;
    private double price;
    private double priceUnit;
    private String skuId;
    private String subDescription;
    private Integer userPoints;

    public SkuItem(String skuId, String countryCode, String currency, double d11, String category, String coin, String duration, String description, String str, String formattedPrice, String durationUnitDesc, String durationCount, String currencySymbol, double d12, Integer num, String str2, MemberDetail memberDetail) {
        Intrinsics.h(skuId, "skuId");
        Intrinsics.h(countryCode, "countryCode");
        Intrinsics.h(currency, "currency");
        Intrinsics.h(category, "category");
        Intrinsics.h(coin, "coin");
        Intrinsics.h(duration, "duration");
        Intrinsics.h(description, "description");
        Intrinsics.h(formattedPrice, "formattedPrice");
        Intrinsics.h(durationUnitDesc, "durationUnitDesc");
        Intrinsics.h(durationCount, "durationCount");
        Intrinsics.h(currencySymbol, "currencySymbol");
        this.skuId = skuId;
        this.countryCode = countryCode;
        this.currency = currency;
        this.price = d11;
        this.category = category;
        this.coin = coin;
        this.duration = duration;
        this.description = description;
        this.subDescription = str;
        this.formattedPrice = formattedPrice;
        this.durationUnitDesc = durationUnitDesc;
        this.durationCount = durationCount;
        this.currencySymbol = currencySymbol;
        this.priceUnit = d12;
        this.userPoints = num;
        this.hotIcon = str2;
        this.memberDetail = memberDetail;
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getSkuId() {
        return this.skuId;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getFormattedPrice() {
        return this.formattedPrice;
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
    public final Integer getUserPoints() {
        return this.userPoints;
    }

    /* JADX INFO: renamed from: component16, reason: from getter */
    public final String getHotIcon() {
        return this.hotIcon;
    }

    /* JADX INFO: renamed from: component17, reason: from getter */
    public final MemberDetail getMemberDetail() {
        return this.memberDetail;
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
    public final String getDescription() {
        return this.description;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getSubDescription() {
        return this.subDescription;
    }

    public final SkuItem copy(String skuId, String countryCode, String currency, double price, String category, String coin, String duration, String description, String subDescription, String formattedPrice, String durationUnitDesc, String durationCount, String currencySymbol, double priceUnit, Integer userPoints, String hotIcon, MemberDetail memberDetail) {
        Intrinsics.h(skuId, "skuId");
        Intrinsics.h(countryCode, "countryCode");
        Intrinsics.h(currency, "currency");
        Intrinsics.h(category, "category");
        Intrinsics.h(coin, "coin");
        Intrinsics.h(duration, "duration");
        Intrinsics.h(description, "description");
        Intrinsics.h(formattedPrice, "formattedPrice");
        Intrinsics.h(durationUnitDesc, "durationUnitDesc");
        Intrinsics.h(durationCount, "durationCount");
        Intrinsics.h(currencySymbol, "currencySymbol");
        return new SkuItem(skuId, countryCode, currency, price, category, coin, duration, description, subDescription, formattedPrice, durationUnitDesc, durationCount, currencySymbol, priceUnit, userPoints, hotIcon, memberDetail);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SkuItem)) {
            return false;
        }
        SkuItem skuItem = (SkuItem) other;
        return Intrinsics.c(this.skuId, skuItem.skuId) && Intrinsics.c(this.countryCode, skuItem.countryCode) && Intrinsics.c(this.currency, skuItem.currency) && Double.compare(this.price, skuItem.price) == 0 && Intrinsics.c(this.category, skuItem.category) && Intrinsics.c(this.coin, skuItem.coin) && Intrinsics.c(this.duration, skuItem.duration) && Intrinsics.c(this.description, skuItem.description) && Intrinsics.c(this.subDescription, skuItem.subDescription) && Intrinsics.c(this.formattedPrice, skuItem.formattedPrice) && Intrinsics.c(this.durationUnitDesc, skuItem.durationUnitDesc) && Intrinsics.c(this.durationCount, skuItem.durationCount) && Intrinsics.c(this.currencySymbol, skuItem.currencySymbol) && Double.compare(this.priceUnit, skuItem.priceUnit) == 0 && Intrinsics.c(this.userPoints, skuItem.userPoints) && Intrinsics.c(this.hotIcon, skuItem.hotIcon) && Intrinsics.c(this.memberDetail, skuItem.memberDetail);
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

    public final String getHotIcon() {
        return this.hotIcon;
    }

    public final MemberDetail getMemberDetail() {
        return this.memberDetail;
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

    public final Integer getUserPoints() {
        return this.userPoints;
    }

    public int hashCode() {
        int iHashCode = ((((((((((((((this.skuId.hashCode() * 31) + this.countryCode.hashCode()) * 31) + this.currency.hashCode()) * 31) + r.a(this.price)) * 31) + this.category.hashCode()) * 31) + this.coin.hashCode()) * 31) + this.duration.hashCode()) * 31) + this.description.hashCode()) * 31;
        String str = this.subDescription;
        int iHashCode2 = (((((((((((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + this.formattedPrice.hashCode()) * 31) + this.durationUnitDesc.hashCode()) * 31) + this.durationCount.hashCode()) * 31) + this.currencySymbol.hashCode()) * 31) + r.a(this.priceUnit)) * 31;
        Integer num = this.userPoints;
        int iHashCode3 = (iHashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        String str2 = this.hotIcon;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        MemberDetail memberDetail = this.memberDetail;
        return iHashCode4 + (memberDetail != null ? memberDetail.hashCode() : 0);
    }

    public final void setCategory(String str) {
        Intrinsics.h(str, "<set-?>");
        this.category = str;
    }

    public final void setCoin(String str) {
        Intrinsics.h(str, "<set-?>");
        this.coin = str;
    }

    public final void setCountryCode(String str) {
        Intrinsics.h(str, "<set-?>");
        this.countryCode = str;
    }

    public final void setCurrency(String str) {
        Intrinsics.h(str, "<set-?>");
        this.currency = str;
    }

    public final void setCurrencySymbol(String str) {
        Intrinsics.h(str, "<set-?>");
        this.currencySymbol = str;
    }

    public final void setDescription(String str) {
        Intrinsics.h(str, "<set-?>");
        this.description = str;
    }

    public final void setDuration(String str) {
        Intrinsics.h(str, "<set-?>");
        this.duration = str;
    }

    public final void setDurationCount(String str) {
        Intrinsics.h(str, "<set-?>");
        this.durationCount = str;
    }

    public final void setDurationUnitDesc(String str) {
        Intrinsics.h(str, "<set-?>");
        this.durationUnitDesc = str;
    }

    public final void setFormattedPrice(String str) {
        Intrinsics.h(str, "<set-?>");
        this.formattedPrice = str;
    }

    public final void setHotIcon(String str) {
        this.hotIcon = str;
    }

    public final void setMemberDetail(MemberDetail memberDetail) {
        this.memberDetail = memberDetail;
    }

    public final void setPrice(double d11) {
        this.price = d11;
    }

    public final void setPriceUnit(double d11) {
        this.priceUnit = d11;
    }

    public final void setSkuId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.skuId = str;
    }

    public final void setSubDescription(String str) {
        this.subDescription = str;
    }

    public final void setUserPoints(Integer num) {
        this.userPoints = num;
    }

    public String toString() {
        return "SkuItem(skuId=" + this.skuId + ", countryCode=" + this.countryCode + ", currency=" + this.currency + ", price=" + this.price + ", category=" + this.category + ", coin=" + this.coin + ", duration=" + this.duration + ", description=" + this.description + ", subDescription=" + this.subDescription + ", formattedPrice=" + this.formattedPrice + ", durationUnitDesc=" + this.durationUnitDesc + ", durationCount=" + this.durationCount + ", currencySymbol=" + this.currencySymbol + ", priceUnit=" + this.priceUnit + ", userPoints=" + this.userPoints + ", hotIcon=" + this.hotIcon + ", memberDetail=" + this.memberDetail + ")";
    }
}
