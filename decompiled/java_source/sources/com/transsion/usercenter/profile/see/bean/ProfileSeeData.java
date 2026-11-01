package com.transsion.usercenter.profile.see.bean;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.transsion.moviedetailapi.bean.Pager;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J'\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u001e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0018"}, d2 = {"Lcom/transsion/usercenter/profile/see/bean/ProfileSeeData;", "Ljava/io/Serializable;", "pager", "Lcom/transsion/moviedetailapi/bean/Pager;", "items", "", "Lcom/transsion/usercenter/profile/see/bean/ProfileSeeItem;", "<init>", "(Lcom/transsion/moviedetailapi/bean/Pager;Ljava/util/List;)V", "getPager", "()Lcom/transsion/moviedetailapi/bean/Pager;", "getItems", "()Ljava/util/List;", "component1", "component2", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ProfileSeeData implements Serializable {

    @SerializedName("items")
    private final List<ProfileSeeItem> items;

    @SerializedName("pager")
    private final Pager pager;

    public ProfileSeeData(Pager pager, List<ProfileSeeItem> list) {
        this.pager = pager;
        this.items = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ProfileSeeData copy$default(ProfileSeeData profileSeeData, Pager pager, List list, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            pager = profileSeeData.pager;
        }
        if ((i11 & 2) != 0) {
            list = profileSeeData.items;
        }
        return profileSeeData.copy(pager, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Pager getPager() {
        return this.pager;
    }

    public final List<ProfileSeeItem> component2() {
        return this.items;
    }

    public final ProfileSeeData copy(Pager pager, List<ProfileSeeItem> items) {
        return new ProfileSeeData(pager, items);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ProfileSeeData)) {
            return false;
        }
        ProfileSeeData profileSeeData = (ProfileSeeData) other;
        return Intrinsics.c(this.pager, profileSeeData.pager) && Intrinsics.c(this.items, profileSeeData.items);
    }

    public final List<ProfileSeeItem> getItems() {
        return this.items;
    }

    public final Pager getPager() {
        return this.pager;
    }

    public int hashCode() {
        Pager pager = this.pager;
        int iHashCode = (pager == null ? 0 : pager.hashCode()) * 31;
        List<ProfileSeeItem> list = this.items;
        return iHashCode + (list != null ? list.hashCode() : 0);
    }

    public String toString() {
        return "ProfileSeeData(pager=" + this.pager + ", items=" + this.items + ")";
    }
}
