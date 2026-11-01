package com.cloud.tmc.fps.data;

import androidx.collection.s;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\t\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÆ\u0003J'\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019HÖ\u0003J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\r\"\u0004\b\u0011\u0010\u000f¨\u0006\u001e"}, d2 = {"Lcom/cloud/tmc/fps/data/ConfigData;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "grayScale", "", "jankThreshold", "", "traceInterval", "(FJJ)V", "getGrayScale", "()F", "setGrayScale", "(F)V", "getJankThreshold", "()J", "setJankThreshold", "(J)V", "getTraceInterval", "setTraceInterval", "component1", "component2", "component3", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "", "com.cloud.tmc.minifps"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ConfigData extends BaseBean {
    private float grayScale;
    private long jankThreshold;
    private long traceInterval;

    public ConfigData(float f11, long j11, long j12) {
        this.grayScale = f11;
        this.jankThreshold = j11;
        this.traceInterval = j12;
    }

    public static /* synthetic */ ConfigData copy$default(ConfigData configData, float f11, long j11, long j12, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            f11 = configData.grayScale;
        }
        if ((i11 & 2) != 0) {
            j11 = configData.jankThreshold;
        }
        long j13 = j11;
        if ((i11 & 4) != 0) {
            j12 = configData.traceInterval;
        }
        return configData.copy(f11, j13, j12);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final float getGrayScale() {
        return this.grayScale;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final long getJankThreshold() {
        return this.jankThreshold;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final long getTraceInterval() {
        return this.traceInterval;
    }

    public final ConfigData copy(float grayScale, long jankThreshold, long traceInterval) {
        return new ConfigData(grayScale, jankThreshold, traceInterval);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ConfigData)) {
            return false;
        }
        ConfigData configData = (ConfigData) other;
        return Float.compare(this.grayScale, configData.grayScale) == 0 && this.jankThreshold == configData.jankThreshold && this.traceInterval == configData.traceInterval;
    }

    public final float getGrayScale() {
        return this.grayScale;
    }

    public final long getJankThreshold() {
        return this.jankThreshold;
    }

    public final long getTraceInterval() {
        return this.traceInterval;
    }

    public int hashCode() {
        return (((Float.floatToIntBits(this.grayScale) * 31) + s.a(this.jankThreshold)) * 31) + s.a(this.traceInterval);
    }

    public final void setGrayScale(float f11) {
        this.grayScale = f11;
    }

    public final void setJankThreshold(long j11) {
        this.jankThreshold = j11;
    }

    public final void setTraceInterval(long j11) {
        this.traceInterval = j11;
    }

    public String toString() {
        return "ConfigData(grayScale=" + this.grayScale + ", jankThreshold=" + this.jankThreshold + ", traceInterval=" + this.traceInterval + ")";
    }
}
