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
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0005HÆ\u0003J!\u0010\u000e\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0006\u0010\u000f\u001a\u00020\u0010J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001J\u0016\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0010R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u001c"}, d2 = {"Lcom/transsion/bean/lottery/LotteryUserInfoInfoBean;", "Landroid/os/Parcelable;", "activityId", "", "userLottery", "Lcom/transsion/bean/lottery/LotteryUserActivityInfoUserLotteryBean;", "<init>", "(Ljava/lang/String;Lcom/transsion/bean/lottery/LotteryUserActivityInfoUserLotteryBean;)V", "getActivityId", "()Ljava/lang/String;", "getUserLottery", "()Lcom/transsion/bean/lottery/LotteryUserActivityInfoUserLotteryBean;", "component1", "component2", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "CommercializationApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class LotteryUserInfoInfoBean implements Parcelable {
    public static final Parcelable.Creator<LotteryUserInfoInfoBean> CREATOR = new a();
    private final String activityId;
    private final LotteryUserActivityInfoUserLotteryBean userLottery;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LotteryUserInfoInfoBean createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new LotteryUserInfoInfoBean(parcel.readString(), parcel.readInt() == 0 ? null : LotteryUserActivityInfoUserLotteryBean.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final LotteryUserInfoInfoBean[] newArray(int i11) {
            return new LotteryUserInfoInfoBean[i11];
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public LotteryUserInfoInfoBean() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public LotteryUserInfoInfoBean(String str, LotteryUserActivityInfoUserLotteryBean lotteryUserActivityInfoUserLotteryBean) {
        this.activityId = str;
        this.userLottery = lotteryUserActivityInfoUserLotteryBean;
    }

    public /* synthetic */ LotteryUserInfoInfoBean(String str, LotteryUserActivityInfoUserLotteryBean lotteryUserActivityInfoUserLotteryBean, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : lotteryUserActivityInfoUserLotteryBean);
    }

    public static /* synthetic */ LotteryUserInfoInfoBean copy$default(LotteryUserInfoInfoBean lotteryUserInfoInfoBean, String str, LotteryUserActivityInfoUserLotteryBean lotteryUserActivityInfoUserLotteryBean, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = lotteryUserInfoInfoBean.activityId;
        }
        if ((i11 & 2) != 0) {
            lotteryUserActivityInfoUserLotteryBean = lotteryUserInfoInfoBean.userLottery;
        }
        return lotteryUserInfoInfoBean.copy(str, lotteryUserActivityInfoUserLotteryBean);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getActivityId() {
        return this.activityId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final LotteryUserActivityInfoUserLotteryBean getUserLottery() {
        return this.userLottery;
    }

    public final LotteryUserInfoInfoBean copy(String activityId, LotteryUserActivityInfoUserLotteryBean userLottery) {
        return new LotteryUserInfoInfoBean(activityId, userLottery);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LotteryUserInfoInfoBean)) {
            return false;
        }
        LotteryUserInfoInfoBean lotteryUserInfoInfoBean = (LotteryUserInfoInfoBean) other;
        return Intrinsics.c(this.activityId, lotteryUserInfoInfoBean.activityId) && Intrinsics.c(this.userLottery, lotteryUserInfoInfoBean.userLottery);
    }

    public final String getActivityId() {
        return this.activityId;
    }

    public final LotteryUserActivityInfoUserLotteryBean getUserLottery() {
        return this.userLottery;
    }

    public int hashCode() {
        String str = this.activityId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        LotteryUserActivityInfoUserLotteryBean lotteryUserActivityInfoUserLotteryBean = this.userLottery;
        return iHashCode + (lotteryUserActivityInfoUserLotteryBean != null ? lotteryUserActivityInfoUserLotteryBean.hashCode() : 0);
    }

    public String toString() {
        return "LotteryUserInfoInfoBean(activityId=" + this.activityId + ", userLottery=" + this.userLottery + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.activityId);
        LotteryUserActivityInfoUserLotteryBean lotteryUserActivityInfoUserLotteryBean = this.userLottery;
        if (lotteryUserActivityInfoUserLotteryBean == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            lotteryUserActivityInfoUserLotteryBean.writeToParcel(dest, flags);
        }
    }
}
