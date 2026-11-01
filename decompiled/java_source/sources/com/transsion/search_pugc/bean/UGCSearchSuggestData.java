package com.transsion.search_pugc.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B+\u0012\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0006HÆ\u0003J-\u0010\u0012\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u0006HÆ\u0001J\u0006\u0010\u0013\u001a\u00020\u0014J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018HÖ\u0003J\t\u0010\u0019\u001a\u00020\u0014HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0006HÖ\u0001J\u0016\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0014R\u001c\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0016\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\r¨\u0006 "}, d2 = {"Lcom/transsion/search_pugc/bean/UGCSearchSuggestData;", "Landroid/os/Parcelable;", "items", "", "Lcom/transsion/search_pugc/bean/SearchSuggestItem;", "keyword", "", "ops", "<init>", "(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V", "getItems", "()Ljava/util/List;", "getKeyword", "()Ljava/lang/String;", "getOps", "component1", "component2", "component3", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class UGCSearchSuggestData implements Parcelable {
    public static final Parcelable.Creator<UGCSearchSuggestData> CREATOR = new a();

    @SerializedName("items")
    private final List<SearchSuggestItem> items;

    @SerializedName("keyword")
    private final String keyword;

    @SerializedName("ops")
    private final String ops;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UGCSearchSuggestData createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            int i11 = parcel.readInt();
            ArrayList arrayList = new ArrayList(i11);
            for (int i12 = 0; i12 != i11; i12++) {
                arrayList.add(SearchSuggestItem.CREATOR.createFromParcel(parcel));
            }
            return new UGCSearchSuggestData(arrayList, parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final UGCSearchSuggestData[] newArray(int i11) {
            return new UGCSearchSuggestData[i11];
        }
    }

    public UGCSearchSuggestData() {
        this(null, null, null, 7, null);
    }

    public UGCSearchSuggestData(List<SearchSuggestItem> items, String keyword, String ops) {
        Intrinsics.h(items, "items");
        Intrinsics.h(keyword, "keyword");
        Intrinsics.h(ops, "ops");
        this.items = items;
        this.keyword = keyword;
        this.ops = ops;
    }

    public /* synthetic */ UGCSearchSuggestData(List list, String str, String str2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? CollectionsKt.l() : list, (i11 & 2) != 0 ? "" : str, (i11 & 4) != 0 ? "" : str2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ UGCSearchSuggestData copy$default(UGCSearchSuggestData uGCSearchSuggestData, List list, String str, String str2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = uGCSearchSuggestData.items;
        }
        if ((i11 & 2) != 0) {
            str = uGCSearchSuggestData.keyword;
        }
        if ((i11 & 4) != 0) {
            str2 = uGCSearchSuggestData.ops;
        }
        return uGCSearchSuggestData.copy(list, str, str2);
    }

    public final List<SearchSuggestItem> component1() {
        return this.items;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getKeyword() {
        return this.keyword;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getOps() {
        return this.ops;
    }

    public final UGCSearchSuggestData copy(List<SearchSuggestItem> items, String keyword, String ops) {
        Intrinsics.h(items, "items");
        Intrinsics.h(keyword, "keyword");
        Intrinsics.h(ops, "ops");
        return new UGCSearchSuggestData(items, keyword, ops);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UGCSearchSuggestData)) {
            return false;
        }
        UGCSearchSuggestData uGCSearchSuggestData = (UGCSearchSuggestData) other;
        return Intrinsics.c(this.items, uGCSearchSuggestData.items) && Intrinsics.c(this.keyword, uGCSearchSuggestData.keyword) && Intrinsics.c(this.ops, uGCSearchSuggestData.ops);
    }

    public final List<SearchSuggestItem> getItems() {
        return this.items;
    }

    public final String getKeyword() {
        return this.keyword;
    }

    public final String getOps() {
        return this.ops;
    }

    public int hashCode() {
        return (((this.items.hashCode() * 31) + this.keyword.hashCode()) * 31) + this.ops.hashCode();
    }

    public String toString() {
        return "UGCSearchSuggestData(items=" + this.items + ", keyword=" + this.keyword + ", ops=" + this.ops + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        List<SearchSuggestItem> list = this.items;
        dest.writeInt(list.size());
        Iterator<SearchSuggestItem> it = list.iterator();
        while (it.hasNext()) {
            it.next().writeToParcel(dest, flags);
        }
        dest.writeString(this.keyword);
        dest.writeString(this.ops);
    }
}
