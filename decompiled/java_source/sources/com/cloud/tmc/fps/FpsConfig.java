package com.cloud.tmc.fps;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\b\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000e¨\u0006\u0012"}, d2 = {"Lcom/cloud/tmc/fps/FpsConfig;", "", "()V", "grayScale", "", "getGrayScale", "()F", "setGrayScale", "(F)V", "jankThreshold", "", "getJankThreshold", "()J", "setJankThreshold", "(J)V", "traceInterval", "getTraceInterval", "setTraceInterval", "com.cloud.tmc.minifps"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class FpsConfig {
    private static float grayScale;
    public static final FpsConfig INSTANCE = new FpsConfig();
    private static long jankThreshold = 200;
    private static long traceInterval = 50;

    private FpsConfig() {
    }

    public final float getGrayScale() {
        return grayScale;
    }

    public final long getJankThreshold() {
        return jankThreshold;
    }

    public final long getTraceInterval() {
        return traceInterval;
    }

    public final void setGrayScale(float f11) {
        grayScale = f11;
    }

    public final void setJankThreshold(long j11) {
        jankThreshold = j11;
    }

    public final void setTraceInterval(long j11) {
        traceInterval = j11;
    }
}
