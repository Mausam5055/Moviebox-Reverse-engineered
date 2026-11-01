package com.amazonaws.services.s3.model.analytics;

/* JADX INFO: loaded from: classes2.dex */
public interface AnalyticsPredicateVisitor {
    void a(AnalyticsPrefixPredicate analyticsPrefixPredicate);

    void b(AnalyticsTagPredicate analyticsTagPredicate);

    void c(AnalyticsAndOperator analyticsAndOperator);
}
