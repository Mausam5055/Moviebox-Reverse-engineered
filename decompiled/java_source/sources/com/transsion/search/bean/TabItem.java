package com.transsion.search.bean;

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
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00000\u0006¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00000\u0006HÆ\u0003J-\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00000\u0006HÆ\u0001J\u0006\u0010\u0019\u001a\u00020\u001aJ\u0013\u0010\u001b\u001a\u00020\u000f2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dHÖ\u0003J\t\u0010\u001e\u001a\u00020\u001aHÖ\u0001J\t\u0010\u001f\u001a\u00020\u0003HÖ\u0001J\u0016\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u001aR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00000\u0006¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR \u0010\u000e\u001a\u00020\u000fX\u0086\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u000e\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006%"}, d2 = {"Lcom/transsion/search/bean/TabItem;", "Landroid/os/Parcelable;", "tabId", "", "name", "subs", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "getTabId", "()Ljava/lang/String;", "getName", "getSubs", "()Ljava/util/List;", "isSelected", "", "isSelected$annotations", "()V", "()Z", "setSelected", "(Z)V", "component1", "component2", "component3", "copy", "describeContents", "", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class TabItem implements Parcelable {
    public static final Parcelable.Creator<TabItem> CREATOR = new a();
    private boolean isSelected;
    private final String name;
    private final List<TabItem> subs;
    private final String tabId;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TabItem createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            String string = parcel.readString();
            String string2 = parcel.readString();
            int i11 = parcel.readInt();
            ArrayList arrayList = new ArrayList(i11);
            for (int i12 = 0; i12 != i11; i12++) {
                arrayList.add(TabItem.CREATOR.createFromParcel(parcel));
            }
            return new TabItem(string, string2, arrayList);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final TabItem[] newArray(int i11) {
            return new TabItem[i11];
        }
    }

    public TabItem(String tabId, String name, List<TabItem> subs) {
        Intrinsics.h(tabId, "tabId");
        Intrinsics.h(name, "name");
        Intrinsics.h(subs, "subs");
        this.tabId = tabId;
        this.name = name;
        this.subs = subs;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ TabItem copy$default(TabItem tabItem, String str, String str2, List list, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = tabItem.tabId;
        }
        if ((i11 & 2) != 0) {
            str2 = tabItem.name;
        }
        if ((i11 & 4) != 0) {
            list = tabItem.subs;
        }
        return tabItem.copy(str, str2, list);
    }

    public static /* synthetic */ void isSelected$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getTabId() {
        return this.tabId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getName() {
        return this.name;
    }

    public final List<TabItem> component3() {
        return this.subs;
    }

    public final TabItem copy(String tabId, String name, List<TabItem> subs) {
        Intrinsics.h(tabId, "tabId");
        Intrinsics.h(name, "name");
        Intrinsics.h(subs, "subs");
        return new TabItem(tabId, name, subs);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TabItem)) {
            return false;
        }
        TabItem tabItem = (TabItem) other;
        return Intrinsics.c(this.tabId, tabItem.tabId) && Intrinsics.c(this.name, tabItem.name) && Intrinsics.c(this.subs, tabItem.subs);
    }

    public final String getName() {
        return this.name;
    }

    public final List<TabItem> getSubs() {
        return this.subs;
    }

    public final String getTabId() {
        return this.tabId;
    }

    public int hashCode() {
        return (((this.tabId.hashCode() * 31) + this.name.hashCode()) * 31) + this.subs.hashCode();
    }

    /* JADX INFO: renamed from: isSelected, reason: from getter */
    public final boolean getIsSelected() {
        return this.isSelected;
    }

    public final void setSelected(boolean z10) {
        this.isSelected = z10;
    }

    public String toString() {
        return "TabItem(tabId=" + this.tabId + ", name=" + this.name + ", subs=" + this.subs + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.tabId);
        dest.writeString(this.name);
        List<TabItem> list = this.subs;
        dest.writeInt(list.size());
        Iterator<TabItem> it = list.iterator();
        while (it.hasNext()) {
            it.next().writeToParcel(dest, flags);
        }
    }
}
