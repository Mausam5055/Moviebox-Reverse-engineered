package com.google.common.collect;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Spliterator;
import java.util.Spliterators;

/* JADX INFO: loaded from: classes.dex */
public abstract class ImmutableCollection<E> extends AbstractCollection<E> implements Serializable {
    private static final Object[] EMPTY_ARRAY = new Object[0];
    static final int SPLITERATOR_CHARACTERISTICS = 1296;
    private static final long serialVersionUID = 912559;

    /* JADX INFO: loaded from: classes4.dex */
    static abstract class a extends b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Object[] f30408a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f30409b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f30410c;

        a(int i11) {
            e2.b(i11, "initialCapacity");
            this.f30408a = new Object[i11];
            this.f30409b = 0;
        }

        private void i(int i11) {
            Object[] objArr = this.f30408a;
            int iF = b.f(objArr.length, this.f30409b + i11);
            if (iF > objArr.length || this.f30410c) {
                this.f30408a = Arrays.copyOf(this.f30408a, iF);
                this.f30410c = false;
            }
        }

        @Override // com.google.common.collect.ImmutableCollection.b
        public b b(Object... objArr) {
            h(objArr, objArr.length);
            return this;
        }

        @Override // com.google.common.collect.ImmutableCollection.b
        public b c(Iterable iterable) {
            if (iterable instanceof Collection) {
                Collection collection = (Collection) iterable;
                i(collection.size());
                if (collection instanceof ImmutableCollection) {
                    this.f30409b = ((ImmutableCollection) collection).copyIntoArray(this.f30408a, this.f30409b);
                    return this;
                }
            }
            super.c(iterable);
            return this;
        }

        public a g(Object obj) {
            com.google.common.base.m.o(obj);
            i(1);
            Object[] objArr = this.f30408a;
            int i11 = this.f30409b;
            this.f30409b = i11 + 1;
            objArr[i11] = obj;
            return this;
        }

        final void h(Object[] objArr, int i11) {
            n3.c(objArr, i11);
            i(i11);
            System.arraycopy(objArr, 0, this.f30408a, this.f30409b, i11);
            this.f30409b += i11;
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static abstract class b {
        b() {
        }

        static int f(int i11, int i12) {
            if (i12 < 0) {
                throw new IllegalArgumentException("cannot store more than MAX_VALUE elements");
            }
            if (i12 <= i11) {
                return i11;
            }
            int iHighestOneBit = i11 + (i11 >> 1) + 1;
            if (iHighestOneBit < i12) {
                iHighestOneBit = Integer.highestOneBit(i12 - 1) << 1;
            }
            if (iHighestOneBit < 0) {
                return Integer.MAX_VALUE;
            }
            return iHighestOneBit;
        }

        public abstract b a(Object obj);

        public b b(Object... objArr) {
            for (Object obj : objArr) {
                a(obj);
            }
            return this;
        }

        public b c(Iterable iterable) {
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                a(it.next());
            }
            return this;
        }

        public b d(Iterator it) {
            while (it.hasNext()) {
                a(it.next());
            }
            return this;
        }

        public abstract ImmutableCollection e();
    }

    ImmutableCollection() {
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean add(E e11) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean addAll(Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    public ImmutableList<E> asList() {
        return isEmpty() ? ImmutableList.of() : ImmutableList.asImmutableList(toArray());
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public abstract boolean contains(Object obj);

    int copyIntoArray(Object[] objArr, int i11) {
        r4 it = iterator();
        while (it.hasNext()) {
            objArr[i11] = it.next();
            i11++;
        }
        return i11;
    }

    Object[] internalArray() {
        return null;
    }

    int internalArrayEnd() {
        throw new UnsupportedOperationException();
    }

    int internalArrayStart() {
        throw new UnsupportedOperationException();
    }

    abstract boolean isPartialView();

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
    public abstract r4 iterator();

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean removeAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection, java.lang.Iterable
    public Spliterator<E> spliterator() {
        return Spliterators.spliterator(this, SPLITERATOR_CHARACTERISTICS);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray() {
        return toArray(EMPTY_ARRAY);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final <T> T[] toArray(T[] tArr) {
        com.google.common.base.m.o(tArr);
        int size = size();
        if (tArr.length < size) {
            Object[] objArrInternalArray = internalArray();
            if (objArrInternalArray != null) {
                return (T[]) r3.a(objArrInternalArray, internalArrayStart(), internalArrayEnd(), tArr);
            }
            tArr = (T[]) n3.e(tArr, size);
        } else if (tArr.length > size) {
            tArr[size] = null;
        }
        copyIntoArray(tArr, 0);
        return tArr;
    }

    Object writeReplace() {
        return new ImmutableList.SerializedForm(toArray());
    }
}
