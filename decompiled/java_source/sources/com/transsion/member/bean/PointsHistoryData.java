package com.transsion.member.bean;

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

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B)\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\t\u0010\nJ\u0011\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0006HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\bHÆ\u0003J1\u0010\u0014\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bHÆ\u0001J\u0006\u0010\u0015\u001a\u00020\u0016J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aHÖ\u0003J\t\u0010\u001b\u001a\u00020\u0016HÖ\u0001J\t\u0010\u001c\u001a\u00020\bHÖ\u0001J\u0016\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0016R\u0019\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\""}, d2 = {"Lcom/transsion/member/bean/PointsHistoryData;", "Landroid/os/Parcelable;", "list", "", "Lcom/transsion/member/bean/PointsHistoryItem;", "page", "Lcom/transsion/member/bean/Pager;", "coinBalance", "", "<init>", "(Ljava/util/List;Lcom/transsion/member/bean/Pager;Ljava/lang/String;)V", "getList", "()Ljava/util/List;", "getPage", "()Lcom/transsion/member/bean/Pager;", "getCoinBalance", "()Ljava/lang/String;", "component1", "component2", "component3", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Member_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class PointsHistoryData implements Parcelable {
    private final String coinBalance;
    private final List<PointsHistoryItem> list;
    private final Pager page;
    public static final Parcelable.Creator<PointsHistoryData> CREATOR = new a();
    public static final int $stable = 8;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final PointsHistoryData createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            Intrinsics.h(parcel, "parcel");
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i11 = parcel.readInt();
                ArrayList arrayList2 = new ArrayList(i11);
                for (int i12 = 0; i12 != i11; i12++) {
                    arrayList2.add(PointsHistoryItem.CREATOR.createFromParcel(parcel));
                }
                arrayList = arrayList2;
            }
            return new PointsHistoryData(arrayList, (Pager) parcel.readSerializable(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final PointsHistoryData[] newArray(int i11) {
            return new PointsHistoryData[i11];
        }
    }

    public PointsHistoryData(List<PointsHistoryItem> list, Pager page, String str) {
        Intrinsics.h(page, "page");
        this.list = list;
        this.page = page;
        this.coinBalance = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PointsHistoryData copy$default(PointsHistoryData pointsHistoryData, List list, Pager pager, String str, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = pointsHistoryData.list;
        }
        if ((i11 & 2) != 0) {
            pager = pointsHistoryData.page;
        }
        if ((i11 & 4) != 0) {
            str = pointsHistoryData.coinBalance;
        }
        return pointsHistoryData.copy(list, pager, str);
    }

    public final List<PointsHistoryItem> component1() {
        return this.list;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Pager getPage() {
        return this.page;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getCoinBalance() {
        return this.coinBalance;
    }

    public final PointsHistoryData copy(List<PointsHistoryItem> list, Pager page, String coinBalance) {
        Intrinsics.h(page, "page");
        return new PointsHistoryData(list, page, coinBalance);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PointsHistoryData)) {
            return false;
        }
        PointsHistoryData pointsHistoryData = (PointsHistoryData) other;
        return Intrinsics.c(this.list, pointsHistoryData.list) && Intrinsics.c(this.page, pointsHistoryData.page) && Intrinsics.c(this.coinBalance, pointsHistoryData.coinBalance);
    }

    public final String getCoinBalance() {
        return this.coinBalance;
    }

    public final List<PointsHistoryItem> getList() {
        return this.list;
    }

    public final Pager getPage() {
        return this.page;
    }

    public int hashCode() {
        List<PointsHistoryItem> list = this.list;
        int iHashCode = (((list == null ? 0 : list.hashCode()) * 31) + this.page.hashCode()) * 31;
        String str = this.coinBalance;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "PointsHistoryData(list=" + this.list + ", page=" + this.page + ", coinBalance=" + this.coinBalance + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        List<PointsHistoryItem> list = this.list;
        if (list == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list.size());
            Iterator<PointsHistoryItem> it = list.iterator();
            while (it.hasNext()) {
                it.next().writeToParcel(dest, flags);
            }
        }
        dest.writeSerializable(this.page);
        dest.writeString(this.coinBalance);
    }
}
