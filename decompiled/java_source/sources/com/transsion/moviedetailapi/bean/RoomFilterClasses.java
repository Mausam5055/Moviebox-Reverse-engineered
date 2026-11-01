package com.transsion.moviedetailapi.bean;

import android.os.Parcel;
import android.os.Parcelable;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B!\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u0011\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u000eJ,\u0010\u0014\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÆ\u0001¢\u0006\u0002\u0010\u0015J\u0006\u0010\u0016\u001a\u00020\u0006J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aHÖ\u0003J\t\u0010\u001b\u001a\u00020\u0006HÖ\u0001J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\u0016\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u0006R\"\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0011\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006#"}, d2 = {"Lcom/transsion/moviedetailapi/bean/RoomFilterClasses;", "Landroid/os/Parcelable;", "classes", "", "Lcom/transsion/moviedetailapi/bean/RoomFilter;", "defCid", "", "<init>", "(Ljava/util/List;Ljava/lang/Integer;)V", "getClasses", "()Ljava/util/List;", "setClasses", "(Ljava/util/List;)V", "getDefCid", "()Ljava/lang/Integer;", "setDefCid", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "component1", "component2", "copy", "(Ljava/util/List;Ljava/lang/Integer;)Lcom/transsion/moviedetailapi/bean/RoomFilterClasses;", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "MovieDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class RoomFilterClasses implements Parcelable {
    public static final Parcelable.Creator<RoomFilterClasses> CREATOR = new a();
    private List<RoomFilter> classes;
    private Integer defCid;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RoomFilterClasses createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            Intrinsics.h(parcel, "parcel");
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i11 = parcel.readInt();
                arrayList = new ArrayList(i11);
                for (int i12 = 0; i12 != i11; i12++) {
                    arrayList.add(RoomFilter.CREATOR.createFromParcel(parcel));
                }
            }
            return new RoomFilterClasses(arrayList, parcel.readInt() != 0 ? Integer.valueOf(parcel.readInt()) : null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final RoomFilterClasses[] newArray(int i11) {
            return new RoomFilterClasses[i11];
        }
    }

    public RoomFilterClasses(List<RoomFilter> list, Integer num) {
        this.classes = list;
        this.defCid = num;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RoomFilterClasses copy$default(RoomFilterClasses roomFilterClasses, List list, Integer num, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = roomFilterClasses.classes;
        }
        if ((i11 & 2) != 0) {
            num = roomFilterClasses.defCid;
        }
        return roomFilterClasses.copy(list, num);
    }

    public final List<RoomFilter> component1() {
        return this.classes;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Integer getDefCid() {
        return this.defCid;
    }

    public final RoomFilterClasses copy(List<RoomFilter> classes, Integer defCid) {
        return new RoomFilterClasses(classes, defCid);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RoomFilterClasses)) {
            return false;
        }
        RoomFilterClasses roomFilterClasses = (RoomFilterClasses) other;
        return Intrinsics.c(this.classes, roomFilterClasses.classes) && Intrinsics.c(this.defCid, roomFilterClasses.defCid);
    }

    public final List<RoomFilter> getClasses() {
        return this.classes;
    }

    public final Integer getDefCid() {
        return this.defCid;
    }

    public int hashCode() {
        List<RoomFilter> list = this.classes;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        Integer num = this.defCid;
        return iHashCode + (num != null ? num.hashCode() : 0);
    }

    public final void setClasses(List<RoomFilter> list) {
        this.classes = list;
    }

    public final void setDefCid(Integer num) {
        this.defCid = num;
    }

    public String toString() {
        return "RoomFilterClasses(classes=" + this.classes + ", defCid=" + this.defCid + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        List<RoomFilter> list = this.classes;
        if (list == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list.size());
            Iterator<RoomFilter> it = list.iterator();
            while (it.hasNext()) {
                it.next().writeToParcel(dest, flags);
            }
        }
        Integer num = this.defCid;
        if (num == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num.intValue());
        }
    }
}
