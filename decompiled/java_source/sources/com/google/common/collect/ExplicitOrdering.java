package com.google.common.collect;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class ExplicitOrdering<T> extends Ordering<T> implements Serializable {
    private static final long serialVersionUID = 0;
    final ImmutableMap<T, Integer> rankMap;

    ExplicitOrdering(ImmutableMap<T, Integer> immutableMap) {
        this.rankMap = immutableMap;
    }

    ExplicitOrdering(List<T> list) {
        this(Maps.j(list));
    }

    private int rank(T t11) {
        Integer num = this.rankMap.get(t11);
        if (num != null) {
            return num.intValue();
        }
        throw new Ordering.IncomparableValueException(t11);
    }

    @Override // com.google.common.collect.Ordering, java.util.Comparator
    public int compare(T t11, T t12) {
        return rank(t11) - rank(t12);
    }

    @Override // java.util.Comparator
    public boolean equals(Object obj) {
        if (obj instanceof ExplicitOrdering) {
            return this.rankMap.equals(((ExplicitOrdering) obj).rankMap);
        }
        return false;
    }

    public int hashCode() {
        return this.rankMap.hashCode();
    }

    public String toString() {
        return "Ordering.explicit(" + this.rankMap.keySet() + ")";
    }
}
