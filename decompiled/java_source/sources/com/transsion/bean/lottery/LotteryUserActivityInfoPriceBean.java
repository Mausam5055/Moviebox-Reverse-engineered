package com.transsion.bean.lottery;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u001a\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B[\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u000b\u0010\fJ\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0012J\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0012J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003Jb\u0010\u001e\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u001fJ\u0006\u0010 \u001a\u00020\u0007J\u0013\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010$HÖ\u0003J\t\u0010%\u001a\u00020\u0007HÖ\u0001J\t\u0010&\u001a\u00020\u0003HÖ\u0001J\u0016\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020\u0007R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000eR\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\n\n\u0002\u0010\u0013\u001a\u0004\b\u0011\u0010\u0012R\u0015\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\n\n\u0002\u0010\u0013\u001a\u0004\b\u0014\u0010\u0012R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u000eR\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u000e¨\u0006,"}, d2 = {"Lcom/transsion/bean/lottery/LotteryUserActivityInfoPriceBean;", "Landroid/os/Parcelable;", "id", "", "name", "priceType", AppMeasurementSdk.ConditionalUserProperty.VALUE, "", "count", "countryCode", "imgUrl", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V", "getId", "()Ljava/lang/String;", "getName", "getPriceType", "getValue", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getCount", "getCountryCode", "getImgUrl", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/bean/lottery/LotteryUserActivityInfoPriceBean;", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "CommercializationApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class LotteryUserActivityInfoPriceBean implements Parcelable {
    public static final Parcelable.Creator<LotteryUserActivityInfoPriceBean> CREATOR = new a();
    private final Integer count;
    private final String countryCode;
    private final String id;
    private final String imgUrl;
    private final String name;
    private final String priceType;
    private final Integer value;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LotteryUserActivityInfoPriceBean createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new LotteryUserActivityInfoPriceBean(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final LotteryUserActivityInfoPriceBean[] newArray(int i11) {
            return new LotteryUserActivityInfoPriceBean[i11];
        }
    }

    public LotteryUserActivityInfoPriceBean() {
        this(null, null, null, null, null, null, null, 127, null);
    }

    public LotteryUserActivityInfoPriceBean(String str, String str2, String str3, Integer num, Integer num2, String str4, String str5) {
        this.id = str;
        this.name = str2;
        this.priceType = str3;
        this.value = num;
        this.count = num2;
        this.countryCode = str4;
        this.imgUrl = str5;
    }

    public /* synthetic */ LotteryUserActivityInfoPriceBean(String str, String str2, String str3, Integer num, Integer num2, String str4, String str5, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, (i11 & 8) != 0 ? null : num, (i11 & 16) != 0 ? null : num2, (i11 & 32) != 0 ? null : str4, (i11 & 64) != 0 ? null : str5);
    }

    public static /* synthetic */ LotteryUserActivityInfoPriceBean copy$default(LotteryUserActivityInfoPriceBean lotteryUserActivityInfoPriceBean, String str, String str2, String str3, Integer num, Integer num2, String str4, String str5, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = lotteryUserActivityInfoPriceBean.id;
        }
        if ((i11 & 2) != 0) {
            str2 = lotteryUserActivityInfoPriceBean.name;
        }
        String str6 = str2;
        if ((i11 & 4) != 0) {
            str3 = lotteryUserActivityInfoPriceBean.priceType;
        }
        String str7 = str3;
        if ((i11 & 8) != 0) {
            num = lotteryUserActivityInfoPriceBean.value;
        }
        Integer num3 = num;
        if ((i11 & 16) != 0) {
            num2 = lotteryUserActivityInfoPriceBean.count;
        }
        Integer num4 = num2;
        if ((i11 & 32) != 0) {
            str4 = lotteryUserActivityInfoPriceBean.countryCode;
        }
        String str8 = str4;
        if ((i11 & 64) != 0) {
            str5 = lotteryUserActivityInfoPriceBean.imgUrl;
        }
        return lotteryUserActivityInfoPriceBean.copy(str, str6, str7, num3, num4, str8, str5);
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
    public final Integer getValue() {
        return this.value;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Integer getCount() {
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

    public final LotteryUserActivityInfoPriceBean copy(String id2, String name, String priceType, Integer value, Integer count, String countryCode, String imgUrl) {
        return new LotteryUserActivityInfoPriceBean(id2, name, priceType, value, count, countryCode, imgUrl);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LotteryUserActivityInfoPriceBean)) {
            return false;
        }
        LotteryUserActivityInfoPriceBean lotteryUserActivityInfoPriceBean = (LotteryUserActivityInfoPriceBean) other;
        return Intrinsics.c(this.id, lotteryUserActivityInfoPriceBean.id) && Intrinsics.c(this.name, lotteryUserActivityInfoPriceBean.name) && Intrinsics.c(this.priceType, lotteryUserActivityInfoPriceBean.priceType) && Intrinsics.c(this.value, lotteryUserActivityInfoPriceBean.value) && Intrinsics.c(this.count, lotteryUserActivityInfoPriceBean.count) && Intrinsics.c(this.countryCode, lotteryUserActivityInfoPriceBean.countryCode) && Intrinsics.c(this.imgUrl, lotteryUserActivityInfoPriceBean.imgUrl);
    }

    public final Integer getCount() {
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

    public final Integer getValue() {
        return this.value;
    }

    public int hashCode() {
        String str = this.id;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.name;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.priceType;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Integer num = this.value;
        int iHashCode4 = (iHashCode3 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.count;
        int iHashCode5 = (iHashCode4 + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str4 = this.countryCode;
        int iHashCode6 = (iHashCode5 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.imgUrl;
        return iHashCode6 + (str5 != null ? str5.hashCode() : 0);
    }

    public String toString() {
        return "LotteryUserActivityInfoPriceBean(id=" + this.id + ", name=" + this.name + ", priceType=" + this.priceType + ", value=" + this.value + ", count=" + this.count + ", countryCode=" + this.countryCode + ", imgUrl=" + this.imgUrl + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.id);
        dest.writeString(this.name);
        dest.writeString(this.priceType);
        Integer num = this.value;
        if (num == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num.intValue());
        }
        Integer num2 = this.count;
        if (num2 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num2.intValue());
        }
        dest.writeString(this.countryCode);
        dest.writeString(this.imgUrl);
    }
}
