package com.cloud.tmc.integration.model;

import androidx.collection.s;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PointConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0007HÆ\u0003J\t\u0010\u0017\u001a\u00020\tHÆ\u0003J;\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\tHÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u0007HÖ\u0001J\t\u0010\u001d\u001a\u00020\tHÖ\u0001R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\f¨\u0006\u001e"}, d2 = {"Lcom/cloud/tmc/integration/model/ForegroundRangTime;", "", "startTime", "", "endTime", "costTime", PointConstants.POINT_FOREGROUND_START_COUNT, "", PointConstants.POINT_FOREGROUND_RANDOM_ID, "", "(JJJILjava/lang/String;)V", "getCostTime", "()J", "getEndTime", "getForegroundRandomId", "()Ljava/lang/String;", "getForegroundStartCount", "()I", "getStartTime", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "toString", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ForegroundRangTime {
    private final long costTime;
    private final long endTime;
    private final String foregroundRandomId;
    private final int foregroundStartCount;
    private final long startTime;

    public ForegroundRangTime(long j11, long j12, long j13, int i11, String foregroundRandomId) {
        Intrinsics.h(foregroundRandomId, "foregroundRandomId");
        this.startTime = j11;
        this.endTime = j12;
        this.costTime = j13;
        this.foregroundStartCount = i11;
        this.foregroundRandomId = foregroundRandomId;
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final long getStartTime() {
        return this.startTime;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final long getEndTime() {
        return this.endTime;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final long getCostTime() {
        return this.costTime;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final int getForegroundStartCount() {
        return this.foregroundStartCount;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getForegroundRandomId() {
        return this.foregroundRandomId;
    }

    public final ForegroundRangTime copy(long startTime, long endTime, long costTime, int foregroundStartCount, String foregroundRandomId) {
        Intrinsics.h(foregroundRandomId, "foregroundRandomId");
        return new ForegroundRangTime(startTime, endTime, costTime, foregroundStartCount, foregroundRandomId);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ForegroundRangTime)) {
            return false;
        }
        ForegroundRangTime foregroundRangTime = (ForegroundRangTime) other;
        return this.startTime == foregroundRangTime.startTime && this.endTime == foregroundRangTime.endTime && this.costTime == foregroundRangTime.costTime && this.foregroundStartCount == foregroundRangTime.foregroundStartCount && Intrinsics.c(this.foregroundRandomId, foregroundRangTime.foregroundRandomId);
    }

    public final long getCostTime() {
        return this.costTime;
    }

    public final long getEndTime() {
        return this.endTime;
    }

    public final String getForegroundRandomId() {
        return this.foregroundRandomId;
    }

    public final int getForegroundStartCount() {
        return this.foregroundStartCount;
    }

    public final long getStartTime() {
        return this.startTime;
    }

    public int hashCode() {
        return (((((((s.a(this.startTime) * 31) + s.a(this.endTime)) * 31) + s.a(this.costTime)) * 31) + this.foregroundStartCount) * 31) + this.foregroundRandomId.hashCode();
    }

    public String toString() {
        return "ForegroundRangTime(startTime=" + this.startTime + ", endTime=" + this.endTime + ", costTime=" + this.costTime + ", foregroundStartCount=" + this.foregroundStartCount + ", foregroundRandomId=" + this.foregroundRandomId + ")";
    }
}
