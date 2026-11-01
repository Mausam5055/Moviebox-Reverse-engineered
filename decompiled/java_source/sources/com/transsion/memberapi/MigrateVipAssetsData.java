package com.transsion.memberapi;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0014\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B7\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\fJ\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\fJ\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u0010J\u0010\u0010\u0018\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u0013J>\u0010\u0019\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bHÆ\u0001¢\u0006\u0002\u0010\u001aJ\u0013\u0010\u001b\u001a\u00020\b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dHÖ\u0003J\t\u0010\u001e\u001a\u00020\u0006HÖ\u0001J\t\u0010\u001f\u001a\u00020 HÖ\u0001R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u000b\u0010\fR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u000e\u0010\fR\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u000f\u0010\u0010R\u0015\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u0012\u0010\u0013¨\u0006!"}, d2 = {"Lcom/transsion/memberapi/MigrateVipAssetsData;", "Ljava/io/Serializable;", "transferSeconds", "", "newExpiryAfter", "autoReceivedRewardCount", "", "executed", "", "<init>", "(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Boolean;)V", "getTransferSeconds", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getNewExpiryAfter", "getAutoReceivedRewardCount", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getExecuted", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Boolean;)Lcom/transsion/memberapi/MigrateVipAssetsData;", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "MemberApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class MigrateVipAssetsData implements Serializable {
    private final Integer autoReceivedRewardCount;
    private final Boolean executed;
    private final Long newExpiryAfter;
    private final Long transferSeconds;

    public MigrateVipAssetsData() {
        this(null, null, null, null, 15, null);
    }

    public MigrateVipAssetsData(Long l11, Long l12, Integer num, Boolean bool) {
        this.transferSeconds = l11;
        this.newExpiryAfter = l12;
        this.autoReceivedRewardCount = num;
        this.executed = bool;
    }

    public /* synthetic */ MigrateVipAssetsData(Long l11, Long l12, Integer num, Boolean bool, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : l11, (i11 & 2) != 0 ? null : l12, (i11 & 4) != 0 ? null : num, (i11 & 8) != 0 ? null : bool);
    }

    public static /* synthetic */ MigrateVipAssetsData copy$default(MigrateVipAssetsData migrateVipAssetsData, Long l11, Long l12, Integer num, Boolean bool, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            l11 = migrateVipAssetsData.transferSeconds;
        }
        if ((i11 & 2) != 0) {
            l12 = migrateVipAssetsData.newExpiryAfter;
        }
        if ((i11 & 4) != 0) {
            num = migrateVipAssetsData.autoReceivedRewardCount;
        }
        if ((i11 & 8) != 0) {
            bool = migrateVipAssetsData.executed;
        }
        return migrateVipAssetsData.copy(l11, l12, num, bool);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Long getTransferSeconds() {
        return this.transferSeconds;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Long getNewExpiryAfter() {
        return this.newExpiryAfter;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Integer getAutoReceivedRewardCount() {
        return this.autoReceivedRewardCount;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Boolean getExecuted() {
        return this.executed;
    }

    public final MigrateVipAssetsData copy(Long transferSeconds, Long newExpiryAfter, Integer autoReceivedRewardCount, Boolean executed) {
        return new MigrateVipAssetsData(transferSeconds, newExpiryAfter, autoReceivedRewardCount, executed);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MigrateVipAssetsData)) {
            return false;
        }
        MigrateVipAssetsData migrateVipAssetsData = (MigrateVipAssetsData) other;
        return Intrinsics.c(this.transferSeconds, migrateVipAssetsData.transferSeconds) && Intrinsics.c(this.newExpiryAfter, migrateVipAssetsData.newExpiryAfter) && Intrinsics.c(this.autoReceivedRewardCount, migrateVipAssetsData.autoReceivedRewardCount) && Intrinsics.c(this.executed, migrateVipAssetsData.executed);
    }

    public final Integer getAutoReceivedRewardCount() {
        return this.autoReceivedRewardCount;
    }

    public final Boolean getExecuted() {
        return this.executed;
    }

    public final Long getNewExpiryAfter() {
        return this.newExpiryAfter;
    }

    public final Long getTransferSeconds() {
        return this.transferSeconds;
    }

    public int hashCode() {
        Long l11 = this.transferSeconds;
        int iHashCode = (l11 == null ? 0 : l11.hashCode()) * 31;
        Long l12 = this.newExpiryAfter;
        int iHashCode2 = (iHashCode + (l12 == null ? 0 : l12.hashCode())) * 31;
        Integer num = this.autoReceivedRewardCount;
        int iHashCode3 = (iHashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        Boolean bool = this.executed;
        return iHashCode3 + (bool != null ? bool.hashCode() : 0);
    }

    public String toString() {
        return "MigrateVipAssetsData(transferSeconds=" + this.transferSeconds + ", newExpiryAfter=" + this.newExpiryAfter + ", autoReceivedRewardCount=" + this.autoReceivedRewardCount + ", executed=" + this.executed + ")";
    }
}
