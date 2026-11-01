package com.transsion.rewardscenterapi;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001BW\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u000b\u0010\fJ\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0007HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0007HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003JY\u0010\u001d\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010!HÖ\u0003J\t\u0010\"\u001a\u00020\u0007HÖ\u0001J\t\u0010#\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\b\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0012R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u000eR\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u000e¨\u0006$"}, d2 = {"Lcom/transsion/rewardscenterapi/PriceInfo;", "Ljava/io/Serializable;", "id", "", "name", "priceType", AppMeasurementSdk.ConditionalUserProperty.VALUE, "", "count", "countryCode", "imgUrl", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V", "getId", "()Ljava/lang/String;", "getName", "getPriceType", "getValue", "()I", "getCount", "getCountryCode", "getImgUrl", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "RewardsCenterApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class PriceInfo implements Serializable {
    private final int count;
    private final String countryCode;
    private final String id;
    private final String imgUrl;
    private final String name;
    private final String priceType;
    private final int value;

    public PriceInfo() {
        this(null, null, null, 0, 0, null, null, 127, null);
    }

    public PriceInfo(String str, String str2, String str3, int i11, int i12, String str4, String str5) {
        this.id = str;
        this.name = str2;
        this.priceType = str3;
        this.value = i11;
        this.count = i12;
        this.countryCode = str4;
        this.imgUrl = str5;
    }

    public /* synthetic */ PriceInfo(String str, String str2, String str3, int i11, int i12, String str4, String str5, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this((i13 & 1) != 0 ? null : str, (i13 & 2) != 0 ? null : str2, (i13 & 4) != 0 ? null : str3, (i13 & 8) != 0 ? 0 : i11, (i13 & 16) != 0 ? 0 : i12, (i13 & 32) != 0 ? null : str4, (i13 & 64) != 0 ? null : str5);
    }

    public static /* synthetic */ PriceInfo copy$default(PriceInfo priceInfo, String str, String str2, String str3, int i11, int i12, String str4, String str5, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            str = priceInfo.id;
        }
        if ((i13 & 2) != 0) {
            str2 = priceInfo.name;
        }
        String str6 = str2;
        if ((i13 & 4) != 0) {
            str3 = priceInfo.priceType;
        }
        String str7 = str3;
        if ((i13 & 8) != 0) {
            i11 = priceInfo.value;
        }
        int i14 = i11;
        if ((i13 & 16) != 0) {
            i12 = priceInfo.count;
        }
        int i15 = i12;
        if ((i13 & 32) != 0) {
            str4 = priceInfo.countryCode;
        }
        String str8 = str4;
        if ((i13 & 64) != 0) {
            str5 = priceInfo.imgUrl;
        }
        return priceInfo.copy(str, str6, str7, i14, i15, str8, str5);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getPriceType() {
        return this.priceType;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final int getValue() {
        return this.value;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final int getCount() {
        return this.count;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getCountryCode() {
        return this.countryCode;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getImgUrl() {
        return this.imgUrl;
    }

    public final PriceInfo copy(String id2, String name, String priceType, int value, int count, String countryCode, String imgUrl) {
        return new PriceInfo(id2, name, priceType, value, count, countryCode, imgUrl);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PriceInfo)) {
            return false;
        }
        PriceInfo priceInfo = (PriceInfo) other;
        return Intrinsics.c(this.id, priceInfo.id) && Intrinsics.c(this.name, priceInfo.name) && Intrinsics.c(this.priceType, priceInfo.priceType) && this.value == priceInfo.value && this.count == priceInfo.count && Intrinsics.c(this.countryCode, priceInfo.countryCode) && Intrinsics.c(this.imgUrl, priceInfo.imgUrl);
    }

    public final int getCount() {
        return this.count;
    }

    public final String getCountryCode() {
        return this.countryCode;
    }

    public final String getId() {
        return this.id;
    }

    public final String getImgUrl() {
        return this.imgUrl;
    }

    public final String getName() {
        return this.name;
    }

    public final String getPriceType() {
        return this.priceType;
    }

    public final int getValue() {
        return this.value;
    }

    public int hashCode() {
        String str = this.id;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.name;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.priceType;
        int iHashCode3 = (((((iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31) + this.value) * 31) + this.count) * 31;
        String str4 = this.countryCode;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.imgUrl;
        return iHashCode4 + (str5 != null ? str5.hashCode() : 0);
    }

    public String toString() {
        return "PriceInfo(id=" + this.id + ", name=" + this.name + ", priceType=" + this.priceType + ", value=" + this.value + ", count=" + this.count + ", countryCode=" + this.countryCode + ", imgUrl=" + this.imgUrl + ")";
    }
}
