package com.transsion.home.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.integration.permission.PermissionConfig;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.RoomItem;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BC\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u000b\u0010\fJ\u0011\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0011\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\nHÆ\u0003JE\u0010\u001f\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\nHÆ\u0001J\u0013\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010#\u001a\u00020$HÖ\u0001J\t\u0010%\u001a\u00020\u0006HÖ\u0001R\"\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\"\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u000e\"\u0004\b\u0016\u0010\u0010R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006&"}, d2 = {"Lcom/transsion/home/bean/RoomEntranceResponse;", "", PermissionConfig.GROUPS, "", "Lcom/transsion/moviedetailapi/bean/RoomItem;", CampaignEx.JSON_KEY_TITLE, "", "posts", "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", "pager", "Lcom/transsion/moviedetailapi/bean/Pager;", "<init>", "(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Pager;)V", "getGroups", "()Ljava/util/List;", "setGroups", "(Ljava/util/List;)V", "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "getPosts", "setPosts", "getPager", "()Lcom/transsion/moviedetailapi/bean/Pager;", "setPager", "(Lcom/transsion/moviedetailapi/bean/Pager;)V", "component1", "component2", "component3", "component4", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class RoomEntranceResponse {
    public static final int $stable = 8;
    private List<RoomItem> groups;
    private Pager pager;
    private List<PostSubjectItem> posts;
    private String title;

    public RoomEntranceResponse() {
        this(null, null, null, null, 15, null);
    }

    public RoomEntranceResponse(List<RoomItem> list, String str, List<PostSubjectItem> list2, Pager pager) {
        this.groups = list;
        this.title = str;
        this.posts = list2;
        this.pager = pager;
    }

    public /* synthetic */ RoomEntranceResponse(List list, String str, List list2, Pager pager, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : list, (i11 & 2) != 0 ? null : str, (i11 & 4) != 0 ? null : list2, (i11 & 8) != 0 ? null : pager);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RoomEntranceResponse copy$default(RoomEntranceResponse roomEntranceResponse, List list, String str, List list2, Pager pager, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = roomEntranceResponse.groups;
        }
        if ((i11 & 2) != 0) {
            str = roomEntranceResponse.title;
        }
        if ((i11 & 4) != 0) {
            list2 = roomEntranceResponse.posts;
        }
        if ((i11 & 8) != 0) {
            pager = roomEntranceResponse.pager;
        }
        return roomEntranceResponse.copy(list, str, list2, pager);
    }

    public final List<RoomItem> component1() {
        return this.groups;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    public final List<PostSubjectItem> component3() {
        return this.posts;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Pager getPager() {
        return this.pager;
    }

    public final RoomEntranceResponse copy(List<RoomItem> groups, String title, List<PostSubjectItem> posts, Pager pager) {
        return new RoomEntranceResponse(groups, title, posts, pager);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RoomEntranceResponse)) {
            return false;
        }
        RoomEntranceResponse roomEntranceResponse = (RoomEntranceResponse) other;
        return Intrinsics.c(this.groups, roomEntranceResponse.groups) && Intrinsics.c(this.title, roomEntranceResponse.title) && Intrinsics.c(this.posts, roomEntranceResponse.posts) && Intrinsics.c(this.pager, roomEntranceResponse.pager);
    }

    public final List<RoomItem> getGroups() {
        return this.groups;
    }

    public final Pager getPager() {
        return this.pager;
    }

    public final List<PostSubjectItem> getPosts() {
        return this.posts;
    }

    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        List<RoomItem> list = this.groups;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        String str = this.title;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        List<PostSubjectItem> list2 = this.posts;
        int iHashCode3 = (iHashCode2 + (list2 == null ? 0 : list2.hashCode())) * 31;
        Pager pager = this.pager;
        return iHashCode3 + (pager != null ? pager.hashCode() : 0);
    }

    public final void setGroups(List<RoomItem> list) {
        this.groups = list;
    }

    public final void setPager(Pager pager) {
        this.pager = pager;
    }

    public final void setPosts(List<PostSubjectItem> list) {
        this.posts = list;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public String toString() {
        return "RoomEntranceResponse(groups=" + this.groups + ", title=" + this.title + ", posts=" + this.posts + ", pager=" + this.pager + ")";
    }
}
