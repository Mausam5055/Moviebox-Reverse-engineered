package com.google.common.collect;

import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractIterator extends r4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private State f30268a = State.NOT_READY;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Object f30269b;

    private enum State {
        READY,
        NOT_READY,
        DONE,
        FAILED
    }

    protected AbstractIterator() {
    }

    private boolean c() {
        this.f30268a = State.FAILED;
        this.f30269b = a();
        if (this.f30268a == State.DONE) {
            return false;
        }
        this.f30268a = State.READY;
        return true;
    }

    protected abstract Object a();

    protected final Object b() {
        this.f30268a = State.DONE;
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        com.google.common.base.m.u(this.f30268a != State.FAILED);
        int iOrdinal = this.f30268a.ordinal();
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
        this.f30268a = State.NOT_READY;
        Object objA = m3.a(this.f30269b);
        this.f30269b = null;
        return objA;
    }
}
