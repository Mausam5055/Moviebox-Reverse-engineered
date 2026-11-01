package com.transsion.home.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.moviedetailapi.bean.Pager;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0019\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BC\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\f\u0010\rJ\u0011\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0011\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bHÆ\u0003J\u0010\u0010 \u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u0010\u0019JJ\u0010!\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bHÆ\u0001¢\u0006\u0002\u0010\"J\u0006\u0010#\u001a\u00020\u000bJ\u0013\u0010$\u001a\u00020%2\b\u0010&\u001a\u0004\u0018\u00010'HÖ\u0003J\t\u0010(\u001a\u00020\u000bHÖ\u0001J\t\u0010)\u001a\u00020*HÖ\u0001J\u0016\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020\u000bR\"\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\"\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u000f\"\u0004\b\u0017\u0010\u0011R\u001e\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001c\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u00060"}, d2 = {"Lcom/transsion/home/bean/TrendingRespData;", "Landroid/os/Parcelable;", "items", "", "Lcom/transsion/home/bean/TrendingRespItem;", "pager", "Lcom/transsion/moviedetailapi/bean/Pager;", "transferData", "", "Lcom/transsion/home/bean/OperateItem;", "perRow", "", "<init>", "(Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Pager;Ljava/util/List;Ljava/lang/Integer;)V", "getItems", "()Ljava/util/List;", "setItems", "(Ljava/util/List;)V", "getPager", "()Lcom/transsion/moviedetailapi/bean/Pager;", "setPager", "(Lcom/transsion/moviedetailapi/bean/Pager;)V", "getTransferData", "setTransferData", "getPerRow", "()Ljava/lang/Integer;", "setPerRow", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "component1", "component2", "component3", "component4", "copy", "(Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Pager;Ljava/util/List;Ljava/lang/Integer;)Lcom/transsion/home/bean/TrendingRespData;", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class TrendingRespData implements Parcelable {
    private List<TrendingRespItem> items;
    private Pager pager;
    private Integer perRow;
    private List<OperateItem> transferData;
    public static final Parcelable.Creator<TrendingRespData> CREATOR = new a();
    public static final int $stable = 8;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TrendingRespData createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            ArrayList arrayList2;
            Intrinsics.h(parcel, "parcel");
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i11 = parcel.readInt();
                arrayList = new ArrayList(i11);
                for (int i12 = 0; i12 != i11; i12++) {
                    arrayList.add(TrendingRespItem.CREATOR.createFromParcel(parcel));
                }
            }
            Pager pager = (Pager) parcel.readSerializable();
            if (parcel.readInt() == 0) {
                arrayList2 = null;
            } else {
                int i13 = parcel.readInt();
                arrayList2 = new ArrayList(i13);
                for (int i14 = 0; i14 != i13; i14++) {
                    arrayList2.add(OperateItem.CREATOR.createFromParcel(parcel));
                }
            }
            return new TrendingRespData(arrayList, pager, arrayList2, parcel.readInt() != 0 ? Integer.valueOf(parcel.readInt()) : null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final TrendingRespData[] newArray(int i11) {
            return new TrendingRespData[i11];
        }
    }

    public TrendingRespData() {
        this(null, null, null, null, 15, null);
    }

    public TrendingRespData(List<TrendingRespItem> list, Pager pager, List<OperateItem> list2, Integer num) {
        this.items = list;
        this.pager = pager;
        this.transferData = list2;
        this.perRow = num;
    }

    public /* synthetic */ TrendingRespData(List list, Pager pager, List list2, Integer num, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : list, (i11 & 2) != 0 ? null : pager, (i11 & 4) != 0 ? null : list2, (i11 & 8) != 0 ? 1 : num);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ TrendingRespData copy$default(TrendingRespData trendingRespData, List list, Pager pager, List list2, Integer num, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = trendingRespData.items;
        }
        if ((i11 & 2) != 0) {
            pager = trendingRespData.pager;
        }
        if ((i11 & 4) != 0) {
            list2 = trendingRespData.transferData;
        }
        if ((i11 & 8) != 0) {
            num = trendingRespData.perRow;
        }
        return trendingRespData.copy(list, pager, list2, num);
    }

    public final List<TrendingRespItem> component1() {
        return this.items;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Pager getPager() {
        return this.pager;
    }

    public final List<OperateItem> component3() {
        return this.transferData;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Integer getPerRow() {
        return this.perRow;
    }

    public final TrendingRespData copy(List<TrendingRespItem> items, Pager pager, List<OperateItem> transferData, Integer perRow) {
        return new TrendingRespData(items, pager, transferData, perRow);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TrendingRespData)) {
            return false;
        }
        TrendingRespData trendingRespData = (TrendingRespData) other;
        return Intrinsics.c(this.items, trendingRespData.items) && Intrinsics.c(this.pager, trendingRespData.pager) && Intrinsics.c(this.transferData, trendingRespData.transferData) && Intrinsics.c(this.perRow, trendingRespData.perRow);
    }

    public final List<TrendingRespItem> getItems() {
        return this.items;
    }

    public final Pager getPager() {
        return this.pager;
    }

    public final Integer getPerRow() {
        return this.perRow;
    }

    public final List<OperateItem> getTransferData() {
        return this.transferData;
    }

    public int hashCode() {
        List<TrendingRespItem> list = this.items;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        Pager pager = this.pager;
        int iHashCode2 = (iHashCode + (pager == null ? 0 : pager.hashCode())) * 31;
        List<OperateItem> list2 = this.transferData;
        int iHashCode3 = (iHashCode2 + (list2 == null ? 0 : list2.hashCode())) * 31;
        Integer num = this.perRow;
        return iHashCode3 + (num != null ? num.hashCode() : 0);
    }

    public final void setItems(List<TrendingRespItem> list) {
        this.items = list;
    }

    public final void setPager(Pager pager) {
        this.pager = pager;
    }

    public final void setPerRow(Integer num) {
        this.perRow = num;
    }

    public final void setTransferData(List<OperateItem> list) {
        this.transferData = list;
    }

    public String toString() {
        return "TrendingRespData(items=" + this.items + ", pager=" + this.pager + ", transferData=" + this.transferData + ", perRow=" + this.perRow + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        List<TrendingRespItem> list = this.items;
        if (list == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list.size());
            Iterator<TrendingRespItem> it = list.iterator();
            while (it.hasNext()) {
                it.next().writeToParcel(dest, flags);
            }
        }
        dest.writeSerializable(this.pager);
        List<OperateItem> list2 = this.transferData;
        if (list2 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list2.size());
            Iterator<OperateItem> it2 = list2.iterator();
            while (it2.hasNext()) {
                it2.next().writeToParcel(dest, flags);
            }
        }
        Integer num = this.perRow;
        if (num == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num.intValue());
        }
    }
}
