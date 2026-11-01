package com.google.common.math;

import com.google.common.base.m;

/* JADX INFO: loaded from: classes4.dex */
abstract class c {
    static double a(double d11) {
        m.d(!Double.isNaN(d11));
        return Math.max(d11, 0.0d);
    }

    static long b(double d11) {
        m.e(c(d11), "not a normal value");
        int exponent = Math.getExponent(d11);
        long jDoubleToRawLongBits = Double.doubleToRawLongBits(d11) & 4503599627370495L;
        return exponent == -1023 ? jDoubleToRawLongBits << 1 : jDoubleToRawLongBits | 4503599627370496L;
    }

    static boolean c(double d11) {
        return Math.getExponent(d11) <= 1023;
    }

    static boolean d(double d11) {
        return Math.getExponent(d11) >= -1022;
    }

    static double e(double d11) {
        return Double.longBitsToDouble((Double.doubleToRawLongBits(d11) & 4503599627370495L) | 4607182418800017408L);
    }
}
