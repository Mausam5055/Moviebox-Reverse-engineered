package com.google.common.primitives;

import com.google.common.base.m;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes4.dex */
public final class UnsignedInteger extends Number implements Comparable<UnsignedInteger> {
    private final int value;
    public static final UnsignedInteger ZERO = fromIntBits(0);
    public static final UnsignedInteger ONE = fromIntBits(1);
    public static final UnsignedInteger MAX_VALUE = fromIntBits(-1);

    private UnsignedInteger(int i11) {
        this.value = i11;
    }

    public static UnsignedInteger fromIntBits(int i11) {
        return new UnsignedInteger(i11);
    }

    public static UnsignedInteger valueOf(long j11) {
        m.h((4294967295L & j11) == j11, "value (%s) is outside the range for an unsigned integer value", j11);
        return fromIntBits((int) j11);
    }

    public static UnsignedInteger valueOf(String str) {
        return valueOf(str, 10);
    }

    public static UnsignedInteger valueOf(String str, int i11) {
        return fromIntBits(UnsignedInts.d(str, i11));
    }

    public static UnsignedInteger valueOf(BigInteger bigInteger) {
        m.o(bigInteger);
        m.j(bigInteger.signum() >= 0 && bigInteger.bitLength() <= 32, "value (%s) is outside the range for an unsigned integer value", bigInteger);
        return fromIntBits(bigInteger.intValue());
    }

    public BigInteger bigIntegerValue() {
        return BigInteger.valueOf(longValue());
    }

    @Override // java.lang.Comparable
    public int compareTo(UnsignedInteger unsignedInteger) {
        m.o(unsignedInteger);
        return UnsignedInts.a(this.value, unsignedInteger.value);
    }

    public UnsignedInteger dividedBy(UnsignedInteger unsignedInteger) {
        return fromIntBits(UnsignedInts.b(this.value, ((UnsignedInteger) m.o(unsignedInteger)).value));
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return longValue();
    }

    public boolean equals(Object obj) {
        return (obj instanceof UnsignedInteger) && this.value == ((UnsignedInteger) obj).value;
    }

    @Override // java.lang.Number
    public float floatValue() {
        return longValue();
    }

    public int hashCode() {
        return this.value;
    }

    @Override // java.lang.Number
    public int intValue() {
        return this.value;
    }

    @Override // java.lang.Number
    public long longValue() {
        return UnsignedInts.f(this.value);
    }

    public UnsignedInteger minus(UnsignedInteger unsignedInteger) {
        return fromIntBits(this.value - ((UnsignedInteger) m.o(unsignedInteger)).value);
    }

    public UnsignedInteger mod(UnsignedInteger unsignedInteger) {
        return fromIntBits(UnsignedInts.e(this.value, ((UnsignedInteger) m.o(unsignedInteger)).value));
    }

    public UnsignedInteger plus(UnsignedInteger unsignedInteger) {
        return fromIntBits(this.value + ((UnsignedInteger) m.o(unsignedInteger)).value);
    }

    public UnsignedInteger times(UnsignedInteger unsignedInteger) {
        return fromIntBits(this.value * ((UnsignedInteger) m.o(unsignedInteger)).value);
    }

    public String toString() {
        return toString(10);
    }

    public String toString(int i11) {
        return UnsignedInts.g(this.value, i11);
    }
}
