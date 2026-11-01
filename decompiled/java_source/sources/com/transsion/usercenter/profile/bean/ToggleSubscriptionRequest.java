package com.transsion.usercenter.profile.bean;

import androidx.annotation.Keep;
import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.transsion.push.PushConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00052\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0014"}, d2 = {"Lcom/transsion/usercenter/profile/bean/ToggleSubscriptionRequest;", "", "targetUID", "", PushConstants.TOPIC_SUBSCRIBE, "", "<init>", "(Ljava/lang/String;Z)V", "getTargetUID", "()Ljava/lang/String;", "getSubscribe", "()Z", "component1", "component2", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ToggleSubscriptionRequest {

    @SerializedName(PushConstants.TOPIC_SUBSCRIBE)
    private final boolean subscribe;

    @SerializedName("targetUID")
    private final String targetUID;

    public ToggleSubscriptionRequest(String targetUID, boolean z10) {
        Intrinsics.h(targetUID, "targetUID");
        this.targetUID = targetUID;
        this.subscribe = z10;
    }

    public static /* synthetic */ ToggleSubscriptionRequest copy$default(ToggleSubscriptionRequest toggleSubscriptionRequest, String str, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = toggleSubscriptionRequest.targetUID;
        }
        if ((i11 & 2) != 0) {
            z10 = toggleSubscriptionRequest.subscribe;
        }
        return toggleSubscriptionRequest.copy(str, z10);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getTargetUID() {
        return this.targetUID;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getSubscribe() {
        return this.subscribe;
    }

    public final ToggleSubscriptionRequest copy(String targetUID, boolean subscribe) {
        Intrinsics.h(targetUID, "targetUID");
        return new ToggleSubscriptionRequest(targetUID, subscribe);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ToggleSubscriptionRequest)) {
            return false;
        }
        ToggleSubscriptionRequest toggleSubscriptionRequest = (ToggleSubscriptionRequest) other;
        return Intrinsics.c(this.targetUID, toggleSubscriptionRequest.targetUID) && this.subscribe == toggleSubscriptionRequest.subscribe;
    }

    public final boolean getSubscribe() {
        return this.subscribe;
    }

    public final String getTargetUID() {
        return this.targetUID;
    }

    public int hashCode() {
        return (this.targetUID.hashCode() * 31) + e.a(this.subscribe);
    }

    public String toString() {
        return "ToggleSubscriptionRequest(targetUID=" + this.targetUID + ", subscribe=" + this.subscribe + ")";
    }
}
