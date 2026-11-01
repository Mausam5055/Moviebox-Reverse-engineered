package com.transsion.home.bean;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u000b\u0010\fJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\nHÆ\u0003JC\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\nHÆ\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eHÖ\u0003J\t\u0010\u001f\u001a\u00020 HÖ\u0001J\t\u0010!\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000eR\u001c\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0018\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006\""}, d2 = {"Lcom/transsion/home/bean/Item;", "Ljava/io/Serializable;", "filterType", "", CampaignEx.JSON_KEY_TITLE, "showOut", "filterValsV2", "", "Lcom/transsion/home/bean/FilterVal;", "rangeVals", "Lcom/transsion/home/bean/RangeValue;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/transsion/home/bean/RangeValue;)V", "getFilterType", "()Ljava/lang/String;", "getTitle", "getShowOut", "getFilterValsV2", "()Ljava/util/List;", "getRangeVals", "()Lcom/transsion/home/bean/RangeValue;", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class Item implements Serializable {
    public static final int $stable = 8;

    @SerializedName("filterType")
    private final String filterType;

    @SerializedName("filterValsV2")
    private final List<FilterVal> filterValsV2;

    @SerializedName("rangeVals")
    private final RangeValue rangeVals;

    @SerializedName("showOut")
    private final String showOut;

    @SerializedName(CampaignEx.JSON_KEY_TITLE)
    private final String title;

    public Item(String filterType, String title, String showOut, List<FilterVal> filterValsV2, RangeValue rangeValue) {
        Intrinsics.h(filterType, "filterType");
        Intrinsics.h(title, "title");
        Intrinsics.h(showOut, "showOut");
        Intrinsics.h(filterValsV2, "filterValsV2");
        this.filterType = filterType;
        this.title = title;
        this.showOut = showOut;
        this.filterValsV2 = filterValsV2;
        this.rangeVals = rangeValue;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Item copy$default(Item item, String str, String str2, String str3, List list, RangeValue rangeValue, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = item.filterType;
        }
        if ((i11 & 2) != 0) {
            str2 = item.title;
        }
        String str4 = str2;
        if ((i11 & 4) != 0) {
            str3 = item.showOut;
        }
        String str5 = str3;
        if ((i11 & 8) != 0) {
            list = item.filterValsV2;
        }
        List list2 = list;
        if ((i11 & 16) != 0) {
            rangeValue = item.rangeVals;
        }
        return item.copy(str, str4, str5, list2, rangeValue);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getFilterType() {
        return this.filterType;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getShowOut() {
        return this.showOut;
    }

    public final List<FilterVal> component4() {
        return this.filterValsV2;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final RangeValue getRangeVals() {
        return this.rangeVals;
    }

    public final Item copy(String filterType, String title, String showOut, List<FilterVal> filterValsV2, RangeValue rangeVals) {
        Intrinsics.h(filterType, "filterType");
        Intrinsics.h(title, "title");
        Intrinsics.h(showOut, "showOut");
        Intrinsics.h(filterValsV2, "filterValsV2");
        return new Item(filterType, title, showOut, filterValsV2, rangeVals);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Item)) {
            return false;
        }
        Item item = (Item) other;
        return Intrinsics.c(this.filterType, item.filterType) && Intrinsics.c(this.title, item.title) && Intrinsics.c(this.showOut, item.showOut) && Intrinsics.c(this.filterValsV2, item.filterValsV2) && Intrinsics.c(this.rangeVals, item.rangeVals);
    }

    public final String getFilterType() {
        return this.filterType;
    }

    public final List<FilterVal> getFilterValsV2() {
        return this.filterValsV2;
    }

    public final RangeValue getRangeVals() {
        return this.rangeVals;
    }

    public final String getShowOut() {
        return this.showOut;
    }

    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        int iHashCode = ((((((this.filterType.hashCode() * 31) + this.title.hashCode()) * 31) + this.showOut.hashCode()) * 31) + this.filterValsV2.hashCode()) * 31;
        RangeValue rangeValue = this.rangeVals;
        return iHashCode + (rangeValue == null ? 0 : rangeValue.hashCode());
    }

    public String toString() {
        return "Item(filterType=" + this.filterType + ", title=" + this.title + ", showOut=" + this.showOut + ", filterValsV2=" + this.filterValsV2 + ", rangeVals=" + this.rangeVals + ")";
    }
}
