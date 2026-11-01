package com.google.common.primitives;

import com.google.common.base.m;
import java.math.BigInteger;
import java.util.Comparator;

/* JADX INFO: loaded from: classes4.dex */
public abstract class UnsignedLongs {

    enum LexicographicalComparator implements Comparator<long[]> {
        INSTANCE;

        @Override // java.util.Comparator
        public int compare(long[] jArr, long[] jArr2) {
            int iMin = Math.min(jArr.length, jArr2.length);
            for (int i11 = 0; i11 < iMin; i11++) {
                long j11 = jArr[i11];
                long j12 = jArr2[i11];
                if (j11 != j12) {
                    return UnsignedLongs.a(j11, j12);
                }
            }
            return jArr.length - jArr2.length;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "UnsignedLongs.lexicographicalComparator()";
        }
    }

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final long[] f30923a = new long[37];

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final int[] f30924b = new int[37];

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        static final int[] f30925c = new int[37];

        static {
            BigInteger bigInteger = new BigInteger("10000000000000000", 16);
            for (int i11 = 2; i11 <= 36; i11++) {
                long j11 = i11;
                f30923a[i11] = UnsignedLongs.b(-1L, j11);
                f30924b[i11] = (int) UnsignedLongs.e(-1L, j11);
                f30925c[i11] = bigInteger.toString(i11).length() - 1;
            }
        }

        static boolean a(long j11, int i11, int i12) {
            if (j11 < 0) {
                return true;
            }
            long j12 = f30923a[i12];
            if (j11 < j12) {
                return false;
            }
            return j11 > j12 || i11 > f30924b[i12];
        }
    }

    public static int a(long j11, long j12) {
        return Longs.c(c(j11), c(j12));
    }

    public static long b(long j11, long j12) {
        if (j12 < 0) {
            return a(j11, j12) < 0 ? 0L : 1L;
        }
        if (j11 >= 0) {
            return j11 / j12;
        }
        long j13 = ((j11 >>> 1) / j12) << 1;
        return j13 + ((long) (a(j11 - (j13 * j12), j12) < 0 ? 0 : 1));
    }

    private static long c(long j11) {
        return j11 ^ Long.MIN_VALUE;
    }

    public static long d(String str, int i11) {
        m.o(str);
        if (str.length() == 0) {
            throw new NumberFormatException("empty string");
        }
        if (i11 < 2 || i11 > 36) {
            throw new NumberFormatException("illegal radix: " + i11);
        }
        int i12 = a.f30925c[i11] - 1;
        long j11 = 0;
        for (int i13 = 0; i13 < str.length(); i13++) {
            int iDigit = Character.digit(str.charAt(i13), i11);
            if (iDigit == -1) {
                throw new NumberFormatException(str);
            }
            if (i13 > i12 && a.a(j11, iDigit, i11)) {
                throw new NumberFormatException("Too large for unsigned long: " + str);
            }
            j11 = (j11 * ((long) i11)) + ((long) iDigit);
        }
        return j11;
    }

    public static long e(long j11, long j12) {
        if (j12 < 0) {
            return a(j11, j12) < 0 ? j11 : j11 - j12;
        }
        if (j11 >= 0) {
            return j11 % j12;
        }
        long j13 = j11 - ((((j11 >>> 1) / j12) << 1) * j12);
        if (a(j13, j12) < 0) {
            j12 = 0;
        }
        return j13 - j12;
    }

    public static String f(long j11) {
        return g(j11, 10);
    }

    public static String g(long j11, int i11) {
        m.f(i11 >= 2 && i11 <= 36, "radix (%s) must be between Character.MIN_RADIX and Character.MAX_RADIX", i11);
        if (j11 == 0) {
            return "0";
        }
        if (j11 > 0) {
            return Long.toString(j11, i11);
        }
        int i12 = 64;
        char[] cArr = new char[64];
        int i13 = i11 - 1;
        if ((i11 & i13) == 0) {
            int iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(i11);
            do {
                i12--;
                cArr[i12] = Character.forDigit(((int) j11) & i13, i11);
                j11 >>>= iNumberOfTrailingZeros;
            } while (j11 != 0);
        } else {
            long jB = (i11 & 1) == 0 ? (j11 >>> 1) / ((long) (i11 >>> 1)) : b(j11, i11);
            long j12 = i11;
            int i14 = 63;
            cArr[63] = Character.forDigit((int) (j11 - (jB * j12)), i11);
            while (jB > 0) {
                i14--;
                cArr[i14] = Character.forDigit((int) (jB % j12), i11);
                jB /= j12;
            }
            i12 = i14;
        }
        return new String(cArr, i12, 64 - i12);
    }
}
