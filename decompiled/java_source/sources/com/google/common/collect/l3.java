package com.google.common.collect;

import java.util.Collection;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public interface l3 extends Collection {

    public interface a {
        int getCount();

        Object getElement();

        String toString();
    }

    int add(Object obj, int i11);

    @Override // java.util.Collection, com.google.common.collect.l3
    boolean contains(Object obj);

    @Override // java.util.Collection
    boolean containsAll(Collection collection);

    int count(Object obj);

    Set elementSet();

    Set entrySet();

    @Override // com.google.common.collect.l3
    boolean equals(Object obj);

    @Override // com.google.common.collect.l3
    int hashCode();

    int remove(Object obj, int i11);

    @Override // java.util.Collection, com.google.common.collect.l3
    boolean remove(Object obj);

    int setCount(Object obj, int i11);

    boolean setCount(Object obj, int i11, int i12);

    @Override // java.util.Collection, com.google.common.collect.l3
    int size();
}
