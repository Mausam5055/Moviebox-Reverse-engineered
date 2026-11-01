package com.google.common.collect;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;
import java.util.SortedSet;
import java.util.stream.Collector;

/* JADX INFO: loaded from: classes.dex */
public abstract class ImmutableSet<E> extends ImmutableCollection<E> implements Set<E> {
    private static final int CUTOFF = 751619276;
    private static final double DESIRED_LOAD_FACTOR = 0.7d;
    static final int MAX_TABLE_SIZE = 1073741824;
    private static final long serialVersionUID = 912559;
    private transient ImmutableList<E> asList;

    /* JADX INFO: loaded from: classes4.dex */
    private static class SerializedForm implements Serializable {
        private static final long serialVersionUID = 0;
        final Object[] elements;

        SerializedForm(Object[] objArr) {
            this.elements = objArr;
        }

        Object readResolve() {
            return ImmutableSet.copyOf(this.elements);
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static class a extends ImmutableCollection.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        Object[] f30459d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f30460e;

        public a() {
            super(4);
        }

        a(int i11, boolean z10) {
            super(i11);
            if (z10) {
                this.f30459d = new Object[ImmutableSet.chooseTableSize(i11)];
            }
        }

        private void n(Object obj) {
            Objects.requireNonNull(this.f30459d);
            int length = this.f30459d.length - 1;
            int iHashCode = obj.hashCode();
            int iC = v2.c(iHashCode);
            while (true) {
                int i11 = iC & length;
                Object[] objArr = this.f30459d;
                Object obj2 = objArr[i11];
                if (obj2 == null) {
                    objArr[i11] = obj;
                    this.f30460e += iHashCode;
                    super.g(obj);
                    return;
                } else if (obj2.equals(obj)) {
                    return;
                } else {
                    iC = i11 + 1;
                }
            }
        }

        @Override // com.google.common.collect.ImmutableCollection.b
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public a a(Object obj) {
            com.google.common.base.m.o(obj);
            if (this.f30459d != null && ImmutableSet.chooseTableSize(this.f30409b) <= this.f30459d.length) {
                n(obj);
                return this;
            }
            this.f30459d = null;
            super.g(obj);
            return this;
        }

        public a k(Object... objArr) {
            if (this.f30459d != null) {
                for (Object obj : objArr) {
                    a(obj);
                }
            } else {
                super.b(objArr);
            }
            return this;
        }

        public a l(Iterable iterable) {
            com.google.common.base.m.o(iterable);
            if (this.f30459d != null) {
                Iterator it = iterable.iterator();
                while (it.hasNext()) {
                    a(it.next());
                }
            } else {
                super.c(iterable);
            }
            return this;
        }

        public a m(Iterator it) {
            com.google.common.base.m.o(it);
            while (it.hasNext()) {
                a(it.next());
            }
            return this;
        }

        @Override // com.google.common.collect.ImmutableCollection.b
        /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
        public ImmutableSet e() {
            ImmutableSet immutableSetConstruct;
            int i11 = this.f30409b;
            if (i11 == 0) {
                return ImmutableSet.of();
            }
            if (i11 == 1) {
                Object obj = this.f30408a[0];
                Objects.requireNonNull(obj);
                return ImmutableSet.of(obj);
            }
            if (this.f30459d == null || ImmutableSet.chooseTableSize(i11) != this.f30459d.length) {
                immutableSetConstruct = ImmutableSet.construct(this.f30409b, this.f30408a);
                this.f30409b = immutableSetConstruct.size();
            } else {
                Object[] objArrCopyOf = ImmutableSet.shouldTrim(this.f30409b, this.f30408a.length) ? Arrays.copyOf(this.f30408a, this.f30409b) : this.f30408a;
                int i12 = this.f30460e;
                Object[] objArr = this.f30459d;
                immutableSetConstruct = new RegularImmutableSet(objArrCopyOf, i12, objArr, objArr.length - 1, this.f30409b);
            }
            this.f30410c = true;
            this.f30459d = null;
            return immutableSetConstruct;
        }

        a p(a aVar) {
            if (this.f30459d != null) {
                for (int i11 = 0; i11 < aVar.f30409b; i11++) {
                    Object obj = aVar.f30408a[i11];
                    Objects.requireNonNull(obj);
                    a(obj);
                }
            } else {
                h(aVar.f30408a, aVar.f30409b);
            }
            return this;
        }
    }

    ImmutableSet() {
    }

    public static <E> a builder() {
        return new a();
    }

    public static <E> a builderWithExpectedSize(int i11) {
        e2.b(i11, "expectedSize");
        return new a(i11, true);
    }

