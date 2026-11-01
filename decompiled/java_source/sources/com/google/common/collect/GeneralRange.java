package com.google.common.collect;

import java.io.Serializable;
import java.util.Comparator;

/* JADX INFO: loaded from: classes4.dex */
final class GeneralRange<T> implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private transient GeneralRange f30390a;
    private final Comparator<? super T> comparator;
    private final boolean hasLowerBound;
    private final boolean hasUpperBound;
    private final BoundType lowerBoundType;
    private final T lowerEndpoint;
    private final BoundType upperBoundType;
    private final T upperEndpoint;

    /* JADX WARN: Multi-variable type inference failed */
    private GeneralRange(Comparator comparator, boolean z10, Object obj, BoundType boundType, boolean z11, Object obj2, BoundType boundType2) {
        this.comparator = (Comparator) com.google.common.base.m.o(comparator);
        this.hasLowerBound = z10;
        this.hasUpperBound = z11;
        this.lowerEndpoint = obj;
        this.lowerBoundType = (BoundType) com.google.common.base.m.o(boundType);
        this.upperEndpoint = obj2;
        this.upperBoundType = (BoundType) com.google.common.base.m.o(boundType2);
        if (z10) {
            comparator.compare(m3.a(obj), m3.a(obj));
        }
        if (z11) {
            comparator.compare(m3.a(obj2), m3.a(obj2));
        }
        if (z10 && z11) {
            int iCompare = comparator.compare(m3.a(obj), m3.a(obj2));
            com.google.common.base.m.k(iCompare <= 0, "lowerEndpoint (%s) > upperEndpoint (%s)", obj, obj2);
            if (iCompare == 0) {
                BoundType boundType3 = BoundType.OPEN;
                com.google.common.base.m.d((boundType == boundType3 && boundType2 == boundType3) ? false : true);
            }
        }
    }

    static <T> GeneralRange<T> all(Comparator<? super T> comparator) {
        BoundType boundType = BoundType.OPEN;
        return new GeneralRange<>(comparator, false, null, boundType, false, null, boundType);
    }

    static <T> GeneralRange<T> downTo(Comparator<? super T> comparator, T t11, BoundType boundType) {
        return new GeneralRange<>(comparator, true, t11, boundType, false, null, BoundType.OPEN);
    }

    static <T extends Comparable> GeneralRange<T> from(Range<T> range) {
        return new GeneralRange<>(Ordering.natural(), range.hasLowerBound(), range.hasLowerBound() ? range.lowerEndpoint() : null, range.hasLowerBound() ? range.lowerBoundType() : BoundType.OPEN, range.hasUpperBound(), range.hasUpperBound() ? range.upperEndpoint() : null, range.hasUpperBound() ? range.upperBoundType() : BoundType.OPEN);
    }

    static <T> GeneralRange<T> range(Comparator<? super T> comparator, T t11, BoundType boundType, T t12, BoundType boundType2) {
        return new GeneralRange<>(comparator, true, t11, boundType, true, t12, boundType2);
    }

    static <T> GeneralRange<T> upTo(Comparator<? super T> comparator, T t11, BoundType boundType) {
        return new GeneralRange<>(comparator, false, null, BoundType.OPEN, true, t11, boundType);
    }

    Comparator<? super T> comparator() {
        return this.comparator;
    }

    boolean contains(T t11) {
        return (tooLow(t11) || tooHigh(t11)) ? false : true;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof GeneralRange)) {
            return false;
        }
        GeneralRange generalRange = (GeneralRange) obj;
        return this.comparator.equals(generalRange.comparator) && this.hasLowerBound == generalRange.hasLowerBound && this.hasUpperBound == generalRange.hasUpperBound && getLowerBoundType().equals(generalRange.getLowerBoundType()) && getUpperBoundType().equals(generalRange.getUpperBoundType()) && com.google.common.base.j.a(getLowerEndpoint(), generalRange.getLowerEndpoint()) && com.google.common.base.j.a(getUpperEndpoint(), generalRange.getUpperEndpoint());
    }

    BoundType getLowerBoundType() {
        return this.lowerBoundType;
    }

    T getLowerEndpoint() {
        return this.lowerEndpoint;
    }

    BoundType getUpperBoundType() {
        return this.upperBoundType;
    }

    T getUpperEndpoint() {
        return this.upperEndpoint;
    }

    boolean hasLowerBound() {
        return this.hasLowerBound;
    }

    boolean hasUpperBound() {
        return this.hasUpperBound;
    }

    public int hashCode() {
        return com.google.common.base.j.b(this.comparator, getLowerEndpoint(), getLowerBoundType(), getUpperEndpoint(), getUpperBoundType());
    }

    GeneralRange<T> intersect(GeneralRange<T> generalRange) {
        int iCompare;
        int iCompare2;
        T t11;
        BoundType boundType;
        BoundType boundType2;
        int iCompare3;
        BoundType boundType3;
        com.google.common.base.m.o(generalRange);
        com.google.common.base.m.d(this.comparator.equals(generalRange.comparator));
        boolean z10 = this.hasLowerBound;
        T lowerEndpoint = getLowerEndpoint();
        BoundType lowerBoundType = getLowerBoundType();
        if (!hasLowerBound()) {
            z10 = generalRange.hasLowerBound;
            lowerEndpoint = generalRange.getLowerEndpoint();
            lowerBoundType = generalRange.getLowerBoundType();
        } else if (generalRange.hasLowerBound() && ((iCompare = this.comparator.compare(getLowerEndpoint(), generalRange.getLowerEndpoint())) < 0 || (iCompare == 0 && generalRange.getLowerBoundType() == BoundType.OPEN))) {
            lowerEndpoint = generalRange.getLowerEndpoint();
            lowerBoundType = generalRange.getLowerBoundType();
        }
        boolean z11 = z10;
        boolean z12 = this.hasUpperBound;
        T upperEndpoint = getUpperEndpoint();
        BoundType upperBoundType = getUpperBoundType();
        if (!hasUpperBound()) {
            z12 = generalRange.hasUpperBound;
            upperEndpoint = generalRange.getUpperEndpoint();
            upperBoundType = generalRange.getUpperBoundType();
        } else if (generalRange.hasUpperBound() && ((iCompare2 = this.comparator.compare(getUpperEndpoint(), generalRange.getUpperEndpoint())) > 0 || (iCompare2 == 0 && generalRange.getUpperBoundType() == BoundType.OPEN))) {
            upperEndpoint = generalRange.getUpperEndpoint();
            upperBoundType = generalRange.getUpperBoundType();
        }
        boolean z13 = z12;
        T t12 = upperEndpoint;
        if (z11 && z13 && ((iCompare3 = this.comparator.compare(lowerEndpoint, t12)) > 0 || (iCompare3 == 0 && lowerBoundType == (boundType3 = BoundType.OPEN) && upperBoundType == boundType3))) {
            boundType = BoundType.OPEN;
            boundType2 = BoundType.CLOSED;
            t11 = t12;
        } else {
            t11 = lowerEndpoint;
            boundType = lowerBoundType;
            boundType2 = upperBoundType;
        }
        return new GeneralRange<>(this.comparator, z11, t11, boundType, z13, t12, boundType2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    boolean isEmpty() {
        return (hasUpperBound() && tooLow(m3.a(getUpperEndpoint()))) || (hasLowerBound() && tooHigh(m3.a(getLowerEndpoint())));
    }

    GeneralRange<T> reverse() {
        GeneralRange<T> generalRange = this.f30390a;
        if (generalRange != null) {
            return generalRange;
        }
        GeneralRange<T> generalRange2 = new GeneralRange<>(Ordering.from(this.comparator).reverse(), this.hasUpperBound, getUpperEndpoint(), getUpperBoundType(), this.hasLowerBound, getLowerEndpoint(), getLowerBoundType());
        generalRange2.f30390a = this;
        this.f30390a = generalRange2;
        return generalRange2;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.comparator);
        sb2.append(":");
        BoundType boundType = this.lowerBoundType;
        BoundType boundType2 = BoundType.CLOSED;
        sb2.append(boundType == boundType2 ? '[' : '(');
        sb2.append(this.hasLowerBound ? this.lowerEndpoint : "-∞");
        sb2.append(',');
        sb2.append(this.hasUpperBound ? this.upperEndpoint : "∞");
        sb2.append(this.upperBoundType == boundType2 ? ']' : ')');
        return sb2.toString();
    }

    boolean tooHigh(T t11) {
        if (!hasUpperBound()) {
            return false;
        }
        int iCompare = this.comparator.compare(t11, m3.a(getUpperEndpoint()));
        return ((iCompare == 0) & (getUpperBoundType() == BoundType.OPEN)) | (iCompare > 0);
    }

    boolean tooLow(T t11) {
        if (!hasLowerBound()) {
            return false;
        }
        int iCompare = this.comparator.compare(t11, m3.a(getLowerEndpoint()));
        return ((iCompare == 0) & (getLowerBoundType() == BoundType.OPEN)) | (iCompare < 0);
    }
}
