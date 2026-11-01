package com.google.common.collect;

/* JADX INFO: loaded from: classes.dex */
final class RegularImmutableSet<E> extends ImmutableSet<E> {
    static final RegularImmutableSet<Object> EMPTY;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Object[] f30647d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final transient int f30648a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final transient int f30649b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final transient int f30650c;
    final transient Object[] elements;
    final transient Object[] table;

    static {
        Object[] objArr = new Object[0];
        f30647d = objArr;
        EMPTY = new RegularImmutableSet<>(objArr, 0, objArr, 0, 0);
    }

    RegularImmutableSet(Object[] objArr, int i11, Object[] objArr2, int i12, int i13) {
        this.elements = objArr;
        this.f30648a = i11;
        this.table = objArr2;
        this.f30649b = i12;
        this.f30650c = i13;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        Object[] objArr = this.table;
        if (obj == null || objArr.length == 0) {
            return false;
        }
        int iD = v2.d(obj);
        while (true) {
            int i11 = iD & this.f30649b;
            Object obj2 = objArr[i11];
            if (obj2 == null) {
                return false;
            }
            if (obj2.equals(obj)) {
                return true;
            }
            iD = i11 + 1;
        }
    }

    @Override // com.google.common.collect.ImmutableCollection
    int copyIntoArray(Object[] objArr, int i11) {
        System.arraycopy(this.elements, 0, objArr, i11, this.f30650c);
        return i11 + this.f30650c;
    }

    @Override // com.google.common.collect.ImmutableSet
    ImmutableList<E> createAsList() {
        return ImmutableList.asImmutableList(this.elements, this.f30650c);
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public int hashCode() {
        return this.f30648a;
    }

    @Override // com.google.common.collect.ImmutableCollection
    Object[] internalArray() {
        return this.elements;
    }

    @Override // com.google.common.collect.ImmutableCollection
    int internalArrayEnd() {
        return this.f30650c;
    }

    @Override // com.google.common.collect.ImmutableCollection
    int internalArrayStart() {
        return 0;
    }

    @Override // com.google.common.collect.ImmutableSet
    boolean isHashCodeFast() {
        return true;
    }

    @Override // com.google.common.collect.ImmutableCollection
    boolean isPartialView() {
        return false;
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
    public r4 iterator() {
        return asList().iterator();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f30650c;
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
    Object writeReplace() {
        return super.writeReplace();
    }
}
