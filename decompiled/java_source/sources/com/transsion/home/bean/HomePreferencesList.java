package com.transsion.home.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\n\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u001c\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0012"}, d2 = {"Lcom/transsion/home/bean/HomePreferencesList;", "", "preferences", "", "Lcom/transsion/home/bean/HomePreferencesConfig;", "<init>", "(Ljava/util/List;)V", "getPreferences", "()Ljava/util/List;", "component1", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class HomePreferencesList {
    public static final int $stable = 8;

    @SerializedName("preferences")
    private final List<HomePreferencesConfig> preferences;

    public HomePreferencesList(List<HomePreferencesConfig> preferences) {
        Intrinsics.h(preferences, "preferences");
        this.preferences = preferences;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ HomePreferencesList copy$default(HomePreferencesList homePreferencesList, List list, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = homePreferencesList.preferences;
        }
        return homePreferencesList.copy(list);
    }

    public final List<HomePreferencesConfig> component1() {
        return this.preferences;
    }

    public final HomePreferencesList copy(List<HomePreferencesConfig> preferences) {
        Intrinsics.h(preferences, "preferences");
        return new HomePreferencesList(preferences);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof HomePreferencesList) && Intrinsics.c(this.preferences, ((HomePreferencesList) other).preferences);
    }

    public final List<HomePreferencesConfig> getPreferences() {
        return this.preferences;
    }

    public int hashCode() {
        return this.preferences.hashCode();
    }

    public String toString() {
        return "HomePreferencesList(preferences=" + this.preferences + ")";
    }
}
