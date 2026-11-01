package com.google.common.collect;

import java.lang.Comparable;
import java.util.NoSuchElementException;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ContiguousSet<C extends Comparable> extends ImmutableSortedSet<C> {
    final DiscreteDomain domain;

    ContiguousSet(DiscreteDomain discreteDomain) {
        super(Ordering.natural());
        this.domain = discreteDomain;
    }

    @Deprecated
    public static <E> ImmutableSortedSet.a builder() {
        throw new UnsupportedOperationException();
    }

    public static ContiguousSet<Integer> closed(int i11, int i12) {
        return create(Range.closed(Integer.valueOf(i11), Integer.valueOf(i12)), DiscreteDomain.integers());
    }

    public static ContiguousSet<Long> closed(long j11, long j12) {
        return create(Range.closed(Long.valueOf(j11), Long.valueOf(j12)), DiscreteDomain.longs());
    }

    public static ContiguousSet<Integer> closedOpen(int i11, int i12) {
        return create(Range.closedOpen(Integer.valueOf(i11), Integer.valueOf(i12)), DiscreteDomain.integers());
    }

    public static ContiguousSet<Long> closedOpen(long j11, long j12) {
        return create(Range.closedOpen(Long.valueOf(j11), Long.valueOf(j12)), DiscreteDomain.longs());
    }

    public static <C extends Comparable> ContiguousSet<C> create(Range<C> range, DiscreteDomain discreteDomain) {
        com.google.common.base.m.o(range);
        com.google.common.base.m.o(discreteDomain);
        try {
            Range<C> rangeIntersection = !range.hasLowerBound() ? range.intersection(Range.atLeast(discreteDomain.minValue())) : range;
            if (!range.hasUpperBound()) {
                rangeIntersection = rangeIntersection.intersection(Range.atMost(discreteDomain.maxValue()));
            }
            if (!rangeIntersection.isEmpty()) {
                Comparable comparableLeastValueAbove = range.lowerBound.leastValueAbove(discreteDomain);
                Objects.requireNonNull(comparableLeastValueAbove);
                Comparable comparableGreatestValueBelow = range.upperBound.greatestValueBelow(discreteDomain);
                Objects.requireNonNull(comparableGreatestValueBelow);
                if (Range.compareOrThrow(comparableLeastValueAbove, comparableGreatestValueBelow) <= 0) {
                    return new RegularContiguousSet(rangeIntersection, discreteDomain);
                }
            }
            return new EmptyContiguousSet(discreteDomain);
        } catch (NoSuchElementException e11) {
            throw new IllegalArgumentException(e11);
        }
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    ImmutableSortedSet<C> createDescendingSet() {
        return new DescendingImmutableSortedSet(this);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet, java.util.SortedSet
    public ContiguousSet<C> headSet(C c11) {
        return headSetImpl((Comparable) com.google.common.base.m.o(c11), false);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public ContiguousSet<C> headSet(C c11, boolean z10) {
        return headSetImpl((Comparable) com.google.common.base.m.o(c11), z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableSortedSet
    public abstract ContiguousSet<C> headSetImpl(C c11, boolean z10);

    public abstract ContiguousSet<C> intersection(ContiguousSet<C> contiguousSet);

    public abstract Range<C> range();

    public abstract Range<C> range(BoundType boundType, BoundType boundType2);

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet, java.util.SortedSet
    public ContiguousSet<C> subSet(C c11, C c12) {
        com.google.common.base.m.o(c11);
        com.google.common.base.m.o(c12);
        com.google.common.base.m.d(comparator().compare(c11, c12) <= 0);
        return subSetImpl((Comparable) c11, true, (Comparable) c12, false);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public ContiguousSet<C> subSet(C c11, boolean z10, C c12, boolean z11) {
        com.google.common.base.m.o(c11);
        com.google.common.base.m.o(c12);
        com.google.common.base.m.d(comparator().compare(c11, c12) <= 0);
        return subSetImpl((Comparable) c11, z10, (Comparable) c12, z11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableSortedSet
    public abstract ContiguousSet<C> subSetImpl(C c11, boolean z10, C c12, boolean z11);

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet, java.util.SortedSet
    public ContiguousSet<C> tailSet(C c11) {
        return tailSetImpl((Comparable) com.google.common.base.m.o(c11), true);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public ContiguousSet<C> tailSet(C c11, boolean z10) {
        return tailSetImpl((Comparable) com.google.common.base.m.o(c11), z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableSortedSet
    public abstract ContiguousSet<C> tailSetImpl(C c11, boolean z10);

    @Override // java.util.AbstractCollection
    public String toString() {
        return range().toString();
    }

    @Override // com.google.common.collect.ImmutableSortedSet, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
    Object writeReplace() {
        return super.writeReplace();
    }
}
