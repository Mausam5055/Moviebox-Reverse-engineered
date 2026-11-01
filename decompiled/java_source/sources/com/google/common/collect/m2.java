package com.google.common.collect;

import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public abstract class m2 extends q2 implements Iterator {
    protected m2() {
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return l().hasNext();
    }

    protected abstract Iterator l();

    public Object next() {
        return l().next();
    }
}
