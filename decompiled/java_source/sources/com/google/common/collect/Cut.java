package com.google.common.collect;

import java.io.Serializable;
import java.lang.Comparable;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes4.dex */
abstract class Cut<C extends Comparable> implements Comparable<Cut<C>>, Serializable {
    private static final long serialVersionUID = 0;
    final C endpoint;

    private static final class AboveAll extends Cut<Comparable<?>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final AboveAll f30371a = new AboveAll();
        private static final long serialVersionUID = 0;

        private AboveAll() {
            super("");
        }

        private Object readResolve() {
            return f30371a;
        }

        @Override // com.google.common.collect.Cut, java.lang.Comparable
        public int compareTo(Cut<Comparable<?>> cut) {
            return cut == this ? 0 : 1;
        }

        @Override // com.google.common.collect.Cut
        void describeAsLowerBound(StringBuilder sb2) {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.Cut
        void describeAsUpperBound(StringBuilder sb2) {
            sb2.append("+∞)");
        }

        @Override // com.google.common.collect.Cut
        Comparable<?> endpoint() {
            throw new IllegalStateException("range unbounded on this side");
        }

        @Override // com.google.common.collect.Cut
        Comparable<?> greatestValueBelow(DiscreteDomain discreteDomain) {
            return discreteDomain.maxValue();
        }

        @Override // com.google.common.collect.Cut
        public int hashCode() {
            return System.identityHashCode(this);
        }

        @Override // com.google.common.collect.Cut
        boolean isLessThan(Comparable<?> comparable) {
            return false;
        }

        @Override // com.google.common.collect.Cut
        Comparable<?> leastValueAbove(DiscreteDomain discreteDomain) {
            throw new AssertionError();
        }

        public String toString() {
            return "+∞";
        }

        @Override // com.google.common.collect.Cut
        BoundType typeAsLowerBound() {
            throw new AssertionError("this statement should be unreachable");
        }

        @Override // com.google.common.collect.Cut
        BoundType typeAsUpperBound() {
            throw new IllegalStateException();
        }

        @Override // com.google.common.collect.Cut
        Cut<Comparable<?>> withLowerBoundType(BoundType boundType, DiscreteDomain discreteDomain) {
            throw new AssertionError("this statement should be unreachable");
        }

        @Override // com.google.common.collect.Cut
        Cut<Comparable<?>> withUpperBoundType(BoundType boundType, DiscreteDomain discreteDomain) {
            throw new IllegalStateException();
        }
    }

    private static final class AboveValue<C extends Comparable> extends Cut<C> {
        private static final long serialVersionUID = 0;

        AboveValue(C c11) {
            super((Comparable) com.google.common.base.m.o(c11));
        }

        @Override // com.google.common.collect.Cut
        Cut<C> canonical(DiscreteDomain discreteDomain) {
            Comparable comparableLeastValueAbove = leastValueAbove(discreteDomain);
            return comparableLeastValueAbove != null ? Cut.belowValue(comparableLeastValueAbove) : Cut.aboveAll();
        }

        @Override // com.google.common.collect.Cut, java.lang.Comparable
        public /* bridge */ /* synthetic */ int compareTo(Object obj) {
            return super.compareTo((Cut) obj);
        }

        @Override // com.google.common.collect.Cut
        void describeAsLowerBound(StringBuilder sb2) {
            sb2.append('(');
            sb2.append(this.endpoint);
        }

        @Override // com.google.common.collect.Cut
        void describeAsUpperBound(StringBuilder sb2) {
            sb2.append(this.endpoint);
            sb2.append(']');
        }

        @Override // com.google.common.collect.Cut
        C greatestValueBelow(DiscreteDomain discreteDomain) {
            return this.endpoint;
        }

        @Override // com.google.common.collect.Cut
        public int hashCode() {
            return ~this.endpoint.hashCode();
        }

        @Override // com.google.common.collect.Cut
        boolean isLessThan(C c11) {
            return Range.compareOrThrow(this.endpoint, c11) < 0;
        }

        @Override // com.google.common.collect.Cut
        C leastValueAbove(DiscreteDomain discreteDomain) {
            return (C) discreteDomain.next(this.endpoint);
        }

        public String toString() {
            return "/" + this.endpoint + "\\";
        }

