package com.google.common.collect;

import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
abstract class i2 extends p2 implements a4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private transient Comparator f30809a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private transient NavigableSet f30810b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private transient Set f30811c;

    class a extends Multisets.d {
        a() {
        }

        @Override // com.google.common.collect.Multisets.d
        l3 a() {
            return i2.this;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator iterator() {
            return i2.this.n();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return i2.this.o().entrySet().size();
        }
    }

    i2() {
    }

    @Override // com.google.common.collect.a4, com.google.common.collect.y3
    public Comparator comparator() {
        Comparator comparator = this.f30809a;
        if (comparator != null) {
            return comparator;
        }
        Ordering orderingReverse = Ordering.from(o().comparator()).reverse();
        this.f30809a = orderingReverse;
        return orderingReverse;
    }

    @Override // com.google.common.collect.a4
    public a4 descendingMultiset() {
        return o();
    }

    @Override // com.google.common.collect.l3
    public NavigableSet elementSet() {
        NavigableSet navigableSet = this.f30810b;
        if (navigableSet != null) {
            return navigableSet;
        }
        b4.b bVar = new b4.b(this);
        this.f30810b = bVar;
        return bVar;
    }

    @Override // com.google.common.collect.p2, com.google.common.collect.l3
    public Set entrySet() {
        Set set = this.f30811c;
        if (set != null) {
            return set;
        }
        Set setM = m();
        this.f30811c = setM;
        return setM;
    }

    @Override // com.google.common.collect.a4
    public l3.a firstEntry() {
        return o().lastEntry();
    }

    @Override // com.google.common.collect.a4
    public a4 headMultiset(Object obj, BoundType boundType) {
        return o().tailMultiset(obj, boundType).descendingMultiset();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.k2, com.google.common.collect.q2
    public l3 l() {
        return o();
    }

    @Override // com.google.common.collect.a4
    public l3.a lastEntry() {
        return o().firstEntry();
    }

    Set m() {
        return new a();
    }

    abstract Iterator n();

    abstract a4 o();

    @Override // com.google.common.collect.a4
    public l3.a pollFirstEntry() {
        return o().pollLastEntry();
    }

    @Override // com.google.common.collect.a4
    public l3.a pollLastEntry() {
        return o().pollFirstEntry();
    }

    @Override // com.google.common.collect.a4
    public a4 subMultiset(Object obj, BoundType boundType, Object obj2, BoundType boundType2) {
        return o().subMultiset(obj2, boundType2, obj, boundType).descendingMultiset();
    }

    @Override // com.google.common.collect.a4
    public a4 tailMultiset(Object obj, BoundType boundType) {
        return o().headMultiset(obj, boundType).descendingMultiset();
    }

    @Override // com.google.common.collect.k2, java.util.Collection, java.util.Set
    public Object[] toArray() {
        return standardToArray();
    }

    @Override // com.google.common.collect.k2, java.util.Collection, java.util.Set
    public Object[] toArray(Object[] objArr) {
        return standardToArray(objArr);
    }

    @Override // com.google.common.collect.q2
    public String toString() {
        return entrySet().toString();
    }
}
