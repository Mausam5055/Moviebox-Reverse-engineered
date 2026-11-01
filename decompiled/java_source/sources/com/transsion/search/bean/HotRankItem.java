package com.transsion.search.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.integration.permission.PermissionConfig;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u000f\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0015\b\u0087\b\u0018\u0000 62\u00020\u0001:\u00017BA\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rJ\u001d\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\n¢\u0006\u0004\b\u0012\u0010\u0013J\r\u0010\u0014\u001a\u00020\n¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u0018\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0018\u0010\u0017J\u0018\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003¢\u0006\u0004\b\u0019\u0010\u001aJ\u0018\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005HÆ\u0003¢\u0006\u0004\b\u001b\u0010\u001aJ\u0010\u0010\u001c\u001a\u00020\nHÆ\u0003¢\u0006\u0004\b\u001c\u0010\u0015JR\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0004\u001a\u00020\u00022\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00052\b\b\u0002\u0010\u000b\u001a\u00020\nHÆ\u0001¢\u0006\u0004\b\u001d\u0010\u001eJ\u0010\u0010\u001f\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u001f\u0010\u0017J\u0010\u0010 \u001a\u00020\nHÖ\u0001¢\u0006\u0004\b \u0010\u0015J\u001a\u0010$\u001a\u00020#2\b\u0010\"\u001a\u0004\u0018\u00010!HÖ\u0003¢\u0006\u0004\b$\u0010%R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010&\u001a\u0004\b'\u0010\u0017\"\u0004\b(\u0010)R\"\u0010\u0004\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010&\u001a\u0004\b*\u0010\u0017\"\u0004\b+\u0010)R*\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010,\u001a\u0004\b-\u0010\u001a\"\u0004\b.\u0010/R*\u0010\t\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010,\u001a\u0004\b0\u0010\u001a\"\u0004\b1\u0010/R\"\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u00102\u001a\u0004\b3\u0010\u0015\"\u0004\b4\u00105¨\u00068"}, d2 = {"Lcom/transsion/search/bean/HotRankItem;", "Landroid/os/Parcelable;", "", "category", "name", "", "Lcom/transsion/search/bean/HotSubject;", "items", "Lcom/transsion/search/bean/GroupInfo;", PermissionConfig.GROUPS, "", "index", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)V", "Landroid/os/Parcel;", "dest", "flags", "", "writeToParcel", "(Landroid/os/Parcel;I)V", "describeContents", "()I", "component1", "()Ljava/lang/String;", "component2", "component3", "()Ljava/util/List;", "component4", "component5", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Lcom/transsion/search/bean/HotRankItem;", "toString", "hashCode", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getCategory", "setCategory", "(Ljava/lang/String;)V", "getName", "setName", "Ljava/util/List;", "getItems", "setItems", "(Ljava/util/List;)V", "getGroups", "setGroups", "I", "getIndex", "setIndex", "(I)V", "Companion", "a", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class HotRankItem implements Parcelable {
    public static final String CATE_GROUP = "Group";
    public static final String CATE_MOVIE = "Movie";
    public static final String CATE_MUSIC = "Music";
    public static final String CATE_TV = "TV";
    private String category;
    private List<GroupInfo> groups;
    private int index;
    private List<HotSubject> items;
    private String name;
    public static final Parcelable.Creator<HotRankItem> CREATOR = new b();

    public static final class b implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HotRankItem createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            Intrinsics.h(parcel, "parcel");
            String string = parcel.readString();
            String string2 = parcel.readString();
            ArrayList arrayList2 = null;
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i11 = parcel.readInt();
                arrayList = new ArrayList(i11);
                for (int i12 = 0; i12 != i11; i12++) {
                    arrayList.add(HotSubject.CREATOR.createFromParcel(parcel));
                }
            }
            if (parcel.readInt() != 0) {
                int i13 = parcel.readInt();
                arrayList2 = new ArrayList(i13);
                for (int i14 = 0; i14 != i13; i14++) {
                    arrayList2.add(GroupInfo.CREATOR.createFromParcel(parcel));
                }
            }
            return new HotRankItem(string, string2, arrayList, arrayList2, parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final HotRankItem[] newArray(int i11) {
            return new HotRankItem[i11];
        }
    }

    public HotRankItem(String category, String name, List<HotSubject> list, List<GroupInfo> list2, int i11) {
        Intrinsics.h(category, "category");
        Intrinsics.h(name, "name");
        this.category = category;
        this.name = name;
        this.items = list;
        this.groups = list2;
        this.index = i11;
    }

    public /* synthetic */ HotRankItem(String str, String str2, List list, List list2, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, list, list2, (i12 & 16) != 0 ? 0 : i11);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ HotRankItem copy$default(HotRankItem hotRankItem, String str, String str2, List list, List list2, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            str = hotRankItem.category;
        }
        if ((i12 & 2) != 0) {
            str2 = hotRankItem.name;
        }
        String str3 = str2;
        if ((i12 & 4) != 0) {
            list = hotRankItem.items;
        }
        List list3 = list;
        if ((i12 & 8) != 0) {
            list2 = hotRankItem.groups;
        }
        List list4 = list2;
        if ((i12 & 16) != 0) {
            i11 = hotRankItem.index;
        }
        return hotRankItem.copy(str, str3, list3, list4, i11);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getCategory() {
        return this.category;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getName() {
        return this.name;
    }

    public final List<HotSubject> component3() {
        return this.items;
    }

    public final List<GroupInfo> component4() {
        return this.groups;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final int getIndex() {
        return this.index;
    }

    public final HotRankItem copy(String category, String name, List<HotSubject> items, List<GroupInfo> groups, int index) {
        Intrinsics.h(category, "category");
        Intrinsics.h(name, "name");
        return new HotRankItem(category, name, items, groups, index);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof HotRankItem)) {
            return false;
        }
        HotRankItem hotRankItem = (HotRankItem) other;
        return Intrinsics.c(this.category, hotRankItem.category) && Intrinsics.c(this.name, hotRankItem.name) && Intrinsics.c(this.items, hotRankItem.items) && Intrinsics.c(this.groups, hotRankItem.groups) && this.index == hotRankItem.index;
    }

    public final String getCategory() {
        return this.category;
    }

    public final List<GroupInfo> getGroups() {
        return this.groups;
    }

    public final int getIndex() {
        return this.index;
    }

    public final List<HotSubject> getItems() {
        return this.items;
    }

    public final String getName() {
        return this.name;
    }

    public int hashCode() {
        int iHashCode = ((this.category.hashCode() * 31) + this.name.hashCode()) * 31;
        List<HotSubject> list = this.items;
        int iHashCode2 = (iHashCode + (list == null ? 0 : list.hashCode())) * 31;
        List<GroupInfo> list2 = this.groups;
        return ((iHashCode2 + (list2 != null ? list2.hashCode() : 0)) * 31) + this.index;
    }

    public final void setCategory(String str) {
        Intrinsics.h(str, "<set-?>");
        this.category = str;
    }

    public final void setGroups(List<GroupInfo> list) {
        this.groups = list;
    }

    public final void setIndex(int i11) {
        this.index = i11;
    }

    public final void setItems(List<HotSubject> list) {
        this.items = list;
    }

    public final void setName(String str) {
        Intrinsics.h(str, "<set-?>");
        this.name = str;
    }

    public String toString() {
        return "HotRankItem(category=" + this.category + ", name=" + this.name + ", items=" + this.items + ", groups=" + this.groups + ", index=" + this.index + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.category);
        dest.writeString(this.name);
        List<HotSubject> list = this.items;
        if (list == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list.size());
            Iterator<HotSubject> it = list.iterator();
            while (it.hasNext()) {
                it.next().writeToParcel(dest, flags);
            }
        }
        List<GroupInfo> list2 = this.groups;
        if (list2 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list2.size());
            Iterator<GroupInfo> it2 = list2.iterator();
            while (it2.hasNext()) {
                it2.next().writeToParcel(dest, flags);
            }
        }
        dest.writeInt(this.index);
    }
}
