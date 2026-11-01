package com.google.common.collect;

import java.util.Comparator;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes4.dex */
abstract class z3 {
    public static Comparator a(SortedSet sortedSet) {
        Comparator comparator = sortedSet.comparator();
        return comparator == null ? Ordering.natural() : comparator;
    }

    public static boolean b(Comparator comparator, Iterable iterable) {
        Comparator comparator2;
        com.google.common.base.m.o(comparator);
        com.google.common.base.m.o(iterable);
        if (iterable instanceof SortedSet) {
            comparator2 = a((SortedSet) iterable);
        } else {
            if (!(iterable instanceof y3)) {
                return false;
            }
            comparator2 = ((y3) iterable).comparator();
        }
        return comparator.equals(comparator2);
    }
}
