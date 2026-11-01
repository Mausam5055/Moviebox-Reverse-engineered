package com.transsion.rewardscenterapi;

import androidx.annotation.Keep;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0005¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0005HÆ\u0003J;\u0010\u0019\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dHÖ\u0003J\t\u0010\u001e\u001a\u00020\u0005HÖ\u0001J\t\u0010\u001f\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000eR\u001a\u0010\b\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u000e\"\u0004\b\u0012\u0010\u0013¨\u0006 "}, d2 = {"Lcom/transsion/rewardscenterapi/MemberTaskItemInvite;", "Ljava/io/Serializable;", "rewardId", "", "rewardType", "", "rewardAmount", "friendSeq", NotificationCompat.CATEGORY_STATUS, "<init>", "(Ljava/lang/String;IIII)V", "getRewardId", "()Ljava/lang/String;", "getRewardType", "()I", "getRewardAmount", "getFriendSeq", "getStatus", "setStatus", "(I)V", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "RewardsCenterApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class MemberTaskItemInvite implements Serializable {
    private final int friendSeq;
    private final int rewardAmount;
    private final String rewardId;
    private final int rewardType;
    private int status;

    public MemberTaskItemInvite(String rewardId, int i11, int i12, int i13, int i14) {
        Intrinsics.h(rewardId, "rewardId");
        this.rewardId = rewardId;
        this.rewardType = i11;
        this.rewardAmount = i12;
        this.friendSeq = i13;
        this.status = i14;
    }

    public /* synthetic */ MemberTaskItemInvite(String str, int i11, int i12, int i13, int i14, int i15, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i15 & 2) != 0 ? 0 : i11, (i15 & 4) != 0 ? 0 : i12, (i15 & 8) != 0 ? 0 : i13, (i15 & 16) != 0 ? 0 : i14);
    }

    public static /* synthetic */ MemberTaskItemInvite copy$default(MemberTaskItemInvite memberTaskItemInvite, String str, int i11, int i12, int i13, int i14, int i15, Object obj) {
        if ((i15 & 1) != 0) {
            str = memberTaskItemInvite.rewardId;
        }
        if ((i15 & 2) != 0) {
            i11 = memberTaskItemInvite.rewardType;
        }
        int i16 = i11;
        if ((i15 & 4) != 0) {
            i12 = memberTaskItemInvite.rewardAmount;
        }
        int i17 = i12;
        if ((i15 & 8) != 0) {
            i13 = memberTaskItemInvite.friendSeq;
        }
        int i18 = i13;
        if ((i15 & 16) != 0) {
            i14 = memberTaskItemInvite.status;
        }
        return memberTaskItemInvite.copy(str, i16, i17, i18, i14);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getRewardId() {
        return this.rewardId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getRewardType() {
        return this.rewardType;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getRewardAmount() {
        return this.rewardAmount;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final int getFriendSeq() {
        return this.friendSeq;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final int getStatus() {
        return this.status;
    }

    public final MemberTaskItemInvite copy(String rewardId, int rewardType, int rewardAmount, int friendSeq, int status) {
        Intrinsics.h(rewardId, "rewardId");
        return new MemberTaskItemInvite(rewardId, rewardType, rewardAmount, friendSeq, status);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MemberTaskItemInvite)) {
            return false;
        }
        MemberTaskItemInvite memberTaskItemInvite = (MemberTaskItemInvite) other;
        return Intrinsics.c(this.rewardId, memberTaskItemInvite.rewardId) && this.rewardType == memberTaskItemInvite.rewardType && this.rewardAmount == memberTaskItemInvite.rewardAmount && this.friendSeq == memberTaskItemInvite.friendSeq && this.status == memberTaskItemInvite.status;
    }

    public final int getFriendSeq() {
        return this.friendSeq;
    }

    public final int getRewardAmount() {
        return this.rewardAmount;
    }

    public final String getRewardId() {
        return this.rewardId;
    }

    public final int getRewardType() {
        return this.rewardType;
    }

    public final int getStatus() {
        return this.status;
    }

    public int hashCode() {
        return (((((((this.rewardId.hashCode() * 31) + this.rewardType) * 31) + this.rewardAmount) * 31) + this.friendSeq) * 31) + this.status;
    }

    public final void setStatus(int i11) {
        this.status = i11;
    }

    public String toString() {
        return "MemberTaskItemInvite(rewardId=" + this.rewardId + ", rewardType=" + this.rewardType + ", rewardAmount=" + this.rewardAmount + ", friendSeq=" + this.friendSeq + ", status=" + this.status + ")";
    }
}
