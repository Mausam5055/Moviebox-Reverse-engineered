package com.transsion.memberapi;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0011\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0004HÆ\u0003J'\u0010\u000e\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u0019\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0017"}, d2 = {"Lcom/transsion/memberapi/GlobalTaskInfo;", "Ljava/io/Serializable;", "globalTaskConf", "", "Lcom/transsion/memberapi/MemberTaskItem;", "taskInfo", "<init>", "(Ljava/util/List;Lcom/transsion/memberapi/MemberTaskItem;)V", "getGlobalTaskConf", "()Ljava/util/List;", "getTaskInfo", "()Lcom/transsion/memberapi/MemberTaskItem;", "component1", "component2", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "", "MemberApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class GlobalTaskInfo implements Serializable {
    private final List<MemberTaskItem> globalTaskConf;
    private final MemberTaskItem taskInfo;

    public GlobalTaskInfo(List<MemberTaskItem> list, MemberTaskItem memberTaskItem) {
        this.globalTaskConf = list;
        this.taskInfo = memberTaskItem;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ GlobalTaskInfo copy$default(GlobalTaskInfo globalTaskInfo, List list, MemberTaskItem memberTaskItem, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = globalTaskInfo.globalTaskConf;
        }
        if ((i11 & 2) != 0) {
            memberTaskItem = globalTaskInfo.taskInfo;
        }
        return globalTaskInfo.copy(list, memberTaskItem);
    }

    public final List<MemberTaskItem> component1() {
        return this.globalTaskConf;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final MemberTaskItem getTaskInfo() {
        return this.taskInfo;
    }

    public final GlobalTaskInfo copy(List<MemberTaskItem> globalTaskConf, MemberTaskItem taskInfo) {
        return new GlobalTaskInfo(globalTaskConf, taskInfo);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof GlobalTaskInfo)) {
            return false;
        }
        GlobalTaskInfo globalTaskInfo = (GlobalTaskInfo) other;
        return Intrinsics.c(this.globalTaskConf, globalTaskInfo.globalTaskConf) && Intrinsics.c(this.taskInfo, globalTaskInfo.taskInfo);
    }

    public final List<MemberTaskItem> getGlobalTaskConf() {
        return this.globalTaskConf;
    }

    public final MemberTaskItem getTaskInfo() {
        return this.taskInfo;
    }

    public int hashCode() {
        List<MemberTaskItem> list = this.globalTaskConf;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        MemberTaskItem memberTaskItem = this.taskInfo;
        return iHashCode + (memberTaskItem != null ? memberTaskItem.hashCode() : 0);
    }

    public String toString() {
        return "GlobalTaskInfo(globalTaskConf=" + this.globalTaskConf + ", taskInfo=" + this.taskInfo + ")";
    }
}
