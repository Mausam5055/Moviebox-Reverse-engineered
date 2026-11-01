package com.google.common.base;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
abstract class AbstractIterator implements Iterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private State f30201a = State.NOT_READY;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Object f30202b;

    private enum State {
        READY,
        NOT_READY,
        DONE,
        FAILED
    }

    protected AbstractIterator() {
    }

    private boolean c() {
        this.f30201a = State.FAILED;
        this.f30202b = a();
        if (this.f30201a == State.DONE) {
            return false;
        }
        this.f30201a = State.READY;
        return true;
    }

    protected abstract Object a();

    protected final Object b() {
        this.f30201a = State.DONE;
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        m.u(this.f30201a != State.FAILED);
        int iOrdinal = this.f30201a.ordinal();
        if (iOrdinal == 0) {
            return true;
        }
        if (iOrdinal != 2) {
            return c();
        }
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f30201a = State.NOT_READY;
        Object objA = i.a(this.f30202b);
        this.f30202b = null;
        return objA;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
