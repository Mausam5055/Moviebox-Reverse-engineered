package com.transsion.memberapi;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0003J\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0003J\u000f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\u000e\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0017"}, d2 = {"Lcom/transsion/memberapi/MemberTaskInfo;", "Ljava/io/Serializable;", "list", "", "Lcom/transsion/memberapi/MemberTaskGroup;", "<init>", "(Ljava/util/List;)V", "getList", "()Ljava/util/List;", "findInviteTaskList", "Lcom/transsion/memberapi/MemberTaskItemInvite;", "findCheckInTaskList", "Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;", "component1", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "", "MemberApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final /* data */ class MemberTaskInfo implements Serializable {
    private final List<MemberTaskGroup> list;

    public MemberTaskInfo(List<MemberTaskGroup> list) {
        Intrinsics.h(list, "list");
        this.list = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ MemberTaskInfo copy$default(MemberTaskInfo memberTaskInfo, List list, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = memberTaskInfo.list;
        }
        return memberTaskInfo.copy(list);
    }

    public final List<MemberTaskGroup> component1() {
        return this.list;
    }

    public final MemberTaskInfo copy(List<MemberTaskGroup> list) {
        Intrinsics.h(list, "list");
        return new MemberTaskInfo(list);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof MemberTaskInfo) && Intrinsics.c(this.list, ((MemberTaskInfo) other).list);
    }

    public final List<MemberTaskItemCheckInInfo> findCheckInTaskList() {
        Object next;
        List<MemberTaskItem> taskItems;
        MemberTaskItem memberTaskItem;
        Object next2;
        List<MemberTaskItemCheckInInfo> checkInList;
        Iterator<T> it = this.list.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            Iterator<T> it2 = ((MemberTaskGroup) next).getTaskItems().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    next2 = null;
                    break;
                }
                next2 = it2.next();
                MemberTaskItem memberTaskItem2 = (MemberTaskItem) next2;
                Integer taskSubType = memberTaskItem2.getTaskSubType();
                if (taskSubType != null && taskSubType.intValue() == 8 && (checkInList = memberTaskItem2.getCheckInList()) != null && !checkInList.isEmpty()) {
                    break;
                }
            }
        } while (next2 == null);
        MemberTaskGroup memberTaskGroup = (MemberTaskGroup) next;
        if (memberTaskGroup == null || (taskItems = memberTaskGroup.getTaskItems()) == null || (memberTaskItem = taskItems.get(0)) == null) {
            return null;
        }
        return memberTaskItem.getCheckInList();
    }

    public final List<MemberTaskItemInvite> findInviteTaskList() {
        Object next;
        List<MemberTaskItem> taskItems;
        MemberTaskItem memberTaskItem;
        Object next2;
        List<MemberTaskItemInvite> inviteList;
        Iterator<T> it = this.list.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            Iterator<T> it2 = ((MemberTaskGroup) next).getTaskItems().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    next2 = null;
                    break;
                }
                next2 = it2.next();
                MemberTaskItem memberTaskItem2 = (MemberTaskItem) next2;
                Integer taskSubType = memberTaskItem2.getTaskSubType();
                if (taskSubType != null && taskSubType.intValue() == 2 && (inviteList = memberTaskItem2.getInviteList()) != null && !inviteList.isEmpty()) {
                    break;
                }
            }
        } while (next2 == null);
        MemberTaskGroup memberTaskGroup = (MemberTaskGroup) next;
        if (memberTaskGroup == null || (taskItems = memberTaskGroup.getTaskItems()) == null || (memberTaskItem = taskItems.get(0)) == null) {
            return null;
        }
        return memberTaskItem.getInviteList();
    }

    public final List<MemberTaskGroup> getList() {
        return this.list;
    }

    public int hashCode() {
        return this.list.hashCode();
    }

    public String toString() {
        return "MemberTaskInfo(list=" + this.list + ")";
    }
}
