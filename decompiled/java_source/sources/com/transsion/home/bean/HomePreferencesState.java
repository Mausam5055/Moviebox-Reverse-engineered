package com.transsion.home.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001BA\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u000f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u000f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u000f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003JI\u0010\u0013\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u0017\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000b¨\u0006\u001b"}, d2 = {"Lcom/transsion/home/bean/HomePreferencesState;", "", "allConfigs", "", "Lcom/transsion/home/bean/HomePreferencesConfig;", "optInsertConfigs", "popupConfigs", "enterPopConfigs", "<init>", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V", "getAllConfigs", "()Ljava/util/List;", "getOptInsertConfigs", "getPopupConfigs", "getEnterPopConfigs", "component1", "component2", "component3", "component4", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class HomePreferencesState {
    public static final int $stable = 8;
    private final List<HomePreferencesConfig> allConfigs;
    private final List<HomePreferencesConfig> enterPopConfigs;
    private final List<HomePreferencesConfig> optInsertConfigs;
    private final List<HomePreferencesConfig> popupConfigs;

    public HomePreferencesState(List<HomePreferencesConfig> allConfigs, List<HomePreferencesConfig> optInsertConfigs, List<HomePreferencesConfig> popupConfigs, List<HomePreferencesConfig> enterPopConfigs) {
        Intrinsics.h(allConfigs, "allConfigs");
        Intrinsics.h(optInsertConfigs, "optInsertConfigs");
        Intrinsics.h(popupConfigs, "popupConfigs");
        Intrinsics.h(enterPopConfigs, "enterPopConfigs");
        this.allConfigs = allConfigs;
        this.optInsertConfigs = optInsertConfigs;
        this.popupConfigs = popupConfigs;
        this.enterPopConfigs = enterPopConfigs;
    }

    public /* synthetic */ HomePreferencesState(List list, List list2, List list3, List list4, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, list2, list3, (i11 & 8) != 0 ? CollectionsKt.l() : list4);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ HomePreferencesState copy$default(HomePreferencesState homePreferencesState, List list, List list2, List list3, List list4, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = homePreferencesState.allConfigs;
        }
        if ((i11 & 2) != 0) {
            list2 = homePreferencesState.optInsertConfigs;
        }
        if ((i11 & 4) != 0) {
            list3 = homePreferencesState.popupConfigs;
        }
        if ((i11 & 8) != 0) {
            list4 = homePreferencesState.enterPopConfigs;
        }
        return homePreferencesState.copy(list, list2, list3, list4);
    }

    public final List<HomePreferencesConfig> component1() {
        return this.allConfigs;
    }

    public final List<HomePreferencesConfig> component2() {
        return this.optInsertConfigs;
    }

    public final List<HomePreferencesConfig> component3() {
        return this.popupConfigs;
    }

    public final List<HomePreferencesConfig> component4() {
        return this.enterPopConfigs;
    }

    public final HomePreferencesState copy(List<HomePreferencesConfig> allConfigs, List<HomePreferencesConfig> optInsertConfigs, List<HomePreferencesConfig> popupConfigs, List<HomePreferencesConfig> enterPopConfigs) {
        Intrinsics.h(allConfigs, "allConfigs");
        Intrinsics.h(optInsertConfigs, "optInsertConfigs");
        Intrinsics.h(popupConfigs, "popupConfigs");
        Intrinsics.h(enterPopConfigs, "enterPopConfigs");
        return new HomePreferencesState(allConfigs, optInsertConfigs, popupConfigs, enterPopConfigs);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof HomePreferencesState)) {
            return false;
        }
        HomePreferencesState homePreferencesState = (HomePreferencesState) other;
        return Intrinsics.c(this.allConfigs, homePreferencesState.allConfigs) && Intrinsics.c(this.optInsertConfigs, homePreferencesState.optInsertConfigs) && Intrinsics.c(this.popupConfigs, homePreferencesState.popupConfigs) && Intrinsics.c(this.enterPopConfigs, homePreferencesState.enterPopConfigs);
    }

    public final List<HomePreferencesConfig> getAllConfigs() {
        return this.allConfigs;
    }

    public final List<HomePreferencesConfig> getEnterPopConfigs() {
        return this.enterPopConfigs;
    }

    public final List<HomePreferencesConfig> getOptInsertConfigs() {
        return this.optInsertConfigs;
    }

    public final List<HomePreferencesConfig> getPopupConfigs() {
        return this.popupConfigs;
    }

    public int hashCode() {
        return (((((this.allConfigs.hashCode() * 31) + this.optInsertConfigs.hashCode()) * 31) + this.popupConfigs.hashCode()) * 31) + this.enterPopConfigs.hashCode();
    }

    public String toString() {
        return "HomePreferencesState(allConfigs=" + this.allConfigs + ", optInsertConfigs=" + this.optInsertConfigs + ", popupConfigs=" + this.popupConfigs + ", enterPopConfigs=" + this.enterPopConfigs + ")";
    }
}
