package com.transsion.home.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u001e\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0011J\u0011\u0010 \u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007HÆ\u0003J\u0010\u0010!\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001aJB\u0010\"\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010#J\u0006\u0010$\u001a\u00020\u0003J\u0013\u0010%\u001a\u00020\u00052\b\u0010&\u001a\u0004\u0018\u00010'HÖ\u0003J\t\u0010(\u001a\u00020\u0003HÖ\u0001J\t\u0010)\u001a\u00020*HÖ\u0001J\u0016\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020\u0003R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\"\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001e\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001d\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001c¨\u00060"}, d2 = {"Lcom/transsion/home/bean/CustomData;", "Landroid/os/Parcelable;", "rowCount", "", "hiddenTitle", "", "items", "", "Lcom/transsion/home/bean/BannerData;", "showLine", "<init>", "(ILjava/lang/Boolean;Ljava/util/List;Ljava/lang/Integer;)V", "getRowCount", "()I", "setRowCount", "(I)V", "getHiddenTitle", "()Ljava/lang/Boolean;", "setHiddenTitle", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "getItems", "()Ljava/util/List;", "setItems", "(Ljava/util/List;)V", "getShowLine", "()Ljava/lang/Integer;", "setShowLine", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "component1", "component2", "component3", "component4", "copy", "(ILjava/lang/Boolean;Ljava/util/List;Ljava/lang/Integer;)Lcom/transsion/home/bean/CustomData;", "describeContents", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class CustomData implements Parcelable {
    private Boolean hiddenTitle;
    private List<BannerData> items;
    private int rowCount;
    private Integer showLine;
    public static final Parcelable.Creator<CustomData> CREATOR = new a();
    public static final int $stable = 8;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CustomData createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            Intrinsics.h(parcel, "parcel");
            int i11 = parcel.readInt();
            Boolean boolValueOf = parcel.readInt() == 0 ? null : Boolean.valueOf(parcel.readInt() != 0);
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i12 = parcel.readInt();
                arrayList = new ArrayList(i12);
                for (int i13 = 0; i13 != i12; i13++) {
                    arrayList.add(BannerData.CREATOR.createFromParcel(parcel));
                }
            }
            return new CustomData(i11, boolValueOf, arrayList, parcel.readInt() != 0 ? Integer.valueOf(parcel.readInt()) : null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final CustomData[] newArray(int i11) {
            return new CustomData[i11];
        }
    }

    public CustomData(int i11, Boolean bool, List<BannerData> list, Integer num) {
        this.rowCount = i11;
        this.hiddenTitle = bool;
        this.items = list;
        this.showLine = num;
    }

    public /* synthetic */ CustomData(int i11, Boolean bool, List list, Integer num, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(i11, bool, list, (i12 & 8) != 0 ? 0 : num);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CustomData copy$default(CustomData customData, int i11, Boolean bool, List list, Integer num, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i11 = customData.rowCount;
        }
        if ((i12 & 2) != 0) {
            bool = customData.hiddenTitle;
        }
        if ((i12 & 4) != 0) {
            list = customData.items;
        }
        if ((i12 & 8) != 0) {
            num = customData.showLine;
        }
        return customData.copy(i11, bool, list, num);
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

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Integer getShowLine() {
        return this.showLine;
    }

    public final CustomData copy(int rowCount, Boolean hiddenTitle, List<BannerData> items, Integer showLine) {
        return new CustomData(rowCount, hiddenTitle, items, showLine);
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
        return this.rowCount == customData.rowCount && Intrinsics.c(this.hiddenTitle, customData.hiddenTitle) && Intrinsics.c(this.items, customData.items) && Intrinsics.c(this.showLine, customData.showLine);
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

    public final Integer getShowLine() {
        return this.showLine;
    }

    public int hashCode() {
        int i11 = this.rowCount * 31;
        Boolean bool = this.hiddenTitle;
        int iHashCode = (i11 + (bool == null ? 0 : bool.hashCode())) * 31;
        List<BannerData> list = this.items;
        int iHashCode2 = (iHashCode + (list == null ? 0 : list.hashCode())) * 31;
        Integer num = this.showLine;
        return iHashCode2 + (num != null ? num.hashCode() : 0);
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

    public final void setShowLine(Integer num) {
        this.showLine = num;
    }

    public String toString() {
        return "CustomData(rowCount=" + this.rowCount + ", hiddenTitle=" + this.hiddenTitle + ", items=" + this.items + ", showLine=" + this.showLine + ")";
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
        } else {
            dest.writeInt(1);
            dest.writeInt(list.size());
            Iterator<BannerData> it = list.iterator();
            while (it.hasNext()) {
                it.next().writeToParcel(dest, flags);
            }
        }
        Integer num = this.showLine;
        if (num == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num.intValue());
        }
    }
}
