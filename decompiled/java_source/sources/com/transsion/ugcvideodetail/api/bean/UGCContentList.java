package com.transsion.ugcvideodetail.api.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.transsion.moviedetailapi.bean.Pager;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J'\u0010\u0013\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0001J\u0006\u0010\u0014\u001a\u00020\u0015J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019HÖ\u0003J\t\u0010\u001a\u001a\u00020\u0015HÖ\u0001J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001J\u0016\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0015R \u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR&\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\""}, d2 = {"Lcom/transsion/ugcvideodetail/api/bean/UGCContentList;", "Landroid/os/Parcelable;", "pager", "Lcom/transsion/moviedetailapi/bean/Pager;", "items", "", "Lcom/transsion/ugcvideodetail/api/bean/UGCContent;", "<init>", "(Lcom/transsion/moviedetailapi/bean/Pager;Ljava/util/List;)V", "getPager", "()Lcom/transsion/moviedetailapi/bean/Pager;", "setPager", "(Lcom/transsion/moviedetailapi/bean/Pager;)V", "getItems", "()Ljava/util/List;", "setItems", "(Ljava/util/List;)V", "component1", "component2", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "UGCVideoDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class UGCContentList implements Parcelable {
    public static final Parcelable.Creator<UGCContentList> CREATOR = new a();

    @SerializedName("items")
    private List<UGCContent> items;

    @SerializedName("pager")
    private Pager pager;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UGCContentList createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            Intrinsics.h(parcel, "parcel");
            Pager pager = (Pager) parcel.readSerializable();
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i11 = parcel.readInt();
                ArrayList arrayList2 = new ArrayList(i11);
                for (int i12 = 0; i12 != i11; i12++) {
                    arrayList2.add(UGCContent.CREATOR.createFromParcel(parcel));
                }
                arrayList = arrayList2;
            }
            return new UGCContentList(pager, arrayList);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final UGCContentList[] newArray(int i11) {
            return new UGCContentList[i11];
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public UGCContentList() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public UGCContentList(Pager pager, List<UGCContent> list) {
        this.pager = pager;
        this.items = list;
    }

    public /* synthetic */ UGCContentList(Pager pager, List list, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : pager, (i11 & 2) != 0 ? null : list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ UGCContentList copy$default(UGCContentList uGCContentList, Pager pager, List list, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            pager = uGCContentList.pager;
        }
        if ((i11 & 2) != 0) {
            list = uGCContentList.items;
        }
        return uGCContentList.copy(pager, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Pager getPager() {
        return this.pager;
    }

    public final List<UGCContent> component2() {
        return this.items;
    }

    public final UGCContentList copy(Pager pager, List<UGCContent> items) {
        return new UGCContentList(pager, items);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UGCContentList)) {
            return false;
        }
        UGCContentList uGCContentList = (UGCContentList) other;
        return Intrinsics.c(this.pager, uGCContentList.pager) && Intrinsics.c(this.items, uGCContentList.items);
    }

    public final List<UGCContent> getItems() {
        return this.items;
    }

    public final Pager getPager() {
        return this.pager;
    }

    public int hashCode() {
        Pager pager = this.pager;
        int iHashCode = (pager == null ? 0 : pager.hashCode()) * 31;
        List<UGCContent> list = this.items;
        return iHashCode + (list != null ? list.hashCode() : 0);
    }

    public final void setItems(List<UGCContent> list) {
        this.items = list;
    }

    public final void setPager(Pager pager) {
        this.pager = pager;
    }

    public String toString() {
        return "UGCContentList(pager=" + this.pager + ", items=" + this.items + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeSerializable(this.pager);
        List<UGCContent> list = this.items;
        if (list == null) {
            dest.writeInt(0);
            return;
        }
        dest.writeInt(1);
        dest.writeInt(list.size());
        Iterator<UGCContent> it = list.iterator();
        while (it.hasNext()) {
            it.next().writeToParcel(dest, flags);
        }
    }
}
