package com.google.common.collect;

import com.google.common.primitives.Ints;
import java.io.Serializable;
import java.math.BigInteger;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes4.dex */
public abstract class DiscreteDomain {
    final boolean supportsFastOffset;

    private static final class BigIntegerDomain extends DiscreteDomain implements Serializable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final BigIntegerDomain f30378a = new BigIntegerDomain();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final BigInteger f30379b = BigInteger.valueOf(Long.MIN_VALUE);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final BigInteger f30380c = BigInteger.valueOf(Long.MAX_VALUE);
        private static final long serialVersionUID = 0;

        BigIntegerDomain() {
            super(true);
        }

        private Object readResolve() {
            return f30378a;
        }

        @Override // com.google.common.collect.DiscreteDomain
        public long distance(BigInteger bigInteger, BigInteger bigInteger2) {
            return bigInteger2.subtract(bigInteger).max(f30379b).min(f30380c).longValue();
        }

        @Override // com.google.common.collect.DiscreteDomain
        public BigInteger next(BigInteger bigInteger) {
            return bigInteger.add(BigInteger.ONE);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.DiscreteDomain
        public BigInteger offset(BigInteger bigInteger, long j11) {
            e2.c(j11, "distance");
            return bigInteger.add(BigInteger.valueOf(j11));
        }

        @Override // com.google.common.collect.DiscreteDomain
        public BigInteger previous(BigInteger bigInteger) {
            return bigInteger.subtract(BigInteger.ONE);
        }

        public String toString() {
            return "DiscreteDomain.bigIntegers()";
        }
    }

    private static final class IntegerDomain extends DiscreteDomain implements Serializable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final IntegerDomain f30381a = new IntegerDomain();
        private static final long serialVersionUID = 0;

        IntegerDomain() {
            super(true);
        }

        private Object readResolve() {
            return f30381a;
        }

        @Override // com.google.common.collect.DiscreteDomain
        public long distance(Integer num, Integer num2) {
            return ((long) num2.intValue()) - ((long) num.intValue());
        }

        @Override // com.google.common.collect.DiscreteDomain
        public Integer maxValue() {
            return Integer.MAX_VALUE;
        }

        @Override // com.google.common.collect.DiscreteDomain
        public Integer minValue() {
            return Integer.MIN_VALUE;
        }

        @Override // com.google.common.collect.DiscreteDomain
        public Integer next(Integer num) {
            int iIntValue = num.intValue();
            if (iIntValue == Integer.MAX_VALUE) {
                return null;
            }
            return Integer.valueOf(iIntValue + 1);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.DiscreteDomain
        public Integer offset(Integer num, long j11) {
            e2.c(j11, "distance");
            return Integer.valueOf(Ints.d(num.longValue() + j11));
        }

        @Override // com.google.common.collect.DiscreteDomain
        public Integer previous(Integer num) {
            int iIntValue = num.intValue();
            if (iIntValue == Integer.MIN_VALUE) {
                return null;
            }
            return Integer.valueOf(iIntValue - 1);
        }

        public String toString() {
            return "DiscreteDomain.integers()";
        }
    }

    private static final class LongDomain extends DiscreteDomain implements Serializable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final LongDomain f30382a = new LongDomain();
        private static final long serialVersionUID = 0;

        LongDomain() {
            super(true);
        }

        private Object readResolve() {
            return f30382a;
        }

        @Override // com.google.common.collect.DiscreteDomain
        public long distance(Long l11, Long l12) {
            long jLongValue = l12.longValue() - l11.longValue();
            if (l12.longValue() > l11.longValue() && jLongValue < 0) {
                return Long.MAX_VALUE;
            }
            if (l12.longValue() >= l11.longValue() || jLongValue <= 0) {
                return jLongValue;
            }
            return Long.MIN_VALUE;
        }

        @Override // com.google.common.collect.DiscreteDomain
        public Long maxValue() {
            return Long.MAX_VALUE;
        }

        @Override // com.google.common.collect.DiscreteDomain
        public Long minValue() {
            return Long.MIN_VALUE;
        }

        @Override // com.google.common.collect.DiscreteDomain
        public Long next(Long l11) {
            long jLongValue = l11.longValue();
            if (jLongValue == Long.MAX_VALUE) {
                return null;
            }
            return Long.valueOf(jLongValue + 1);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.DiscreteDomain
        public Long offset(Long l11, long j11) {
            e2.c(j11, "distance");
            long jLongValue = l11.longValue() + j11;
            if (jLongValue < 0) {
                com.google.common.base.m.e(l11.longValue() < 0, "overflow");
            }
            return Long.valueOf(jLongValue);
        }

        @Override // com.google.common.collect.DiscreteDomain
        public Long previous(Long l11) {
            long jLongValue = l11.longValue();
            if (jLongValue == Long.MIN_VALUE) {
                return null;
            }
            return Long.valueOf(jLongValue - 1);
        }

        public String toString() {
            return "DiscreteDomain.longs()";
        }
    }

    protected DiscreteDomain() {
        this(false);
    }

    private DiscreteDomain(boolean z10) {
        this.supportsFastOffset = z10;
    }

    public static DiscreteDomain bigIntegers() {
        return BigIntegerDomain.f30378a;
    }

    public static DiscreteDomain integers() {
        return IntegerDomain.f30381a;
    }

    public static DiscreteDomain longs() {
        return LongDomain.f30382a;
    }

    public abstract long distance(Comparable comparable, Comparable comparable2);

    public Comparable maxValue() {
        throw new NoSuchElementException();
    }

    public Comparable minValue() {
        throw new NoSuchElementException();
    }

    public abstract Comparable next(Comparable comparable);

    abstract Comparable offset(Comparable comparable, long j11);

    public abstract Comparable previous(Comparable comparable);
}
