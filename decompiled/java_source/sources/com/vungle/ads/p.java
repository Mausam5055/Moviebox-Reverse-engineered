package com.vungle.ads;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public abstract class p {
    private String meta;
    private Sdk$SDKMetric.SDKMetricType metricType;

    public p(Sdk$SDKMetric.SDKMetricType metricType) {
        Intrinsics.h(metricType, "metricType");
        this.metricType = metricType;
    }

    public final String getMeta() {
        return this.meta;
    }

    public final Sdk$SDKMetric.SDKMetricType getMetricType() {
        return this.metricType;
    }

    public abstract long getValue();

    public final void setMeta(String str) {
        this.meta = str;
    }

    public final void setMetricType(Sdk$SDKMetric.SDKMetricType sDKMetricType) {
        Intrinsics.h(sDKMetricType, "<set-?>");
        this.metricType = sDKMetricType;
    }
}
