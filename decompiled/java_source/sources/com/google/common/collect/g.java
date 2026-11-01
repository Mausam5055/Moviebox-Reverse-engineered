package com.google.common.collect;

import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes4.dex */
public abstract class g extends r4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Object f30788a;

    protected g(Object obj) {
        this.f30788a = obj;
    }

    protected abstract Object a(Object obj);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f30788a != null;
    }

    @Override // java.util.Iterator
    public final Object next() {
        Object obj = this.f30788a;
        if (obj == null) {
            throw new NoSuchElementException();
        }
        this.f30788a = a(obj);
        return obj;
    }
}
