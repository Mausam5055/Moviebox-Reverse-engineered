package com.amazonaws.metrics;

import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
class ByteThroughputHelper extends ByteThroughputProvider {
    ByteThroughputHelper(ThroughputMetricType throughputMetricType) {
        super(throughputMetricType);
    }

    @Override // com.amazonaws.metrics.ByteThroughputProvider
    public void d(int i11, long j11) {
        super.d(i11, j11);
    }

    void f() {
        if (a() > 0) {
            AwsSdkMetrics.getServiceMetricCollector().a(this);
            e();
        }
    }

    long g() {
        if (TimeUnit.NANOSECONDS.toSeconds(b()) > 10) {
            f();
        }
        return System.nanoTime();
    }
}
