package com.transsion.postdetail.bean.favorite;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B!\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\u0011\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J%\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0001J\u0006\u0010\u0014\u001a\u00020\u0015J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019HÖ\u0003J\t\u0010\u001a\u001a\u00020\u0015HÖ\u0001J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001J\u0016\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0015R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\"\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\""}, d2 = {"Lcom/transsion/postdetail/bean/favorite/FeedFavorData;", "Landroid/os/Parcelable;", "pager", "Lcom/transsion/postdetail/bean/favorite/Pager;", "items", "", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "<init>", "(Lcom/transsion/postdetail/bean/favorite/Pager;Ljava/util/List;)V", "getPager", "()Lcom/transsion/postdetail/bean/favorite/Pager;", "setPager", "(Lcom/transsion/postdetail/bean/favorite/Pager;)V", "getItems", "()Ljava/util/List;", "setItems", "(Ljava/util/List;)V", "component1", "component2", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class FeedFavorData implements Parcelable {
    public static final Parcelable.Creator<FeedFavorData> CREATOR = new a();
    private List<UGCVideo> items;
    private Pager pager;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final FeedFavorData createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            Intrinsics.h(parcel, "parcel");
            Pager pagerCreateFromParcel = Pager.CREATOR.createFromParcel(parcel);
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i11 = parcel.readInt();
                ArrayList arrayList2 = new ArrayList(i11);
                for (int i12 = 0; i12 != i11; i12++) {
                    arrayList2.add(parcel.readSerializable());
                }
                arrayList = arrayList2;
            }
            return new FeedFavorData(pagerCreateFromParcel, arrayList);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final FeedFavorData[] newArray(int i11) {
            return new FeedFavorData[i11];
        }
    }

    public FeedFavorData(Pager pager, List<UGCVideo> list) {
        Intrinsics.h(pager, "pager");
        this.pager = pager;
        this.items = list;
    }

    public /* synthetic */ FeedFavorData(Pager pager, List list, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? new Pager(false, null, null, 0, 0, 31, null) : pager, list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ FeedFavorData copy$default(FeedFavorData feedFavorData, Pager pager, List list, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            pager = feedFavorData.pager;
        }
        if ((i11 & 2) != 0) {
            list = feedFavorData.items;
        }
        return feedFavorData.copy(pager, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Pager getPager() {
        return this.pager;
    }

    public final List<UGCVideo> component2() {
        return this.items;
    }

    public final FeedFavorData copy(Pager pager, List<UGCVideo> items) {
        Intrinsics.h(pager, "pager");
        return new FeedFavorData(pager, items);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof FeedFavorData)) {
            return false;
        }
        FeedFavorData feedFavorData = (FeedFavorData) other;
        return Intrinsics.c(this.pager, feedFavorData.pager) && Intrinsics.c(this.items, feedFavorData.items);
    }

    public final List<UGCVideo> getItems() {
        return this.items;
    }

    public final Pager getPager() {
        return this.pager;
    }

    public int hashCode() {
        int iHashCode = this.pager.hashCode() * 31;
        List<UGCVideo> list = this.items;
        return iHashCode + (list == null ? 0 : list.hashCode());
    }

    public final void setItems(List<UGCVideo> list) {
        this.items = list;
    }

    public final void setPager(Pager pager) {
        Intrinsics.h(pager, "<set-?>");
        this.pager = pager;
    }

    public String toString() {
        return "FeedFavorData(pager=" + this.pager + ", items=" + this.items + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        this.pager.writeToParcel(dest, flags);
        List<UGCVideo> list = this.items;
        if (list == null) {
            dest.writeInt(0);
            return;
        }
        dest.writeInt(1);
        dest.writeInt(list.size());
        Iterator<UGCVideo> it = list.iterator();
        while (it.hasNext()) {
            dest.writeSerializable(it.next());
        }
    }
}
