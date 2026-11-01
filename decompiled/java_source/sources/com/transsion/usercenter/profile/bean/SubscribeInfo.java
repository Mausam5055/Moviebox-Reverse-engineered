package com.transsion.usercenter.profile.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\bJ\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\bJ&\u0010\u0010\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u0011J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u000b\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u000b\u001a\u0004\b\f\u0010\b\"\u0004\b\r\u0010\n¨\u0006\u0019"}, d2 = {"Lcom/transsion/usercenter/profile/bean/SubscribeInfo;", "Ljava/io/Serializable;", "subscribeCount", "", "followerCount", "<init>", "(Ljava/lang/Integer;Ljava/lang/Integer;)V", "getSubscribeCount", "()Ljava/lang/Integer;", "setSubscribeCount", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getFollowerCount", "setFollowerCount", "component1", "component2", "copy", "(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/transsion/usercenter/profile/bean/SubscribeInfo;", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class SubscribeInfo implements Serializable {
    private Integer followerCount;
    private Integer subscribeCount;

    /* JADX WARN: Multi-variable type inference failed */
    public SubscribeInfo() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public SubscribeInfo(Integer num, Integer num2) {
        this.subscribeCount = num;
        this.followerCount = num2;
    }

    public /* synthetic */ SubscribeInfo(Integer num, Integer num2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 0 : num, (i11 & 2) != 0 ? 0 : num2);
    }

    public static /* synthetic */ SubscribeInfo copy$default(SubscribeInfo subscribeInfo, Integer num, Integer num2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            num = subscribeInfo.subscribeCount;
        }
        if ((i11 & 2) != 0) {
            num2 = subscribeInfo.followerCount;
        }
        return subscribeInfo.copy(num, num2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Integer getSubscribeCount() {
        return this.subscribeCount;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Integer getFollowerCount() {
        return this.followerCount;
    }

    public final SubscribeInfo copy(Integer subscribeCount, Integer followerCount) {
        return new SubscribeInfo(subscribeCount, followerCount);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SubscribeInfo)) {
            return false;
        }
        SubscribeInfo subscribeInfo = (SubscribeInfo) other;
        return Intrinsics.c(this.subscribeCount, subscribeInfo.subscribeCount) && Intrinsics.c(this.followerCount, subscribeInfo.followerCount);
    }

    public final Integer getFollowerCount() {
        return this.followerCount;
    }

    public final Integer getSubscribeCount() {
        return this.subscribeCount;
    }

    public int hashCode() {
        Integer num = this.subscribeCount;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        Integer num2 = this.followerCount;
        return iHashCode + (num2 != null ? num2.hashCode() : 0);
    }

    public final void setFollowerCount(Integer num) {
        this.followerCount = num;
    }

    public final void setSubscribeCount(Integer num) {
        this.subscribeCount = num;
    }

    public String toString() {
        return "SubscribeInfo(subscribeCount=" + this.subscribeCount + ", followerCount=" + this.followerCount + ")";
    }
}
