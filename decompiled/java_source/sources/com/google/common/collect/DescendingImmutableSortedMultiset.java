package com.google.common.collect;

/* JADX INFO: loaded from: classes4.dex */
final class DescendingImmutableSortedMultiset<E> extends ImmutableSortedMultiset<E> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final transient ImmutableSortedMultiset f30377a;

    DescendingImmutableSortedMultiset(ImmutableSortedMultiset<E> immutableSortedMultiset) {
        this.f30377a = immutableSortedMultiset;
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.ImmutableMultiset, com.google.common.collect.l3
    public int count(Object obj) {
        return this.f30377a.count(obj);
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.a4
    public ImmutableSortedMultiset<E> descendingMultiset() {
        return this.f30377a;
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.ImmutableMultiset, com.google.common.collect.l3
    public ImmutableSortedSet<E> elementSet() {
        return this.f30377a.elementSet().descendingSet();
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.a4
    public l3.a firstEntry() {
        return this.f30377a.lastEntry();
    }

    @Override // com.google.common.collect.ImmutableMultiset
    l3.a getEntry(int i11) {
        return this.f30377a.entrySet().asList().reverse().get(i11);
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.a4
    public ImmutableSortedMultiset<E> headMultiset(E e11, BoundType boundType) {
        return this.f30377a.tailMultiset((Object) e11, boundType).descendingMultiset();
    }

    @Override // com.google.common.collect.ImmutableCollection
    boolean isPartialView() {
        return this.f30377a.isPartialView();
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.a4
    public l3.a lastEntry() {
        return this.f30377a.firstEntry();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.l3
    public int size() {
        return this.f30377a.size();
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.a4
    public ImmutableSortedMultiset<E> tailMultiset(E e11, BoundType boundType) {
        return this.f30377a.headMultiset((Object) e11, boundType).descendingMultiset();
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.ImmutableMultiset, com.google.common.collect.ImmutableCollection
    Object writeReplace() {
        return super.writeReplace();
    }
}
