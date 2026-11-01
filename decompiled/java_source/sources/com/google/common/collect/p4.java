package com.google.common.collect;

import java.util.ListIterator;

/* JADX INFO: loaded from: classes4.dex */
abstract class p4 extends o4 implements ListIterator {
    p4(ListIterator listIterator) {
        super(listIterator);
    }

    private ListIterator b() {
        return (ListIterator) this.f30843a;
    }

    @Override // java.util.ListIterator
    public void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return b().hasPrevious();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return b().nextIndex();
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        return a(b().previous());
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return b().previousIndex();
    }

    public void set(Object obj) {
        throw new UnsupportedOperationException();
    }
}
