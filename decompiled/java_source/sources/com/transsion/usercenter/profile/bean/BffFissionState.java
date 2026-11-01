package com.transsion.usercenter.profile.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\bJ\u000b\u0010\r\u001a\u0004\u0018\u00010\u0005HÆ\u0003J&\u0010\u000e\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u000fJ\u0013\u0010\u0010\u001a\u00020\u00032\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0005HÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\u0002\u0010\bR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/transsion/usercenter/profile/bean/BffFissionState;", "", "isNew", "", "boundInviteCode", "", "<init>", "(Ljava/lang/Boolean;Ljava/lang/String;)V", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getBoundInviteCode", "()Ljava/lang/String;", "component1", "component2", "copy", "(Ljava/lang/Boolean;Ljava/lang/String;)Lcom/transsion/usercenter/profile/bean/BffFissionState;", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class BffFissionState {

    @SerializedName("boundInviteCode")
    private final String boundInviteCode;

    @SerializedName("isNew")
    private final Boolean isNew;

    public BffFissionState(Boolean bool, String str) {
        this.isNew = bool;
        this.boundInviteCode = str;
    }

    public static /* synthetic */ BffFissionState copy$default(BffFissionState bffFissionState, Boolean bool, String str, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            bool = bffFissionState.isNew;
        }
        if ((i11 & 2) != 0) {
            str = bffFissionState.boundInviteCode;
        }
        return bffFissionState.copy(bool, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Boolean getIsNew() {
        return this.isNew;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getBoundInviteCode() {
        return this.boundInviteCode;
    }

    public final BffFissionState copy(Boolean isNew, String boundInviteCode) {
        return new BffFissionState(isNew, boundInviteCode);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof BffFissionState)) {
            return false;
        }
        BffFissionState bffFissionState = (BffFissionState) other;
        return Intrinsics.c(this.isNew, bffFissionState.isNew) && Intrinsics.c(this.boundInviteCode, bffFissionState.boundInviteCode);
    }

    public final String getBoundInviteCode() {
        return this.boundInviteCode;
    }

    public int hashCode() {
        Boolean bool = this.isNew;
        int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        String str = this.boundInviteCode;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public final Boolean isNew() {
        return this.isNew;
    }

    public String toString() {
        return "BffFissionState(isNew=" + this.isNew + ", boundInviteCode=" + this.boundInviteCode + ")";
    }
}
