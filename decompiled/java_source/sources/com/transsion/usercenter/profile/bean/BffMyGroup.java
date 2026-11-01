package com.transsion.usercenter.profile.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.integration.permission.PermissionConfig;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B!\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\nJ\u0011\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J,\u0010\u0010\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u0011J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\t\u0010\nR\u001e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0018"}, d2 = {"Lcom/transsion/usercenter/profile/bean/BffMyGroup;", "", "count", "", PermissionConfig.GROUPS, "", "Lcom/transsion/usercenter/profile/bean/BffGroupAvatar;", "<init>", "(Ljava/lang/Integer;Ljava/util/List;)V", "getCount", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getGroups", "()Ljava/util/List;", "component1", "component2", "copy", "(Ljava/lang/Integer;Ljava/util/List;)Lcom/transsion/usercenter/profile/bean/BffMyGroup;", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "toString", "", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class BffMyGroup {

    @SerializedName("count")
    private final Integer count;

    @SerializedName(PermissionConfig.GROUPS)
    private final List<BffGroupAvatar> groups;

    public BffMyGroup(Integer num, List<BffGroupAvatar> list) {
        this.count = num;
        this.groups = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ BffMyGroup copy$default(BffMyGroup bffMyGroup, Integer num, List list, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            num = bffMyGroup.count;
        }
        if ((i11 & 2) != 0) {
            list = bffMyGroup.groups;
        }
        return bffMyGroup.copy(num, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Integer getCount() {
        return this.count;
    }

    public final List<BffGroupAvatar> component2() {
        return this.groups;
    }

    public final BffMyGroup copy(Integer count, List<BffGroupAvatar> groups) {
        return new BffMyGroup(count, groups);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof BffMyGroup)) {
            return false;
        }
        BffMyGroup bffMyGroup = (BffMyGroup) other;
        return Intrinsics.c(this.count, bffMyGroup.count) && Intrinsics.c(this.groups, bffMyGroup.groups);
    }

    public final Integer getCount() {
        return this.count;
    }

    public final List<BffGroupAvatar> getGroups() {
        return this.groups;
    }

    public int hashCode() {
        Integer num = this.count;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        List<BffGroupAvatar> list = this.groups;
        return iHashCode + (list != null ? list.hashCode() : 0);
    }

    public String toString() {
        return "BffMyGroup(count=" + this.count + ", groups=" + this.groups + ")";
    }
}
