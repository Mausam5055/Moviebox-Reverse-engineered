package com.google.common.collect;

import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
class CompactLinkedHashSet<E> extends CompactHashSet<E> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private transient int[] f30358e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private transient int[] f30359f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private transient int f30360g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private transient int f30361h;

    CompactLinkedHashSet() {
    }

    CompactLinkedHashSet(int i11) {
        super(i11);
    }

    public static <E> CompactLinkedHashSet<E> create() {
        return new CompactLinkedHashSet<>();
    }

    public static <E> CompactLinkedHashSet<E> create(Collection<? extends E> collection) {
        CompactLinkedHashSet<E> compactLinkedHashSetCreateWithExpectedSize = createWithExpectedSize(collection.size());
        compactLinkedHashSetCreateWithExpectedSize.addAll(collection);
        return compactLinkedHashSetCreateWithExpectedSize;
    }

    @SafeVarargs
    public static <E> CompactLinkedHashSet<E> create(E... eArr) {
        CompactLinkedHashSet<E> compactLinkedHashSetCreateWithExpectedSize = createWithExpectedSize(eArr.length);
        Collections.addAll(compactLinkedHashSetCreateWithExpectedSize, eArr);
        return compactLinkedHashSetCreateWithExpectedSize;
    }

    public static <E> CompactLinkedHashSet<E> createWithExpectedSize(int i11) {
        return new CompactLinkedHashSet<>(i11);
    }

    private int p(int i11) {
        return q()[i11] - 1;
    }

    private int[] q() {
        int[] iArr = this.f30358e;
        Objects.requireNonNull(iArr);
        return iArr;
    }

    private int[] r() {
        int[] iArr = this.f30359f;
        Objects.requireNonNull(iArr);
        return iArr;
    }

    private void s(int i11, int i12) {
        q()[i11] = i12 + 1;
    }

    private void t(int i11, int i12) {
        if (i11 == -2) {
            this.f30360g = i12;
        } else {
            u(i11, i12);
        }
        if (i12 == -2) {
            this.f30361h = i11;
        } else {
            s(i12, i11);
        }
    }

    private void u(int i11, int i12) {
        r()[i11] = i12 + 1;
    }

    @Override // com.google.common.collect.CompactHashSet
    int adjustAfterRemove(int i11, int i12) {
        return i11 >= size() ? i12 : i11;
    }

    @Override // com.google.common.collect.CompactHashSet
    int allocArrays() {
        int iAllocArrays = super.allocArrays();
        this.f30358e = new int[iAllocArrays];
        this.f30359f = new int[iAllocArrays];
        return iAllocArrays;
    }

    @Override // com.google.common.collect.CompactHashSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        if (needsAllocArrays()) {
            return;
        }
        this.f30360g = -2;
        this.f30361h = -2;
        int[] iArr = this.f30358e;
        if (iArr != null && this.f30359f != null) {
            Arrays.fill(iArr, 0, size(), 0);
            Arrays.fill(this.f30359f, 0, size(), 0);
        }
        super.clear();
    }

    @Override // com.google.common.collect.CompactHashSet
    Set<E> convertToHashFloodingResistantImplementation() {
        Set<E> setConvertToHashFloodingResistantImplementation = super.convertToHashFloodingResistantImplementation();
        this.f30358e = null;
        this.f30359f = null;
        return setConvertToHashFloodingResistantImplementation;
    }

    @Override // com.google.common.collect.CompactHashSet
    int firstEntryIndex() {
        return this.f30360g;
    }

    @Override // com.google.common.collect.CompactHashSet
    int getSuccessor(int i11) {
        return r()[i11] - 1;
    }

    @Override // com.google.common.collect.CompactHashSet
    void init(int i11) {
        super.init(i11);
        this.f30360g = -2;
        this.f30361h = -2;
    }

    @Override // com.google.common.collect.CompactHashSet
    void insertEntry(int i11, E e11, int i12, int i13) {
        super.insertEntry(i11, e11, i12, i13);
        t(this.f30361h, i11);
        t(i11, -2);
    }

    @Override // com.google.common.collect.CompactHashSet
    void moveLastEntry(int i11, int i12) {
        int size = size() - 1;
        super.moveLastEntry(i11, i12);
        t(p(i11), getSuccessor(i11));
        if (i11 < size) {
            t(p(size), i11);
            t(i11, getSuccessor(size));
        }
        q()[size] = 0;
        r()[size] = 0;
    }

    @Override // com.google.common.collect.CompactHashSet
    void resizeEntries(int i11) {
        super.resizeEntries(i11);
        this.f30358e = Arrays.copyOf(q(), i11);
        this.f30359f = Arrays.copyOf(r(), i11);
    }

    @Override // com.google.common.collect.CompactHashSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public Object[] toArray() {
        return n3.f(this);
    }

    @Override // com.google.common.collect.CompactHashSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public <T> T[] toArray(T[] tArr) {
        return (T[]) n3.g(this, tArr);
    }
}
