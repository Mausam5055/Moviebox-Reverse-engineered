package com.transsion.search.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B+\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tJ\u0011\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0006HÆ\u0003J3\u0010\u0017\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006HÆ\u0001J\u0006\u0010\u0018\u001a\u00020\u0019J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dHÖ\u0003J\t\u0010\u001e\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001f\u001a\u00020\u0006HÖ\u0001J\u0016\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u0019R\"\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u000f\"\u0004\b\u0013\u0010\u0011¨\u0006%"}, d2 = {"Lcom/transsion/search/bean/SearchSuggestEntity;", "Landroid/os/Parcelable;", "items", "", "Lcom/transsion/search/bean/SuggestEntity;", "keyword", "", "ops", "<init>", "(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V", "getItems", "()Ljava/util/List;", "setItems", "(Ljava/util/List;)V", "getKeyword", "()Ljava/lang/String;", "setKeyword", "(Ljava/lang/String;)V", "getOps", "setOps", "component1", "component2", "component3", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class SearchSuggestEntity implements Parcelable {
    public static final Parcelable.Creator<SearchSuggestEntity> CREATOR = new a();
    private List<SuggestEntity> items;
    private String keyword;
    private String ops;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SearchSuggestEntity createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            Intrinsics.h(parcel, "parcel");
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i11 = parcel.readInt();
                ArrayList arrayList2 = new ArrayList(i11);
                for (int i12 = 0; i12 != i11; i12++) {
                    arrayList2.add(SuggestEntity.CREATOR.createFromParcel(parcel));
                }
                arrayList = arrayList2;
            }
            return new SearchSuggestEntity(arrayList, parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final SearchSuggestEntity[] newArray(int i11) {
            return new SearchSuggestEntity[i11];
        }
    }

    public SearchSuggestEntity(List<SuggestEntity> list, String str, String str2) {
        this.items = list;
        this.keyword = str;
        this.ops = str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SearchSuggestEntity copy$default(SearchSuggestEntity searchSuggestEntity, List list, String str, String str2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = searchSuggestEntity.items;
        }
        if ((i11 & 2) != 0) {
            str = searchSuggestEntity.keyword;
        }
        if ((i11 & 4) != 0) {
            str2 = searchSuggestEntity.ops;
        }
        return searchSuggestEntity.copy(list, str, str2);
    }

    public final List<SuggestEntity> component1() {
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

    public final SearchSuggestEntity copy(List<SuggestEntity> items, String keyword, String ops) {
        return new SearchSuggestEntity(items, keyword, ops);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SearchSuggestEntity)) {
            return false;
        }
        SearchSuggestEntity searchSuggestEntity = (SearchSuggestEntity) other;
        return Intrinsics.c(this.items, searchSuggestEntity.items) && Intrinsics.c(this.keyword, searchSuggestEntity.keyword) && Intrinsics.c(this.ops, searchSuggestEntity.ops);
    }

    public final List<SuggestEntity> getItems() {
        return this.items;
    }

    public final String getKeyword() {
        return this.keyword;
    }

    public final String getOps() {
        return this.ops;
    }

    public int hashCode() {
        List<SuggestEntity> list = this.items;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        String str = this.keyword;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.ops;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public final void setItems(List<SuggestEntity> list) {
        this.items = list;
    }

    public final void setKeyword(String str) {
        this.keyword = str;
    }

    public final void setOps(String str) {
        this.ops = str;
    }

    public String toString() {
        return "SearchSuggestEntity(items=" + this.items + ", keyword=" + this.keyword + ", ops=" + this.ops + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        List<SuggestEntity> list = this.items;
        if (list == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list.size());
            Iterator<SuggestEntity> it = list.iterator();
            while (it.hasNext()) {
                it.next().writeToParcel(dest, flags);
            }
        }
        dest.writeString(this.keyword);
        dest.writeString(this.ops);
    }
}
