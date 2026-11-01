package com.amazonaws.services.s3.model.metrics;

/* JADX INFO: loaded from: classes2.dex */
public interface MetricsPredicateVisitor {
    void a(MetricsAndOperator metricsAndOperator);

    void b(MetricsTagPredicate metricsTagPredicate);

    void c(MetricsPrefixPredicate metricsPrefixPredicate);
}
