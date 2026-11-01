package com.vungle.ads;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class w extends p {
    private Long value;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w(Sdk$SDKMetric.SDKMetricType metricType) {
        super(metricType);
        Intrinsics.h(metricType, "metricType");
    }

    public final void addValue(long j11) {
        Long l11 = this.value;
        this.value = Long.valueOf((l11 != null ? l11.longValue() : 0L) + j11);
    }

    @Override // com.vungle.ads.p
    public long getValue() {
        Long l11 = this.value;
        if (l11 != null) {
            return l11.longValue();
        }
        return 0L;
    }

    /* JADX INFO: renamed from: getValue, reason: collision with other method in class */
    public final Long m452getValue() {
        return this.value;
    }

    public final void markTime() {
        this.value = Long.valueOf(System.currentTimeMillis());
    }

    public final void setValue(Long l11) {
        this.value = l11;
    }
}
