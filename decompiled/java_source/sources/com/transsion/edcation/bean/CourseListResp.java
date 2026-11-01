package com.transsion.edcation.bean;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.moviedetailapi.bean.Pager;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0006HÆ\u0003J%\u0010\u0011\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001R \u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u001a"}, d2 = {"Lcom/transsion/edcation/bean/CourseListResp;", "Ljava/io/Serializable;", "items", "", "Lcom/transsion/edcation/bean/CourseBean;", "pager", "Lcom/transsion/moviedetailapi/bean/Pager;", "<init>", "(Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Pager;)V", "getItems", "()Ljava/util/List;", "setItems", "(Ljava/util/List;)V", "getPager", "()Lcom/transsion/moviedetailapi/bean/Pager;", "component1", "component2", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "", "Education_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class CourseListResp implements Serializable {
    private List<CourseBean> items;
    private final Pager pager;

    public CourseListResp(List<CourseBean> items, Pager pager) {
        Intrinsics.h(items, "items");
        this.items = items;
        this.pager = pager;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CourseListResp copy$default(CourseListResp courseListResp, List list, Pager pager, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = courseListResp.items;
        }
        if ((i11 & 2) != 0) {
            pager = courseListResp.pager;
        }
        return courseListResp.copy(list, pager);
    }

    public final List<CourseBean> component1() {
        return this.items;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Pager getPager() {
        return this.pager;
    }

    public final CourseListResp copy(List<CourseBean> items, Pager pager) {
        Intrinsics.h(items, "items");
        return new CourseListResp(items, pager);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CourseListResp)) {
            return false;
        }
        CourseListResp courseListResp = (CourseListResp) other;
        return Intrinsics.c(this.items, courseListResp.items) && Intrinsics.c(this.pager, courseListResp.pager);
    }

    public final List<CourseBean> getItems() {
        return this.items;
    }

    public final Pager getPager() {
        return this.pager;
    }

    public int hashCode() {
        int iHashCode = this.items.hashCode() * 31;
        Pager pager = this.pager;
        return iHashCode + (pager == null ? 0 : pager.hashCode());
    }

    public final void setItems(List<CourseBean> list) {
        Intrinsics.h(list, "<set-?>");
        this.items = list;
    }

    public String toString() {
        return "CourseListResp(items=" + this.items + ", pager=" + this.pager + ")";
    }
}
