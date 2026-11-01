package com.transsion.baselib.db.home;

import androidx.annotation.Keep;
import androidx.collection.s;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u001d\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u0005¢\u0006\u0004\b\u000b\u0010\fJ\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0005HÆ\u0003J\t\u0010 \u001a\u00020\u0005HÆ\u0003JO\u0010!\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\u00052\b\b\u0002\u0010\t\u001a\u00020\u00052\b\b\u0002\u0010\n\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\"\u001a\u00020#2\b\u0010$\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010%\u001a\u00020&HÖ\u0001J\t\u0010'\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0010\"\u0004\b\u0014\u0010\u0012R\u001a\u0010\u0007\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0010\"\u0004\b\u0016\u0010\u0012R\u0011\u0010\b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0010R\u0011\u0010\t\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0010R\u0011\u0010\n\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0010¨\u0006("}, d2 = {"Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;", "", "id", "", "showTime", "", "closeTime", "chooseTime", "showIntervalSeconds", "closeIntervalSeconds", "chooseIntervalSeconds", "<init>", "(Ljava/lang/String;JJJJJJ)V", "getId", "()Ljava/lang/String;", "getShowTime", "()J", "setShowTime", "(J)V", "getCloseTime", "setCloseTime", "getChooseTime", "setChooseTime", "getShowIntervalSeconds", "getCloseIntervalSeconds", "getChooseIntervalSeconds", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "BaseLib_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class HomePreferencesIntervalTimeDbBean {
    private final long chooseIntervalSeconds;
    private long chooseTime;
    private final long closeIntervalSeconds;
    private long closeTime;
    private final String id;
    private final long showIntervalSeconds;
    private long showTime;

    public HomePreferencesIntervalTimeDbBean(String id2, long j11, long j12, long j13, long j14, long j15, long j16) {
        Intrinsics.h(id2, "id");
        this.id = id2;
        this.showTime = j11;
        this.closeTime = j12;
        this.chooseTime = j13;
        this.showIntervalSeconds = j14;
        this.closeIntervalSeconds = j15;
        this.chooseIntervalSeconds = j16;
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final long getShowTime() {
        return this.showTime;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final long getCloseTime() {
        return this.closeTime;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final long getChooseTime() {
        return this.chooseTime;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final long getShowIntervalSeconds() {
        return this.showIntervalSeconds;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final long getCloseIntervalSeconds() {
        return this.closeIntervalSeconds;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final long getChooseIntervalSeconds() {
        return this.chooseIntervalSeconds;
    }

    public final HomePreferencesIntervalTimeDbBean copy(String id2, long showTime, long closeTime, long chooseTime, long showIntervalSeconds, long closeIntervalSeconds, long chooseIntervalSeconds) {
        Intrinsics.h(id2, "id");
        return new HomePreferencesIntervalTimeDbBean(id2, showTime, closeTime, chooseTime, showIntervalSeconds, closeIntervalSeconds, chooseIntervalSeconds);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof HomePreferencesIntervalTimeDbBean)) {
            return false;
        }
        HomePreferencesIntervalTimeDbBean homePreferencesIntervalTimeDbBean = (HomePreferencesIntervalTimeDbBean) other;
        return Intrinsics.c(this.id, homePreferencesIntervalTimeDbBean.id) && this.showTime == homePreferencesIntervalTimeDbBean.showTime && this.closeTime == homePreferencesIntervalTimeDbBean.closeTime && this.chooseTime == homePreferencesIntervalTimeDbBean.chooseTime && this.showIntervalSeconds == homePreferencesIntervalTimeDbBean.showIntervalSeconds && this.closeIntervalSeconds == homePreferencesIntervalTimeDbBean.closeIntervalSeconds && this.chooseIntervalSeconds == homePreferencesIntervalTimeDbBean.chooseIntervalSeconds;
    }

    public final long getChooseIntervalSeconds() {
        return this.chooseIntervalSeconds;
    }

    public final long getChooseTime() {
        return this.chooseTime;
    }

    public final long getCloseIntervalSeconds() {
        return this.closeIntervalSeconds;
    }

    public final long getCloseTime() {
        return this.closeTime;
    }

    public final String getId() {
        return this.id;
    }

    public final long getShowIntervalSeconds() {
        return this.showIntervalSeconds;
    }

    public final long getShowTime() {
        return this.showTime;
    }

    public int hashCode() {
        return (((((((((((this.id.hashCode() * 31) + s.a(this.showTime)) * 31) + s.a(this.closeTime)) * 31) + s.a(this.chooseTime)) * 31) + s.a(this.showIntervalSeconds)) * 31) + s.a(this.closeIntervalSeconds)) * 31) + s.a(this.chooseIntervalSeconds);
    }

    public final void setChooseTime(long j11) {
        this.chooseTime = j11;
    }

    public final void setCloseTime(long j11) {
        this.closeTime = j11;
    }

    public final void setShowTime(long j11) {
        this.showTime = j11;
    }

    public String toString() {
        return "HomePreferencesIntervalTimeDbBean(id=" + this.id + ", showTime=" + this.showTime + ", closeTime=" + this.closeTime + ", chooseTime=" + this.chooseTime + ", showIntervalSeconds=" + this.showIntervalSeconds + ", closeIntervalSeconds=" + this.closeIntervalSeconds + ", chooseIntervalSeconds=" + this.chooseIntervalSeconds + ")";
    }
}
