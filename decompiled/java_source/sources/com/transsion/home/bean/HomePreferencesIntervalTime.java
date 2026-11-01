package com.transsion.home.bean;

import androidx.annotation.Keep;
import androidx.collection.s;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J'\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\t¨\u0006\u0017"}, d2 = {"Lcom/transsion/home/bean/HomePreferencesIntervalTime;", "", "showInterval", "", "closeInterval", "chooseInterval", "<init>", "(JJJ)V", "getShowInterval", "()J", "getCloseInterval", "getChooseInterval", "component1", "component2", "component3", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class HomePreferencesIntervalTime {
    public static final int $stable = 0;

    @SerializedName("chooseInterval")
    private final long chooseInterval;

    @SerializedName("closeInterval")
    private final long closeInterval;

    @SerializedName("showInterval")
    private final long showInterval;

    public HomePreferencesIntervalTime(long j11, long j12, long j13) {
        this.showInterval = j11;
        this.closeInterval = j12;
        this.chooseInterval = j13;
    }

    public static /* synthetic */ HomePreferencesIntervalTime copy$default(HomePreferencesIntervalTime homePreferencesIntervalTime, long j11, long j12, long j13, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            j11 = homePreferencesIntervalTime.showInterval;
        }
        long j14 = j11;
        if ((i11 & 2) != 0) {
            j12 = homePreferencesIntervalTime.closeInterval;
        }
        long j15 = j12;
        if ((i11 & 4) != 0) {
            j13 = homePreferencesIntervalTime.chooseInterval;
        }
        return homePreferencesIntervalTime.copy(j14, j15, j13);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final long getShowInterval() {
        return this.showInterval;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final long getCloseInterval() {
        return this.closeInterval;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final long getChooseInterval() {
        return this.chooseInterval;
    }

    public final HomePreferencesIntervalTime copy(long showInterval, long closeInterval, long chooseInterval) {
        return new HomePreferencesIntervalTime(showInterval, closeInterval, chooseInterval);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof HomePreferencesIntervalTime)) {
            return false;
        }
        HomePreferencesIntervalTime homePreferencesIntervalTime = (HomePreferencesIntervalTime) other;
        return this.showInterval == homePreferencesIntervalTime.showInterval && this.closeInterval == homePreferencesIntervalTime.closeInterval && this.chooseInterval == homePreferencesIntervalTime.chooseInterval;
    }

    public final long getChooseInterval() {
        return this.chooseInterval;
    }

    public final long getCloseInterval() {
        return this.closeInterval;
    }

    public final long getShowInterval() {
        return this.showInterval;
    }

    public int hashCode() {
        return (((s.a(this.showInterval) * 31) + s.a(this.closeInterval)) * 31) + s.a(this.chooseInterval);
    }

    public String toString() {
        return "HomePreferencesIntervalTime(showInterval=" + this.showInterval + ", closeInterval=" + this.closeInterval + ", chooseInterval=" + this.chooseInterval + ")";
    }
}
