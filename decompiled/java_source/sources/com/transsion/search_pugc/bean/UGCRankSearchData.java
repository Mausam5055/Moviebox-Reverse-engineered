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
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\n\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0006\u0010\u000b\u001a\u00020\fJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÖ\u0003J\t\u0010\u0011\u001a\u00020\fHÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\u0016\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\fR\u001c\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0019"}, d2 = {"Lcom/transsion/search_pugc/bean/UGCRankSearchData;", "Landroid/os/Parcelable;", "hotRanks", "", "Lcom/transsion/search_pugc/bean/HotRank;", "<init>", "(Ljava/util/List;)V", "getHotRanks", "()Ljava/util/List;", "component1", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class UGCRankSearchData implements Parcelable {
    public static final Parcelable.Creator<UGCRankSearchData> CREATOR = new a();

    @SerializedName("hotRanks")
    private final List<HotRank> hotRanks;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UGCRankSearchData createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            int i11 = parcel.readInt();
            ArrayList arrayList = new ArrayList(i11);
            for (int i12 = 0; i12 != i11; i12++) {
                arrayList.add(HotRank.CREATOR.createFromParcel(parcel));
            }
            return new UGCRankSearchData(arrayList);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final UGCRankSearchData[] newArray(int i11) {
            return new UGCRankSearchData[i11];
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public UGCRankSearchData() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public UGCRankSearchData(List<HotRank> hotRanks) {
        Intrinsics.h(hotRanks, "hotRanks");
        this.hotRanks = hotRanks;
    }

    public /* synthetic */ UGCRankSearchData(List list, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? CollectionsKt.l() : list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ UGCRankSearchData copy$default(UGCRankSearchData uGCRankSearchData, List list, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = uGCRankSearchData.hotRanks;
        }
        return uGCRankSearchData.copy(list);
    }

    public final List<HotRank> component1() {
        return this.hotRanks;
    }

    public final UGCRankSearchData copy(List<HotRank> hotRanks) {
        Intrinsics.h(hotRanks, "hotRanks");
        return new UGCRankSearchData(hotRanks);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof UGCRankSearchData) && Intrinsics.c(this.hotRanks, ((UGCRankSearchData) other).hotRanks);
    }

    public final List<HotRank> getHotRanks() {
        return this.hotRanks;
    }

    public int hashCode() {
        return this.hotRanks.hashCode();
    }

    public String toString() {
        return "UGCRankSearchData(hotRanks=" + this.hotRanks + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        List<HotRank> list = this.hotRanks;
        dest.writeInt(list.size());
        Iterator<HotRank> it = list.iterator();
        while (it.hasNext()) {
            it.next().writeToParcel(dest, flags);
        }
    }
}
