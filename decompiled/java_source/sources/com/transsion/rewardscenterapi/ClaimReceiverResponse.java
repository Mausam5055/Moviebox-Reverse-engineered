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
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u0013\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000b\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/transsion/rewardscenterapi/ClaimReceiverResponse;", "Ljava/io/Serializable;", "redeem", "Lcom/transsion/rewardscenterapi/ClaimRedeemInfo;", "<init>", "(Lcom/transsion/rewardscenterapi/ClaimRedeemInfo;)V", "getRedeem", "()Lcom/transsion/rewardscenterapi/ClaimRedeemInfo;", "component1", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "", "RewardsCenterApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ClaimReceiverResponse implements Serializable {
    private final ClaimRedeemInfo redeem;

    /* JADX WARN: Multi-variable type inference failed */
    public ClaimReceiverResponse() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public ClaimReceiverResponse(ClaimRedeemInfo claimRedeemInfo) {
        this.redeem = claimRedeemInfo;
    }

    public /* synthetic */ ClaimReceiverResponse(ClaimRedeemInfo claimRedeemInfo, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : claimRedeemInfo);
    }

    public static /* synthetic */ ClaimReceiverResponse copy$default(ClaimReceiverResponse claimReceiverResponse, ClaimRedeemInfo claimRedeemInfo, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            claimRedeemInfo = claimReceiverResponse.redeem;
        }
        return claimReceiverResponse.copy(claimRedeemInfo);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final ClaimRedeemInfo getRedeem() {
        return this.redeem;
    }

    public final ClaimReceiverResponse copy(ClaimRedeemInfo redeem) {
        return new ClaimReceiverResponse(redeem);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof ClaimReceiverResponse) && Intrinsics.c(this.redeem, ((ClaimReceiverResponse) other).redeem);
    }

    public final ClaimRedeemInfo getRedeem() {
        return this.redeem;
    }

    public int hashCode() {
        ClaimRedeemInfo claimRedeemInfo = this.redeem;
        if (claimRedeemInfo == null) {
            return 0;
        }
        return claimRedeemInfo.hashCode();
    }

    public String toString() {
        return "ClaimReceiverResponse(redeem=" + this.redeem + ")";
    }
}
