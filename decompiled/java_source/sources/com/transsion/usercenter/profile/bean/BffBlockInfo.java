package com.transsion.usercenter.profile.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\bJ\u0010\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\bJ&\u0010\r\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u000eJ\u0013\u0010\u000f\u001a\u00020\u00032\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\u0007\u0010\bR\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\n\u0010\b¨\u0006\u0015"}, d2 = {"Lcom/transsion/usercenter/profile/bean/BffBlockInfo;", "", "block", "", "blocked", "<init>", "(Ljava/lang/Boolean;Ljava/lang/Boolean;)V", "getBlock", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getBlocked", "component1", "component2", "copy", "(Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/transsion/usercenter/profile/bean/BffBlockInfo;", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class BffBlockInfo {

    @SerializedName("block")
    private final Boolean block;

    @SerializedName("blocked")
    private final Boolean blocked;

    public BffBlockInfo(Boolean bool, Boolean bool2) {
        this.block = bool;
        this.blocked = bool2;
    }

    public static /* synthetic */ BffBlockInfo copy$default(BffBlockInfo bffBlockInfo, Boolean bool, Boolean bool2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            bool = bffBlockInfo.block;
        }
        if ((i11 & 2) != 0) {
            bool2 = bffBlockInfo.blocked;
        }
        return bffBlockInfo.copy(bool, bool2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Boolean getBlock() {
        return this.block;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Boolean getBlocked() {
        return this.blocked;
    }

    public final BffBlockInfo copy(Boolean block, Boolean blocked) {
        return new BffBlockInfo(block, blocked);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof BffBlockInfo)) {
            return false;
        }
        BffBlockInfo bffBlockInfo = (BffBlockInfo) other;
        return Intrinsics.c(this.block, bffBlockInfo.block) && Intrinsics.c(this.blocked, bffBlockInfo.blocked);
    }

    public final Boolean getBlock() {
        return this.block;
    }

    public final Boolean getBlocked() {
        return this.blocked;
    }

    public int hashCode() {
        Boolean bool = this.block;
        int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        Boolean bool2 = this.blocked;
        return iHashCode + (bool2 != null ? bool2.hashCode() : 0);
    }

    public String toString() {
        return "BffBlockInfo(block=" + this.block + ", blocked=" + this.blocked + ")";
    }
}
