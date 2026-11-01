package com.transsion.memberapi;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J'\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\f¨\u0006\u0018"}, d2 = {"Lcom/transsion/memberapi/MemberTaskSubmitCheckInRes;", "Ljava/io/Serializable;", "date", "", "rewardType", "", "rewardAmount", "<init>", "(Ljava/lang/String;II)V", "getDate", "()Ljava/lang/String;", "getRewardType", "()I", "getRewardAmount", "component1", "component2", "component3", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "MemberApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class MemberTaskSubmitCheckInRes implements Serializable {
    private final String date;
    private final int rewardAmount;
    private final int rewardType;

    public MemberTaskSubmitCheckInRes(String date, int i11, int i12) {
        Intrinsics.h(date, "date");
        this.date = date;
        this.rewardType = i11;
        this.rewardAmount = i12;
    }

    public static /* synthetic */ MemberTaskSubmitCheckInRes copy$default(MemberTaskSubmitCheckInRes memberTaskSubmitCheckInRes, String str, int i11, int i12, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            str = memberTaskSubmitCheckInRes.date;
        }
        if ((i13 & 2) != 0) {
            i11 = memberTaskSubmitCheckInRes.rewardType;
        }
        if ((i13 & 4) != 0) {
            i12 = memberTaskSubmitCheckInRes.rewardAmount;
        }
        return memberTaskSubmitCheckInRes.copy(str, i11, i12);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getDate() {
        return this.date;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getRewardType() {
        return this.rewardType;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getRewardAmount() {
        return this.rewardAmount;
    }

    public final MemberTaskSubmitCheckInRes copy(String date, int rewardType, int rewardAmount) {
        Intrinsics.h(date, "date");
        return new MemberTaskSubmitCheckInRes(date, rewardType, rewardAmount);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MemberTaskSubmitCheckInRes)) {
            return false;
        }
        MemberTaskSubmitCheckInRes memberTaskSubmitCheckInRes = (MemberTaskSubmitCheckInRes) other;
        return Intrinsics.c(this.date, memberTaskSubmitCheckInRes.date) && this.rewardType == memberTaskSubmitCheckInRes.rewardType && this.rewardAmount == memberTaskSubmitCheckInRes.rewardAmount;
    }

    public final String getDate() {
        return this.date;
    }

    public final int getRewardAmount() {
        return this.rewardAmount;
    }

    public final int getRewardType() {
        return this.rewardType;
    }

    public int hashCode() {
        return (((this.date.hashCode() * 31) + this.rewardType) * 31) + this.rewardAmount;
    }

    public String toString() {
        return "MemberTaskSubmitCheckInRes(date=" + this.date + ", rewardType=" + this.rewardType + ", rewardAmount=" + this.rewardAmount + ")";
    }
}
