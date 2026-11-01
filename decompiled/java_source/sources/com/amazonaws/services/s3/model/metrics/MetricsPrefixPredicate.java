package com.amazonaws.services.s3.model.metrics;

/* JADX INFO: loaded from: classes2.dex */
public final class MetricsPrefixPredicate extends MetricsFilterPredicate {
    private final String prefix;

    public MetricsPrefixPredicate(String str) {
        this.prefix = str;
    }

    @Override // com.amazonaws.services.s3.model.metrics.MetricsFilterPredicate
    public void accept(MetricsPredicateVisitor metricsPredicateVisitor) {
        metricsPredicateVisitor.c(this);
    }

    public String getPrefix() {
        return this.prefix;
    }
}
