package com.transsion.usercenter.profile.see.bean;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.moviedetailapi.bean.Pager;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import n6.a;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u0012\u0010\t\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\t\u0010\nJ\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0003¢\u0006\u0004\b\u000b\u0010\fJ,\u0010\r\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u0010\u001a\u00020\u000fHÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0013\u001a\u00020\u0012HÖ\u0001¢\u0006\u0004\b\u0013\u0010\u0014J\u001a\u0010\u0018\u001a\u00020\u00172\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015HÖ\u0003¢\u0006\u0004\b\u0018\u0010\u0019R\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u001a\u001a\u0004\b\u001b\u0010\nR\u001d\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u001c\u001a\u0004\b\u001d\u0010\f¨\u0006\u001e"}, d2 = {"Lcom/transsion/usercenter/profile/see/bean/ProfileSeeMultiItemData;", "Ljava/io/Serializable;", "Lcom/transsion/moviedetailapi/bean/Pager;", "pager", "", "Ln6/a;", "items", "<init>", "(Lcom/transsion/moviedetailapi/bean/Pager;Ljava/util/List;)V", "component1", "()Lcom/transsion/moviedetailapi/bean/Pager;", "component2", "()Ljava/util/List;", "copy", "(Lcom/transsion/moviedetailapi/bean/Pager;Ljava/util/List;)Lcom/transsion/usercenter/profile/see/bean/ProfileSeeMultiItemData;", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "equals", "(Ljava/lang/Object;)Z", "Lcom/transsion/moviedetailapi/bean/Pager;", "getPager", "Ljava/util/List;", "getItems", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ProfileSeeMultiItemData implements Serializable {
    private final List<a> items;
    private final Pager pager;

    /* JADX WARN: Multi-variable type inference failed */
    public ProfileSeeMultiItemData(Pager pager, List<? extends a> items) {
        Intrinsics.h(items, "items");
        this.pager = pager;
        this.items = items;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ProfileSeeMultiItemData copy$default(ProfileSeeMultiItemData profileSeeMultiItemData, Pager pager, List list, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            pager = profileSeeMultiItemData.pager;
        }
        if ((i11 & 2) != 0) {
            list = profileSeeMultiItemData.items;
        }
        return profileSeeMultiItemData.copy(pager, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Pager getPager() {
        return this.pager;
    }

    public final List<a> component2() {
        return this.items;
    }

    public final ProfileSeeMultiItemData copy(Pager pager, List<? extends a> items) {
        Intrinsics.h(items, "items");
        return new ProfileSeeMultiItemData(pager, items);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ProfileSeeMultiItemData)) {
            return false;
        }
        ProfileSeeMultiItemData profileSeeMultiItemData = (ProfileSeeMultiItemData) other;
        return Intrinsics.c(this.pager, profileSeeMultiItemData.pager) && Intrinsics.c(this.items, profileSeeMultiItemData.items);
    }

    public final List<a> getItems() {
        return this.items;
    }

    public final Pager getPager() {
        return this.pager;
    }

    public int hashCode() {
        Pager pager = this.pager;
        return ((pager == null ? 0 : pager.hashCode()) * 31) + this.items.hashCode();
    }

    public String toString() {
        return "ProfileSeeMultiItemData(pager=" + this.pager + ", items=" + this.items + ")";
    }
}
