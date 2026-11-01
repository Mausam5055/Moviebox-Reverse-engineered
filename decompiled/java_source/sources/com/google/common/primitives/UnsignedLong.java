package com.google.common.primitives;

import com.google.common.base.m;
import java.io.Serializable;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes4.dex */
public final class UnsignedLong extends Number implements Comparable<UnsignedLong>, Serializable {
    private static final long UNSIGNED_MASK = Long.MAX_VALUE;
    private final long value;
    public static final UnsignedLong ZERO = new UnsignedLong(0);
    public static final UnsignedLong ONE = new UnsignedLong(1);
    public static final UnsignedLong MAX_VALUE = new UnsignedLong(-1);

    private UnsignedLong(long j11) {
        this.value = j11;
    }

    public static UnsignedLong fromLongBits(long j11) {
        return new UnsignedLong(j11);
    }

    public static UnsignedLong valueOf(long j11) {
        m.h(j11 >= 0, "value (%s) is outside the range for an unsigned long value", j11);
        return fromLongBits(j11);
    }

    public static UnsignedLong valueOf(String str) {
        return valueOf(str, 10);
    }

    public static UnsignedLong valueOf(String str, int i11) {
        return fromLongBits(UnsignedLongs.d(str, i11));
    }

    public static UnsignedLong valueOf(BigInteger bigInteger) {
        m.o(bigInteger);
        m.j(bigInteger.signum() >= 0 && bigInteger.bitLength() <= 64, "value (%s) is outside the range for an unsigned long value", bigInteger);
        return fromLongBits(bigInteger.longValue());
    }

    public BigInteger bigIntegerValue() {
        BigInteger bigIntegerValueOf = BigInteger.valueOf(this.value & Long.MAX_VALUE);
        return this.value < 0 ? bigIntegerValueOf.setBit(63) : bigIntegerValueOf;
    }

    @Override // java.lang.Comparable
    public int compareTo(UnsignedLong unsignedLong) {
        m.o(unsignedLong);
        return UnsignedLongs.a(this.value, unsignedLong.value);
    }

    public UnsignedLong dividedBy(UnsignedLong unsignedLong) {
        return fromLongBits(UnsignedLongs.b(this.value, ((UnsignedLong) m.o(unsignedLong)).value));
    }

    @Override // java.lang.Number
    public double doubleValue() {
        long j11 = this.value;
        if (j11 >= 0) {
            return j11;
        }
        return ((j11 & 1) | (j11 >>> 1)) * 2.0d;
    }

    public boolean equals(Object obj) {
        return (obj instanceof UnsignedLong) && this.value == ((UnsignedLong) obj).value;
    }

    @Override // java.lang.Number
    public float floatValue() {
        long j11 = this.value;
        if (j11 >= 0) {
            return j11;
        }
        return ((j11 & 1) | (j11 >>> 1)) * 2.0f;
    }

    public int hashCode() {
        return Longs.e(this.value);
    }

    @Override // java.lang.Number
    public int intValue() {
        return (int) this.value;
    }

    @Override // java.lang.Number
    public long longValue() {
        return this.value;
    }

    public UnsignedLong minus(UnsignedLong unsignedLong) {
        return fromLongBits(this.value - ((UnsignedLong) m.o(unsignedLong)).value);
    }

    public UnsignedLong mod(UnsignedLong unsignedLong) {
        return fromLongBits(UnsignedLongs.e(this.value, ((UnsignedLong) m.o(unsignedLong)).value));
    }

    public UnsignedLong plus(UnsignedLong unsignedLong) {
        return fromLongBits(this.value + ((UnsignedLong) m.o(unsignedLong)).value);
    }

    public UnsignedLong times(UnsignedLong unsignedLong) {
        return fromLongBits(this.value * ((UnsignedLong) m.o(unsignedLong)).value);
    }

    public String toString() {
        return UnsignedLongs.f(this.value);
    }

    public String toString(int i11) {
        return UnsignedLongs.g(this.value, i11);
    }
}
