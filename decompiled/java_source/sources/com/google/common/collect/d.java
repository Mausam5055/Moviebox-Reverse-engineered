package com.google.common.collect;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
abstract class d extends AbstractCollection implements l3 {
    private transient Set<Object> elementSet;
    private transient Set<l3.a> entrySet;

    class a extends Multisets.c {
        a() {
        }

        @Override // com.google.common.collect.Multisets.c
        l3 a() {
            return d.this;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator iterator() {
            return d.this.elementIterator();
        }
    }

    class b extends Multisets.d {
        b() {
        }

        @Override // com.google.common.collect.Multisets.d
        l3 a() {
            return d.this;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator iterator() {
            return d.this.entryIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return d.this.distinctElements();
        }
    }

    d() {
    }

    public int add(Object obj, int i11) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean add(Object obj) {
        add(obj, 1);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean addAll(Collection<Object> collection) {
        return Multisets.c(this, collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.l3
    public boolean contains(Object obj) {
        return count(obj) > 0;
    }

    Set<Object> createElementSet() {
        return new a();
    }

    Set<l3.a> createEntrySet() {
        return new b();
    }

    abstract int distinctElements();

    abstract Iterator elementIterator();

    public Set<Object> elementSet() {
        Set<Object> set = this.elementSet;
        if (set != null) {
            return set;
        }
        Set<Object> setCreateElementSet = createElementSet();
        this.elementSet = setCreateElementSet;
        return setCreateElementSet;
    }

    abstract Iterator entryIterator();

    public Set<l3.a> entrySet() {
        Set<l3.a> set = this.entrySet;
        if (set != null) {
            return set;
        }
        Set<l3.a> setCreateEntrySet = createEntrySet();
        this.entrySet = setCreateEntrySet;
        return setCreateEntrySet;
    }

    @Override // java.util.Collection, com.google.common.collect.l3
    public final boolean equals(Object obj) {
        return Multisets.f(this, obj);
    }

    @Override // java.util.Collection, com.google.common.collect.l3
    public final int hashCode() {
        return entrySet().hashCode();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return entrySet().isEmpty();
    }

    public abstract int remove(Object obj, int i11);

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.l3
    public final boolean remove(Object obj) {
        return remove(obj, 1) > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean removeAll(Collection<?> collection) {
        return Multisets.j(this, collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean retainAll(Collection<?> collection) {
        return Multisets.k(this, collection);
    }

    public int setCount(Object obj, int i11) {
        return Multisets.l(this, obj, i11);
    }

    public boolean setCount(Object obj, int i11, int i12) {
        return Multisets.m(this, obj, i11, i12);
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return entrySet().toString();
    }
}
