package com.cloud.tmc.ad.bean;

import androidx.collection.s;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0007HÆ\u0003J'\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cHÖ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001e\u001a\u00020\u0007HÖ\u0001R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u001f"}, d2 = {"Lcom/cloud/tmc/ad/bean/AdClickBean;", "Ljava/io/Serializable;", "showTimes", "", "showDuration", "", "showArea", "", "(IJLjava/lang/String;)V", "getShowArea", "()Ljava/lang/String;", "setShowArea", "(Ljava/lang/String;)V", "getShowDuration", "()J", "setShowDuration", "(J)V", "getShowTimes", "()I", "setShowTimes", "(I)V", "component1", "component2", "component3", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class AdClickBean implements Serializable {
    private String showArea;
    private long showDuration;
    private int showTimes;

    public AdClickBean() {
        this(0, 0L, null, 7, null);
    }

    public AdClickBean(int i11, long j11, String showArea) {
        Intrinsics.h(showArea, "showArea");
        this.showTimes = i11;
        this.showDuration = j11;
        this.showArea = showArea;
    }

    public /* synthetic */ AdClickBean(int i11, long j11, String str, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 0 : i11, (i12 & 2) != 0 ? 0L : j11, (i12 & 4) != 0 ? "" : str);
    }

    public static /* synthetic */ AdClickBean copy$default(AdClickBean adClickBean, int i11, long j11, String str, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i11 = adClickBean.showTimes;
        }
        if ((i12 & 2) != 0) {
            j11 = adClickBean.showDuration;
        }
        if ((i12 & 4) != 0) {
            str = adClickBean.showArea;
        }
        return adClickBean.copy(i11, j11, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getShowTimes() {
        return this.showTimes;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final long getShowDuration() {
        return this.showDuration;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getShowArea() {
        return this.showArea;
    }

    public final AdClickBean copy(int showTimes, long showDuration, String showArea) {
        Intrinsics.h(showArea, "showArea");
        return new AdClickBean(showTimes, showDuration, showArea);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AdClickBean)) {
            return false;
        }
        AdClickBean adClickBean = (AdClickBean) other;
        return this.showTimes == adClickBean.showTimes && this.showDuration == adClickBean.showDuration && Intrinsics.c(this.showArea, adClickBean.showArea);
    }

    public final String getShowArea() {
        return this.showArea;
    }

    public final long getShowDuration() {
        return this.showDuration;
    }

    public final int getShowTimes() {
        return this.showTimes;
    }

    public int hashCode() {
        return (((this.showTimes * 31) + s.a(this.showDuration)) * 31) + this.showArea.hashCode();
    }

    public final void setShowArea(String str) {
        Intrinsics.h(str, "<set-?>");
        this.showArea = str;
    }

    public final void setShowDuration(long j11) {
        this.showDuration = j11;
    }

    public final void setShowTimes(int i11) {
        this.showTimes = i11;
    }

    public String toString() {
        return "AdClickBean(showTimes=" + this.showTimes + ", showDuration=" + this.showDuration + ", showArea=" + this.showArea + ")";
    }
}
