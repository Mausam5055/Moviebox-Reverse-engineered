package com.transsion.rewardscenterapi;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B+\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\b\u0010\tJ\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\rJ\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0007HÆ\u0003J2\u0010\u0014\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010\u0015J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u0005HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0007HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\f\u0010\rR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u001b"}, d2 = {"Lcom/transsion/rewardscenterapi/TaskRewards;", "", "taskInfo", "Lcom/transsion/rewardscenterapi/MemberTaskItem;", "currentPoint", "", "tips", "", "<init>", "(Lcom/transsion/rewardscenterapi/MemberTaskItem;Ljava/lang/Integer;Ljava/lang/String;)V", "getTaskInfo", "()Lcom/transsion/rewardscenterapi/MemberTaskItem;", "getCurrentPoint", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getTips", "()Ljava/lang/String;", "component1", "component2", "component3", "copy", "(Lcom/transsion/rewardscenterapi/MemberTaskItem;Ljava/lang/Integer;Ljava/lang/String;)Lcom/transsion/rewardscenterapi/TaskRewards;", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "toString", "RewardsCenterApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class TaskRewards {
    private final Integer currentPoint;
    private final MemberTaskItem taskInfo;
    private final String tips;

    public TaskRewards() {
        this(null, null, null, 7, null);
    }

    public TaskRewards(MemberTaskItem memberTaskItem, Integer num, String str) {
        this.taskInfo = memberTaskItem;
        this.currentPoint = num;
        this.tips = str;
    }

    public /* synthetic */ TaskRewards(MemberTaskItem memberTaskItem, Integer num, String str, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : memberTaskItem, (i11 & 2) != 0 ? null : num, (i11 & 4) != 0 ? null : str);
    }

    public static /* synthetic */ TaskRewards copy$default(TaskRewards taskRewards, MemberTaskItem memberTaskItem, Integer num, String str, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            memberTaskItem = taskRewards.taskInfo;
        }
        if ((i11 & 2) != 0) {
            num = taskRewards.currentPoint;
        }
        if ((i11 & 4) != 0) {
            str = taskRewards.tips;
        }
        return taskRewards.copy(memberTaskItem, num, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final MemberTaskItem getTaskInfo() {
        return this.taskInfo;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Integer getCurrentPoint() {
        return this.currentPoint;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getTips() {
        return this.tips;
    }

    public final TaskRewards copy(MemberTaskItem taskInfo, Integer currentPoint, String tips) {
        return new TaskRewards(taskInfo, currentPoint, tips);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TaskRewards)) {
            return false;
        }
        TaskRewards taskRewards = (TaskRewards) other;
        return Intrinsics.c(this.taskInfo, taskRewards.taskInfo) && Intrinsics.c(this.currentPoint, taskRewards.currentPoint) && Intrinsics.c(this.tips, taskRewards.tips);
    }

    public final Integer getCurrentPoint() {
        return this.currentPoint;
    }

    public final MemberTaskItem getTaskInfo() {
        return this.taskInfo;
    }

    public final String getTips() {
        return this.tips;
    }

    public int hashCode() {
        MemberTaskItem memberTaskItem = this.taskInfo;
        int iHashCode = (memberTaskItem == null ? 0 : memberTaskItem.hashCode()) * 31;
        Integer num = this.currentPoint;
        int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        String str = this.tips;
        return iHashCode2 + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "TaskRewards(taskInfo=" + this.taskInfo + ", currentPoint=" + this.currentPoint + ", tips=" + this.tips + ")";
    }
}
