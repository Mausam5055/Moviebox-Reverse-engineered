package com.transsion.rewardscenterapi;

import androidx.annotation.Keep;
import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0015\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001B=\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0007HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0007HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0005HÆ\u0003J?\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u001b\u001a\u00020\u00072\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dHÖ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001f\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0010R\u001a\u0010\b\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0010\"\u0004\b\u0012\u0010\u0013R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u000f¨\u0006 "}, d2 = {"Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;", "Ljava/io/Serializable;", "rewardType", "", "rewardAmount", "", "isToday", "", "hasCheckIn", "date", "<init>", "(ILjava/lang/String;ZZLjava/lang/String;)V", "getRewardType", "()I", "getRewardAmount", "()Ljava/lang/String;", "()Z", "getHasCheckIn", "setHasCheckIn", "(Z)V", "getDate", "component1", "component2", "component3", "component4", "component5", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "RewardsCenterApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class MemberTaskItemCheckInInfo implements Serializable {
    private final String date;
    private boolean hasCheckIn;
    private final boolean isToday;
    private final String rewardAmount;
    private final int rewardType;

    public MemberTaskItemCheckInInfo() {
        this(0, null, false, false, null, 31, null);
    }

    public MemberTaskItemCheckInInfo(int i11, String str, boolean z10, boolean z11, String str2) {
        this.rewardType = i11;
        this.rewardAmount = str;
        this.isToday = z10;
        this.hasCheckIn = z11;
        this.date = str2;
    }

    public /* synthetic */ MemberTaskItemCheckInInfo(int i11, String str, boolean z10, boolean z11, String str2, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 0 : i11, (i12 & 2) != 0 ? null : str, (i12 & 4) != 0 ? false : z10, (i12 & 8) == 0 ? z11 : false, (i12 & 16) != 0 ? null : str2);
    }

    public static /* synthetic */ MemberTaskItemCheckInInfo copy$default(MemberTaskItemCheckInInfo memberTaskItemCheckInInfo, int i11, String str, boolean z10, boolean z11, String str2, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i11 = memberTaskItemCheckInInfo.rewardType;
        }
        if ((i12 & 2) != 0) {
            str = memberTaskItemCheckInInfo.rewardAmount;
        }
        String str3 = str;
        if ((i12 & 4) != 0) {
            z10 = memberTaskItemCheckInInfo.isToday;
        }
        boolean z12 = z10;
        if ((i12 & 8) != 0) {
            z11 = memberTaskItemCheckInInfo.hasCheckIn;
        }
        boolean z13 = z11;
        if ((i12 & 16) != 0) {
            str2 = memberTaskItemCheckInInfo.date;
        }
        return memberTaskItemCheckInInfo.copy(i11, str3, z12, z13, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getRewardType() {
        return this.rewardType;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getRewardAmount() {
        return this.rewardAmount;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getIsToday() {
        return this.isToday;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getHasCheckIn() {
        return this.hasCheckIn;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getDate() {
        return this.date;
    }

    public final MemberTaskItemCheckInInfo copy(int rewardType, String rewardAmount, boolean isToday, boolean hasCheckIn, String date) {
        return new MemberTaskItemCheckInInfo(rewardType, rewardAmount, isToday, hasCheckIn, date);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MemberTaskItemCheckInInfo)) {
            return false;
        }
        MemberTaskItemCheckInInfo memberTaskItemCheckInInfo = (MemberTaskItemCheckInInfo) other;
        return this.rewardType == memberTaskItemCheckInInfo.rewardType && Intrinsics.c(this.rewardAmount, memberTaskItemCheckInInfo.rewardAmount) && this.isToday == memberTaskItemCheckInInfo.isToday && this.hasCheckIn == memberTaskItemCheckInInfo.hasCheckIn && Intrinsics.c(this.date, memberTaskItemCheckInInfo.date);
    }

    public final String getDate() {
        return this.date;
    }

    public final boolean getHasCheckIn() {
        return this.hasCheckIn;
    }

    public final String getRewardAmount() {
        return this.rewardAmount;
    }

    public final int getRewardType() {
        return this.rewardType;
    }

    public int hashCode() {
        int i11 = this.rewardType * 31;
        String str = this.rewardAmount;
        int iHashCode = (((((i11 + (str == null ? 0 : str.hashCode())) * 31) + e.a(this.isToday)) * 31) + e.a(this.hasCheckIn)) * 31;
        String str2 = this.date;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public final boolean isToday() {
        return this.isToday;
    }

    public final void setHasCheckIn(boolean z10) {
        this.hasCheckIn = z10;
    }

    public String toString() {
        return "MemberTaskItemCheckInInfo(rewardType=" + this.rewardType + ", rewardAmount=" + this.rewardAmount + ", isToday=" + this.isToday + ", hasCheckIn=" + this.hasCheckIn + ", date=" + this.date + ")";
    }
}
