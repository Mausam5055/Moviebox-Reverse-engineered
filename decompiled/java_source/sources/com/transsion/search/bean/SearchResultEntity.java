package com.transsion.search.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.search.fragment.result.ResultWrapData;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BQ\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0005¢\u0006\u0004\b\r\u0010\u000eJ\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\u0011\u0010 \u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\bHÆ\u0003J\u0011\u0010\"\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0005HÆ\u0003J\u0011\u0010#\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0005HÆ\u0003JU\u0010$\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00052\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0005HÆ\u0001J\u0006\u0010%\u001a\u00020&J\u0013\u0010'\u001a\u00020(2\b\u0010)\u001a\u0004\u0018\u00010*HÖ\u0003J\t\u0010+\u001a\u00020&HÖ\u0001J\t\u0010,\u001a\u00020\bHÖ\u0001J\u0016\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020&R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R(\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\"\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0014\"\u0004\b\u001c\u0010\u0016R\"\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0014\"\u0004\b\u001e\u0010\u0016¨\u00062"}, d2 = {"Lcom/transsion/search/bean/SearchResultEntity;", "Landroid/os/Parcelable;", "pager", "Lcom/transsion/search/bean/Pager;", "results", "", "Lcom/transsion/search/bean/SearchList;", "tabId", "", "tabs", "Lcom/transsion/search/bean/TabItem;", "convertData", "Lcom/transsion/search/fragment/result/ResultWrapData;", "<init>", "(Lcom/transsion/search/bean/Pager;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V", "getPager", "()Lcom/transsion/search/bean/Pager;", "getResults$annotations", "()V", "getResults", "()Ljava/util/List;", "setResults", "(Ljava/util/List;)V", "getTabId", "()Ljava/lang/String;", "setTabId", "(Ljava/lang/String;)V", "getTabs", "setTabs", "getConvertData", "setConvertData", "component1", "component2", "component3", "component4", "component5", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class SearchResultEntity implements Parcelable {
    public static final Parcelable.Creator<SearchResultEntity> CREATOR = new a();
    private List<ResultWrapData> convertData;
    private final Pager pager;
    private List<SearchList> results;
    private String tabId;
    private List<TabItem> tabs;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SearchResultEntity createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            Intrinsics.h(parcel, "parcel");
            Pager pager = (Pager) parcel.readSerializable();
            String string = parcel.readString();
            ArrayList arrayList2 = null;
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i11 = parcel.readInt();
                arrayList = new ArrayList(i11);
                for (int i12 = 0; i12 != i11; i12++) {
                    arrayList.add(TabItem.CREATOR.createFromParcel(parcel));
                }
            }
            if (parcel.readInt() != 0) {
                int i13 = parcel.readInt();
                arrayList2 = new ArrayList(i13);
                for (int i14 = 0; i14 != i13; i14++) {
                    arrayList2.add(ResultWrapData.CREATOR.createFromParcel(parcel));
                }
            }
            return new SearchResultEntity(pager, null, string, arrayList, arrayList2, 2, null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final SearchResultEntity[] newArray(int i11) {
            return new SearchResultEntity[i11];
        }
    }

    public SearchResultEntity(Pager pager, List<SearchList> list, String str, List<TabItem> list2, List<ResultWrapData> list3) {
        Intrinsics.h(pager, "pager");
        this.pager = pager;
        this.results = list;
        this.tabId = str;
        this.tabs = list2;
        this.convertData = list3;
    }

    public /* synthetic */ SearchResultEntity(Pager pager, List list, String str, List list2, List list3, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(pager, (i11 & 2) != 0 ? null : list, (i11 & 4) != 0 ? null : str, (i11 & 8) != 0 ? null : list2, (i11 & 16) != 0 ? null : list3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SearchResultEntity copy$default(SearchResultEntity searchResultEntity, Pager pager, List list, String str, List list2, List list3, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            pager = searchResultEntity.pager;
        }
        if ((i11 & 2) != 0) {
            list = searchResultEntity.results;
        }
        List list4 = list;
        if ((i11 & 4) != 0) {
            str = searchResultEntity.tabId;
        }
        String str2 = str;
        if ((i11 & 8) != 0) {
            list2 = searchResultEntity.tabs;
        }
        List list5 = list2;
        if ((i11 & 16) != 0) {
            list3 = searchResultEntity.convertData;
        }
        return searchResultEntity.copy(pager, list4, str2, list5, list3);
    }

    public static /* synthetic */ void getResults$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Pager getPager() {
        return this.pager;
    }

    public final List<SearchList> component2() {
        return this.results;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getTabId() {
        return this.tabId;
    }

    public final List<TabItem> component4() {
        return this.tabs;
    }

    public final List<ResultWrapData> component5() {
        return this.convertData;
    }

    public final SearchResultEntity copy(Pager pager, List<SearchList> results, String tabId, List<TabItem> tabs, List<ResultWrapData> convertData) {
        Intrinsics.h(pager, "pager");
        return new SearchResultEntity(pager, results, tabId, tabs, convertData);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SearchResultEntity)) {
            return false;
        }
        SearchResultEntity searchResultEntity = (SearchResultEntity) other;
        return Intrinsics.c(this.pager, searchResultEntity.pager) && Intrinsics.c(this.results, searchResultEntity.results) && Intrinsics.c(this.tabId, searchResultEntity.tabId) && Intrinsics.c(this.tabs, searchResultEntity.tabs) && Intrinsics.c(this.convertData, searchResultEntity.convertData);
    }

    public final List<ResultWrapData> getConvertData() {
        return this.convertData;
    }

    public final Pager getPager() {
        return this.pager;
    }

    public final List<SearchList> getResults() {
        return this.results;
    }

    public final String getTabId() {
        return this.tabId;
    }

    public final List<TabItem> getTabs() {
        return this.tabs;
    }

    public int hashCode() {
        int iHashCode = this.pager.hashCode() * 31;
        List<SearchList> list = this.results;
        int iHashCode2 = (iHashCode + (list == null ? 0 : list.hashCode())) * 31;
        String str = this.tabId;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        List<TabItem> list2 = this.tabs;
        int iHashCode4 = (iHashCode3 + (list2 == null ? 0 : list2.hashCode())) * 31;
        List<ResultWrapData> list3 = this.convertData;
        return iHashCode4 + (list3 != null ? list3.hashCode() : 0);
    }

    public final void setConvertData(List<ResultWrapData> list) {
        this.convertData = list;
    }

    public final void setResults(List<SearchList> list) {
        this.results = list;
    }

    public final void setTabId(String str) {
        this.tabId = str;
    }

    public final void setTabs(List<TabItem> list) {
        this.tabs = list;
    }

    public String toString() {
        return "SearchResultEntity(pager=" + this.pager + ", results=" + this.results + ", tabId=" + this.tabId + ", tabs=" + this.tabs + ", convertData=" + this.convertData + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeSerializable(this.pager);
        dest.writeString(this.tabId);
        List<TabItem> list = this.tabs;
        if (list == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list.size());
            Iterator<TabItem> it = list.iterator();
            while (it.hasNext()) {
                it.next().writeToParcel(dest, flags);
            }
        }
        List<ResultWrapData> list2 = this.convertData;
        if (list2 == null) {
            dest.writeInt(0);
            return;
        }
        dest.writeInt(1);
        dest.writeInt(list2.size());
        Iterator<ResultWrapData> it2 = list2.iterator();
        while (it2.hasNext()) {
            it2.next().writeToParcel(dest, flags);
        }
    }
}
