package com.google.common.collect;

import a.RouterMap__TheRouter__1371816234;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.SortedSet;
import java.util.stream.Collector;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ImmutableSortedSet<E> extends ImmutableSet<E> implements NavigableSet<E>, y3 {
    private static final long serialVersionUID = 912559;
    final transient Comparator<? super E> comparator;
    transient ImmutableSortedSet<E> descendingSet;

    private static class SerializedForm<E> implements Serializable {
        private static final long serialVersionUID = 0;
        final Comparator<? super E> comparator;
        final Object[] elements;

        public SerializedForm(Comparator<? super E> comparator, Object[] objArr) {
            this.comparator = comparator;
            this.elements = objArr;
        }

        Object readResolve() {
            return new a(this.comparator).k(this.elements).e();
        }
    }

    public static final class a extends ImmutableSet.a {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final Comparator f30471f;

        public a(Comparator comparator) {
            this.f30471f = (Comparator) com.google.common.base.m.o(comparator);
        }

        a(Comparator comparator, int i11) {
            super(i11, false);
            this.f30471f = (Comparator) com.google.common.base.m.o(comparator);
        }

        @Override // com.google.common.collect.ImmutableSet.a
        /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
        public a a(Object obj) {
            super.a(obj);
            return this;
        }

        @Override // com.google.common.collect.ImmutableSet.a
        /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
        public a k(Object... objArr) {
            super.k(objArr);
            return this;
        }

        @Override // com.google.common.collect.ImmutableSet.a
        /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
        public a l(Iterable iterable) {
            super.l(iterable);
            return this;
        }

        @Override // com.google.common.collect.ImmutableSet.a
        /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
        public a m(Iterator it) {
            super.m(it);
            return this;
        }

        @Override // com.google.common.collect.ImmutableSet.a
        /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
        public ImmutableSortedSet e() {
            ImmutableSortedSet immutableSortedSetConstruct = ImmutableSortedSet.construct(this.f30471f, this.f30409b, this.f30408a);
            this.f30409b = immutableSortedSetConstruct.size();
            this.f30410c = true;
            return immutableSortedSetConstruct;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableSet.a
        /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
        public a p(ImmutableSet.a aVar) {
            super.p(aVar);
            return this;
        }
    }

    ImmutableSortedSet(Comparator<? super E> comparator) {
        this.comparator = comparator;
    }

    @Deprecated
    public static <E> a builder() {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public static <E> a builderWithExpectedSize(int i11) {
        throw new UnsupportedOperationException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    static <E> ImmutableSortedSet<E> construct(Comparator<? super E> comparator, int i11, E... eArr) {
        if (i11 == 0) {
            return emptySet(comparator);
        }
        n3.c(eArr, i11);
        Arrays.sort(eArr, 0, i11, comparator);
        int i12 = 1;
        for (int i13 = 1; i13 < i11; i13++) {
            RouterMap__TheRouter__1371816234 routerMap__TheRouter__1371816234 = (Object) eArr[i13];
            if (comparator.compare(routerMap__TheRouter__1371816234, (Object) eArr[i12 - 1]) != 0) {
                eArr[i12] = routerMap__TheRouter__1371816234;
                i12++;
            }
        }
        Arrays.fill(eArr, i12, i11, (Object) null);
        if (i12 < eArr.length / 2) {
            eArr = (E[]) Arrays.copyOf(eArr, i12);
        }
        return new RegularImmutableSortedSet(ImmutableList.asImmutableList(eArr, i12), comparator);
    }

    public static <E> ImmutableSortedSet<E> copyOf(Iterable<? extends E> iterable) {
        return copyOf(Ordering.natural(), iterable);
    }

    public static <E> ImmutableSortedSet<E> copyOf(Collection<? extends E> collection) {
        return copyOf((Comparator) Ordering.natural(), (Collection) collection);
    }

    public static <E> ImmutableSortedSet<E> copyOf(Comparator<? super E> comparator, Iterable<? extends E> iterable) {
        com.google.common.base.m.o(comparator);
        if (z3.b(comparator, iterable) && (iterable instanceof ImmutableSortedSet)) {
            ImmutableSortedSet<E> immutableSortedSet = (ImmutableSortedSet) iterable;
            if (!immutableSortedSet.isPartialView()) {
                return immutableSortedSet;
            }
        }
        Object[] objArrP = g3.p(iterable);
        return construct(comparator, objArrP.length, objArrP);
    }

    public static <E> ImmutableSortedSet<E> copyOf(Comparator<? super E> comparator, Collection<? extends E> collection) {
        return copyOf((Comparator) comparator, (Iterable) collection);
    }

    public static <E> ImmutableSortedSet<E> copyOf(Comparator<? super E> comparator, Iterator<? extends E> it) {
        return new a(comparator).m(it).e();
    }

    public static <E> ImmutableSortedSet<E> copyOf(Iterator<? extends E> it) {
        return copyOf(Ordering.natural(), it);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>([TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    public static ImmutableSortedSet copyOf(Comparable[] comparableArr) {
        return construct(Ordering.natural(), comparableArr.length, (Comparable[]) comparableArr.clone());
    }

    @Deprecated
    public static <Z> ImmutableSortedSet<Z> copyOf(Z[] zArr) {
        throw new UnsupportedOperationException();
    }

    public static <E> ImmutableSortedSet<E> copyOfSorted(SortedSet<E> sortedSet) {
        Comparator comparatorA = z3.a(sortedSet);
        ImmutableList immutableListCopyOf = ImmutableList.copyOf((Collection) sortedSet);
        return immutableListCopyOf.isEmpty() ? emptySet(comparatorA) : new RegularImmutableSortedSet(immutableListCopyOf, comparatorA);
    }

    static <E> RegularImmutableSortedSet<E> emptySet(Comparator<? super E> comparator) {
        return Ordering.natural().equals(comparator) ? (RegularImmutableSortedSet<E>) RegularImmutableSortedSet.NATURAL_EMPTY_SET : new RegularImmutableSortedSet<>(ImmutableList.of(), comparator);
    }

    public static <E extends Comparable<?>> a naturalOrder() {
        return new a(Ordering.natural());
    }

    public static <E> ImmutableSortedSet<E> of() {
        return RegularImmutableSortedSet.NATURAL_EMPTY_SET;
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    public static ImmutableSortedSet of(Comparable comparable) {
        return new RegularImmutableSortedSet(ImmutableList.of(comparable), Ordering.natural());
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    public static ImmutableSortedSet of(Comparable comparable, Comparable comparable2) {
        return construct(Ordering.natural(), 2, comparable, comparable2);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    public static ImmutableSortedSet of(Comparable comparable, Comparable comparable2, Comparable comparable3) {
        return construct(Ordering.natural(), 3, comparable, comparable2, comparable3);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    public static ImmutableSortedSet of(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4) {
        return construct(Ordering.natural(), 4, comparable, comparable2, comparable3, comparable4);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    public static ImmutableSortedSet of(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4, Comparable comparable5) {
        return construct(Ordering.natural(), 5, comparable, comparable2, comparable3, comparable4, comparable5);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;TE;TE;[TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    public static ImmutableSortedSet of(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4, Comparable comparable5, Comparable comparable6, Comparable... comparableArr) {
        int length = comparableArr.length + 6;
        Comparable[] comparableArr2 = new Comparable[length];
        comparableArr2[0] = comparable;
        comparableArr2[1] = comparable2;
        comparableArr2[2] = comparable3;
        comparableArr2[3] = comparable4;
        comparableArr2[4] = comparable5;
        comparableArr2[5] = comparable6;
        System.arraycopy(comparableArr, 0, comparableArr2, 6, comparableArr.length);
        return construct(Ordering.natural(), length, comparableArr2);
    }

    @Deprecated
    public static <E> ImmutableSortedSet<E> of(E e11) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public static <E> ImmutableSortedSet<E> of(E e11, E e12) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public static <E> ImmutableSortedSet<E> of(E e11, E e12, E e13) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public static <E> ImmutableSortedSet<E> of(E e11, E e12, E e13, E e14) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public static <E> ImmutableSortedSet<E> of(E e11, E e12, E e13, E e14, E e15) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public static <E> ImmutableSortedSet<E> of(E e11, E e12, E e13, E e14, E e15, E e16, E... eArr) {
        throw new UnsupportedOperationException();
    }

    public static <E> a orderedBy(Comparator<E> comparator) {
        return new a(comparator);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    public static <E extends Comparable<?>> a reverseOrder() {
        return new a(Collections.reverseOrder());
    }

    @Deprecated
    public static <E> Collector<E, ?, ImmutableSet<E>> toImmutableSet() {
        throw new UnsupportedOperationException();
    }

    public static <E> Collector<E, ?, ImmutableSortedSet<E>> toImmutableSortedSet(Comparator<? super E> comparator) {
        return d2.Z(comparator);
    }

    static int unsafeCompare(Comparator<?> comparator, Object obj, Object obj2) {
        return comparator.compare(obj, obj2);
    }

    public E ceiling(E e11) {
        return (E) g3.f(tailSet((Object) e11, true), null);
    }

    @Override // java.util.SortedSet, com.google.common.collect.y3
    public Comparator<? super E> comparator() {
        return this.comparator;
    }

    abstract ImmutableSortedSet<E> createDescendingSet();

    @Override // java.util.NavigableSet
    public abstract r4 descendingIterator();

    @Override // java.util.NavigableSet
    public ImmutableSortedSet<E> descendingSet() {
        ImmutableSortedSet<E> immutableSortedSet = this.descendingSet;
        if (immutableSortedSet != null) {
            return immutableSortedSet;
        }
        ImmutableSortedSet<E> immutableSortedSetCreateDescendingSet = createDescendingSet();
        this.descendingSet = immutableSortedSetCreateDescendingSet;
        immutableSortedSetCreateDescendingSet.descendingSet = this;
        return immutableSortedSetCreateDescendingSet;
    }

    public E first() {
        return (E) iterator().next();
    }

    public E floor(E e11) {
        return (E) Iterators.o(headSet((Object) e11, true).descendingIterator(), null);
    }

    @Override // java.util.NavigableSet, java.util.SortedSet
    public ImmutableSortedSet<E> headSet(E e11) {
        return headSet((Object) e11, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableSet
    public ImmutableSortedSet<E> headSet(E e11, boolean z10) {
        return headSetImpl(com.google.common.base.m.o(e11), z10);
    }

    abstract ImmutableSortedSet<E> headSetImpl(E e11, boolean z10);

    public E higher(E e11) {
        return (E) g3.f(tailSet((Object) e11, false), null);
    }

    abstract int indexOf(Object obj);

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
    public abstract r4 iterator();

    public E last() {
        return (E) descendingIterator().next();
    }

    public E lower(E e11) {
        return (E) Iterators.o(headSet((Object) e11, false).descendingIterator(), null);
    }

    @Override // java.util.NavigableSet
    @Deprecated
    public final E pollFirst() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.NavigableSet
    @Deprecated
    public final E pollLast() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.NavigableSet, java.util.SortedSet
    public ImmutableSortedSet<E> subSet(E e11, E e12) {
        return subSet((Object) e11, true, (Object) e12, false);
    }

    @Override // java.util.NavigableSet
    public ImmutableSortedSet<E> subSet(E e11, boolean z10, E e12, boolean z11) {
        com.google.common.base.m.o(e11);
        com.google.common.base.m.o(e12);
        com.google.common.base.m.d(this.comparator.compare(e11, e12) <= 0);
        return subSetImpl(e11, z10, e12, z11);
    }

    abstract ImmutableSortedSet<E> subSetImpl(E e11, boolean z10, E e12, boolean z11);

    @Override // java.util.NavigableSet, java.util.SortedSet
    public ImmutableSortedSet<E> tailSet(E e11) {
        return tailSet((Object) e11, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableSet
    public ImmutableSortedSet<E> tailSet(E e11, boolean z10) {
        return tailSetImpl(com.google.common.base.m.o(e11), z10);
    }

    abstract ImmutableSortedSet<E> tailSetImpl(E e11, boolean z10);

    int unsafeCompare(Object obj, Object obj2) {
        return unsafeCompare(this.comparator, obj, obj2);
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
    Object writeReplace() {
        return new SerializedForm(this.comparator, toArray());
    }
}
