package com.transsion.memberapi;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.hisavana.common.tracking.TrackingKey;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0006HÆ\u0003J'\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aHÖ\u0003J\t\u0010\u001b\u001a\u00020\u0006HÖ\u0001J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\n\"\u0004\b\u000e\u0010\fR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u001d"}, d2 = {"Lcom/transsion/memberapi/RewardInfo;", "Ljava/io/Serializable;", TrackingKey.DESCRIPTION, "", "notice", "duration", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;I)V", "getDescription", "()Ljava/lang/String;", "setDescription", "(Ljava/lang/String;)V", "getNotice", "setNotice", "getDuration", "()I", "setDuration", "(I)V", "component1", "component2", "component3", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "MemberApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class RewardInfo implements Serializable {
    private String description;
    private int duration;
    private String notice;

    public RewardInfo(String description, String notice, int i11) {
        Intrinsics.h(description, "description");
        Intrinsics.h(notice, "notice");
        this.description = description;
        this.notice = notice;
        this.duration = i11;
    }

    public static /* synthetic */ RewardInfo copy$default(RewardInfo rewardInfo, String str, String str2, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            str = rewardInfo.description;
        }
        if ((i12 & 2) != 0) {
            str2 = rewardInfo.notice;
        }
        if ((i12 & 4) != 0) {
            i11 = rewardInfo.duration;
        }
        return rewardInfo.copy(str, str2, i11);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getDescription() {
        return this.description;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getNotice() {
        return this.notice;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getDuration() {
        return this.duration;
    }

    public final RewardInfo copy(String description, String notice, int duration) {
        Intrinsics.h(description, "description");
        Intrinsics.h(notice, "notice");
        return new RewardInfo(description, notice, duration);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RewardInfo)) {
            return false;
        }
        RewardInfo rewardInfo = (RewardInfo) other;
        return Intrinsics.c(this.description, rewardInfo.description) && Intrinsics.c(this.notice, rewardInfo.notice) && this.duration == rewardInfo.duration;
    }

    public final String getDescription() {
        return this.description;
    }

    public final int getDuration() {
        return this.duration;
    }

    public final String getNotice() {
        return this.notice;
    }

    public int hashCode() {
        return (((this.description.hashCode() * 31) + this.notice.hashCode()) * 31) + this.duration;
    }

    public final void setDescription(String str) {
        Intrinsics.h(str, "<set-?>");
        this.description = str;
    }

    public final void setDuration(int i11) {
        this.duration = i11;
    }

    public final void setNotice(String str) {
        Intrinsics.h(str, "<set-?>");
        this.notice = str;
    }

    public String toString() {
        return "RewardInfo(description=" + this.description + ", notice=" + this.notice + ", duration=" + this.duration + ")";
    }
}
