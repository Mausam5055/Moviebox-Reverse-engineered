package com.transsion.memberapi;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0006HÆ\u0003J\u000f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\t0\bHÆ\u0003J7\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bHÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001J\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001e"}, d2 = {"Lcom/transsion/memberapi/MemberTaskGroup;", "Ljava/io/Serializable;", "groupName", "", "groupUrl", "groupInfo", "", "taskItems", "", "Lcom/transsion/memberapi/MemberTaskItem;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;)V", "getGroupName", "()Ljava/lang/String;", "getGroupUrl", "getGroupInfo", "()Ljava/lang/Object;", "getTaskItems", "()Ljava/util/List;", "component1", "component2", "component3", "component4", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "MemberApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class MemberTaskGroup implements Serializable {
    private final Object groupInfo;
    private final String groupName;
    private final String groupUrl;
    private final List<MemberTaskItem> taskItems;

    public MemberTaskGroup(String groupName, String groupUrl, Object groupInfo, List<MemberTaskItem> taskItems) {
        Intrinsics.h(groupName, "groupName");
        Intrinsics.h(groupUrl, "groupUrl");
        Intrinsics.h(groupInfo, "groupInfo");
        Intrinsics.h(taskItems, "taskItems");
        this.groupName = groupName;
        this.groupUrl = groupUrl;
        this.groupInfo = groupInfo;
        this.taskItems = taskItems;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ MemberTaskGroup copy$default(MemberTaskGroup memberTaskGroup, String str, String str2, Object obj, List list, int i11, Object obj2) {
        if ((i11 & 1) != 0) {
            str = memberTaskGroup.groupName;
        }
        if ((i11 & 2) != 0) {
            str2 = memberTaskGroup.groupUrl;
        }
        if ((i11 & 4) != 0) {
            obj = memberTaskGroup.groupInfo;
        }
        if ((i11 & 8) != 0) {
            list = memberTaskGroup.taskItems;
        }
        return memberTaskGroup.copy(str, str2, obj, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getGroupName() {
        return this.groupName;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getGroupUrl() {
        return this.groupUrl;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Object getGroupInfo() {
        return this.groupInfo;
    }

    public final List<MemberTaskItem> component4() {
        return this.taskItems;
    }

    public final MemberTaskGroup copy(String groupName, String groupUrl, Object groupInfo, List<MemberTaskItem> taskItems) {
        Intrinsics.h(groupName, "groupName");
        Intrinsics.h(groupUrl, "groupUrl");
        Intrinsics.h(groupInfo, "groupInfo");
        Intrinsics.h(taskItems, "taskItems");
        return new MemberTaskGroup(groupName, groupUrl, groupInfo, taskItems);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MemberTaskGroup)) {
            return false;
        }
        MemberTaskGroup memberTaskGroup = (MemberTaskGroup) other;
        return Intrinsics.c(this.groupName, memberTaskGroup.groupName) && Intrinsics.c(this.groupUrl, memberTaskGroup.groupUrl) && Intrinsics.c(this.groupInfo, memberTaskGroup.groupInfo) && Intrinsics.c(this.taskItems, memberTaskGroup.taskItems);
    }

    public final Object getGroupInfo() {
        return this.groupInfo;
    }

    public final String getGroupName() {
        return this.groupName;
    }

    public final String getGroupUrl() {
        return this.groupUrl;
    }

    public final List<MemberTaskItem> getTaskItems() {
        return this.taskItems;
    }

    public int hashCode() {
        return (((((this.groupName.hashCode() * 31) + this.groupUrl.hashCode()) * 31) + this.groupInfo.hashCode()) * 31) + this.taskItems.hashCode();
    }

    public String toString() {
        return "MemberTaskGroup(groupName=" + this.groupName + ", groupUrl=" + this.groupUrl + ", groupInfo=" + this.groupInfo + ", taskItems=" + this.taskItems + ")";
    }
}
