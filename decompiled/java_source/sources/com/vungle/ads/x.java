package com.vungle.ads;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public class x extends j {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x(Sdk$SDKMetric.SDKMetricType metricType) {
        super(metricType);
        Intrinsics.h(metricType, "metricType");
    }

    private final long calculateIntervalDuration() {
        long currentTime = getCurrentTime();
        Long valueSecond = getValueSecond();
        long jLongValue = valueSecond != null ? valueSecond.longValue() : currentTime;
        Long valueFirst = getValueFirst();
        if (valueFirst != null) {
            currentTime = valueFirst.longValue();
        }
        return (jLongValue - currentTime) / ((long) 1000000);
    }

    private final long getCurrentTime() {
        return System.nanoTime();
    }

    @Override // com.vungle.ads.p
    public long getValue() {
        return calculateIntervalDuration();
    }

    public void markEnd() {
        setValueSecond(Long.valueOf(getCurrentTime()));
    }

    public void markStart() {
        setValueFirst(Long.valueOf(getCurrentTime()));
    }
}
