package com.google.common.collect;

import java.util.Comparator;
import java.util.SortedMap;

/* JADX INFO: loaded from: classes4.dex */
public abstract class t2 extends n2 implements SortedMap {
    static int l(Comparator comparator, Object obj, Object obj2) {
        return comparator == null ? ((Comparable) obj).compareTo(obj2) : comparator.compare(obj, obj2);
    }
}
