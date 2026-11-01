package com.transsion.home.tv.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.home.bean.OperateItem;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0006HÆ\u0003J#\u0010\u000f\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0006\u0010\u0010\u001a\u00020\u0011J\u0013\u0010\u0012\u001a\u00020\u00062\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\u0016\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0011R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u001d"}, d2 = {"Lcom/transsion/home/tv/bean/TvChannelLoadMoreResult;", "Landroid/os/Parcelable;", "appendList", "", "Lcom/transsion/home/bean/OperateItem;", "hasMore", "", "<init>", "(Ljava/util/List;Z)V", "getAppendList", "()Ljava/util/List;", "getHasMore", "()Z", "component1", "component2", "copy", "describeContents", "", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class TvChannelLoadMoreResult implements Parcelable {
    private final List<OperateItem> appendList;
    private final boolean hasMore;
    public static final Parcelable.Creator<TvChannelLoadMoreResult> CREATOR = new a();
    public static final int $stable = 8;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TvChannelLoadMoreResult createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            int i11 = parcel.readInt();
            ArrayList arrayList = new ArrayList(i11);
            for (int i12 = 0; i12 != i11; i12++) {
                arrayList.add(OperateItem.CREATOR.createFromParcel(parcel));
            }
            return new TvChannelLoadMoreResult(arrayList, parcel.readInt() != 0);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final TvChannelLoadMoreResult[] newArray(int i11) {
            return new TvChannelLoadMoreResult[i11];
        }
    }

    public TvChannelLoadMoreResult(List<OperateItem> appendList, boolean z10) {
        Intrinsics.h(appendList, "appendList");
        this.appendList = appendList;
        this.hasMore = z10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ TvChannelLoadMoreResult copy$default(TvChannelLoadMoreResult tvChannelLoadMoreResult, List list, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = tvChannelLoadMoreResult.appendList;
        }
        if ((i11 & 2) != 0) {
            z10 = tvChannelLoadMoreResult.hasMore;
        }
        return tvChannelLoadMoreResult.copy(list, z10);
    }

    public final List<OperateItem> component1() {
        return this.appendList;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getHasMore() {
        return this.hasMore;
    }

    public final TvChannelLoadMoreResult copy(List<OperateItem> appendList, boolean hasMore) {
        Intrinsics.h(appendList, "appendList");
        return new TvChannelLoadMoreResult(appendList, hasMore);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TvChannelLoadMoreResult)) {
            return false;
        }
        TvChannelLoadMoreResult tvChannelLoadMoreResult = (TvChannelLoadMoreResult) other;
        return Intrinsics.c(this.appendList, tvChannelLoadMoreResult.appendList) && this.hasMore == tvChannelLoadMoreResult.hasMore;
    }

    public final List<OperateItem> getAppendList() {
        return this.appendList;
    }

    public final boolean getHasMore() {
        return this.hasMore;
    }

    public int hashCode() {
        return (this.appendList.hashCode() * 31) + e.a(this.hasMore);
    }

    public String toString() {
        return "TvChannelLoadMoreResult(appendList=" + this.appendList + ", hasMore=" + this.hasMore + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        List<OperateItem> list = this.appendList;
        dest.writeInt(list.size());
        Iterator<OperateItem> it = list.iterator();
        while (it.hasNext()) {
            it.next().writeToParcel(dest, flags);
        }
        dest.writeInt(this.hasMore ? 1 : 0);
    }
}
