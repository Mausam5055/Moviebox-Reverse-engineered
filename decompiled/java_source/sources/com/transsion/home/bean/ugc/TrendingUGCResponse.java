package com.transsion.home.bean.ugc;

import android.os.Parcel;
import android.os.Parcelable;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.home.bean.OperateItem;
import com.transsion.moviedetailapi.bean.Pager;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B7\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000bJ\u0011\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0011\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bHÆ\u0003J9\u0010\u0019\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bHÆ\u0001J\u0006\u0010\u001a\u001a\u00020\u001bJ\u0013\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fHÖ\u0003J\t\u0010 \u001a\u00020\u001bHÖ\u0001J\t\u0010!\u001a\u00020\"HÖ\u0001J\u0016\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020\u001bR\"\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\"\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\r\"\u0004\b\u0015\u0010\u000f¨\u0006("}, d2 = {"Lcom/transsion/home/bean/ugc/TrendingUGCResponse;", "Landroid/os/Parcelable;", "items", "", "Lcom/transsion/home/bean/ugc/TrendingUGCItem;", "pager", "Lcom/transsion/moviedetailapi/bean/Pager;", "transferData", "", "Lcom/transsion/home/bean/OperateItem;", "<init>", "(Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Pager;Ljava/util/List;)V", "getItems", "()Ljava/util/List;", "setItems", "(Ljava/util/List;)V", "getPager", "()Lcom/transsion/moviedetailapi/bean/Pager;", "setPager", "(Lcom/transsion/moviedetailapi/bean/Pager;)V", "getTransferData", "setTransferData", "component1", "component2", "component3", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class TrendingUGCResponse implements Parcelable {
    private List<TrendingUGCItem> items;
    private Pager pager;
    private transient List<OperateItem> transferData;
    public static final Parcelable.Creator<TrendingUGCResponse> CREATOR = new a();
    public static final int $stable = 8;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TrendingUGCResponse createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            Intrinsics.h(parcel, "parcel");
            ArrayList arrayList2 = null;
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i11 = parcel.readInt();
                arrayList = new ArrayList(i11);
                for (int i12 = 0; i12 != i11; i12++) {
                    arrayList.add(TrendingUGCItem.CREATOR.createFromParcel(parcel));
                }
            }
            Pager pager = (Pager) parcel.readSerializable();
            if (parcel.readInt() != 0) {
                int i13 = parcel.readInt();
                ArrayList arrayList3 = new ArrayList(i13);
                for (int i14 = 0; i14 != i13; i14++) {
                    arrayList3.add(OperateItem.CREATOR.createFromParcel(parcel));
                }
                arrayList2 = arrayList3;
            }
            return new TrendingUGCResponse(arrayList, pager, arrayList2);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final TrendingUGCResponse[] newArray(int i11) {
            return new TrendingUGCResponse[i11];
        }
    }

    public TrendingUGCResponse() {
        this(null, null, null, 7, null);
    }

    public TrendingUGCResponse(List<TrendingUGCItem> list, Pager pager, List<OperateItem> list2) {
        this.items = list;
        this.pager = pager;
        this.transferData = list2;
    }

    public /* synthetic */ TrendingUGCResponse(List list, Pager pager, List list2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : list, (i11 & 2) != 0 ? null : pager, (i11 & 4) != 0 ? null : list2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ TrendingUGCResponse copy$default(TrendingUGCResponse trendingUGCResponse, List list, Pager pager, List list2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = trendingUGCResponse.items;
        }
        if ((i11 & 2) != 0) {
            pager = trendingUGCResponse.pager;
        }
        if ((i11 & 4) != 0) {
            list2 = trendingUGCResponse.transferData;
        }
        return trendingUGCResponse.copy(list, pager, list2);
    }

    public final List<TrendingUGCItem> component1() {
        return this.items;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Pager getPager() {
        return this.pager;
    }

    public final List<OperateItem> component3() {
        return this.transferData;
    }

    public final TrendingUGCResponse copy(List<TrendingUGCItem> items, Pager pager, List<OperateItem> transferData) {
        return new TrendingUGCResponse(items, pager, transferData);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TrendingUGCResponse)) {
            return false;
        }
        TrendingUGCResponse trendingUGCResponse = (TrendingUGCResponse) other;
        return Intrinsics.c(this.items, trendingUGCResponse.items) && Intrinsics.c(this.pager, trendingUGCResponse.pager) && Intrinsics.c(this.transferData, trendingUGCResponse.transferData);
    }

    public final List<TrendingUGCItem> getItems() {
        return this.items;
    }

    public final Pager getPager() {
        return this.pager;
    }

    public final List<OperateItem> getTransferData() {
        return this.transferData;
    }

    public int hashCode() {
        List<TrendingUGCItem> list = this.items;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        Pager pager = this.pager;
        int iHashCode2 = (iHashCode + (pager == null ? 0 : pager.hashCode())) * 31;
        List<OperateItem> list2 = this.transferData;
        return iHashCode2 + (list2 != null ? list2.hashCode() : 0);
    }

    public final void setItems(List<TrendingUGCItem> list) {
        this.items = list;
    }

    public final void setPager(Pager pager) {
        this.pager = pager;
    }

    public final void setTransferData(List<OperateItem> list) {
        this.transferData = list;
    }

    public String toString() {
        return "TrendingUGCResponse(items=" + this.items + ", pager=" + this.pager + ", transferData=" + this.transferData + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        List<TrendingUGCItem> list = this.items;
        if (list == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list.size());
            Iterator<TrendingUGCItem> it = list.iterator();
            while (it.hasNext()) {
                it.next().writeToParcel(dest, flags);
            }
        }
        dest.writeSerializable(this.pager);
        List<OperateItem> list2 = this.transferData;
        if (list2 == null) {
            dest.writeInt(0);
            return;
        }
        dest.writeInt(1);
        dest.writeInt(list2.size());
        Iterator<OperateItem> it2 = list2.iterator();
        while (it2.hasNext()) {
            it2.next().writeToParcel(dest, flags);
        }
    }
}
