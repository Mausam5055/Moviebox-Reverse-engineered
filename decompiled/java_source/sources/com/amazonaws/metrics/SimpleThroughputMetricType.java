package com.amazonaws.metrics;

/* JADX INFO: loaded from: classes2.dex */
public class SimpleThroughputMetricType extends SimpleServiceMetricType implements ThroughputMetricType {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ServiceMetricType f18446c;

    public SimpleThroughputMetricType(String str, String str2, String str3) {
        super(str, str2);
        this.f18446c = new SimpleServiceMetricType(str3, str2);
    }
}
