package com.transsion.home.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.home.p004enum.BottomTabType;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BA\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u001a\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u001b\u0018\u00010\u0003J\u000e\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u0003J\b\u0010\u001e\u001a\u0004\u0018\u00010\u0004J\u0018\u0010\u001f\u001a\u00020 2\u0010\u0010!\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u001b\u0018\u00010\u0003J\b\u0010\"\u001a\u00020 H\u0002J\u0011\u0010#\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\t\u0010&\u001a\u00020\tHÆ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\u0004HÂ\u0003JI\u0010(\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\b\u001a\u00020\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004HÆ\u0001J\u0006\u0010)\u001a\u00020*J\u0013\u0010+\u001a\u00020\t2\b\u0010,\u001a\u0004\u0018\u00010-HÖ\u0003J\t\u0010.\u001a\u00020*HÖ\u0001J\t\u0010/\u001a\u00020\u0006HÖ\u0001J\u0016\u00100\u001a\u00020 2\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u00020*R\"\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0012\"\u0004\b\u0016\u0010\u0014R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u00064"}, d2 = {"Lcom/transsion/home/bean/AppTab;", "Landroid/os/Parcelable;", "bottomTabs", "", "Lcom/transsion/home/bean/BottomTabItem;", "version", "", "badgeVer", "isUgcEnabled", "", "homeTab", "<init>", "(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/home/bean/BottomTabItem;)V", "getBottomTabs", "()Ljava/util/List;", "setBottomTabs", "(Ljava/util/List;)V", "getVersion", "()Ljava/lang/String;", "setVersion", "(Ljava/lang/String;)V", "getBadgeVer", "setBadgeVer", "()Z", "setUgcEnabled", "(Z)V", "getHomeTabs", "Lcom/transsion/home/bean/HomeTabItem;", "getHomeGradeList", "Lcom/transsion/home/bean/GradeGroup;", "getHomeBottomTab", "resetHomeTabs", "", "newTabs", "ensureHomeBottomTab", "component1", "component2", "component3", "component4", "component5", "copy", "describeContents", "", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "dest", "Landroid/os/Parcel;", "flags", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final /* data */ class AppTab implements Parcelable {
    private String badgeVer;
    private List<BottomTabItem> bottomTabs;
    private BottomTabItem homeTab;
    private boolean isUgcEnabled;
    private String version;
    public static final Parcelable.Creator<AppTab> CREATOR = new a();
    public static final int $stable = 8;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AppTab createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            Intrinsics.h(parcel, "parcel");
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i11 = parcel.readInt();
                ArrayList arrayList2 = new ArrayList(i11);
                for (int i12 = 0; i12 != i11; i12++) {
                    arrayList2.add(BottomTabItem.CREATOR.createFromParcel(parcel));
                }
                arrayList = arrayList2;
            }
            return new AppTab(arrayList, parcel.readString(), parcel.readString(), parcel.readInt() != 0, parcel.readInt() != 0 ? BottomTabItem.CREATOR.createFromParcel(parcel) : null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final AppTab[] newArray(int i11) {
            return new AppTab[i11];
        }
    }

    public AppTab(List<BottomTabItem> list, String str, String str2, boolean z10, BottomTabItem bottomTabItem) {
        this.bottomTabs = list;
        this.version = str;
        this.badgeVer = str2;
        this.isUgcEnabled = z10;
        this.homeTab = bottomTabItem;
    }

    public /* synthetic */ AppTab(List list, String str, String str2, boolean z10, BottomTabItem bottomTabItem, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, str, str2, (i11 & 8) != 0 ? false : z10, (i11 & 16) != 0 ? null : bottomTabItem);
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    private final BottomTabItem getHomeTab() {
        return this.homeTab;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ AppTab copy$default(AppTab appTab, List list, String str, String str2, boolean z10, BottomTabItem bottomTabItem, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = appTab.bottomTabs;
        }
        if ((i11 & 2) != 0) {
            str = appTab.version;
        }
        String str3 = str;
        if ((i11 & 4) != 0) {
            str2 = appTab.badgeVer;
        }
        String str4 = str2;
        if ((i11 & 8) != 0) {
            z10 = appTab.isUgcEnabled;
        }
        boolean z11 = z10;
        if ((i11 & 16) != 0) {
            bottomTabItem = appTab.homeTab;
        }
        return appTab.copy(list, str3, str4, z11, bottomTabItem);
    }

    private final void ensureHomeBottomTab() {
        List<BottomTabItem> list;
        if (this.homeTab != null || (list = this.bottomTabs) == null) {
            return;
        }
        for (BottomTabItem bottomTabItem : list) {
            if (Intrinsics.c(bottomTabItem.getBtTabCode(), BottomTabType.TAB_CODE_HOME)) {
                this.homeTab = bottomTabItem;
            }
        }
    }

    public final List<BottomTabItem> component1() {
        return this.bottomTabs;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getVersion() {
        return this.version;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getBadgeVer() {
        return this.badgeVer;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getIsUgcEnabled() {
        return this.isUgcEnabled;
    }

    public final AppTab copy(List<BottomTabItem> bottomTabs, String version, String badgeVer, boolean isUgcEnabled, BottomTabItem homeTab) {
        return new AppTab(bottomTabs, version, badgeVer, isUgcEnabled, homeTab);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AppTab)) {
            return false;
        }
        AppTab appTab = (AppTab) other;
        return Intrinsics.c(this.bottomTabs, appTab.bottomTabs) && Intrinsics.c(this.version, appTab.version) && Intrinsics.c(this.badgeVer, appTab.badgeVer) && this.isUgcEnabled == appTab.isUgcEnabled && Intrinsics.c(this.homeTab, appTab.homeTab);
    }

    public final String getBadgeVer() {
        return this.badgeVer;
    }

    public final List<BottomTabItem> getBottomTabs() {
        return this.bottomTabs;
    }

    public final BottomTabItem getHomeBottomTab() {
        ensureHomeBottomTab();
        return this.homeTab;
    }

    public final List<GradeGroup> getHomeGradeList() {
        GradeBean gradeFilter;
        ensureHomeBottomTab();
        BottomTabItem bottomTabItem = this.homeTab;
        if (bottomTabItem == null || (gradeFilter = bottomTabItem.getGradeFilter()) == null) {
            return null;
        }
        return gradeFilter.getLevels();
    }

    public final List<HomeTabItem> getHomeTabs() {
        ensureHomeBottomTab();
        BottomTabItem bottomTabItem = this.homeTab;
        if (bottomTabItem != null) {
            return bottomTabItem.getSubTabs();
        }
        return null;
    }

    public final String getVersion() {
        return this.version;
    }

    public int hashCode() {
        List<BottomTabItem> list = this.bottomTabs;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        String str = this.version;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.badgeVer;
        int iHashCode3 = (((iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31) + e.a(this.isUgcEnabled)) * 31;
        BottomTabItem bottomTabItem = this.homeTab;
        return iHashCode3 + (bottomTabItem != null ? bottomTabItem.hashCode() : 0);
    }

    public final boolean isUgcEnabled() {
        return this.isUgcEnabled;
    }

    public final void resetHomeTabs(List<HomeTabItem> newTabs) {
        ensureHomeBottomTab();
        BottomTabItem bottomTabItem = this.homeTab;
        if (bottomTabItem != null) {
            bottomTabItem.setSubTabs(newTabs);
        }
    }

    public final void setBadgeVer(String str) {
        this.badgeVer = str;
    }

    public final void setBottomTabs(List<BottomTabItem> list) {
        this.bottomTabs = list;
    }

    public final void setUgcEnabled(boolean z10) {
        this.isUgcEnabled = z10;
    }

    public final void setVersion(String str) {
        this.version = str;
    }

    public String toString() {
        return "AppTab(bottomTabs=" + this.bottomTabs + ", version=" + this.version + ", badgeVer=" + this.badgeVer + ", isUgcEnabled=" + this.isUgcEnabled + ", homeTab=" + this.homeTab + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        List<BottomTabItem> list = this.bottomTabs;
        if (list == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list.size());
            Iterator<BottomTabItem> it = list.iterator();
            while (it.hasNext()) {
                it.next().writeToParcel(dest, flags);
            }
        }
        dest.writeString(this.version);
        dest.writeString(this.badgeVer);
        dest.writeInt(this.isUgcEnabled ? 1 : 0);
        BottomTabItem bottomTabItem = this.homeTab;
        if (bottomTabItem == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            bottomTabItem.writeToParcel(dest, flags);
        }
    }
}
