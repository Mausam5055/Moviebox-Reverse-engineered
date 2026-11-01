package com.transsion.moviedetailapi.bean;

import androidx.annotation.Keep;
import com.blankj.utilcode.util.o;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\bHÆ\u0003J?\u0010 \u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bHÆ\u0001J\u0013\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010$HÖ\u0003J\t\u0010%\u001a\u00020&HÖ\u0001J\t\u0010'\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\f\"\u0004\b\u0010\u0010\u000eR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\f\"\u0004\b\u0012\u0010\u000eR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\f\"\u0004\b\u0014\u0010\u000eR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u0011\u0010\u0019\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u001a\u0010\f¨\u0006("}, d2 = {"Lcom/transsion/moviedetailapi/bean/RoomTabItem;", "Ljava/io/Serializable;", "name", "", "tabId", NativeComponentConstants.KEY_COMPONENT_TYPE, "url", "badge", "Lcom/transsion/moviedetailapi/bean/RoomTabBadge;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/RoomTabBadge;)V", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "getTabId", "setTabId", "getType", "setType", "getUrl", "setUrl", "getBadge", "()Lcom/transsion/moviedetailapi/bean/RoomTabBadge;", "setBadge", "(Lcom/transsion/moviedetailapi/bean/RoomTabBadge;)V", "badgeJsonStr", "getBadgeJsonStr", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "MovieDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class RoomTabItem implements Serializable {
    private RoomTabBadge badge;
    private String name;
    private String tabId;
    private String type;
    private String url;

    public RoomTabItem(String name, String tabId, String type, String str, RoomTabBadge roomTabBadge) {
        Intrinsics.h(name, "name");
        Intrinsics.h(tabId, "tabId");
        Intrinsics.h(type, "type");
        this.name = name;
        this.tabId = tabId;
        this.type = type;
        this.url = str;
        this.badge = roomTabBadge;
    }

    public static /* synthetic */ RoomTabItem copy$default(RoomTabItem roomTabItem, String str, String str2, String str3, String str4, RoomTabBadge roomTabBadge, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = roomTabItem.name;
        }
        if ((i11 & 2) != 0) {
            str2 = roomTabItem.tabId;
        }
        String str5 = str2;
        if ((i11 & 4) != 0) {
            str3 = roomTabItem.type;
        }
        String str6 = str3;
        if ((i11 & 8) != 0) {
            str4 = roomTabItem.url;
        }
        String str7 = str4;
        if ((i11 & 16) != 0) {
            roomTabBadge = roomTabItem.badge;
        }
        return roomTabItem.copy(str, str5, str6, str7, roomTabBadge);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getTabId() {
        return this.tabId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getUrl() {
        return this.url;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final RoomTabBadge getBadge() {
        return this.badge;
    }

    public final RoomTabItem copy(String name, String tabId, String type, String url, RoomTabBadge badge) {
        Intrinsics.h(name, "name");
        Intrinsics.h(tabId, "tabId");
        Intrinsics.h(type, "type");
        return new RoomTabItem(name, tabId, type, url, badge);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RoomTabItem)) {
            return false;
        }
        RoomTabItem roomTabItem = (RoomTabItem) other;
        return Intrinsics.c(this.name, roomTabItem.name) && Intrinsics.c(this.tabId, roomTabItem.tabId) && Intrinsics.c(this.type, roomTabItem.type) && Intrinsics.c(this.url, roomTabItem.url) && Intrinsics.c(this.badge, roomTabItem.badge);
    }

    public final RoomTabBadge getBadge() {
        return this.badge;
    }

    public final String getBadgeJsonStr() {
        RoomTabBadge roomTabBadge = this.badge;
        if (roomTabBadge == null) {
            return "null";
        }
        String strJ = o.j(roomTabBadge);
        Intrinsics.g(strJ, "toJson(...)");
        return strJ;
    }

    public final String getName() {
        return this.name;
    }

    public final String getTabId() {
        return this.tabId;
    }

    public final String getType() {
        return this.type;
    }

    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        int iHashCode = ((((this.name.hashCode() * 31) + this.tabId.hashCode()) * 31) + this.type.hashCode()) * 31;
        String str = this.url;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        RoomTabBadge roomTabBadge = this.badge;
        return iHashCode2 + (roomTabBadge != null ? roomTabBadge.hashCode() : 0);
    }

    public final void setBadge(RoomTabBadge roomTabBadge) {
        this.badge = roomTabBadge;
    }

    public final void setName(String str) {
        Intrinsics.h(str, "<set-?>");
        this.name = str;
    }

    public final void setTabId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.tabId = str;
    }

    public final void setType(String str) {
        Intrinsics.h(str, "<set-?>");
        this.type = str;
    }

    public final void setUrl(String str) {
        this.url = str;
    }

    public String toString() {
        return "RoomTabItem(name=" + this.name + ", tabId=" + this.tabId + ", type=" + this.type + ", url=" + this.url + ", badge=" + this.badge + ")";
    }
}
