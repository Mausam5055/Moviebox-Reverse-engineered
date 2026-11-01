package com.transsion.rewardscenterapi;

import androidx.annotation.Keep;
import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0011\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B9\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\bHÆ\u0003J;\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0013\u0010\u0018\u001a\u00020\b2\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aHÖ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\fR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\fR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u001e"}, d2 = {"Lcom/transsion/rewardscenterapi/UserLotteryInfo;", "Ljava/io/Serializable;", "remain", "", "todayRemain", "totalAcquire", "totalConsume", "existClaimPrice", "", "<init>", "(IIIIZ)V", "getRemain", "()I", "getTodayRemain", "getTotalAcquire", "getTotalConsume", "getExistClaimPrice", "()Z", "component1", "component2", "component3", "component4", "component5", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "RewardsCenterApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class UserLotteryInfo implements Serializable {
    private final boolean existClaimPrice;
    private final int remain;
    private final int todayRemain;
    private final int totalAcquire;
    private final int totalConsume;

    public UserLotteryInfo() {
        this(0, 0, 0, 0, false, 31, null);
    }

    public UserLotteryInfo(int i11, int i12, int i13, int i14, boolean z10) {
        this.remain = i11;
        this.todayRemain = i12;
        this.totalAcquire = i13;
        this.totalConsume = i14;
        this.existClaimPrice = z10;
    }

    public /* synthetic */ UserLotteryInfo(int i11, int i12, int i13, int i14, boolean z10, int i15, DefaultConstructorMarker defaultConstructorMarker) {
        this((i15 & 1) != 0 ? 0 : i11, (i15 & 2) != 0 ? 0 : i12, (i15 & 4) != 0 ? 0 : i13, (i15 & 8) != 0 ? 0 : i14, (i15 & 16) != 0 ? false : z10);
    }

    public static /* synthetic */ UserLotteryInfo copy$default(UserLotteryInfo userLotteryInfo, int i11, int i12, int i13, int i14, boolean z10, int i15, Object obj) {
        if ((i15 & 1) != 0) {
            i11 = userLotteryInfo.remain;
        }
        if ((i15 & 2) != 0) {
            i12 = userLotteryInfo.todayRemain;
        }
        int i16 = i12;
        if ((i15 & 4) != 0) {
            i13 = userLotteryInfo.totalAcquire;
        }
        int i17 = i13;
        if ((i15 & 8) != 0) {
            i14 = userLotteryInfo.totalConsume;
        }
        int i18 = i14;
        if ((i15 & 16) != 0) {
            z10 = userLotteryInfo.existClaimPrice;
        }
        return userLotteryInfo.copy(i11, i16, i17, i18, z10);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getRemain() {
        return this.remain;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getTodayRemain() {
        return this.todayRemain;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getTotalAcquire() {
        return this.totalAcquire;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final int getTotalConsume() {
        return this.totalConsume;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final boolean getExistClaimPrice() {
        return this.existClaimPrice;
    }

    public final UserLotteryInfo copy(int remain, int todayRemain, int totalAcquire, int totalConsume, boolean existClaimPrice) {
        return new UserLotteryInfo(remain, todayRemain, totalAcquire, totalConsume, existClaimPrice);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UserLotteryInfo)) {
            return false;
        }
        UserLotteryInfo userLotteryInfo = (UserLotteryInfo) other;
        return this.remain == userLotteryInfo.remain && this.todayRemain == userLotteryInfo.todayRemain && this.totalAcquire == userLotteryInfo.totalAcquire && this.totalConsume == userLotteryInfo.totalConsume && this.existClaimPrice == userLotteryInfo.existClaimPrice;
    }

    public final boolean getExistClaimPrice() {
        return this.existClaimPrice;
    }

    public final int getRemain() {
        return this.remain;
    }

    public final int getTodayRemain() {
        return this.todayRemain;
    }

    public final int getTotalAcquire() {
        return this.totalAcquire;
    }

    public final int getTotalConsume() {
        return this.totalConsume;
    }

    public int hashCode() {
        return (((((((this.remain * 31) + this.todayRemain) * 31) + this.totalAcquire) * 31) + this.totalConsume) * 31) + e.a(this.existClaimPrice);
    }

    public String toString() {
        return "UserLotteryInfo(remain=" + this.remain + ", todayRemain=" + this.todayRemain + ", totalAcquire=" + this.totalAcquire + ", totalConsume=" + this.totalConsume + ", existClaimPrice=" + this.existClaimPrice + ")";
    }
}
