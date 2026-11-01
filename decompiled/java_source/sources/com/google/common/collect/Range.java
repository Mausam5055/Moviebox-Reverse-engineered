package com.google.common.collect;

import java.io.Serializable;
import java.lang.Comparable;
import java.util.Comparator;
import java.util.Iterator;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes4.dex */
public final class Range<C extends Comparable> extends RangeGwtSerializationDependencies implements com.google.common.base.n, Serializable {
    private static final Range<Comparable> ALL = new Range<>(Cut.belowAll(), Cut.aboveAll());
    private static final long serialVersionUID = 0;
    final Cut<C> lowerBound;
    final Cut<C> upperBound;

    private static class RangeLexOrdering extends Ordering<Range<?>> implements Serializable {
        static final Ordering<?> INSTANCE = new RangeLexOrdering();
        private static final long serialVersionUID = 0;

        private RangeLexOrdering() {
        }

        @Override // com.google.common.collect.Ordering, java.util.Comparator
        public int compare(Range<?> range, Range<?> range2) {
            return h2.k().f(range.lowerBound, range2.lowerBound).f(range.upperBound, range2.upperBound).j();
        }
    }

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f30624a;

        static {
            int[] iArr = new int[BoundType.values().length];
            f30624a = iArr;
            try {
                iArr[BoundType.OPEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f30624a[BoundType.CLOSED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private Range(Cut<C> cut, Cut<C> cut2) {
        this.lowerBound = (Cut) com.google.common.base.m.o(cut);
        this.upperBound = (Cut) com.google.common.base.m.o(cut2);
        if (cut.compareTo((Cut) cut2) > 0 || cut == Cut.aboveAll() || cut2 == Cut.belowAll()) {
            throw new IllegalArgumentException("Invalid range: " + toString(cut, cut2));
        }
    }

    public static <C extends Comparable<?>> Range<C> all() {
        return (Range<C>) ALL;
    }

    public static <C extends Comparable<?>> Range<C> atLeast(C c11) {
        return create(Cut.belowValue(c11), Cut.aboveAll());
    }

    public static <C extends Comparable<?>> Range<C> atMost(C c11) {
        return create(Cut.belowAll(), Cut.aboveValue(c11));
    }

    public static <C extends Comparable<?>> Range<C> closed(C c11, C c12) {
        return create(Cut.belowValue(c11), Cut.aboveValue(c12));
    }

    public static <C extends Comparable<?>> Range<C> closedOpen(C c11, C c12) {
        return create(Cut.belowValue(c11), Cut.belowValue(c12));
    }

    static int compareOrThrow(Comparable comparable, Comparable comparable2) {
        return comparable.compareTo(comparable2);
    }

    static <C extends Comparable<?>> Range<C> create(Cut<C> cut, Cut<C> cut2) {
        return new Range<>(cut, cut2);
    }

    public static <C extends Comparable<?>> Range<C> downTo(C c11, BoundType boundType) {
        int i11 = a.f30624a[boundType.ordinal()];
        if (i11 == 1) {
            return greaterThan(c11);
        }
        if (i11 == 2) {
            return atLeast(c11);
        }
        throw new AssertionError();
    }

    public static <C extends Comparable<?>> Range<C> encloseAll(Iterable<C> iterable) {
        com.google.common.base.m.o(iterable);
        if (iterable instanceof SortedSet) {
            SortedSet sortedSet = (SortedSet) iterable;
            Comparator comparator = sortedSet.comparator();
            if (Ordering.natural().equals(comparator) || comparator == null) {
                return closed((Comparable) sortedSet.first(), (Comparable) sortedSet.last());
            }
        }
        Iterator<C> it = iterable.iterator();
        Comparable comparable = (Comparable) com.google.common.base.m.o(it.next());
        Comparable comparable2 = comparable;
        while (it.hasNext()) {
            Comparable comparable3 = (Comparable) com.google.common.base.m.o(it.next());
            comparable = (Comparable) Ordering.natural().min(comparable, comparable3);
            comparable2 = (Comparable) Ordering.natural().max(comparable2, comparable3);
        }
        return closed(comparable, comparable2);
    }

    public static <C extends Comparable<?>> Range<C> greaterThan(C c11) {
        return create(Cut.aboveValue(c11), Cut.aboveAll());
    }

    public static <C extends Comparable<?>> Range<C> lessThan(C c11) {
        return create(Cut.belowAll(), Cut.belowValue(c11));
    }

    public static <C extends Comparable<?>> Range<C> open(C c11, C c12) {
        return create(Cut.aboveValue(c11), Cut.belowValue(c12));
    }

    public static <C extends Comparable<?>> Range<C> openClosed(C c11, C c12) {
        return create(Cut.aboveValue(c11), Cut.aboveValue(c12));
    }

    public static <C extends Comparable<?>> Range<C> range(C c11, BoundType boundType, C c12, BoundType boundType2) {
        com.google.common.base.m.o(boundType);
        com.google.common.base.m.o(boundType2);
        BoundType boundType3 = BoundType.OPEN;
        return create(boundType == boundType3 ? Cut.aboveValue(c11) : Cut.belowValue(c11), boundType2 == boundType3 ? Cut.belowValue(c12) : Cut.aboveValue(c12));
    }

    static <C extends Comparable<?>> Ordering<Range<C>> rangeLexOrdering() {
        return (Ordering<Range<C>>) RangeLexOrdering.INSTANCE;
    }

    public static <C extends Comparable<?>> Range<C> singleton(C c11) {
        return closed(c11, c11);
    }

    private static String toString(Cut<?> cut, Cut<?> cut2) {
        StringBuilder sb2 = new StringBuilder(16);
        cut.describeAsLowerBound(sb2);
        sb2.append("..");
        cut2.describeAsUpperBound(sb2);
        return sb2.toString();
    }

    public static <C extends Comparable<?>> Range<C> upTo(C c11, BoundType boundType) {
        int i11 = a.f30624a[boundType.ordinal()];
        if (i11 == 1) {
            return lessThan(c11);
        }
        if (i11 == 2) {
            return atMost(c11);
        }
        throw new AssertionError();
    }

    @Override // com.google.common.base.n
    @Deprecated
    public boolean apply(C c11) {
        return contains(c11);
    }

    public Range<C> canonical(DiscreteDomain discreteDomain) {
        com.google.common.base.m.o(discreteDomain);
        Cut<C> cutCanonical = this.lowerBound.canonical(discreteDomain);
        Cut<C> cutCanonical2 = this.upperBound.canonical(discreteDomain);
        return (cutCanonical == this.lowerBound && cutCanonical2 == this.upperBound) ? this : create(cutCanonical, cutCanonical2);
    }

    public boolean contains(C c11) {
        com.google.common.base.m.o(c11);
        return this.lowerBound.isLessThan(c11) && !this.upperBound.isLessThan(c11);
    }

    public boolean containsAll(Iterable<? extends C> iterable) {
        if (g3.k(iterable)) {
            return true;
        }
        if (iterable instanceof SortedSet) {
            SortedSet sortedSet = (SortedSet) iterable;
            Comparator comparator = sortedSet.comparator();
            if (Ordering.natural().equals(comparator) || comparator == null) {
                return contains((Comparable) sortedSet.first()) && contains((Comparable) sortedSet.last());
            }
        }
        Iterator<? extends C> it = iterable.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    public boolean encloses(Range<C> range) {
        return this.lowerBound.compareTo((Cut) range.lowerBound) <= 0 && this.upperBound.compareTo((Cut) range.upperBound) >= 0;
    }

    @Override // com.google.common.base.n
    public boolean equals(Object obj) {
        if (!(obj instanceof Range)) {
            return false;
        }
        Range range = (Range) obj;
        return this.lowerBound.equals(range.lowerBound) && this.upperBound.equals(range.upperBound);
    }

    public Range<C> gap(Range<C> range) {
        if (this.lowerBound.compareTo((Cut) range.upperBound) >= 0 || range.lowerBound.compareTo((Cut) this.upperBound) >= 0) {
            boolean z10 = this.lowerBound.compareTo((Cut) range.lowerBound) < 0;
            Range<C> range2 = z10 ? this : range;
            if (!z10) {
                range = this;
            }
            return create(range2.upperBound, range.lowerBound);
        }
        throw new IllegalArgumentException("Ranges have a nonempty intersection: " + this + ", " + range);
    }

    public boolean hasLowerBound() {
        return this.lowerBound != Cut.belowAll();
    }

    public boolean hasUpperBound() {
        return this.upperBound != Cut.aboveAll();
    }

    public int hashCode() {
        return (this.lowerBound.hashCode() * 31) + this.upperBound.hashCode();
    }

    public Range<C> intersection(Range<C> range) {
        int iCompareTo = this.lowerBound.compareTo((Cut) range.lowerBound);
        int iCompareTo2 = this.upperBound.compareTo((Cut) range.upperBound);
        if (iCompareTo >= 0 && iCompareTo2 <= 0) {
            return this;
        }
        if (iCompareTo <= 0 && iCompareTo2 >= 0) {
            return range;
        }
        Cut<C> cut = iCompareTo >= 0 ? this.lowerBound : range.lowerBound;
        Cut<C> cut2 = iCompareTo2 <= 0 ? this.upperBound : range.upperBound;
        com.google.common.base.m.k(cut.compareTo((Cut) cut2) <= 0, "intersection is undefined for disconnected ranges %s and %s", this, range);
        return create(cut, cut2);
    }

    public boolean isConnected(Range<C> range) {
        return this.lowerBound.compareTo((Cut) range.upperBound) <= 0 && range.lowerBound.compareTo((Cut) this.upperBound) <= 0;
    }

    public boolean isEmpty() {
        return this.lowerBound.equals(this.upperBound);
    }

    Cut<C> lowerBound() {
        return this.lowerBound;
    }

    public BoundType lowerBoundType() {
        return this.lowerBound.typeAsLowerBound();
    }

    public C lowerEndpoint() {
        return (C) this.lowerBound.endpoint();
    }

    Object readResolve() {
        return equals(ALL) ? all() : this;
    }

    public Range<C> span(Range<C> range) {
        int iCompareTo = this.lowerBound.compareTo((Cut) range.lowerBound);
        int iCompareTo2 = this.upperBound.compareTo((Cut) range.upperBound);
        if (iCompareTo <= 0 && iCompareTo2 >= 0) {
            return this;
        }
        if (iCompareTo < 0 || iCompareTo2 > 0) {
            return create(iCompareTo <= 0 ? this.lowerBound : range.lowerBound, iCompareTo2 >= 0 ? this.upperBound : range.upperBound);
        }
        return range;
    }

    public String toString() {
        return toString(this.lowerBound, this.upperBound);
    }

    Cut<C> upperBound() {
        return this.upperBound;
    }

    public BoundType upperBoundType() {
        return this.upperBound.typeAsUpperBound();
    }

    public C upperEndpoint() {
        return (C) this.upperBound.endpoint();
    }
}
