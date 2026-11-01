package com.amazonaws.services.s3.model.lifecycle;

/* JADX INFO: loaded from: classes2.dex */
public final class LifecyclePrefixPredicate extends LifecycleFilterPredicate {
    private final String prefix;

    public LifecyclePrefixPredicate(String str) {
        this.prefix = str;
    }

    @Override // com.amazonaws.services.s3.model.lifecycle.LifecycleFilterPredicate
    public void accept(LifecyclePredicateVisitor lifecyclePredicateVisitor) {
        lifecyclePredicateVisitor.a(this);
    }

    public String getPrefix() {
        return this.prefix;
    }
}
