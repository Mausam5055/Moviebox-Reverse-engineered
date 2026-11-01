package com.transsion.rewardscenterapi;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0005HÆ\u0003J!\u0010\u000e\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0016"}, d2 = {"Lcom/transsion/rewardscenterapi/LotteryInfo;", "Ljava/io/Serializable;", "activityId", "", "userLottery", "Lcom/transsion/rewardscenterapi/UserLotteryInfo;", "<init>", "(Ljava/lang/String;Lcom/transsion/rewardscenterapi/UserLotteryInfo;)V", "getActivityId", "()Ljava/lang/String;", "getUserLottery", "()Lcom/transsion/rewardscenterapi/UserLotteryInfo;", "component1", "component2", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "RewardsCenterApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class LotteryInfo implements Serializable {
    private final String activityId;
    private final UserLotteryInfo userLottery;

    /* JADX WARN: Multi-variable type inference failed */
    public LotteryInfo() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public LotteryInfo(String str, UserLotteryInfo userLotteryInfo) {
        this.activityId = str;
        this.userLottery = userLotteryInfo;
    }

    public /* synthetic */ LotteryInfo(String str, UserLotteryInfo userLotteryInfo, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : userLotteryInfo);
    }

    public static /* synthetic */ LotteryInfo copy$default(LotteryInfo lotteryInfo, String str, UserLotteryInfo userLotteryInfo, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = lotteryInfo.activityId;
        }
        if ((i11 & 2) != 0) {
            userLotteryInfo = lotteryInfo.userLottery;
        }
        return lotteryInfo.copy(str, userLotteryInfo);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getActivityId() {
        return this.activityId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final UserLotteryInfo getUserLottery() {
        return this.userLottery;
    }

    public final LotteryInfo copy(String activityId, UserLotteryInfo userLottery) {
        return new LotteryInfo(activityId, userLottery);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LotteryInfo)) {
            return false;
        }
        LotteryInfo lotteryInfo = (LotteryInfo) other;
        return Intrinsics.c(this.activityId, lotteryInfo.activityId) && Intrinsics.c(this.userLottery, lotteryInfo.userLottery);
    }

    public final String getActivityId() {
        return this.activityId;
    }

    public final UserLotteryInfo getUserLottery() {
        return this.userLottery;
    }

    public int hashCode() {
        String str = this.activityId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        UserLotteryInfo userLotteryInfo = this.userLottery;
        return iHashCode + (userLotteryInfo != null ? userLotteryInfo.hashCode() : 0);
    }

    public String toString() {
        return "LotteryInfo(activityId=" + this.activityId + ", userLottery=" + this.userLottery + ")";
    }
}
