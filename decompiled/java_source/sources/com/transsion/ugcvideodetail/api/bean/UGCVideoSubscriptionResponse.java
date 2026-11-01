package com.transsion.ugcvideodetail.api.bean;

import androidx.annotation.Keep;
import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\u00032\b\u0010\n\u001a\u0004\u0018\u00010\u000bHÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcom/transsion/ugcvideodetail/api/bean/UGCVideoSubscriptionResponse;", "Ljava/io/Serializable;", "isSubscribed", "", "<init>", "(Z)V", "()Z", "component1", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "", "UGCVideoDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class UGCVideoSubscriptionResponse implements Serializable {
    private final boolean isSubscribed;

    public UGCVideoSubscriptionResponse(boolean z10) {
        this.isSubscribed = z10;
    }

    public static /* synthetic */ UGCVideoSubscriptionResponse copy$default(UGCVideoSubscriptionResponse uGCVideoSubscriptionResponse, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = uGCVideoSubscriptionResponse.isSubscribed;
        }
        return uGCVideoSubscriptionResponse.copy(z10);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getIsSubscribed() {
        return this.isSubscribed;
    }

    public final UGCVideoSubscriptionResponse copy(boolean isSubscribed) {
        return new UGCVideoSubscriptionResponse(isSubscribed);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof UGCVideoSubscriptionResponse) && this.isSubscribed == ((UGCVideoSubscriptionResponse) other).isSubscribed;
    }

    public int hashCode() {
        return e.a(this.isSubscribed);
    }

    public final boolean isSubscribed() {
        return this.isSubscribed;
    }

    public String toString() {
        return "UGCVideoSubscriptionResponse(isSubscribed=" + this.isSubscribed + ")";
    }
}
