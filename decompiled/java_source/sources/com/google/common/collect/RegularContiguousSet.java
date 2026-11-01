package com.google.common.collect;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.lang.Comparable;
import java.util.Collection;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class RegularContiguousSet<C extends Comparable> extends ContiguousSet<C> {
    private static final long serialVersionUID = 0;
    private final Range<C> range;

    private static final class SerializedForm<C extends Comparable> implements Serializable {
        final DiscreteDomain domain;
        final Range<C> range;

        private SerializedForm(Range range, DiscreteDomain discreteDomain) {
            this.range = range;
            this.domain = discreteDomain;
        }

        /* synthetic */ SerializedForm(Range range, DiscreteDomain discreteDomain, a aVar) {
            this(range, discreteDomain);
        }

        private Object readResolve() {
            return new RegularContiguousSet(this.range, this.domain);
        }
    }

    class a extends g {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Comparable f30625b;

        a(Comparable comparable) {
            super(comparable);
            this.f30625b = RegularContiguousSet.this.last();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.g
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Comparable a(Comparable comparable) {
            if (RegularContiguousSet.a(comparable, this.f30625b)) {
                return null;
            }
            return RegularContiguousSet.this.domain.next(comparable);
        }
    }

    class b extends g {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Comparable f30627b;

        b(Comparable comparable) {
            super(comparable);
            this.f30627b = RegularContiguousSet.this.first();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.g
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Comparable a(Comparable comparable) {
            if (RegularContiguousSet.a(comparable, this.f30627b)) {
                return null;
            }
            return RegularContiguousSet.this.domain.previous(comparable);
        }
    }

    RegularContiguousSet(Range<C> range, DiscreteDomain discreteDomain) {
        super(discreteDomain);
        this.range = range;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean a(Comparable comparable, Comparable comparable2) {
        return comparable2 != null && Range.compareOrThrow(comparable, comparable2) == 0;
    }

    private ContiguousSet b(Range range) {
        return this.range.isConnected(range) ? ContiguousSet.create(this.range.intersection(range), this.domain) : new EmptyContiguousSet(this.domain);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            return this.range.contains((Comparable) obj);
        } catch (ClassCastException unused) {
            return false;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean containsAll(Collection<?> collection) {
        return f2.a(this, collection);
    }

    @Override // com.google.common.collect.ImmutableSet
    ImmutableList<C> createAsList() {
        return this.domain.supportsFastOffset ? new ImmutableAsList<C>() { // from class: com.google.common.collect.RegularContiguousSet.3
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.collect.ImmutableAsList
            public ImmutableSortedSet<C> delegateCollection() {
                return RegularContiguousSet.this;
            }

            @Override // java.util.List
            public C get(int i11) {
                com.google.common.base.m.m(i11, size());
                RegularContiguousSet regularContiguousSet = RegularContiguousSet.this;
                return (C) regularContiguousSet.domain.offset(regularContiguousSet.first(), i11);
            }

            @Override // com.google.common.collect.ImmutableAsList, com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection
            Object writeReplace() {
                return super.writeReplace();
            }
        } : super.createAsList();
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public r4 descendingIterator() {
        return new b(last());
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof RegularContiguousSet) {
            RegularContiguousSet regularContiguousSet = (RegularContiguousSet) obj;
            if (this.domain.equals(regularContiguousSet.domain)) {
                return first().equals(regularContiguousSet.first()) && last().equals(regularContiguousSet.last());
            }
        }
        return super.equals(obj);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.SortedSet
    public C first() {
        Comparable comparableLeastValueAbove = this.range.lowerBound.leastValueAbove(this.domain);
        Objects.requireNonNull(comparableLeastValueAbove);
        return (C) comparableLeastValueAbove;
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public int hashCode() {
        return Sets.d(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ContiguousSet, com.google.common.collect.ImmutableSortedSet
    public ContiguousSet<C> headSetImpl(C c11, boolean z10) {
        return b(Range.upTo(c11, BoundType.forBoolean(z10)));
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    int indexOf(Object obj) {
        if (!contains(obj)) {
            return -1;
        }
        Objects.requireNonNull(obj);
        return (int) this.domain.distance(first(), (Comparable) obj);
    }

    @Override // com.google.common.collect.ContiguousSet
    public ContiguousSet<C> intersection(ContiguousSet<C> contiguousSet) {
        com.google.common.base.m.o(contiguousSet);
        com.google.common.base.m.d(this.domain.equals(contiguousSet.domain));
        if (contiguousSet.isEmpty()) {
            return contiguousSet;
        }
        Comparable comparable = (Comparable) Ordering.natural().max(first(), contiguousSet.first());
        Comparable comparable2 = (Comparable) Ordering.natural().min(last(), contiguousSet.last());
        return comparable.compareTo(comparable2) <= 0 ? ContiguousSet.create(Range.closed(comparable, comparable2), this.domain) : new EmptyContiguousSet(this.domain);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return false;
    }

    @Override // com.google.common.collect.ImmutableCollection
    boolean isPartialView() {
        return false;
    }

    @Override // com.google.common.collect.ImmutableSortedSet, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
    public r4 iterator() {
        return new a(first());
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.SortedSet
    public C last() {
        Comparable comparableGreatestValueBelow = this.range.upperBound.greatestValueBelow(this.domain);
        Objects.requireNonNull(comparableGreatestValueBelow);
        return (C) comparableGreatestValueBelow;
    }

    @Override // com.google.common.collect.ContiguousSet
    public Range<C> range() {
        BoundType boundType = BoundType.CLOSED;
        return range(boundType, boundType);
    }

    @Override // com.google.common.collect.ContiguousSet
    public Range<C> range(BoundType boundType, BoundType boundType2) {
        return Range.create(this.range.lowerBound.withLowerBoundType(boundType, this.domain), this.range.upperBound.withUpperBoundType(boundType2, this.domain));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        long jDistance = this.domain.distance(first(), last());
        if (jDistance >= 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return ((int) jDistance) + 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ContiguousSet, com.google.common.collect.ImmutableSortedSet
    public ContiguousSet<C> subSetImpl(C c11, boolean z10, C c12, boolean z11) {
        return (c11.compareTo(c12) != 0 || z10 || z11) ? b(Range.range(c11, BoundType.forBoolean(z10), c12, BoundType.forBoolean(z11))) : new EmptyContiguousSet(this.domain);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ContiguousSet, com.google.common.collect.ImmutableSortedSet
    public ContiguousSet<C> tailSetImpl(C c11, boolean z10) {
        return b(Range.downTo(c11, BoundType.forBoolean(z10)));
    }

    @Override // com.google.common.collect.ContiguousSet, com.google.common.collect.ImmutableSortedSet, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
    Object writeReplace() {
        return new SerializedForm(this.range, this.domain, null);
    }
}
