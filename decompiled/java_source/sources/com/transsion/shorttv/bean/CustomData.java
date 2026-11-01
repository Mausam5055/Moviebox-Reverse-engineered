package com.transsion.shorttv.bean;

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
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0010J\u0011\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007HÆ\u0003J6\u0010\u001b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010\u001cJ\u0006\u0010\u001d\u001a\u00020\u0003J\u0013\u0010\u001e\u001a\u00020\u00052\b\u0010\u001f\u001a\u0004\u0018\u00010 HÖ\u0003J\t\u0010!\u001a\u00020\u0003HÖ\u0001J\t\u0010\"\u001a\u00020#HÖ\u0001J\u0016\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020\u0003R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0013\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\"\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006)"}, d2 = {"Lcom/transsion/shorttv/bean/CustomData;", "Landroid/os/Parcelable;", "rowCount", "", "hiddenTitle", "", "items", "", "Lcom/transsion/shorttv/bean/BannerData;", "<init>", "(ILjava/lang/Boolean;Ljava/util/List;)V", "getRowCount", "()I", "setRowCount", "(I)V", "getHiddenTitle", "()Ljava/lang/Boolean;", "setHiddenTitle", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "getItems", "()Ljava/util/List;", "setItems", "(Ljava/util/List;)V", "component1", "component2", "component3", "copy", "(ILjava/lang/Boolean;Ljava/util/List;)Lcom/transsion/shorttv/bean/CustomData;", "describeContents", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class CustomData implements Parcelable {
    public static final Parcelable.Creator<CustomData> CREATOR = new a();
    private Boolean hiddenTitle;
    private List<BannerData> items;
    private int rowCount;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CustomData createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            int i11 = parcel.readInt();
            ArrayList arrayList = null;
            Boolean boolValueOf = parcel.readInt() == 0 ? null : Boolean.valueOf(parcel.readInt() != 0);
            if (parcel.readInt() != 0) {
                int i12 = parcel.readInt();
                ArrayList arrayList2 = new ArrayList(i12);
                for (int i13 = 0; i13 != i12; i13++) {
                    arrayList2.add(BannerData.CREATOR.createFromParcel(parcel));
                }
                arrayList = arrayList2;
            }
            return new CustomData(i11, boolValueOf, arrayList);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final CustomData[] newArray(int i11) {
            return new CustomData[i11];
        }
    }

    public CustomData(int i11, Boolean bool, List<BannerData> list) {
        this.rowCount = i11;
        this.hiddenTitle = bool;
        this.items = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CustomData copy$default(CustomData customData, int i11, Boolean bool, List list, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i11 = customData.rowCount;
        }
        if ((i12 & 2) != 0) {
            bool = customData.hiddenTitle;
        }
        if ((i12 & 4) != 0) {
            list = customData.items;
        }
        return customData.copy(i11, bool, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getRowCount() {
        return this.rowCount;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Boolean getHiddenTitle() {
        return this.hiddenTitle;
    }

    public final List<BannerData> component3() {
        return this.items;
    }

    public final CustomData copy(int rowCount, Boolean hiddenTitle, List<BannerData> items) {
        return new CustomData(rowCount, hiddenTitle, items);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CustomData)) {
            return false;
        }
        CustomData customData = (CustomData) other;
        return this.rowCount == customData.rowCount && Intrinsics.c(this.hiddenTitle, customData.hiddenTitle) && Intrinsics.c(this.items, customData.items);
    }

    public final Boolean getHiddenTitle() {
        return this.hiddenTitle;
    }

    public final List<BannerData> getItems() {
        return this.items;
    }

    public final int getRowCount() {
        return this.rowCount;
    }

    public int hashCode() {
        int i11 = this.rowCount * 31;
        Boolean bool = this.hiddenTitle;
        int iHashCode = (i11 + (bool == null ? 0 : bool.hashCode())) * 31;
        List<BannerData> list = this.items;
        return iHashCode + (list != null ? list.hashCode() : 0);
    }

    public final void setHiddenTitle(Boolean bool) {
        this.hiddenTitle = bool;
    }

    public final void setItems(List<BannerData> list) {
        this.items = list;
    }

    public final void setRowCount(int i11) {
        this.rowCount = i11;
    }

    public String toString() {
        return "CustomData(rowCount=" + this.rowCount + ", hiddenTitle=" + this.hiddenTitle + ", items=" + this.items + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeInt(this.rowCount);
        Boolean bool = this.hiddenTitle;
        if (bool == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(bool.booleanValue() ? 1 : 0);
        }
        List<BannerData> list = this.items;
        if (list == null) {
            dest.writeInt(0);
            return;
        }
        dest.writeInt(1);
        dest.writeInt(list.size());
        Iterator<BannerData> it = list.iterator();
        while (it.hasNext()) {
            it.next().writeToParcel(dest, flags);
        }
    }
}
