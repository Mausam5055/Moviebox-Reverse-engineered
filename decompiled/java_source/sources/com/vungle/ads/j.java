package com.vungle.ads;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public abstract class j extends p {
    private Long valueFirst;
    private Long valueSecond;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(Sdk$SDKMetric.SDKMetricType metricType) {
        super(metricType);
        Intrinsics.h(metricType, "metricType");
    }

    public final Long getValueFirst() {
        return this.valueFirst;
    }

    public final Long getValueSecond() {
        return this.valueSecond;
    }

    public final void setValueFirst(Long l11) {
        this.valueFirst = l11;
    }

    public final void setValueSecond(Long l11) {
        this.valueSecond = l11;
    }
}
