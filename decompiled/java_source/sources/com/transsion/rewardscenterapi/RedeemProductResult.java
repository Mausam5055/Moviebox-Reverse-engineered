package com.transsion.rewardscenterapi;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0019"}, d2 = {"Lcom/transsion/rewardscenterapi/RedeemProductResult;", "Ljava/io/Serializable;", "orderId", "", "vipDurationDays", "", "<init>", "(Ljava/lang/String;I)V", "getOrderId", "()Ljava/lang/String;", "setOrderId", "(Ljava/lang/String;)V", "getVipDurationDays", "()I", "setVipDurationDays", "(I)V", "component1", "component2", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "RewardsCenterApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class RedeemProductResult implements Serializable {
    private String orderId;
    private int vipDurationDays;

    public RedeemProductResult(String orderId, int i11) {
        Intrinsics.h(orderId, "orderId");
        this.orderId = orderId;
        this.vipDurationDays = i11;
    }

    public static /* synthetic */ RedeemProductResult copy$default(RedeemProductResult redeemProductResult, String str, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            str = redeemProductResult.orderId;
        }
        if ((i12 & 2) != 0) {
            i11 = redeemProductResult.vipDurationDays;
        }
        return redeemProductResult.copy(str, i11);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getOrderId() {
        return this.orderId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getVipDurationDays() {
        return this.vipDurationDays;
    }

    public final RedeemProductResult copy(String orderId, int vipDurationDays) {
        Intrinsics.h(orderId, "orderId");
        return new RedeemProductResult(orderId, vipDurationDays);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RedeemProductResult)) {
            return false;
        }
        RedeemProductResult redeemProductResult = (RedeemProductResult) other;
        return Intrinsics.c(this.orderId, redeemProductResult.orderId) && this.vipDurationDays == redeemProductResult.vipDurationDays;
    }

    public final String getOrderId() {
        return this.orderId;
    }

    public final int getVipDurationDays() {
        return this.vipDurationDays;
    }

    public int hashCode() {
        return (this.orderId.hashCode() * 31) + this.vipDurationDays;
    }

    public final void setOrderId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.orderId = str;
    }

    public final void setVipDurationDays(int i11) {
        this.vipDurationDays = i11;
    }

    public String toString() {
        return "RedeemProductResult(orderId=" + this.orderId + ", vipDurationDays=" + this.vipDurationDays + ")";
    }
}
