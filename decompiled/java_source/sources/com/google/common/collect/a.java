package com.google.common.collect;

import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes4.dex */
abstract class a extends s4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f30755a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f30756b;

    protected a(int i11) {
        this(i11, 0);
    }

    protected a(int i11, int i12) {
        com.google.common.base.m.r(i12, i11);
        this.f30755a = i11;
        this.f30756b = i12;
    }

    protected abstract Object a(int i11);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f30756b < this.f30755a;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f30756b > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i11 = this.f30756b;
        this.f30756b = i11 + 1;
        return a(i11);
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f30756b;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i11 = this.f30756b - 1;
        this.f30756b = i11;
        return a(i11);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f30756b - 1;
    }
}
