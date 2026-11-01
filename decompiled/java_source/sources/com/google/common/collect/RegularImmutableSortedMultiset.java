package com.google.common.collect;

import com.google.common.primitives.Ints;
import java.util.Comparator;

/* JADX INFO: loaded from: classes4.dex */
final class RegularImmutableSortedMultiset<E> extends ImmutableSortedMultiset<E> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final transient long[] f30652a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final transient int f30653b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final transient int f30654c;
    final transient RegularImmutableSortedSet<E> elementSet;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final long[] f30651d = {0};
    static final ImmutableSortedMultiset<?> NATURAL_EMPTY_MULTISET = new RegularImmutableSortedMultiset(Ordering.natural());

    RegularImmutableSortedMultiset(RegularImmutableSortedSet<E> regularImmutableSortedSet, long[] jArr, int i11, int i12) {
        this.elementSet = regularImmutableSortedSet;
        this.f30652a = jArr;
        this.f30653b = i11;
        this.f30654c = i12;
    }

    RegularImmutableSortedMultiset(Comparator<? super E> comparator) {
        this.elementSet = ImmutableSortedSet.emptySet(comparator);
        this.f30652a = f30651d;
        this.f30653b = 0;
        this.f30654c = 0;
    }

    private int h(int i11) {
        long[] jArr = this.f30652a;
        int i12 = this.f30653b;
        return (int) (jArr[(i12 + i11) + 1] - jArr[i12 + i11]);
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.ImmutableMultiset, com.google.common.collect.l3
    public int count(Object obj) {
        int iIndexOf = this.elementSet.indexOf(obj);
        if (iIndexOf >= 0) {
            return h(iIndexOf);
        }
        return 0;
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.ImmutableMultiset, com.google.common.collect.l3
    public ImmutableSortedSet<E> elementSet() {
        return this.elementSet;
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.a4
    public l3.a firstEntry() {
        if (isEmpty()) {
            return null;
        }
        return getEntry(0);
    }

    @Override // com.google.common.collect.ImmutableMultiset
    l3.a getEntry(int i11) {
        return Multisets.g(this.elementSet.asList().get(i11), h(i11));
    }

    ImmutableSortedMultiset<E> getSubMultiset(int i11, int i12) {
        com.google.common.base.m.t(i11, i12, this.f30654c);
        if (i11 == i12) {
            return ImmutableSortedMultiset.emptyMultiset(comparator());
        }
        return (i11 == 0 && i12 == this.f30654c) ? this : new RegularImmutableSortedMultiset(this.elementSet.getSubSet(i11, i12), this.f30652a, this.f30653b + i11, i12 - i11);
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.a4
    public ImmutableSortedMultiset<E> headMultiset(E e11, BoundType boundType) {
        return getSubMultiset(0, this.elementSet.headIndex(e11, com.google.common.base.m.o(boundType) == BoundType.CLOSED));
    }

    @Override // com.google.common.collect.ImmutableCollection
    boolean isPartialView() {
        return this.f30653b > 0 || this.f30654c < this.f30652a.length - 1;
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.a4
    public l3.a lastEntry() {
        if (isEmpty()) {
            return null;
        }
        return getEntry(this.f30654c - 1);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.l3
    public int size() {
        long[] jArr = this.f30652a;
        int i11 = this.f30653b;
        return Ints.n(jArr[this.f30654c + i11] - jArr[i11]);
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.a4
    public ImmutableSortedMultiset<E> tailMultiset(E e11, BoundType boundType) {
        return getSubMultiset(this.elementSet.tailIndex(e11, com.google.common.base.m.o(boundType) == BoundType.CLOSED), this.f30654c);
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.ImmutableMultiset, com.google.common.collect.ImmutableCollection
    Object writeReplace() {
        return super.writeReplace();
    }
}
