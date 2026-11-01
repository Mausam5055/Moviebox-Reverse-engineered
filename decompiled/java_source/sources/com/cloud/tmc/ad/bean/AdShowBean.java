package com.cloud.tmc.ad.bean;

import androidx.collection.s;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b%\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B_\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\f\u001a\u00020\u0003\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e¢\u0006\u0002\u0010\u000fJ\t\u0010(\u001a\u00020\u0003HÆ\u0003J\t\u0010)\u001a\u00020\u0003HÆ\u0003J\t\u0010*\u001a\u00020\u0006HÆ\u0003J\t\u0010+\u001a\u00020\u0003HÆ\u0003J\t\u0010,\u001a\u00020\u0006HÆ\u0003J\t\u0010-\u001a\u00020\nHÆ\u0003J\t\u0010.\u001a\u00020\u0003HÆ\u0003J\t\u0010/\u001a\u00020\u0003HÆ\u0003J\t\u00100\u001a\u00020\u000eHÆ\u0003Jc\u00101\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\u00032\b\b\u0002\u0010\r\u001a\u00020\u000eHÆ\u0001J\u0013\u00102\u001a\u00020\u000e2\b\u00103\u001a\u0004\u0018\u000104HÖ\u0003J\t\u00105\u001a\u00020\u0003HÖ\u0001J\t\u00106\u001a\u00020\nHÖ\u0001R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0011\"\u0004\b\u0015\u0010\u0013R\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\u0011\"\u0004\b\u0019\u0010\u0013R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001a\u0010\b\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001a\u0010\u000b\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0011\"\u0004\b#\u0010\u0013R\u001a\u0010\f\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\u0011\"\u0004\b%\u0010\u0013R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u001f\"\u0004\b'\u0010!¨\u00067"}, d2 = {"Lcom/cloud/tmc/ad/bean/AdShowBean;", "Ljava/io/Serializable;", "imageWidth", "", "imageHeight", "showTs", "", "isEffectiveShow", "showDuration", "showArea", "", "showReportTimeType", "showTimes", "isClose", "", "(IIJIJLjava/lang/String;IIZ)V", "getImageHeight", "()I", "setImageHeight", "(I)V", "getImageWidth", "setImageWidth", "()Z", "setClose", "(Z)V", "setEffectiveShow", "getShowArea", "()Ljava/lang/String;", "setShowArea", "(Ljava/lang/String;)V", "getShowDuration", "()J", "setShowDuration", "(J)V", "getShowReportTimeType", "setShowReportTimeType", "getShowTimes", "setShowTimes", "getShowTs", "setShowTs", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class AdShowBean implements Serializable {
    private int imageHeight;
    private int imageWidth;
    private boolean isClose;
    private int isEffectiveShow;
    private String showArea;
    private long showDuration;
    private int showReportTimeType;
    private int showTimes;
    private long showTs;

    public AdShowBean() {
        this(0, 0, 0L, 0, 0L, null, 0, 0, false, 511, null);
    }

    public AdShowBean(int i11, int i12, long j11, int i13, long j12, String showArea, int i14, int i15, boolean z10) {
        Intrinsics.h(showArea, "showArea");
        this.imageWidth = i11;
        this.imageHeight = i12;
        this.showTs = j11;
        this.isEffectiveShow = i13;
        this.showDuration = j12;
        this.showArea = showArea;
        this.showReportTimeType = i14;
        this.showTimes = i15;
        this.isClose = z10;
    }

    public /* synthetic */ AdShowBean(int i11, int i12, long j11, int i13, long j12, String str, int i14, int i15, boolean z10, int i16, DefaultConstructorMarker defaultConstructorMarker) {
        this((i16 & 1) != 0 ? 0 : i11, (i16 & 2) != 0 ? 0 : i12, (i16 & 4) != 0 ? 0L : j11, (i16 & 8) != 0 ? 0 : i13, (i16 & 16) == 0 ? j12 : 0L, (i16 & 32) != 0 ? "" : str, (i16 & 64) != 0 ? 0 : i14, (i16 & 128) != 0 ? 0 : i15, (i16 & 256) == 0 ? z10 : false);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getImageWidth() {
        return this.imageWidth;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getImageHeight() {
        return this.imageHeight;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final long getShowTs() {
        return this.showTs;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final int getIsEffectiveShow() {
        return this.isEffectiveShow;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final long getShowDuration() {
        return this.showDuration;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getShowArea() {
        return this.showArea;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final int getShowReportTimeType() {
        return this.showReportTimeType;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final int getShowTimes() {
        return this.showTimes;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final boolean getIsClose() {
        return this.isClose;
    }

    public final AdShowBean copy(int imageWidth, int imageHeight, long showTs, int isEffectiveShow, long showDuration, String showArea, int showReportTimeType, int showTimes, boolean isClose) {
        Intrinsics.h(showArea, "showArea");
        return new AdShowBean(imageWidth, imageHeight, showTs, isEffectiveShow, showDuration, showArea, showReportTimeType, showTimes, isClose);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AdShowBean)) {
            return false;
        }
        AdShowBean adShowBean = (AdShowBean) other;
        return this.imageWidth == adShowBean.imageWidth && this.imageHeight == adShowBean.imageHeight && this.showTs == adShowBean.showTs && this.isEffectiveShow == adShowBean.isEffectiveShow && this.showDuration == adShowBean.showDuration && Intrinsics.c(this.showArea, adShowBean.showArea) && this.showReportTimeType == adShowBean.showReportTimeType && this.showTimes == adShowBean.showTimes && this.isClose == adShowBean.isClose;
    }

    public final int getImageHeight() {
        return this.imageHeight;
    }

    public final int getImageWidth() {
        return this.imageWidth;
    }

    public final String getShowArea() {
        return this.showArea;
    }

    public final long getShowDuration() {
        return this.showDuration;
    }

    public final int getShowReportTimeType() {
        return this.showReportTimeType;
    }

    public final int getShowTimes() {
        return this.showTimes;
    }

    public final long getShowTs() {
        return this.showTs;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [int] */
    /* JADX WARN: Type inference failed for: r1v11, types: [int] */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    public int hashCode() {
        int iA = ((((((((((((((this.imageWidth * 31) + this.imageHeight) * 31) + s.a(this.showTs)) * 31) + this.isEffectiveShow) * 31) + s.a(this.showDuration)) * 31) + this.showArea.hashCode()) * 31) + this.showReportTimeType) * 31) + this.showTimes) * 31;
        boolean z10 = this.isClose;
        ?? r11 = z10;
        if (z10) {
            r11 = 1;
        }
        return iA + r11;
    }

    public final boolean isClose() {
        return this.isClose;
    }

    public final int isEffectiveShow() {
        return this.isEffectiveShow;
    }

    public final void setClose(boolean z10) {
        this.isClose = z10;
    }

    public final void setEffectiveShow(int i11) {
        this.isEffectiveShow = i11;
    }

    public final void setImageHeight(int i11) {
        this.imageHeight = i11;
    }

    public final void setImageWidth(int i11) {
        this.imageWidth = i11;
    }

    public final void setShowArea(String str) {
        Intrinsics.h(str, "<set-?>");
        this.showArea = str;
    }

    public final void setShowDuration(long j11) {
        this.showDuration = j11;
    }

    public final void setShowReportTimeType(int i11) {
        this.showReportTimeType = i11;
    }

    public final void setShowTimes(int i11) {
        this.showTimes = i11;
    }

    public final void setShowTs(long j11) {
        this.showTs = j11;
    }

    public String toString() {
        return "AdShowBean(imageWidth=" + this.imageWidth + ", imageHeight=" + this.imageHeight + ", showTs=" + this.showTs + ", isEffectiveShow=" + this.isEffectiveShow + ", showDuration=" + this.showDuration + ", showArea=" + this.showArea + ", showReportTimeType=" + this.showReportTimeType + ", showTimes=" + this.showTimes + ", isClose=" + this.isClose + ")";
    }
}
