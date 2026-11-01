package com.transsion.rewardscenterapi;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J'\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0019\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0018"}, d2 = {"Lcom/transsion/rewardscenterapi/MineLotteryInfo;", "Ljava/io/Serializable;", "info", "Lcom/transsion/rewardscenterapi/LotteryInfo;", "priceItems", "", "Lcom/transsion/rewardscenterapi/PriceInfo;", "<init>", "(Lcom/transsion/rewardscenterapi/LotteryInfo;Ljava/util/List;)V", "getInfo", "()Lcom/transsion/rewardscenterapi/LotteryInfo;", "getPriceItems", "()Ljava/util/List;", "component1", "component2", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "", "RewardsCenterApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class MineLotteryInfo implements Serializable {
    private final LotteryInfo info;
    private final List<PriceInfo> priceItems;

    /* JADX WARN: Multi-variable type inference failed */
    public MineLotteryInfo() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public MineLotteryInfo(LotteryInfo lotteryInfo, List<PriceInfo> list) {
        this.info = lotteryInfo;
        this.priceItems = list;
    }

    public /* synthetic */ MineLotteryInfo(LotteryInfo lotteryInfo, List list, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : lotteryInfo, (i11 & 2) != 0 ? null : list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ MineLotteryInfo copy$default(MineLotteryInfo mineLotteryInfo, LotteryInfo lotteryInfo, List list, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            lotteryInfo = mineLotteryInfo.info;
        }
        if ((i11 & 2) != 0) {
            list = mineLotteryInfo.priceItems;
        }
        return mineLotteryInfo.copy(lotteryInfo, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final LotteryInfo getInfo() {
        return this.info;
    }

    public final List<PriceInfo> component2() {
        return this.priceItems;
    }

    public final MineLotteryInfo copy(LotteryInfo info, List<PriceInfo> priceItems) {
        return new MineLotteryInfo(info, priceItems);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MineLotteryInfo)) {
            return false;
        }
        MineLotteryInfo mineLotteryInfo = (MineLotteryInfo) other;
        return Intrinsics.c(this.info, mineLotteryInfo.info) && Intrinsics.c(this.priceItems, mineLotteryInfo.priceItems);
    }

    public final LotteryInfo getInfo() {
        return this.info;
    }

    public final List<PriceInfo> getPriceItems() {
        return this.priceItems;
    }

    public int hashCode() {
        LotteryInfo lotteryInfo = this.info;
        int iHashCode = (lotteryInfo == null ? 0 : lotteryInfo.hashCode()) * 31;
        List<PriceInfo> list = this.priceItems;
        return iHashCode + (list != null ? list.hashCode() : 0);
    }

    public String toString() {
        return "MineLotteryInfo(info=" + this.info + ", priceItems=" + this.priceItems + ")";
    }
}
