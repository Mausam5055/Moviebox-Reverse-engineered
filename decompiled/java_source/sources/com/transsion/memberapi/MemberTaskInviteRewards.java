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
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\u0011\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J%\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0019\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0017"}, d2 = {"Lcom/transsion/memberapi/MemberTaskInviteRewards;", "Ljava/io/Serializable;", "lastId", "", "list", "", "Lcom/transsion/memberapi/MemberTaskItemInvite;", "<init>", "(ILjava/util/List;)V", "getLastId", "()I", "getList", "()Ljava/util/List;", "component1", "component2", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "MemberApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class MemberTaskInviteRewards implements Serializable {
    private final int lastId;
    private final List<MemberTaskItemInvite> list;

    /* JADX WARN: Multi-variable type inference failed */
    public MemberTaskInviteRewards() {
        this(0, null, 3, 0 == true ? 1 : 0);
    }

    public MemberTaskInviteRewards(int i11, List<MemberTaskItemInvite> list) {
        this.lastId = i11;
        this.list = list;
    }

    public /* synthetic */ MemberTaskInviteRewards(int i11, List list, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? -1 : i11, (i12 & 2) != 0 ? null : list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ MemberTaskInviteRewards copy$default(MemberTaskInviteRewards memberTaskInviteRewards, int i11, List list, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i11 = memberTaskInviteRewards.lastId;
        }
        if ((i12 & 2) != 0) {
            list = memberTaskInviteRewards.list;
        }
        return memberTaskInviteRewards.copy(i11, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getLastId() {
        return this.lastId;
    }

    public final List<MemberTaskItemInvite> component2() {
        return this.list;
    }

    public final MemberTaskInviteRewards copy(int lastId, List<MemberTaskItemInvite> list) {
        return new MemberTaskInviteRewards(lastId, list);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MemberTaskInviteRewards)) {
            return false;
        }
        MemberTaskInviteRewards memberTaskInviteRewards = (MemberTaskInviteRewards) other;
        return this.lastId == memberTaskInviteRewards.lastId && Intrinsics.c(this.list, memberTaskInviteRewards.list);
    }

    public final int getLastId() {
        return this.lastId;
    }

    public final List<MemberTaskItemInvite> getList() {
        return this.list;
    }

    public int hashCode() {
        int i11 = this.lastId * 31;
        List<MemberTaskItemInvite> list = this.list;
        return i11 + (list == null ? 0 : list.hashCode());
    }

    public String toString() {
        return "MemberTaskInviteRewards(lastId=" + this.lastId + ", list=" + this.list + ")";
    }
}
