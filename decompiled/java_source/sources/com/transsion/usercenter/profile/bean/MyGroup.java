package com.transsion.usercenter.profile.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.integration.permission.PermissionConfig;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\u0011\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J%\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0006HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\"\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u001a"}, d2 = {"Lcom/transsion/usercenter/profile/bean/MyGroup;", "Ljava/io/Serializable;", "count", "", PermissionConfig.GROUPS, "", "", "<init>", "(ILjava/util/List;)V", "getCount", "()I", "setCount", "(I)V", "getGroups", "()Ljava/util/List;", "setGroups", "(Ljava/util/List;)V", "component1", "component2", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class MyGroup implements Serializable {
    private int count;
    private List<String> groups;

    public MyGroup(int i11, List<String> list) {
        this.count = i11;
        this.groups = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ MyGroup copy$default(MyGroup myGroup, int i11, List list, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i11 = myGroup.count;
        }
        if ((i12 & 2) != 0) {
            list = myGroup.groups;
        }
        return myGroup.copy(i11, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getCount() {
        return this.count;
    }

    public final List<String> component2() {
        return this.groups;
    }

    public final MyGroup copy(int count, List<String> groups) {
        return new MyGroup(count, groups);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MyGroup)) {
            return false;
        }
        MyGroup myGroup = (MyGroup) other;
        return this.count == myGroup.count && Intrinsics.c(this.groups, myGroup.groups);
    }

    public final int getCount() {
        return this.count;
    }

    public final List<String> getGroups() {
        return this.groups;
    }

    public int hashCode() {
        int i11 = this.count * 31;
        List<String> list = this.groups;
        return i11 + (list == null ? 0 : list.hashCode());
    }

    public final void setCount(int i11) {
        this.count = i11;
    }

    public final void setGroups(List<String> list) {
        this.groups = list;
    }

    public String toString() {
        return "MyGroup(count=" + this.count + ", groups=" + this.groups + ")";
    }
}
