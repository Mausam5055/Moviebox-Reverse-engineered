package com.transsion.rewardscenterapi;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0011\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u001b\u0010\n\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eHÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001R\u0019\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0013"}, d2 = {"Lcom/transsion/rewardscenterapi/AdTaskInfo;", "Ljava/io/Serializable;", "list", "", "Lcom/transsion/rewardscenterapi/MemberTaskItem;", "<init>", "(Ljava/util/List;)V", "getList", "()Ljava/util/List;", "component1", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "", "RewardsCenterApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class AdTaskInfo implements Serializable {
    private final List<MemberTaskItem> list;

    /* JADX WARN: Multi-variable type inference failed */
    public AdTaskInfo() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public AdTaskInfo(List<MemberTaskItem> list) {
        this.list = list;
    }

    public /* synthetic */ AdTaskInfo(List list, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ AdTaskInfo copy$default(AdTaskInfo adTaskInfo, List list, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = adTaskInfo.list;
        }
        return adTaskInfo.copy(list);
    }

    public final List<MemberTaskItem> component1() {
        return this.list;
    }

    public final AdTaskInfo copy(List<MemberTaskItem> list) {
        return new AdTaskInfo(list);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof AdTaskInfo) && Intrinsics.c(this.list, ((AdTaskInfo) other).list);
    }

    public final List<MemberTaskItem> getList() {
        return this.list;
    }

    public int hashCode() {
        List<MemberTaskItem> list = this.list;
        if (list == null) {
            return 0;
        }
        return list.hashCode();
    }

    public String toString() {
        return "AdTaskInfo(list=" + this.list + ")";
    }
}
