package com.google.common.primitives;

import com.google.common.base.m;
import java.util.Comparator;

/* JADX INFO: loaded from: classes4.dex */
public abstract class UnsignedInts {

    enum LexicographicalComparator implements Comparator<int[]> {
        INSTANCE;

        @Override // java.util.Comparator
        public int compare(int[] iArr, int[] iArr2) {
            int iMin = Math.min(iArr.length, iArr2.length);
            for (int i11 = 0; i11 < iMin; i11++) {
                int i12 = iArr[i11];
                int i13 = iArr2[i11];
                if (i12 != i13) {
                    return UnsignedInts.a(i12, i13);
                }
            }
            return iArr.length - iArr2.length;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "UnsignedInts.lexicographicalComparator()";
        }
    }

    public static int a(int i11, int i12) {
        return Ints.e(c(i11), c(i12));
    }

    public static int b(int i11, int i12) {
        return (int) (f(i11) / f(i12));
    }

    static int c(int i11) {
        return i11 ^ Integer.MIN_VALUE;
    }

    public static int d(String str, int i11) {
        m.o(str);
        long j11 = Long.parseLong(str, i11);
        if ((4294967295L & j11) == j11) {
            return (int) j11;
        }
        throw new NumberFormatException("Input " + str + " in base " + i11 + " is not in the range of an unsigned integer");
    }

    public static int e(int i11, int i12) {
        return (int) (f(i11) % f(i12));
    }

    public static long f(int i11) {
        return ((long) i11) & 4294967295L;
    }

    public static String g(int i11, int i12) {
        return Long.toString(((long) i11) & 4294967295L, i12);
    }
}
