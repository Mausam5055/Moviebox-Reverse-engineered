package com.transsion.usercenter.profile.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0019\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001BO\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000fJ\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000fJ\u0011\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006HÆ\u0003J\u0011\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006HÆ\u0003J\u0010\u0010\u001c\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u0015J\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000fJb\u0010\u001e\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00062\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00062\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u001fJ\u0013\u0010 \u001a\u00020\n2\b\u0010!\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\"\u001a\u00020\u0003HÖ\u0001J\t\u0010#\u001a\u00020$HÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u0011\u0010\u000fR\u001e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u001e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0013R\u001a\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\t\u0010\u0015R\u001a\u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u0017\u0010\u000f¨\u0006%"}, d2 = {"Lcom/transsion/usercenter/profile/bean/BffSubscribeInfo;", "", "subscribeCount", "", "followerCount", "subscribeItems", "", "Lcom/transsion/usercenter/profile/bean/BffSubscribeItem;", "followerItems", "isSubscribed", "", "publishCount", "<init>", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;)V", "getSubscribeCount", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getFollowerCount", "getSubscribeItems", "()Ljava/util/List;", "getFollowerItems", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getPublishCount", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;)Lcom/transsion/usercenter/profile/bean/BffSubscribeInfo;", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "toString", "", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class BffSubscribeInfo {

    @SerializedName("followerCount")
    private final Integer followerCount;

    @SerializedName("followerItems")
    private final List<BffSubscribeItem> followerItems;

    @SerializedName("isSubscribed")
    private final Boolean isSubscribed;

    @SerializedName("publishCount")
    private final Integer publishCount;

    @SerializedName("subscribeCount")
    private final Integer subscribeCount;

    @SerializedName("subscribeItems")
    private final List<BffSubscribeItem> subscribeItems;

    public BffSubscribeInfo(Integer num, Integer num2, List<BffSubscribeItem> list, List<BffSubscribeItem> list2, Boolean bool, Integer num3) {
        this.subscribeCount = num;
        this.followerCount = num2;
        this.subscribeItems = list;
        this.followerItems = list2;
        this.isSubscribed = bool;
        this.publishCount = num3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ BffSubscribeInfo copy$default(BffSubscribeInfo bffSubscribeInfo, Integer num, Integer num2, List list, List list2, Boolean bool, Integer num3, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            num = bffSubscribeInfo.subscribeCount;
        }
        if ((i11 & 2) != 0) {
            num2 = bffSubscribeInfo.followerCount;
        }
        Integer num4 = num2;
        if ((i11 & 4) != 0) {
            list = bffSubscribeInfo.subscribeItems;
        }
        List list3 = list;
        if ((i11 & 8) != 0) {
            list2 = bffSubscribeInfo.followerItems;
        }
        List list4 = list2;
        if ((i11 & 16) != 0) {
            bool = bffSubscribeInfo.isSubscribed;
        }
        Boolean bool2 = bool;
        if ((i11 & 32) != 0) {
            num3 = bffSubscribeInfo.publishCount;
        }
        return bffSubscribeInfo.copy(num, num4, list3, list4, bool2, num3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Integer getSubscribeCount() {
        return this.subscribeCount;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Integer getFollowerCount() {
        return this.followerCount;
    }

    public final List<BffSubscribeItem> component3() {
        return this.subscribeItems;
    }

    public final List<BffSubscribeItem> component4() {
        return this.followerItems;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Boolean getIsSubscribed() {
        return this.isSubscribed;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final Integer getPublishCount() {
        return this.publishCount;
    }

    public final BffSubscribeInfo copy(Integer subscribeCount, Integer followerCount, List<BffSubscribeItem> subscribeItems, List<BffSubscribeItem> followerItems, Boolean isSubscribed, Integer publishCount) {
        return new BffSubscribeInfo(subscribeCount, followerCount, subscribeItems, followerItems, isSubscribed, publishCount);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof BffSubscribeInfo)) {
            return false;
        }
        BffSubscribeInfo bffSubscribeInfo = (BffSubscribeInfo) other;
        return Intrinsics.c(this.subscribeCount, bffSubscribeInfo.subscribeCount) && Intrinsics.c(this.followerCount, bffSubscribeInfo.followerCount) && Intrinsics.c(this.subscribeItems, bffSubscribeInfo.subscribeItems) && Intrinsics.c(this.followerItems, bffSubscribeInfo.followerItems) && Intrinsics.c(this.isSubscribed, bffSubscribeInfo.isSubscribed) && Intrinsics.c(this.publishCount, bffSubscribeInfo.publishCount);
    }

    public final Integer getFollowerCount() {
        return this.followerCount;
    }

    public final List<BffSubscribeItem> getFollowerItems() {
        return this.followerItems;
    }

    public final Integer getPublishCount() {
        return this.publishCount;
    }

    public final Integer getSubscribeCount() {
        return this.subscribeCount;
    }

    public final List<BffSubscribeItem> getSubscribeItems() {
        return this.subscribeItems;
    }

    public int hashCode() {
        Integer num = this.subscribeCount;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        Integer num2 = this.followerCount;
        int iHashCode2 = (iHashCode + (num2 == null ? 0 : num2.hashCode())) * 31;
        List<BffSubscribeItem> list = this.subscribeItems;
        int iHashCode3 = (iHashCode2 + (list == null ? 0 : list.hashCode())) * 31;
        List<BffSubscribeItem> list2 = this.followerItems;
        int iHashCode4 = (iHashCode3 + (list2 == null ? 0 : list2.hashCode())) * 31;
        Boolean bool = this.isSubscribed;
        int iHashCode5 = (iHashCode4 + (bool == null ? 0 : bool.hashCode())) * 31;
        Integer num3 = this.publishCount;
        return iHashCode5 + (num3 != null ? num3.hashCode() : 0);
    }

    public final Boolean isSubscribed() {
        return this.isSubscribed;
    }

    public String toString() {
        return "BffSubscribeInfo(subscribeCount=" + this.subscribeCount + ", followerCount=" + this.followerCount + ", subscribeItems=" + this.subscribeItems + ", followerItems=" + this.followerItems + ", isSubscribed=" + this.isSubscribed + ", publishCount=" + this.publishCount + ")";
    }
}
