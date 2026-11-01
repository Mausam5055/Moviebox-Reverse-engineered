package com.amazonaws.metrics;

/* JADX INFO: loaded from: classes2.dex */
public class SimpleServiceMetricType extends SimpleMetricType implements ServiceMetricType {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f18444a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f18445b;

    public SimpleServiceMetricType(String str, String str2) {
        this.f18444a = str;
        this.f18445b = str2;
    }

    @Override // com.amazonaws.metrics.SimpleMetricType, com.amazonaws.metrics.MetricType
    public String name() {
        return this.f18444a;
    }
}
