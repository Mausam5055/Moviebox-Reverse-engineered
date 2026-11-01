package com.transsion.usercenter.profile.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/transsion/usercenter/profile/bean/GroupAvatar;", "Ljava/io/Serializable;", "count", "", "avatar", "", "<init>", "(ILjava/lang/String;)V", "getCount", "()I", "getAvatar", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class GroupAvatar implements Serializable {
    private final String avatar;
    private final int count;

    public GroupAvatar(int i11, String avatar) {
        Intrinsics.h(avatar, "avatar");
        this.count = i11;
        this.avatar = avatar;
    }

    public static /* synthetic */ GroupAvatar copy$default(GroupAvatar groupAvatar, int i11, String str, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i11 = groupAvatar.count;
        }
        if ((i12 & 2) != 0) {
            str = groupAvatar.avatar;
        }
        return groupAvatar.copy(i11, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getCount() {
        return this.count;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getAvatar() {
        return this.avatar;
    }

    public final GroupAvatar copy(int count, String avatar) {
        Intrinsics.h(avatar, "avatar");
        return new GroupAvatar(count, avatar);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof GroupAvatar)) {
            return false;
        }
        GroupAvatar groupAvatar = (GroupAvatar) other;
        return this.count == groupAvatar.count && Intrinsics.c(this.avatar, groupAvatar.avatar);
    }

    public final String getAvatar() {
        return this.avatar;
    }

    public final int getCount() {
        return this.count;
    }

    public int hashCode() {
        return (this.count * 31) + this.avatar.hashCode();
    }

    public String toString() {
        return "GroupAvatar(count=" + this.count + ", avatar=" + this.avatar + ")";
    }
}
