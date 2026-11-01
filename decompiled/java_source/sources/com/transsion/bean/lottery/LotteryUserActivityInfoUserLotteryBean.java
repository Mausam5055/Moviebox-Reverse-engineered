package com.transsion.bean.lottery;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0015\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BC\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\fJ\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\fJ\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\fJ\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\fJ\u0010\u0010\u0018\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u0012JJ\u0010\u0019\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bHÆ\u0001¢\u0006\u0002\u0010\u001aJ\u0006\u0010\u001b\u001a\u00020\u0003J\u0013\u0010\u001c\u001a\u00020\b2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eHÖ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÖ\u0001J\t\u0010 \u001a\u00020!HÖ\u0001J\u0016\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0003R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u000b\u0010\fR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u000e\u0010\fR\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u000f\u0010\fR\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u0010\u0010\fR\u0015\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\n\n\u0002\u0010\u0013\u001a\u0004\b\u0011\u0010\u0012¨\u0006'"}, d2 = {"Lcom/transsion/bean/lottery/LotteryUserActivityInfoUserLotteryBean;", "Landroid/os/Parcelable;", "remain", "", "todayRemain", "totalAcquire", "totalConsume", "existClaimPrice", "", "<init>", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;)V", "getRemain", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getTodayRemain", "getTotalAcquire", "getTotalConsume", "getExistClaimPrice", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "component1", "component2", "component3", "component4", "component5", "copy", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;)Lcom/transsion/bean/lottery/LotteryUserActivityInfoUserLotteryBean;", "describeContents", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "CommercializationApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class LotteryUserActivityInfoUserLotteryBean implements Parcelable {
    public static final Parcelable.Creator<LotteryUserActivityInfoUserLotteryBean> CREATOR = new a();
    private final Boolean existClaimPrice;
    private final Integer remain;
    private final Integer todayRemain;
    private final Integer totalAcquire;
    private final Integer totalConsume;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LotteryUserActivityInfoUserLotteryBean createFromParcel(Parcel parcel) {
            Boolean boolValueOf;
            Intrinsics.h(parcel, "parcel");
            Integer numValueOf = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            Integer numValueOf2 = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            Integer numValueOf3 = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            Integer numValueOf4 = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            if (parcel.readInt() == 0) {
                boolValueOf = null;
            } else {
                boolValueOf = Boolean.valueOf(parcel.readInt() != 0);
            }
            return new LotteryUserActivityInfoUserLotteryBean(numValueOf, numValueOf2, numValueOf3, numValueOf4, boolValueOf);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final LotteryUserActivityInfoUserLotteryBean[] newArray(int i11) {
            return new LotteryUserActivityInfoUserLotteryBean[i11];
        }
    }

    public LotteryUserActivityInfoUserLotteryBean() {
        this(null, null, null, null, null, 31, null);
    }

    public LotteryUserActivityInfoUserLotteryBean(Integer num, Integer num2, Integer num3, Integer num4, Boolean bool) {
        this.remain = num;
        this.todayRemain = num2;
        this.totalAcquire = num3;
        this.totalConsume = num4;
        this.existClaimPrice = bool;
    }

    public /* synthetic */ LotteryUserActivityInfoUserLotteryBean(Integer num, Integer num2, Integer num3, Integer num4, Boolean bool, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : num, (i11 & 2) != 0 ? null : num2, (i11 & 4) != 0 ? null : num3, (i11 & 8) != 0 ? null : num4, (i11 & 16) != 0 ? null : bool);
    }

    public static /* synthetic */ LotteryUserActivityInfoUserLotteryBean copy$default(LotteryUserActivityInfoUserLotteryBean lotteryUserActivityInfoUserLotteryBean, Integer num, Integer num2, Integer num3, Integer num4, Boolean bool, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            num = lotteryUserActivityInfoUserLotteryBean.remain;
        }
        if ((i11 & 2) != 0) {
            num2 = lotteryUserActivityInfoUserLotteryBean.todayRemain;
        }
        Integer num5 = num2;
        if ((i11 & 4) != 0) {
            num3 = lotteryUserActivityInfoUserLotteryBean.totalAcquire;
        }
        Integer num6 = num3;
        if ((i11 & 8) != 0) {
            num4 = lotteryUserActivityInfoUserLotteryBean.totalConsume;
        }
        Integer num7 = num4;
        if ((i11 & 16) != 0) {
            bool = lotteryUserActivityInfoUserLotteryBean.existClaimPrice;
        }
        return lotteryUserActivityInfoUserLotteryBean.copy(num, num5, num6, num7, bool);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Integer getRemain() {
        return this.remain;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Integer getTodayRemain() {
        return this.todayRemain;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Integer getTotalAcquire() {
        return this.totalAcquire;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Integer getTotalConsume() {
        return this.totalConsume;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Boolean getExistClaimPrice() {
        return this.existClaimPrice;
    }

    public final LotteryUserActivityInfoUserLotteryBean copy(Integer remain, Integer todayRemain, Integer totalAcquire, Integer totalConsume, Boolean existClaimPrice) {
        return new LotteryUserActivityInfoUserLotteryBean(remain, todayRemain, totalAcquire, totalConsume, existClaimPrice);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LotteryUserActivityInfoUserLotteryBean)) {
            return false;
        }
        LotteryUserActivityInfoUserLotteryBean lotteryUserActivityInfoUserLotteryBean = (LotteryUserActivityInfoUserLotteryBean) other;
        return Intrinsics.c(this.remain, lotteryUserActivityInfoUserLotteryBean.remain) && Intrinsics.c(this.todayRemain, lotteryUserActivityInfoUserLotteryBean.todayRemain) && Intrinsics.c(this.totalAcquire, lotteryUserActivityInfoUserLotteryBean.totalAcquire) && Intrinsics.c(this.totalConsume, lotteryUserActivityInfoUserLotteryBean.totalConsume) && Intrinsics.c(this.existClaimPrice, lotteryUserActivityInfoUserLotteryBean.existClaimPrice);
    }

    public final Boolean getExistClaimPrice() {
        return this.existClaimPrice;
    }

    public final Integer getRemain() {
        return this.remain;
    }

    public final Integer getTodayRemain() {
        return this.todayRemain;
    }

    public final Integer getTotalAcquire() {
        return this.totalAcquire;
    }

    public final Integer getTotalConsume() {
        return this.totalConsume;
    }

    public int hashCode() {
        Integer num = this.remain;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        Integer num2 = this.todayRemain;
        int iHashCode2 = (iHashCode + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.totalAcquire;
        int iHashCode3 = (iHashCode2 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Integer num4 = this.totalConsume;
        int iHashCode4 = (iHashCode3 + (num4 == null ? 0 : num4.hashCode())) * 31;
        Boolean bool = this.existClaimPrice;
        return iHashCode4 + (bool != null ? bool.hashCode() : 0);
    }

    public String toString() {
        return "LotteryUserActivityInfoUserLotteryBean(remain=" + this.remain + ", todayRemain=" + this.todayRemain + ", totalAcquire=" + this.totalAcquire + ", totalConsume=" + this.totalConsume + ", existClaimPrice=" + this.existClaimPrice + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        Integer num = this.remain;
        if (num == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num.intValue());
        }
        Integer num2 = this.todayRemain;
        if (num2 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num2.intValue());
        }
        Integer num3 = this.totalAcquire;
        if (num3 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num3.intValue());
        }
        Integer num4 = this.totalConsume;
        if (num4 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num4.intValue());
        }
        Boolean bool = this.existClaimPrice;
        if (bool == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(bool.booleanValue() ? 1 : 0);
        }
    }
}
