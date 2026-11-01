package com.google.common.collect;

import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
abstract class o4 implements Iterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Iterator f30843a;

    o4(Iterator it) {
        this.f30843a = (Iterator) com.google.common.base.m.o(it);
    }

    abstract Object a(Object obj);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f30843a.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        return a(this.f30843a.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f30843a.remove();
    }
}
