package com.google.common.collect;

import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
final class ByFunctionOrdering<F, T> extends Ordering<F> implements Serializable {
    private static final long serialVersionUID = 0;
    final com.google.common.base.f function;
    final Ordering<T> ordering;

    ByFunctionOrdering(com.google.common.base.f fVar, Ordering<T> ordering) {
        this.function = (com.google.common.base.f) com.google.common.base.m.o(fVar);
        this.ordering = (Ordering) com.google.common.base.m.o(ordering);
    }

    @Override // com.google.common.collect.Ordering, java.util.Comparator
    public int compare(F f11, F f12) {
        return this.ordering.compare((T) this.function.apply(f11), (T) this.function.apply(f12));
    }

    @Override // java.util.Comparator
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ByFunctionOrdering)) {
            return false;
        }
        ByFunctionOrdering byFunctionOrdering = (ByFunctionOrdering) obj;
        return this.function.equals(byFunctionOrdering.function) && this.ordering.equals(byFunctionOrdering.ordering);
    }

    public int hashCode() {
        return com.google.common.base.j.b(this.function, this.ordering);
    }

    public String toString() {
        return this.ordering + ".onResultOf(" + this.function + ")";
    }
}
