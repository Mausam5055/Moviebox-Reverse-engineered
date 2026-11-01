package com.google.common.collect;

import com.google.common.primitives.Ints;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes4.dex */
abstract class AbstractMapBasedMultiset<E> extends d implements Serializable {
    private static final long serialVersionUID = 0;
    transient o3 backingMap;
    transient long size;

    class a extends c {
        a() {
            super();
        }

        @Override // com.google.common.collect.AbstractMapBasedMultiset.c
        Object b(int i11) {
            return AbstractMapBasedMultiset.this.backingMap.i(i11);
        }
    }

    class b extends c {
        b() {
            super();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.AbstractMapBasedMultiset.c
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public l3.a b(int i11) {
            return AbstractMapBasedMultiset.this.backingMap.g(i11);
        }
    }

    abstract class c implements Iterator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f30308a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f30309b = -1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f30310c;

        c() {
            this.f30308a = AbstractMapBasedMultiset.this.backingMap.e();
            this.f30310c = AbstractMapBasedMultiset.this.backingMap.f30835d;
        }

        private void a() {
            if (AbstractMapBasedMultiset.this.backingMap.f30835d != this.f30310c) {
                throw new ConcurrentModificationException();
            }
        }

        abstract Object b(int i11);

        @Override // java.util.Iterator
        public boolean hasNext() {
            a();
            return this.f30308a >= 0;
        }

        @Override // java.util.Iterator
        public Object next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            Object objB = b(this.f30308a);
            int i11 = this.f30308a;
            this.f30309b = i11;
            this.f30308a = AbstractMapBasedMultiset.this.backingMap.s(i11);
            return objB;
        }

        @Override // java.util.Iterator
        public void remove() {
            a();
            e2.e(this.f30309b != -1);
            AbstractMapBasedMultiset abstractMapBasedMultiset = AbstractMapBasedMultiset.this;
            abstractMapBasedMultiset.size -= (long) abstractMapBasedMultiset.backingMap.x(this.f30309b);
            this.f30308a = AbstractMapBasedMultiset.this.backingMap.t(this.f30308a, this.f30309b);
            this.f30309b = -1;
            this.f30310c = AbstractMapBasedMultiset.this.backingMap.f30835d;
        }
    }

    AbstractMapBasedMultiset(int i11) {
        this.backingMap = newBackingMap(i11);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        int iH = w3.h(objectInputStream);
        this.backingMap = newBackingMap(3);
        w3.g(this, objectInputStream, iH);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        w3.k(this, objectOutputStream);
    }

    @Override // com.google.common.collect.d, com.google.common.collect.l3
    public final int add(E e11, int i11) {
        if (i11 == 0) {
            return count(e11);
        }
        com.google.common.base.m.f(i11 > 0, "occurrences cannot be negative: %s", i11);
        int iM = this.backingMap.m(e11);
        if (iM == -1) {
            this.backingMap.u(e11, i11);
            this.size += (long) i11;
            return 0;
        }
        int iK = this.backingMap.k(iM);
        long j11 = i11;
        long j12 = ((long) iK) + j11;
        com.google.common.base.m.h(j12 <= 2147483647L, "too many occurrences: %s", j12);
        this.backingMap.B(iM, (int) j12);
        this.size += j11;
        return iK;
    }

    void addTo(l3 l3Var) {
        com.google.common.base.m.o(l3Var);
        int iE = this.backingMap.e();
        while (iE >= 0) {
            l3Var.add(this.backingMap.i(iE), this.backingMap.k(iE));
            iE = this.backingMap.s(iE);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        this.backingMap.a();
        this.size = 0L;
    }

    @Override // com.google.common.collect.l3
    public final int count(Object obj) {
        return this.backingMap.f(obj);
    }

    @Override // com.google.common.collect.d
    final int distinctElements() {
        return this.backingMap.C();
    }

    @Override // com.google.common.collect.d
    final Iterator<E> elementIterator() {
        return new a();
    }

    @Override // com.google.common.collect.d
    final Iterator<l3.a> entryIterator() {
        return new b();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator<E> iterator() {
        return Multisets.i(this);
    }

    abstract o3 newBackingMap(int i11);

    @Override // com.google.common.collect.d, com.google.common.collect.l3
    public final int remove(Object obj, int i11) {
        if (i11 == 0) {
            return count(obj);
        }
        com.google.common.base.m.f(i11 > 0, "occurrences cannot be negative: %s", i11);
        int iM = this.backingMap.m(obj);
        if (iM == -1) {
            return 0;
        }
        int iK = this.backingMap.k(iM);
        if (iK > i11) {
            this.backingMap.B(iM, iK - i11);
        } else {
            this.backingMap.x(iM);
            i11 = iK;
        }
        this.size -= (long) i11;
        return iK;
    }

    @Override // com.google.common.collect.d, com.google.common.collect.l3
    public final int setCount(E e11, int i11) {
        e2.b(i11, "count");
        o3 o3Var = this.backingMap;
        int iV = i11 == 0 ? o3Var.v(e11) : o3Var.u(e11, i11);
        this.size += (long) (i11 - iV);
        return iV;
    }

    @Override // com.google.common.collect.d, com.google.common.collect.l3
    public final boolean setCount(E e11, int i11, int i12) {
        e2.b(i11, "oldCount");
        e2.b(i12, "newCount");
        int iM = this.backingMap.m(e11);
        if (iM == -1) {
            if (i11 != 0) {
                return false;
            }
            if (i12 > 0) {
                this.backingMap.u(e11, i12);
                this.size += (long) i12;
            }
            return true;
        }
        if (this.backingMap.k(iM) != i11) {
            return false;
        }
        if (i12 == 0) {
            this.backingMap.x(iM);
            this.size -= (long) i11;
        } else {
            this.backingMap.B(iM, i12);
            this.size += (long) (i12 - i11);
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.l3
    public final int size() {
        return Ints.n(this.size);
    }
}
