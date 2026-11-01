package com.amazonaws.metrics;

/* JADX INFO: loaded from: classes2.dex */
public abstract class MetricCollector {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final MetricCollector f18440a = new MetricCollector() { // from class: com.amazonaws.metrics.MetricCollector.1
        @Override // com.amazonaws.metrics.MetricCollector
        public RequestMetricCollector a() {
            return RequestMetricCollector.f18442a;
        }

        @Override // com.amazonaws.metrics.MetricCollector
        public ServiceMetricCollector b() {
            return ServiceMetricCollector.f18443a;
        }

        @Override // com.amazonaws.metrics.MetricCollector
        public boolean c() {
            return false;
        }

        @Override // com.amazonaws.metrics.MetricCollector
        public boolean d() {
            return true;
        }
    };

    public abstract RequestMetricCollector a();

    public abstract ServiceMetricCollector b();

    public abstract boolean c();

    public abstract boolean d();
}
