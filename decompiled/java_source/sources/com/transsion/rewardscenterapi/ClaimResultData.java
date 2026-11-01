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
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u0013\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000b\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/transsion/rewardscenterapi/ClaimResultData;", "Ljava/io/Serializable;", "result", "Lcom/transsion/rewardscenterapi/ClaimResultDetail;", "<init>", "(Lcom/transsion/rewardscenterapi/ClaimResultDetail;)V", "getResult", "()Lcom/transsion/rewardscenterapi/ClaimResultDetail;", "component1", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "", "RewardsCenterApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ClaimResultData implements Serializable {
    private final ClaimResultDetail result;

    /* JADX WARN: Multi-variable type inference failed */
    public ClaimResultData() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public ClaimResultData(ClaimResultDetail claimResultDetail) {
        this.result = claimResultDetail;
    }

    public /* synthetic */ ClaimResultData(ClaimResultDetail claimResultDetail, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : claimResultDetail);
    }

    public static /* synthetic */ ClaimResultData copy$default(ClaimResultData claimResultData, ClaimResultDetail claimResultDetail, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            claimResultDetail = claimResultData.result;
        }
        return claimResultData.copy(claimResultDetail);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final ClaimResultDetail getResult() {
        return this.result;
    }

    public final ClaimResultData copy(ClaimResultDetail result) {
        return new ClaimResultData(result);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof ClaimResultData) && Intrinsics.c(this.result, ((ClaimResultData) other).result);
    }

    public final ClaimResultDetail getResult() {
        return this.result;
    }

    public int hashCode() {
        ClaimResultDetail claimResultDetail = this.result;
        if (claimResultDetail == null) {
            return 0;
        }
        return claimResultDetail.hashCode();
    }

    public String toString() {
        return "ClaimResultData(result=" + this.result + ")";
    }
}
