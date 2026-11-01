package com.transsion.memberapi;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B!\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0006HÆ\u0003J%\u0010\u000f\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0018"}, d2 = {"Lcom/transsion/memberapi/MemberTaskCheckInInfo;", "Ljava/io/Serializable;", "checkInList", "", "Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;", "taskInfo", "Lcom/transsion/memberapi/MemberTaskItem;", "<init>", "(Ljava/util/List;Lcom/transsion/memberapi/MemberTaskItem;)V", "getCheckInList", "()Ljava/util/List;", "getTaskInfo", "()Lcom/transsion/memberapi/MemberTaskItem;", "component1", "component2", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "", "MemberApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class MemberTaskCheckInInfo implements Serializable {
    private final List<MemberTaskItemCheckInInfo> checkInList;
    private final MemberTaskItem taskInfo;

    public MemberTaskCheckInInfo(List<MemberTaskItemCheckInInfo> checkInList, MemberTaskItem memberTaskItem) {
        Intrinsics.h(checkInList, "checkInList");
        this.checkInList = checkInList;
        this.taskInfo = memberTaskItem;
    }

    public /* synthetic */ MemberTaskCheckInInfo(List list, MemberTaskItem memberTaskItem, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, (i11 & 2) != 0 ? null : memberTaskItem);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ MemberTaskCheckInInfo copy$default(MemberTaskCheckInInfo memberTaskCheckInInfo, List list, MemberTaskItem memberTaskItem, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = memberTaskCheckInInfo.checkInList;
        }
        if ((i11 & 2) != 0) {
            memberTaskItem = memberTaskCheckInInfo.taskInfo;
        }
        return memberTaskCheckInInfo.copy(list, memberTaskItem);
    }

    public final List<MemberTaskItemCheckInInfo> component1() {
        return this.checkInList;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final MemberTaskItem getTaskInfo() {
        return this.taskInfo;
    }

    public final MemberTaskCheckInInfo copy(List<MemberTaskItemCheckInInfo> checkInList, MemberTaskItem taskInfo) {
        Intrinsics.h(checkInList, "checkInList");
        return new MemberTaskCheckInInfo(checkInList, taskInfo);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MemberTaskCheckInInfo)) {
            return false;
        }
        MemberTaskCheckInInfo memberTaskCheckInInfo = (MemberTaskCheckInInfo) other;
        return Intrinsics.c(this.checkInList, memberTaskCheckInInfo.checkInList) && Intrinsics.c(this.taskInfo, memberTaskCheckInInfo.taskInfo);
    }

    public final List<MemberTaskItemCheckInInfo> getCheckInList() {
        return this.checkInList;
    }

    public final MemberTaskItem getTaskInfo() {
        return this.taskInfo;
    }

    public int hashCode() {
        int iHashCode = this.checkInList.hashCode() * 31;
        MemberTaskItem memberTaskItem = this.taskInfo;
        return iHashCode + (memberTaskItem == null ? 0 : memberTaskItem.hashCode());
    }

    public String toString() {
        return "MemberTaskCheckInInfo(checkInList=" + this.checkInList + ", taskInfo=" + this.taskInfo + ")";
    }
}
