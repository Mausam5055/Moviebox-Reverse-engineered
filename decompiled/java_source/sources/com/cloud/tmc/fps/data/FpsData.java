package com.cloud.tmc.fps.data;

import androidx.collection.s;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0014"}, d2 = {"Lcom/cloud/tmc/fps/data/FpsData;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "frameTimeMillis", "", "frameCostMillis", "(JJ)V", "getFrameCostMillis", "()J", "getFrameTimeMillis", "component1", "component2", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "", "com.cloud.tmc.minifps"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class FpsData extends BaseBean {
    private final long frameCostMillis;
    private final long frameTimeMillis;

    public FpsData() {
        this(0L, 0L, 3, null);
    }

    public FpsData(long j11, long j12) {
        this.frameTimeMillis = j11;
        this.frameCostMillis = j12;
    }

    public /* synthetic */ FpsData(long j11, long j12, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 0L : j11, (i11 & 2) != 0 ? 0L : j12);
    }

    public static /* synthetic */ FpsData copy$default(FpsData fpsData, long j11, long j12, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            j11 = fpsData.frameTimeMillis;
        }
        if ((i11 & 2) != 0) {
            j12 = fpsData.frameCostMillis;
        }
        return fpsData.copy(j11, j12);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final long getFrameTimeMillis() {
        return this.frameTimeMillis;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final long getFrameCostMillis() {
        return this.frameCostMillis;
    }

    public final FpsData copy(long frameTimeMillis, long frameCostMillis) {
        return new FpsData(frameTimeMillis, frameCostMillis);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof FpsData)) {
            return false;
        }
        FpsData fpsData = (FpsData) other;
        return this.frameTimeMillis == fpsData.frameTimeMillis && this.frameCostMillis == fpsData.frameCostMillis;
    }

    public final long getFrameCostMillis() {
        return this.frameCostMillis;
    }

    public final long getFrameTimeMillis() {
        return this.frameTimeMillis;
    }

    public int hashCode() {
        return (s.a(this.frameTimeMillis) * 31) + s.a(this.frameCostMillis);
    }

    public String toString() {
        return "FpsData(frameTimeMillis=" + this.frameTimeMillis + ", frameCostMillis=" + this.frameCostMillis + ")";
    }
}
