package com.transsion.rewardscenterapi;

import androidx.annotation.Keep;
import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B/\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\u0011\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\t\u0010\u0013\u001a\u00020\bHÆ\u0003J1\u0010\u0014\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0013\u0010\u0015\u001a\u00020\b2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001R\u0019\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u001c"}, d2 = {"Lcom/transsion/rewardscenterapi/Redeem;", "Ljava/io/Serializable;", "skuPointList", "", "Lcom/transsion/rewardscenterapi/SkuPoint;", "lotteryPrize", "Lcom/transsion/rewardscenterapi/LotteryPrize;", "hasPaid", "", "<init>", "(Ljava/util/List;Lcom/transsion/rewardscenterapi/LotteryPrize;Z)V", "getSkuPointList", "()Ljava/util/List;", "getLotteryPrize", "()Lcom/transsion/rewardscenterapi/LotteryPrize;", "getHasPaid", "()Z", "component1", "component2", "component3", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "", "RewardsCenterApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class Redeem implements Serializable {
    private final boolean hasPaid;
    private final LotteryPrize lotteryPrize;
    private final List<SkuPoint> skuPointList;

    public Redeem() {
        this(null, null, false, 7, null);
    }

    public Redeem(List<SkuPoint> list, LotteryPrize lotteryPrize, boolean z10) {
        this.skuPointList = list;
        this.lotteryPrize = lotteryPrize;
        this.hasPaid = z10;
    }

    public /* synthetic */ Redeem(List list, LotteryPrize lotteryPrize, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : list, (i11 & 2) != 0 ? null : lotteryPrize, (i11 & 4) != 0 ? false : z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Redeem copy$default(Redeem redeem, List list, LotteryPrize lotteryPrize, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = redeem.skuPointList;
        }
        if ((i11 & 2) != 0) {
            lotteryPrize = redeem.lotteryPrize;
        }
        if ((i11 & 4) != 0) {
            z10 = redeem.hasPaid;
        }
        return redeem.copy(list, lotteryPrize, z10);
    }

    public final List<SkuPoint> component1() {
        return this.skuPointList;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final LotteryPrize getLotteryPrize() {
        return this.lotteryPrize;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getHasPaid() {
        return this.hasPaid;
    }

    public final Redeem copy(List<SkuPoint> skuPointList, LotteryPrize lotteryPrize, boolean hasPaid) {
        return new Redeem(skuPointList, lotteryPrize, hasPaid);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Redeem)) {
            return false;
        }
        Redeem redeem = (Redeem) other;
        return Intrinsics.c(this.skuPointList, redeem.skuPointList) && Intrinsics.c(this.lotteryPrize, redeem.lotteryPrize) && this.hasPaid == redeem.hasPaid;
    }

    public final boolean getHasPaid() {
        return this.hasPaid;
    }

    public final LotteryPrize getLotteryPrize() {
        return this.lotteryPrize;
    }

    public final List<SkuPoint> getSkuPointList() {
        return this.skuPointList;
    }

    public int hashCode() {
        List<SkuPoint> list = this.skuPointList;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        LotteryPrize lotteryPrize = this.lotteryPrize;
        return ((iHashCode + (lotteryPrize != null ? lotteryPrize.hashCode() : 0)) * 31) + e.a(this.hasPaid);
    }

    public String toString() {
        return "Redeem(skuPointList=" + this.skuPointList + ", lotteryPrize=" + this.lotteryPrize + ", hasPaid=" + this.hasPaid + ")";
    }
}
