package com.google.common.collect;

import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
class RegularImmutableList<E> extends ImmutableList<E> {
    static final ImmutableList<Object> EMPTY = new RegularImmutableList(new Object[0], 0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final transient int f30633a;
    final transient Object[] array;

    RegularImmutableList(Object[] objArr, int i11) {
        this.array = objArr;
        this.f30633a = i11;
    }

    @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection
    int copyIntoArray(Object[] objArr, int i11) {
        System.arraycopy(this.array, 0, objArr, i11, this.f30633a);
        return i11 + this.f30633a;
    }

    @Override // java.util.List
    public E get(int i11) {
        com.google.common.base.m.m(i11, this.f30633a);
        E e11 = (E) this.array[i11];
        Objects.requireNonNull(e11);
        return e11;
    }

    @Override // com.google.common.collect.ImmutableCollection
    Object[] internalArray() {
        return this.array;
    }

    @Override // com.google.common.collect.ImmutableCollection
    int internalArrayEnd() {
        return this.f30633a;
    }

    @Override // com.google.common.collect.ImmutableCollection
    int internalArrayStart() {
        return 0;
    }

    @Override // com.google.common.collect.ImmutableCollection
    boolean isPartialView() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f30633a;
    }

    @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection
    Object writeReplace() {
        return super.writeReplace();
    }
}
