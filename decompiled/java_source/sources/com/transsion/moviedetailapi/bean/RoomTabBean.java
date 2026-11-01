package com.transsion.moviedetailapi.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B+\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tJ\u0011\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0006HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0006HÆ\u0003J1\u0010\u0017\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006HÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bHÖ\u0003J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\t\u0010\u001e\u001a\u00020\u0006HÖ\u0001R\"\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u000f\"\u0004\b\u0013\u0010\u0011¨\u0006\u001f"}, d2 = {"Lcom/transsion/moviedetailapi/bean/RoomTabBean;", "Ljava/io/Serializable;", "items", "", "Lcom/transsion/moviedetailapi/bean/RoomTabItem;", "defTabId", "", "version", "<init>", "(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V", "getItems", "()Ljava/util/List;", "setItems", "(Ljava/util/List;)V", "getDefTabId", "()Ljava/lang/String;", "setDefTabId", "(Ljava/lang/String;)V", "getVersion", "setVersion", "component1", "component2", "component3", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "MovieDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class RoomTabBean implements Serializable {
    private String defTabId;
    private List<RoomTabItem> items;
    private String version;

    public RoomTabBean(List<RoomTabItem> list, String defTabId, String str) {
        Intrinsics.h(defTabId, "defTabId");
        this.items = list;
        this.defTabId = defTabId;
        this.version = str;
    }

    public /* synthetic */ RoomTabBean(List list, String str, String str2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, (i11 & 2) != 0 ? "" : str, str2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RoomTabBean copy$default(RoomTabBean roomTabBean, List list, String str, String str2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = roomTabBean.items;
        }
        if ((i11 & 2) != 0) {
            str = roomTabBean.defTabId;
        }
        if ((i11 & 4) != 0) {
            str2 = roomTabBean.version;
        }
        return roomTabBean.copy(list, str, str2);
    }

    public final List<RoomTabItem> component1() {
        return this.items;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getDefTabId() {
        return this.defTabId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getVersion() {
        return this.version;
    }

    public final RoomTabBean copy(List<RoomTabItem> items, String defTabId, String version) {
        Intrinsics.h(defTabId, "defTabId");
        return new RoomTabBean(items, defTabId, version);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RoomTabBean)) {
            return false;
        }
        RoomTabBean roomTabBean = (RoomTabBean) other;
        return Intrinsics.c(this.items, roomTabBean.items) && Intrinsics.c(this.defTabId, roomTabBean.defTabId) && Intrinsics.c(this.version, roomTabBean.version);
    }

    public final String getDefTabId() {
        return this.defTabId;
    }

    public final List<RoomTabItem> getItems() {
        return this.items;
    }

    public final String getVersion() {
        return this.version;
    }

    public int hashCode() {
        List<RoomTabItem> list = this.items;
        int iHashCode = (((list == null ? 0 : list.hashCode()) * 31) + this.defTabId.hashCode()) * 31;
        String str = this.version;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public final void setDefTabId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.defTabId = str;
    }

    public final void setItems(List<RoomTabItem> list) {
        this.items = list;
    }

    public final void setVersion(String str) {
        this.version = str;
    }

    public String toString() {
        return "RoomTabBean(items=" + this.items + ", defTabId=" + this.defTabId + ", version=" + this.version + ")";
    }
}