    static int chooseTableSize(int i11) {
        int iMax = Math.max(i11, 2);
        if (iMax >= CUTOFF) {
            com.google.common.base.m.e(iMax < 1073741824, "collection too large");
            return 1073741824;
        }
        int iHighestOneBit = Integer.highestOneBit(iMax - 1) << 1;
        while (((double) iHighestOneBit) * DESIRED_LOAD_FACTOR < iMax) {
            iHighestOneBit <<= 1;
        }
        return iHighestOneBit;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> ImmutableSet<E> construct(int i11, Object... objArr) {
        if (i11 == 0) {
            return of();
        }
        if (i11 == 1) {
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            return of(obj);
        }
        int iChooseTableSize = chooseTableSize(i11);
        Object[] objArr2 = new Object[iChooseTableSize];
        int i12 = iChooseTableSize - 1;
        int i13 = 0;
        int i14 = 0;
        for (int i15 = 0; i15 < i11; i15++) {
            Object objA = n3.a(objArr[i15], i15);
            int iHashCode = objA.hashCode();
            int iC = v2.c(iHashCode);
            while (true) {
                int i16 = iC & i12;
                Object obj2 = objArr2[i16];
                if (obj2 == null) {
                    objArr[i14] = objA;
                    objArr2[i16] = objA;
                    i13 += iHashCode;
                    i14++;
                    break;
                }
                if (obj2.equals(objA)) {
                    break;
                }
                iC++;
            }
        }
        Arrays.fill(objArr, i14, i11, (Object) null);
        if (i14 == 1) {
            Object obj3 = objArr[0];
            Objects.requireNonNull(obj3);
            return new SingletonImmutableSet(obj3);
        }
        if (chooseTableSize(i14) < iChooseTableSize / 2) {
            return construct(i14, objArr);
        }
        if (shouldTrim(i14, objArr.length)) {
            objArr = Arrays.copyOf(objArr, i14);
        }
        return new RegularImmutableSet(objArr, i13, objArr2, i12, i14);
    }

    public static <E> ImmutableSet<E> copyOf(Iterable<? extends E> iterable) {
        return iterable instanceof Collection ? copyOf((Collection) iterable) : copyOf(iterable.iterator());
    }

    public static <E> ImmutableSet<E> copyOf(Collection<? extends E> collection) {
        if ((collection instanceof ImmutableSet) && !(collection instanceof SortedSet)) {
            ImmutableSet<E> immutableSet = (ImmutableSet) collection;
            if (!immutableSet.isPartialView()) {
                return immutableSet;
            }
        }
        Object[] array = collection.toArray();
        return construct(array.length, array);
    }

    public static <E> ImmutableSet<E> copyOf(Iterator<? extends E> it) {
        if (!it.hasNext()) {
            return of();
        }
        E next = it.next();
        return !it.hasNext() ? of((Object) next) : new a().a(next).m(it).e();
    }

    public static <E> ImmutableSet<E> copyOf(E[] eArr) {
        int length = eArr.length;
        if (length != 0) {
            return length != 1 ? construct(eArr.length, (Object[]) eArr.clone()) : of((Object) eArr[0]);
        }
        return of();
    }

    public static <E> ImmutableSet<E> of() {
        return RegularImmutableSet.EMPTY;
    }

    public static <E> ImmutableSet<E> of(E e11) {
        return new SingletonImmutableSet(e11);
    }

    public static <E> ImmutableSet<E> of(E e11, E e12) {
        return construct(2, e11, e12);
    }

    public static <E> ImmutableSet<E> of(E e11, E e12, E e13) {
        return construct(3, e11, e12, e13);
    }

    public static <E> ImmutableSet<E> of(E e11, E e12, E e13, E e14) {
        return construct(4, e11, e12, e13, e14);
    }

    public static <E> ImmutableSet<E> of(E e11, E e12, E e13, E e14, E e15) {
        return construct(5, e11, e12, e13, e14, e15);
    }

    @SafeVarargs
    public static <E> ImmutableSet<E> of(E e11, E e12, E e13, E e14, E e15, E e16, E... eArr) {
        com.google.common.base.m.e(eArr.length <= 2147483641, "the total number of elements must fit in an int");
        int length = eArr.length + 6;
        Object[] objArr = new Object[length];
        objArr[0] = e11;
        objArr[1] = e12;
        objArr[2] = e13;
        objArr[3] = e14;
        objArr[4] = e15;
        objArr[5] = e16;
        System.arraycopy(eArr, 0, objArr, 6, eArr.length);
        return construct(length, objArr);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean shouldTrim(int i11, int i12) {
        return i11 < (i12 >> 1) + (i12 >> 2);
    }

    public static <E> Collector<E, ?, ImmutableSet<E>> toImmutableSet() {
        return d2.V();
    }

    @Override // com.google.common.collect.ImmutableCollection
    public ImmutableList<E> asList() {
        ImmutableList<E> immutableList = this.asList;
        if (immutableList != null) {
            return immutableList;
        }
        ImmutableList<E> immutableListCreateAsList = createAsList();
        this.asList = immutableListCreateAsList;
        return immutableListCreateAsList;
    }

    ImmutableList<E> createAsList() {
        return ImmutableList.asImmutableList(toArray());
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof ImmutableSet) && isHashCodeFast() && ((ImmutableSet) obj).isHashCodeFast() && hashCode() != obj.hashCode()) {
            return false;
        }
        return Sets.a(this, obj);
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return Sets.d(this);
    }

    boolean isHashCodeFast() {
        return false;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
    public abstract r4 iterator();

    @Override // com.google.common.collect.ImmutableCollection
    Object writeReplace() {
        return new SerializedForm(toArray());
    }
}
