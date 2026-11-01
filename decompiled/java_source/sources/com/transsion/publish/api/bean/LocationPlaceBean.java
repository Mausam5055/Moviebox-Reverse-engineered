package com.transsion.publish.api.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.room.api.bean.LocationPlace;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B!\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u0011\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0006HÆ\u0003J'\u0010\u0013\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001R\"\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u001c"}, d2 = {"Lcom/transsion/publish/api/bean/LocationPlaceBean;", "Ljava/io/Serializable;", "items", "", "Lcom/transsion/room/api/bean/LocationPlace;", "pager", "Lcom/transsion/moviedetailapi/bean/Pager;", "<init>", "(Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Pager;)V", "getItems", "()Ljava/util/List;", "setItems", "(Ljava/util/List;)V", "getPager", "()Lcom/transsion/moviedetailapi/bean/Pager;", "setPager", "(Lcom/transsion/moviedetailapi/bean/Pager;)V", "component1", "component2", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "", "PublishApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class LocationPlaceBean implements Serializable {
    private List<LocationPlace> items;
    private Pager pager;

    public LocationPlaceBean(List<LocationPlace> list, Pager pager) {
        this.items = list;
        this.pager = pager;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ LocationPlaceBean copy$default(LocationPlaceBean locationPlaceBean, List list, Pager pager, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = locationPlaceBean.items;
        }
        if ((i11 & 2) != 0) {
            pager = locationPlaceBean.pager;
        }
        return locationPlaceBean.copy(list, pager);
    }

    public final List<LocationPlace> component1() {
        return this.items;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Pager getPager() {
        return this.pager;
    }

    public final LocationPlaceBean copy(List<LocationPlace> items, Pager pager) {
        return new LocationPlaceBean(items, pager);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LocationPlaceBean)) {
            return false;
        }
        LocationPlaceBean locationPlaceBean = (LocationPlaceBean) other;
        return Intrinsics.c(this.items, locationPlaceBean.items) && Intrinsics.c(this.pager, locationPlaceBean.pager);
    }

    public final List<LocationPlace> getItems() {
        return this.items;
    }

    public final Pager getPager() {
        return this.pager;
    }

    public int hashCode() {
        List<LocationPlace> list = this.items;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        Pager pager = this.pager;
        return iHashCode + (pager != null ? pager.hashCode() : 0);
    }

    public final void setItems(List<LocationPlace> list) {
        this.items = list;
    }

    public final void setPager(Pager pager) {
        this.pager = pager;
    }

    public String toString() {
        return "LocationPlaceBean(items=" + this.items + ", pager=" + this.pager + ")";
    }
}
