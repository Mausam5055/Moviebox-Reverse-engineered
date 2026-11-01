package com.google.common.collect;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import java.util.stream.Collector;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ImmutableList<E> extends ImmutableCollection<E> implements List<E>, RandomAccess {
    private static final s4 EMPTY_ITR = new b(RegularImmutableList.EMPTY, 0);
    private static final long serialVersionUID = -889275714;

    private static class ReverseImmutableList<E> extends ImmutableList<E> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final transient ImmutableList f30411a;

        ReverseImmutableList(ImmutableList<E> immutableList) {
            this.f30411a = immutableList;
        }

        private int a(int i11) {
            return (size() - 1) - i11;
        }

        private int b(int i11) {
            return size() - i11;
        }

        @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return this.f30411a.contains(obj);
        }

        @Override // java.util.List
        public E get(int i11) {
            com.google.common.base.m.m(i11, size());
            return this.f30411a.get(a(i11));
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public int indexOf(Object obj) {
            int iLastIndexOf = this.f30411a.lastIndexOf(obj);
            if (iLastIndexOf >= 0) {
                return a(iLastIndexOf);
            }
            return -1;
        }

        @Override // com.google.common.collect.ImmutableCollection
        boolean isPartialView() {
            return this.f30411a.isPartialView();
        }

        @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
        public /* bridge */ /* synthetic */ Iterator iterator() {
            return super.iterator();
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public int lastIndexOf(Object obj) {
            int iIndexOf = this.f30411a.indexOf(obj);
            if (iIndexOf >= 0) {
                return a(iIndexOf);
            }
            return -1;
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public /* bridge */ /* synthetic */ ListIterator listIterator() {
            return super.listIterator();
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public /* bridge */ /* synthetic */ ListIterator listIterator(int i11) {
            return super.listIterator(i11);
        }

        @Override // com.google.common.collect.ImmutableList
        public ImmutableList<E> reverse() {
            return this.f30411a;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f30411a.size();
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public ImmutableList<E> subList(int i11, int i12) {
            com.google.common.base.m.t(i11, i12, size());
            return this.f30411a.subList(b(i12), b(i11)).reverse();
        }

        @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection
        Object writeReplace() {
            return super.writeReplace();
        }
    }

    static class SerializedForm implements Serializable {
        private static final long serialVersionUID = 0;
        final Object[] elements;

        SerializedForm(Object[] objArr) {
            this.elements = objArr;
        }

        Object readResolve() {
            return ImmutableList.copyOf(this.elements);
        }
    }

    class SubList extends ImmutableList<E> {
        final transient int length;
        final transient int offset;

        SubList(int i11, int i12) {
            this.offset = i11;
            this.length = i12;
        }

        @Override // java.util.List
        public E get(int i11) {
            com.google.common.base.m.m(i11, this.length);
            return ImmutableList.this.get(i11 + this.offset);
        }

        @Override // com.google.common.collect.ImmutableCollection
        Object[] internalArray() {
            return ImmutableList.this.internalArray();
        }

        @Override // com.google.common.collect.ImmutableCollection
        int internalArrayEnd() {
            return ImmutableList.this.internalArrayStart() + this.offset + this.length;
        }

        @Override // com.google.common.collect.ImmutableCollection
        int internalArrayStart() {
            return ImmutableList.this.internalArrayStart() + this.offset;
        }

        @Override // com.google.common.collect.ImmutableCollection
        boolean isPartialView() {
            return true;
        }

        @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
        public /* bridge */ /* synthetic */ Iterator iterator() {
            return super.iterator();
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public /* bridge */ /* synthetic */ ListIterator listIterator() {
            return super.listIterator();
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public /* bridge */ /* synthetic */ ListIterator listIterator(int i11) {
            return super.listIterator(i11);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.length;
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public ImmutableList<E> subList(int i11, int i12) {
            com.google.common.base.m.t(i11, i12, this.length);
            ImmutableList immutableList = ImmutableList.this;
            int i13 = this.offset;
            return immutableList.subList(i11 + i13, i12 + i13);
        }

        @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection
        Object writeReplace() {
            return super.writeReplace();
        }
    }

    public static final class a extends ImmutableCollection.a {
        public a() {
            this(4);
        }

        a(int i11) {
            super(i11);
        }

        @Override // com.google.common.collect.ImmutableCollection.b
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public a a(Object obj) {
            super.g(obj);
            return this;
        }

        public a k(Object... objArr) {
            super.b(objArr);
            return this;
        }

        public a l(Iterable iterable) {
            super.c(iterable);
            return this;
        }

        public a m(Iterator it) {
            super.d(it);
            return this;
        }

        @Override // com.google.common.collect.ImmutableCollection.b
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public ImmutableList e() {
            this.f30410c = true;
            return ImmutableList.asImmutableList(this.f30408a, this.f30409b);
        }

        ImmutableList o(Comparator comparator) {
            this.f30410c = true;
            Arrays.sort(this.f30408a, 0, this.f30409b, comparator);
            return ImmutableList.asImmutableList(this.f30408a, this.f30409b);
        }

        a p(a aVar) {
            h(aVar.f30408a, aVar.f30409b);
            return this;
        }
    }

    static class b extends com.google.common.collect.a {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final ImmutableList f30412c;

        b(ImmutableList immutableList, int i11) {
            super(immutableList.size(), i11);
            this.f30412c = immutableList;
        }

        @Override // com.google.common.collect.a
        protected Object a(int i11) {
            return this.f30412c.get(i11);
        }
    }

    ImmutableList() {
    }

    static <E> ImmutableList<E> asImmutableList(Object[] objArr) {
        return asImmutableList(objArr, objArr.length);
    }

    static <E> ImmutableList<E> asImmutableList(Object[] objArr, int i11) {
        return i11 == 0 ? of() : new RegularImmutableList(objArr, i11);
    }

    public static <E> a builder() {
        return new a();
    }

    public static <E> a builderWithExpectedSize(int i11) {
        e2.b(i11, "expectedSize");
        return new a(i11);
    }

    private static <E> ImmutableList<E> construct(Object... objArr) {
        return asImmutableList(n3.b(objArr));
    }

    public static <E> ImmutableList<E> copyOf(Iterable<? extends E> iterable) {
        com.google.common.base.m.o(iterable);
        return iterable instanceof Collection ? copyOf((Collection) iterable) : copyOf(iterable.iterator());
    }

    public static <E> ImmutableList<E> copyOf(Collection<? extends E> collection) {
        if (!(collection instanceof ImmutableCollection)) {
            return construct(collection.toArray());
        }
        ImmutableList<E> immutableListAsList = ((ImmutableCollection) collection).asList();
        return immutableListAsList.isPartialView() ? asImmutableList(immutableListAsList.toArray()) : immutableListAsList;
    }

    public static <E> ImmutableList<E> copyOf(Iterator<? extends E> it) {
        if (!it.hasNext()) {
            return of();
        }
        E next = it.next();
        return !it.hasNext() ? of((Object) next) : new a().a(next).m(it).e();
    }

    public static <E> ImmutableList<E> copyOf(E[] eArr) {
        return eArr.length == 0 ? of() : construct((Object[]) eArr.clone());
    }

    public static <E> ImmutableList<E> of() {
        return (ImmutableList<E>) RegularImmutableList.EMPTY;
    }

    public static <E> ImmutableList<E> of(E e11) {
        return construct(e11);
    }

    public static <E> ImmutableList<E> of(E e11, E e12) {
        return construct(e11, e12);
    }

    public static <E> ImmutableList<E> of(E e11, E e12, E e13) {
        return construct(e11, e12, e13);
    }

    public static <E> ImmutableList<E> of(E e11, E e12, E e13, E e14) {
        return construct(e11, e12, e13, e14);
    }

    public static <E> ImmutableList<E> of(E e11, E e12, E e13, E e14, E e15) {
        return construct(e11, e12, e13, e14, e15);
    }

    public static <E> ImmutableList<E> of(E e11, E e12, E e13, E e14, E e15, E e16) {
        return construct(e11, e12, e13, e14, e15, e16);
    }

    public static <E> ImmutableList<E> of(E e11, E e12, E e13, E e14, E e15, E e16, E e17) {
        return construct(e11, e12, e13, e14, e15, e16, e17);
    }

    public static <E> ImmutableList<E> of(E e11, E e12, E e13, E e14, E e15, E e16, E e17, E e18) {
        return construct(e11, e12, e13, e14, e15, e16, e17, e18);
    }

    public static <E> ImmutableList<E> of(E e11, E e12, E e13, E e14, E e15, E e16, E e17, E e18, E e19) {
        return construct(e11, e12, e13, e14, e15, e16, e17, e18, e19);
    }

    public static <E> ImmutableList<E> of(E e11, E e12, E e13, E e14, E e15, E e16, E e17, E e18, E e19, E e20) {
        return construct(e11, e12, e13, e14, e15, e16, e17, e18, e19, e20);
    }

    public static <E> ImmutableList<E> of(E e11, E e12, E e13, E e14, E e15, E e16, E e17, E e18, E e19, E e20, E e21) {
        return construct(e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21);
    }

    @SafeVarargs
    public static <E> ImmutableList<E> of(E e11, E e12, E e13, E e14, E e15, E e16, E e17, E e18, E e19, E e20, E e21, E e22, E... eArr) {
        com.google.common.base.m.e(eArr.length <= 2147483635, "the total number of elements must fit in an int");
        Object[] objArr = new Object[eArr.length + 12];
        objArr[0] = e11;
        objArr[1] = e12;
        objArr[2] = e13;
        objArr[3] = e14;
        objArr[4] = e15;
        objArr[5] = e16;
        objArr[6] = e17;
        objArr[7] = e18;
        objArr[8] = e19;
        objArr[9] = e20;
        objArr[10] = e21;
        objArr[11] = e22;
        System.arraycopy(eArr, 0, objArr, 12, eArr.length);
        return construct(objArr);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    public static <E extends Comparable<? super E>> ImmutableList<E> sortedCopyOf(Iterable<? extends E> iterable) {
        Comparable[] comparableArr = (Comparable[]) g3.q(iterable, new Comparable[0]);
        n3.b(comparableArr);
        Arrays.sort(comparableArr);
        return asImmutableList(comparableArr);
    }

    public static <E> ImmutableList<E> sortedCopyOf(Comparator<? super E> comparator, Iterable<? extends E> iterable) {
        com.google.common.base.m.o(comparator);
        Object[] objArrP = g3.p(iterable);
        n3.b(objArrP);
        Arrays.sort(objArrP, comparator);
        return asImmutableList(objArrP);
    }

    public static <E> Collector<E, ?, ImmutableList<E>> toImmutableList() {
        return d2.O();
    }

    @Override // java.util.List
    @Deprecated
    public final void add(int i11, E e11) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final boolean addAll(int i11, Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.ImmutableCollection
    @Deprecated
    public final ImmutableList<E> asList() {
        return this;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // com.google.common.collect.ImmutableCollection
    int copyIntoArray(Object[] objArr, int i11) {
        int size = size();
        for (int i12 = 0; i12 < size; i12++) {
            objArr[i11 + i12] = get(i12);
        }
        return i11 + size;
    }

    @Override // java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        return Lists.d(this, obj);
    }

    @Override // java.util.Collection, java.util.List
    public int hashCode() {
        int size = size();
        int i11 = 1;
        for (int i12 = 0; i12 < size; i12++) {
            i11 = ~(~((i11 * 31) + get(i12).hashCode()));
        }
        return i11;
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        return Lists.e(this, obj);
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
    public r4 iterator() {
        return listIterator();
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        return Lists.g(this, obj);
    }

    @Override // java.util.List
    public s4 listIterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public s4 listIterator(int i11) {
        com.google.common.base.m.r(i11, size());
        return isEmpty() ? EMPTY_ITR : new b(this, i11);
    }

    @Override // java.util.List
    @Deprecated
    public final E remove(int i11) {
        throw new UnsupportedOperationException();
    }

    public ImmutableList<E> reverse() {
        return size() <= 1 ? this : new ReverseImmutableList(this);
    }

    @Override // java.util.List
    @Deprecated
    public final E set(int i11, E e11) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public ImmutableList<E> subList(int i11, int i12) {
        com.google.common.base.m.t(i11, i12, size());
        int i13 = i12 - i11;
        if (i13 == size()) {
            return this;
        }
        return i13 == 0 ? of() : subListUnchecked(i11, i12);
    }

    ImmutableList<E> subListUnchecked(int i11, int i12) {
        return new SubList(i11, i12 - i11);
    }

    @Override // com.google.common.collect.ImmutableCollection
    Object writeReplace() {
        return new SerializedForm(toArray());
    }
}
