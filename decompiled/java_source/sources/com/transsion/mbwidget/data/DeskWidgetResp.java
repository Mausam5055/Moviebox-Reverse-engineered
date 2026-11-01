package com.transsion.mbwidget.data;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.moviedetailapi.bean.Subject;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B=\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u000f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u000f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\bHÆ\u0003JE\u0010\u0019\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bHÆ\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dHÖ\u0003J\t\u0010\u001e\u001a\u00020\u001fHÖ\u0001J\t\u0010 \u001a\u00020\bHÖ\u0001R \u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR \u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\f\"\u0004\b\u0010\u0010\u000eR \u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\f\"\u0004\b\u0012\u0010\u000eR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006!"}, d2 = {"Lcom/transsion/mbwidget/data/DeskWidgetResp;", "Ljava/io/Serializable;", "latestList", "", "Lcom/transsion/moviedetailapi/bean/Subject;", "hotList", "interestList", "searchBarText", "", "<init>", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V", "getLatestList", "()Ljava/util/List;", "setLatestList", "(Ljava/util/List;)V", "getHotList", "setHotList", "getInterestList", "setInterestList", "getSearchBarText", "()Ljava/lang/String;", "component1", "component2", "component3", "component4", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "DeskWidget_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class DeskWidgetResp implements Serializable {
    private List<? extends Subject> hotList;
    private List<? extends Subject> interestList;
    private List<? extends Subject> latestList;
    private final String searchBarText;

    public DeskWidgetResp(List<? extends Subject> latestList, List<? extends Subject> hotList, List<? extends Subject> interestList, String str) {
        Intrinsics.h(latestList, "latestList");
        Intrinsics.h(hotList, "hotList");
        Intrinsics.h(interestList, "interestList");
        this.latestList = latestList;
        this.hotList = hotList;
        this.interestList = interestList;
        this.searchBarText = str;
    }

    public /* synthetic */ DeskWidgetResp(List list, List list2, List list3, String str, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, list2, list3, (i11 & 8) != 0 ? null : str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DeskWidgetResp copy$default(DeskWidgetResp deskWidgetResp, List list, List list2, List list3, String str, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = deskWidgetResp.latestList;
        }
        if ((i11 & 2) != 0) {
            list2 = deskWidgetResp.hotList;
        }
        if ((i11 & 4) != 0) {
            list3 = deskWidgetResp.interestList;
        }
        if ((i11 & 8) != 0) {
            str = deskWidgetResp.searchBarText;
        }
        return deskWidgetResp.copy(list, list2, list3, str);
    }

    public final List<Subject> component1() {
        return this.latestList;
    }

    public final List<Subject> component2() {
        return this.hotList;
    }

    public final List<Subject> component3() {
        return this.interestList;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getSearchBarText() {
        return this.searchBarText;
    }

    public final DeskWidgetResp copy(List<? extends Subject> latestList, List<? extends Subject> hotList, List<? extends Subject> interestList, String searchBarText) {
        Intrinsics.h(latestList, "latestList");
        Intrinsics.h(hotList, "hotList");
        Intrinsics.h(interestList, "interestList");
        return new DeskWidgetResp(latestList, hotList, interestList, searchBarText);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DeskWidgetResp)) {
            return false;
        }
        DeskWidgetResp deskWidgetResp = (DeskWidgetResp) other;
        return Intrinsics.c(this.latestList, deskWidgetResp.latestList) && Intrinsics.c(this.hotList, deskWidgetResp.hotList) && Intrinsics.c(this.interestList, deskWidgetResp.interestList) && Intrinsics.c(this.searchBarText, deskWidgetResp.searchBarText);
    }

    public final List<Subject> getHotList() {
        return this.hotList;
    }

    public final List<Subject> getInterestList() {
        return this.interestList;
    }

    public final List<Subject> getLatestList() {
        return this.latestList;
    }

    public final String getSearchBarText() {
        return this.searchBarText;
    }

    public int hashCode() {
        int iHashCode = ((((this.latestList.hashCode() * 31) + this.hotList.hashCode()) * 31) + this.interestList.hashCode()) * 31;
        String str = this.searchBarText;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final void setHotList(List<? extends Subject> list) {
        Intrinsics.h(list, "<set-?>");
        this.hotList = list;
    }

    public final void setInterestList(List<? extends Subject> list) {
        Intrinsics.h(list, "<set-?>");
        this.interestList = list;
    }

    public final void setLatestList(List<? extends Subject> list) {
        Intrinsics.h(list, "<set-?>");
        this.latestList = list;
    }

    public String toString() {
        return "DeskWidgetResp(latestList=" + this.latestList + ", hotList=" + this.hotList + ", interestList=" + this.interestList + ", searchBarText=" + this.searchBarText + ")";
    }
}
