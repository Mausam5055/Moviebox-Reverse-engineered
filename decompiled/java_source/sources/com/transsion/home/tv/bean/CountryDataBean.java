package com.transsion.home.tv.bean;

import android.os.Parcel;
import android.os.Parcelable;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B!\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005HÆ\u0003J'\u0010\u0019\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005HÆ\u0001J\u0006\u0010\u001a\u001a\u00020\u001bJ\u0013\u0010\u001c\u001a\u00020\u00112\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eHÖ\u0003J\t\u0010\u001f\u001a\u00020\u001bHÖ\u0001J\t\u0010 \u001a\u00020!HÖ\u0001J\u0016\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u001bR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\"\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR \u0010\u0010\u001a\u00020\u0011X\u0086\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0010\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006'"}, d2 = {"Lcom/transsion/home/tv/bean/CountryDataBean;", "Landroid/os/Parcelable;", "currentCountry", "Lcom/transsion/home/tv/bean/CountryItem;", "items", "", "<init>", "(Lcom/transsion/home/tv/bean/CountryItem;Ljava/util/List;)V", "getCurrentCountry", "()Lcom/transsion/home/tv/bean/CountryItem;", "setCurrentCountry", "(Lcom/transsion/home/tv/bean/CountryItem;)V", "getItems", "()Ljava/util/List;", "setItems", "(Ljava/util/List;)V", "isRefresh", "", "isRefresh$annotations", "()V", "()Z", "setRefresh", "(Z)V", "component1", "component2", "copy", "describeContents", "", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class CountryDataBean implements Parcelable {
    private CountryItem currentCountry;
    private transient boolean isRefresh;
    private List<CountryItem> items;
    public static final Parcelable.Creator<CountryDataBean> CREATOR = new a();
    public static final int $stable = 8;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CountryDataBean createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            ArrayList arrayList = null;
            CountryItem countryItemCreateFromParcel = parcel.readInt() == 0 ? null : CountryItem.CREATOR.createFromParcel(parcel);
            if (parcel.readInt() != 0) {
                int i11 = parcel.readInt();
                ArrayList arrayList2 = new ArrayList(i11);
                for (int i12 = 0; i12 != i11; i12++) {
                    arrayList2.add(CountryItem.CREATOR.createFromParcel(parcel));
                }
                arrayList = arrayList2;
            }
            return new CountryDataBean(countryItemCreateFromParcel, arrayList);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final CountryDataBean[] newArray(int i11) {
            return new CountryDataBean[i11];
        }
    }

    public CountryDataBean(CountryItem countryItem, List<CountryItem> list) {
        this.currentCountry = countryItem;
        this.items = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CountryDataBean copy$default(CountryDataBean countryDataBean, CountryItem countryItem, List list, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            countryItem = countryDataBean.currentCountry;
        }
        if ((i11 & 2) != 0) {
            list = countryDataBean.items;
        }
        return countryDataBean.copy(countryItem, list);
    }

    public static /* synthetic */ void isRefresh$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final CountryItem getCurrentCountry() {
        return this.currentCountry;
    }

    public final List<CountryItem> component2() {
        return this.items;
    }

    public final CountryDataBean copy(CountryItem currentCountry, List<CountryItem> items) {
        return new CountryDataBean(currentCountry, items);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CountryDataBean)) {
            return false;
        }
        CountryDataBean countryDataBean = (CountryDataBean) other;
        return Intrinsics.c(this.currentCountry, countryDataBean.currentCountry) && Intrinsics.c(this.items, countryDataBean.items);
    }

    public final CountryItem getCurrentCountry() {
        return this.currentCountry;
    }

    public final List<CountryItem> getItems() {
        return this.items;
    }

    public int hashCode() {
        CountryItem countryItem = this.currentCountry;
        int iHashCode = (countryItem == null ? 0 : countryItem.hashCode()) * 31;
        List<CountryItem> list = this.items;
        return iHashCode + (list != null ? list.hashCode() : 0);
    }

    /* JADX INFO: renamed from: isRefresh, reason: from getter */
    public final boolean getIsRefresh() {
        return this.isRefresh;
    }

    public final void setCurrentCountry(CountryItem countryItem) {
        this.currentCountry = countryItem;
    }

    public final void setItems(List<CountryItem> list) {
        this.items = list;
    }

    public final void setRefresh(boolean z10) {
        this.isRefresh = z10;
    }

    public String toString() {
        return "CountryDataBean(currentCountry=" + this.currentCountry + ", items=" + this.items + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        CountryItem countryItem = this.currentCountry;
        if (countryItem == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            countryItem.writeToParcel(dest, flags);
        }
        List<CountryItem> list = this.items;
        if (list == null) {
            dest.writeInt(0);
            return;
        }
        dest.writeInt(1);
        dest.writeInt(list.size());
        Iterator<CountryItem> it = list.iterator();
        while (it.hasNext()) {
            it.next().writeToParcel(dest, flags);
        }
    }
}
