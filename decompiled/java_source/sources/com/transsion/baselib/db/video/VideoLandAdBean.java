package com.transsion.baselib.db.video;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÆ\u0003J'\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u0005HÖ\u0001J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u000e\"\u0004\b\u0012\u0010\u0010¨\u0006\u001c"}, d2 = {"Lcom/transsion/baselib/db/video/VideoLandAdBean;", "", "resourceId", "", "startAdDayKey", "", "endAdDayKey", "<init>", "(Ljava/lang/String;II)V", "getResourceId", "()Ljava/lang/String;", "setResourceId", "(Ljava/lang/String;)V", "getStartAdDayKey", "()I", "setStartAdDayKey", "(I)V", "getEndAdDayKey", "setEndAdDayKey", "component1", "component2", "component3", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "toString", "BaseLib_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class VideoLandAdBean {
    private int endAdDayKey;
    private String resourceId;
    private int startAdDayKey;

    public VideoLandAdBean(String resourceId, int i11, int i12) {
        Intrinsics.h(resourceId, "resourceId");
        this.resourceId = resourceId;
        this.startAdDayKey = i11;
        this.endAdDayKey = i12;
    }

    public /* synthetic */ VideoLandAdBean(String str, int i11, int i12, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i13 & 2) != 0 ? 0 : i11, (i13 & 4) != 0 ? 0 : i12);
    }

    public static /* synthetic */ VideoLandAdBean copy$default(VideoLandAdBean videoLandAdBean, String str, int i11, int i12, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            str = videoLandAdBean.resourceId;
        }
        if ((i13 & 2) != 0) {
            i11 = videoLandAdBean.startAdDayKey;
        }
        if ((i13 & 4) != 0) {
            i12 = videoLandAdBean.endAdDayKey;
        }
        return videoLandAdBean.copy(str, i11, i12);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getResourceId() {
        return this.resourceId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getStartAdDayKey() {
        return this.startAdDayKey;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getEndAdDayKey() {
        return this.endAdDayKey;
    }

    public final VideoLandAdBean copy(String resourceId, int startAdDayKey, int endAdDayKey) {
        Intrinsics.h(resourceId, "resourceId");
        return new VideoLandAdBean(resourceId, startAdDayKey, endAdDayKey);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof VideoLandAdBean)) {
            return false;
        }
        VideoLandAdBean videoLandAdBean = (VideoLandAdBean) other;
        return Intrinsics.c(this.resourceId, videoLandAdBean.resourceId) && this.startAdDayKey == videoLandAdBean.startAdDayKey && this.endAdDayKey == videoLandAdBean.endAdDayKey;
    }

    public final int getEndAdDayKey() {
        return this.endAdDayKey;
    }

    public final String getResourceId() {
        return this.resourceId;
    }

    public final int getStartAdDayKey() {
        return this.startAdDayKey;
    }

    public int hashCode() {
        return (((this.resourceId.hashCode() * 31) + this.startAdDayKey) * 31) + this.endAdDayKey;
    }

    public final void setEndAdDayKey(int i11) {
        this.endAdDayKey = i11;
    }

    public final void setResourceId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.resourceId = str;
    }

    public final void setStartAdDayKey(int i11) {
        this.startAdDayKey = i11;
    }

    public String toString() {
        return "VideoLandAdBean(resourceId=" + this.resourceId + ", startAdDayKey=" + this.startAdDayKey + ", endAdDayKey=" + this.endAdDayKey + ")";
    }
}
