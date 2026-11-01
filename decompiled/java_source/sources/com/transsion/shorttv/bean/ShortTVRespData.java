package com.transsion.shorttv.bean;

import androidx.annotation.Keep;
import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0014\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B/\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\u0011\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\t\u0010\u0018\u001a\u00020\bHÆ\u0003J1\u0010\u0019\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0013\u0010\u001a\u001a\u00020\b2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\t\u0010\u001e\u001a\u00020\u001fHÖ\u0001R\"\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006 "}, d2 = {"Lcom/transsion/shorttv/bean/ShortTVRespData;", "", "items", "", "Lcom/transsion/shorttv/bean/Subject;", "pager", "Lcom/transsion/shorttv/bean/Pager;", "isRefresh", "", "<init>", "(Ljava/util/List;Lcom/transsion/shorttv/bean/Pager;Z)V", "getItems", "()Ljava/util/List;", "setItems", "(Ljava/util/List;)V", "getPager", "()Lcom/transsion/shorttv/bean/Pager;", "setPager", "(Lcom/transsion/shorttv/bean/Pager;)V", "()Z", "setRefresh", "(Z)V", "component1", "component2", "component3", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ShortTVRespData {
    private transient boolean isRefresh;
    private List<Subject> items;
    private Pager pager;

    public ShortTVRespData() {
        this(null, null, false, 7, null);
    }

    public ShortTVRespData(List<Subject> list, Pager pager, boolean z10) {
        this.items = list;
        this.pager = pager;
        this.isRefresh = z10;
    }

    public /* synthetic */ ShortTVRespData(List list, Pager pager, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : list, (i11 & 2) != 0 ? null : pager, (i11 & 4) != 0 ? false : z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ShortTVRespData copy$default(ShortTVRespData shortTVRespData, List list, Pager pager, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = shortTVRespData.items;
        }
        if ((i11 & 2) != 0) {
            pager = shortTVRespData.pager;
        }
        if ((i11 & 4) != 0) {
            z10 = shortTVRespData.isRefresh;
        }
        return shortTVRespData.copy(list, pager, z10);
    }

    public final List<Subject> component1() {
        return this.items;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Pager getPager() {
        return this.pager;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getIsRefresh() {
        return this.isRefresh;
    }

    public final ShortTVRespData copy(List<Subject> items, Pager pager, boolean isRefresh) {
        return new ShortTVRespData(items, pager, isRefresh);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ShortTVRespData)) {
            return false;
        }
        ShortTVRespData shortTVRespData = (ShortTVRespData) other;
        return Intrinsics.c(this.items, shortTVRespData.items) && Intrinsics.c(this.pager, shortTVRespData.pager) && this.isRefresh == shortTVRespData.isRefresh;
    }

    public final List<Subject> getItems() {
        return this.items;
    }

    public final Pager getPager() {
        return this.pager;
    }

    public int hashCode() {
        List<Subject> list = this.items;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        Pager pager = this.pager;
        return ((iHashCode + (pager != null ? pager.hashCode() : 0)) * 31) + e.a(this.isRefresh);
    }

    public final boolean isRefresh() {
        return this.isRefresh;
    }

    public final void setItems(List<Subject> list) {
        this.items = list;
    }

    public final void setPager(Pager pager) {
        this.pager = pager;
    }

    public final void setRefresh(boolean z10) {
        this.isRefresh = z10;
    }

    public String toString() {
        return "ShortTVRespData(items=" + this.items + ", pager=" + this.pager + ", isRefresh=" + this.isRefresh + ")";
    }
}