        @Override // com.google.common.collect.Cut
        BoundType typeAsLowerBound() {
            return BoundType.OPEN;
        }

        @Override // com.google.common.collect.Cut
        BoundType typeAsUpperBound() {
            return BoundType.CLOSED;
        }

        @Override // com.google.common.collect.Cut
        Cut<C> withLowerBoundType(BoundType boundType, DiscreteDomain discreteDomain) {
            int i11 = a.f30373a[boundType.ordinal()];
            if (i11 == 1) {
                Comparable next = discreteDomain.next(this.endpoint);
                return next == null ? Cut.belowAll() : Cut.belowValue(next);
            }
            if (i11 == 2) {
                return this;
            }
            throw new AssertionError();
        }

        @Override // com.google.common.collect.Cut
        Cut<C> withUpperBoundType(BoundType boundType, DiscreteDomain discreteDomain) {
            int i11 = a.f30373a[boundType.ordinal()];
            if (i11 == 1) {
                return this;
            }
            if (i11 != 2) {
                throw new AssertionError();
            }
            Comparable next = discreteDomain.next(this.endpoint);
            return next == null ? Cut.aboveAll() : Cut.belowValue(next);
        }
    }

    private static final class BelowAll extends Cut<Comparable<?>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final BelowAll f30372a = new BelowAll();
        private static final long serialVersionUID = 0;

        private BelowAll() {
            super("");
        }

        private Object readResolve() {
            return f30372a;
        }

        @Override // com.google.common.collect.Cut
        Cut<Comparable<?>> canonical(DiscreteDomain discreteDomain) {
            try {
                return Cut.belowValue(discreteDomain.minValue());
            } catch (NoSuchElementException unused) {
                return this;
            }
        }

        @Override // com.google.common.collect.Cut, java.lang.Comparable
        public int compareTo(Cut<Comparable<?>> cut) {
            return cut == this ? 0 : -1;
        }

        @Override // com.google.common.collect.Cut
        void describeAsLowerBound(StringBuilder sb2) {
            sb2.append("(-∞");
        }

