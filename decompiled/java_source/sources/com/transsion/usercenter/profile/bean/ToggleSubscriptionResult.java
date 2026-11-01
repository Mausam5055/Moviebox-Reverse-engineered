package com.transsion.usercenter.profile.bean;

import androidx.annotation.Keep;
import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\u00032\b\u0010\n\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000b\u001a\u00020\fHÖ\u0001J\t\u0010\r\u001a\u00020\u000eHÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0006¨\u0006\u000f"}, d2 = {"Lcom/transsion/usercenter/profile/bean/ToggleSubscriptionResult;", "", "isSubscribed", "", "<init>", "(Z)V", "()Z", "component1", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ToggleSubscriptionResult {

    @SerializedName("isSubscribed")
    private final boolean isSubscribed;

    public ToggleSubscriptionResult() {
        this(false, 1, null);
    }

    public ToggleSubscriptionResult(boolean z10) {
        this.isSubscribed = z10;
    }

    public /* synthetic */ ToggleSubscriptionResult(boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? false : z10);
    }

    public static /* synthetic */ ToggleSubscriptionResult copy$default(ToggleSubscriptionResult toggleSubscriptionResult, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = toggleSubscriptionResult.isSubscribed;
        }
        return toggleSubscriptionResult.copy(z10);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getIsSubscribed() {
        return this.isSubscribed;
    }

    public final ToggleSubscriptionResult copy(boolean isSubscribed) {
        return new ToggleSubscriptionResult(isSubscribed);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof ToggleSubscriptionResult) && this.isSubscribed == ((ToggleSubscriptionResult) other).isSubscribed;
    }

    public int hashCode() {
        return e.a(this.isSubscribed);
    }

    public final boolean isSubscribed() {
        return this.isSubscribed;
    }

    public String toString() {
        return "ToggleSubscriptionResult(isSubscribed=" + this.isSubscribed + ")";
    }
}
