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
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001BA\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\bHÆ\u0003JC\u0010\u0017\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bHÖ\u0003J\t\u0010\u001c\u001a\u00020\bHÖ\u0001J\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\fR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u001e"}, d2 = {"Lcom/transsion/rewardscenterapi/LotteryPrize;", "Ljava/io/Serializable;", "activityId", "", "prizeId", "prizeName", "prizeUrl", "pointCost", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V", "getActivityId", "()Ljava/lang/String;", "getPrizeId", "getPrizeName", "getPrizeUrl", "getPointCost", "()I", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "RewardsCenterApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class LotteryPrize implements Serializable {
    private final String activityId;
    private final int pointCost;
    private final String prizeId;
    private final String prizeName;
    private final String prizeUrl;

    public LotteryPrize() {
        this(null, null, null, null, 0, 31, null);
    }

    public LotteryPrize(String str, String str2, String str3, String str4, int i11) {
        this.activityId = str;
        this.prizeId = str2;
        this.prizeName = str3;
        this.prizeUrl = str4;
        this.pointCost = i11;
    }

    public /* synthetic */ LotteryPrize(String str, String str2, String str3, String str4, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? null : str, (i12 & 2) != 0 ? null : str2, (i12 & 4) != 0 ? null : str3, (i12 & 8) == 0 ? str4 : null, (i12 & 16) != 0 ? 0 : i11);
    }

    public static /* synthetic */ LotteryPrize copy$default(LotteryPrize lotteryPrize, String str, String str2, String str3, String str4, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            str = lotteryPrize.activityId;
        }
        if ((i12 & 2) != 0) {
            str2 = lotteryPrize.prizeId;
        }
        String str5 = str2;
        if ((i12 & 4) != 0) {
            str3 = lotteryPrize.prizeName;
        }
        String str6 = str3;
        if ((i12 & 8) != 0) {
            str4 = lotteryPrize.prizeUrl;
        }
        String str7 = str4;
        if ((i12 & 16) != 0) {
            i11 = lotteryPrize.pointCost;
        }
        return lotteryPrize.copy(str, str5, str6, str7, i11);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getActivityId() {
        return this.activityId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getPrizeId() {
        return this.prizeId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getPrizeName() {
        return this.prizeName;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getPrizeUrl() {
        return this.prizeUrl;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final int getPointCost() {
        return this.pointCost;
    }

    public final LotteryPrize copy(String activityId, String prizeId, String prizeName, String prizeUrl, int pointCost) {
        return new LotteryPrize(activityId, prizeId, prizeName, prizeUrl, pointCost);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LotteryPrize)) {
            return false;
        }
        LotteryPrize lotteryPrize = (LotteryPrize) other;
        return Intrinsics.c(this.activityId, lotteryPrize.activityId) && Intrinsics.c(this.prizeId, lotteryPrize.prizeId) && Intrinsics.c(this.prizeName, lotteryPrize.prizeName) && Intrinsics.c(this.prizeUrl, lotteryPrize.prizeUrl) && this.pointCost == lotteryPrize.pointCost;
    }

    public final String getActivityId() {
        return this.activityId;
    }

    public final int getPointCost() {
        return this.pointCost;
    }

    public final String getPrizeId() {
        return this.prizeId;
    }

    public final String getPrizeName() {
        return this.prizeName;
    }

    public final String getPrizeUrl() {
        return this.prizeUrl;
    }

    public int hashCode() {
        String str = this.activityId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.prizeId;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.prizeName;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.prizeUrl;
        return ((iHashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31) + this.pointCost;
    }

    public String toString() {
        return "LotteryPrize(activityId=" + this.activityId + ", prizeId=" + this.prizeId + ", prizeName=" + this.prizeName + ", prizeUrl=" + this.prizeUrl + ", pointCost=" + this.pointCost + ")";
    }
}