        @Override // com.google.common.collect.Cut
        void describeAsUpperBound(StringBuilder sb2) {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.Cut
        Comparable<?> endpoint() {
            throw new IllegalStateException("range unbounded on this side");
        }

        @Override // com.google.common.collect.Cut
        Comparable<?> greatestValueBelow(DiscreteDomain discreteDomain) {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.Cut
        public int hashCode() {
            return System.identityHashCode(this);
        }

        @Override // com.google.common.collect.Cut
        boolean isLessThan(Comparable<?> comparable) {
            return true;
        }

        @Override // com.google.common.collect.Cut
        Comparable<?> leastValueAbove(DiscreteDomain discreteDomain) {
            return discreteDomain.minValue();
        }

        public String toString() {
            return "-∞";
        }

        @Override // com.google.common.collect.Cut
        BoundType typeAsLowerBound() {
            throw new IllegalStateException();
        }

        @Override // com.google.common.collect.Cut
        BoundType typeAsUpperBound() {
            throw new AssertionError("this statement should be unreachable");
        }

        @Override // com.google.common.collect.Cut
        Cut<Comparable<?>> withLowerBoundType(BoundType boundType, DiscreteDomain discreteDomain) {
            throw new IllegalStateException();
        }

        @Override // com.google.common.collect.Cut
        Cut<Comparable<?>> withUpperBoundType(BoundType boundType, DiscreteDomain discreteDomain) {
            throw new AssertionError("this statement should be unreachable");
        }
    }

    private static final class BelowValue<C extends Comparable> extends Cut<C> {
        private static final long serialVersionUID = 0;

        BelowValue(C c11) {
            super((Comparable) com.google.common.base.m.o(c11));
        }

        @Override // com.google.common.collect.Cut, java.lang.Comparable
        public /* bridge */ /* synthetic */ int compareTo(Object obj) {
            return super.compareTo((Cut) obj);
        }

        @Override // com.google.common.collect.Cut
        void describeAsLowerBound(StringBuilder sb2) {
            sb2.append('[');
            sb2.append(this.endpoint);
        }

        @Override // com.google.common.collect.Cut
        void describeAsUpperBound(StringBuilder sb2) {
            sb2.append(this.endpoint);
            sb2.append(')');
        }

        @Override // com.google.common.collect.Cut
        C greatestValueBelow(DiscreteDomain discreteDomain) {
            return (C) discreteDomain.previous(this.endpoint);
        }

        @Override // com.google.common.collect.Cut
        public int hashCode() {
            return this.endpoint.hashCode();
        }

        @Override // com.google.common.collect.Cut
        boolean isLessThan(C c11) {
            return Range.compareOrThrow(this.endpoint, c11) <= 0;
        }

        @Override // com.google.common.collect.Cut
        C leastValueAbove(DiscreteDomain discreteDomain) {
            return this.endpoint;
        }

        public String toString() {
            return "\\" + this.endpoint + "/";
        }

        @Override // com.google.common.collect.Cut
        BoundType typeAsLowerBound() {
            return BoundType.CLOSED;
        }

        @Override // com.google.common.collect.Cut
        BoundType typeAsUpperBound() {
            return BoundType.OPEN;
        }

        @Override // com.google.common.collect.Cut
        Cut<C> withLowerBoundType(BoundType boundType, DiscreteDomain discreteDomain) {
            int i11 = a.f30373a[boundType.ordinal()];
            if (i11 == 1) {
                return this;
            }
            if (i11 != 2) {
                throw new AssertionError();
            }
            Comparable comparablePrevious = discreteDomain.previous(this.endpoint);
            return comparablePrevious == null ? Cut.belowAll() : new AboveValue(comparablePrevious);
        }

        @Override // com.google.common.collect.Cut
        Cut<C> withUpperBoundType(BoundType boundType, DiscreteDomain discreteDomain) {
            int i11 = a.f30373a[boundType.ordinal()];
            if (i11 == 1) {
                Comparable comparablePrevious = discreteDomain.previous(this.endpoint);
                return comparablePrevious == null ? Cut.aboveAll() : new AboveValue(comparablePrevious);
            }
            if (i11 == 2) {
                return this;
            }
            throw new AssertionError();
        }
    }

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f30373a;

        static {
            int[] iArr = new int[BoundType.values().length];
            f30373a = iArr;
            try {
                iArr[BoundType.CLOSED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f30373a[BoundType.OPEN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    Cut(C c11) {
        this.endpoint = c11;
    }

    static <C extends Comparable> Cut<C> aboveAll() {
        return AboveAll.f30371a;
    }

    static <C extends Comparable> Cut<C> aboveValue(C c11) {
        return new AboveValue(c11);
    }

    static <C extends Comparable> Cut<C> belowAll() {
        return BelowAll.f30372a;
    }

    static <C extends Comparable> Cut<C> belowValue(C c11) {
        return new BelowValue(c11);
    }

    Cut<C> canonical(DiscreteDomain discreteDomain) {
        return this;
    }

    @Override // java.lang.Comparable
    public int compareTo(Cut<C> cut) {
        if (cut == belowAll()) {
            return 1;
        }
        if (cut == aboveAll()) {
            return -1;
        }
        int iCompareOrThrow = Range.compareOrThrow(this.endpoint, cut.endpoint);
        return iCompareOrThrow != 0 ? iCompareOrThrow : Boolean.compare(this instanceof AboveValue, cut instanceof AboveValue);
    }

    abstract void describeAsLowerBound(StringBuilder sb2);

    abstract void describeAsUpperBound(StringBuilder sb2);

    C endpoint() {
        return this.endpoint;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Cut)) {
            return false;
        }
        try {
            return compareTo((Cut) obj) == 0;
        } catch (ClassCastException unused) {
            return false;
        }
    }

    abstract C greatestValueBelow(DiscreteDomain discreteDomain);

    public abstract int hashCode();

    abstract boolean isLessThan(C c11);

    abstract C leastValueAbove(DiscreteDomain discreteDomain);

    abstract BoundType typeAsLowerBound();

    abstract BoundType typeAsUpperBound();

    abstract Cut<C> withLowerBoundType(BoundType boundType, DiscreteDomain discreteDomain);

    abstract Cut<C> withUpperBoundType(BoundType boundType, DiscreteDomain discreteDomain);
}
