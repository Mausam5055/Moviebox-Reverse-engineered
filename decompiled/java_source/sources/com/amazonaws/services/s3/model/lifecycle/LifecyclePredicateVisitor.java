package com.amazonaws.services.s3.model.lifecycle;

/* JADX INFO: loaded from: classes2.dex */
public interface LifecyclePredicateVisitor {
    void a(LifecyclePrefixPredicate lifecyclePrefixPredicate);

    void b(LifecycleTagPredicate lifecycleTagPredicate);

    void c(LifecycleAndOperator lifecycleAndOperator);
}
