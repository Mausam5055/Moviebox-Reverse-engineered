package com.bytedance.adsdk.Sj.sP.HiB.Sj;

/* JADX INFO: loaded from: classes2.dex */
public class sP {
    private static boolean Sj(double d11, Number number) {
        if ((number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
            return d11 == ((double) number.intValue());
        }
        if (number instanceof Long) {
            return d11 == ((double) number.longValue());
        }
        if (number instanceof Float) {
            return d11 == ((double) number.floatValue());
        }
        if (number instanceof Double) {
            return d11 == number.doubleValue();
        }
        throw new UnsupportedOperationException(number.getClass().getName() + "This type of addition operation is not supported");
    }

    private static boolean Sj(float f11, Number number) {
        if ((number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
            return f11 == ((float) number.intValue());
        }
        if (number instanceof Long) {
            return f11 == ((float) number.longValue());
        }
        if (number instanceof Float) {
            return f11 == number.floatValue();
        }
        if (number instanceof Double) {
            return ((double) f11) == number.doubleValue();
        }
        throw new UnsupportedOperationException(number.getClass().getName() + "This type of addition operation is not supported");
    }

    private static boolean Sj(int i11, Number number) {
        if ((number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
            return i11 == number.intValue();
        }
        if (number instanceof Long) {
            return ((long) i11) == number.longValue();
        }
        if (number instanceof Float) {
            return ((float) i11) == number.floatValue();
        }
        if (number instanceof Double) {
            return ((double) i11) == number.doubleValue();
        }
        throw new UnsupportedOperationException(number.getClass().getName() + "This type of addition operation is not supported");
    }

    private static boolean Sj(long j11, Number number) {
        if ((number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
            return j11 == ((long) number.intValue());
        }
        if (number instanceof Long) {
            return j11 == number.longValue();
        }
        if (number instanceof Float) {
            return ((float) j11) == number.floatValue();
        }
        if (number instanceof Double) {
            return ((double) j11) == number.doubleValue();
        }
        throw new UnsupportedOperationException(number.getClass().getName() + "This type of addition operation is not supported");
    }

    public static boolean Sj(Number number, Number number2) {
        if ((number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
            return Sj(number.intValue(), number2);
        }
        if (number instanceof Long) {
            return Sj(number.longValue(), number2);
        }
        if (number instanceof Float) {
            return Sj(number.floatValue(), number2);
        }
        if (number instanceof Double) {
            return Sj(number.doubleValue(), number2);
        }
        throw new UnsupportedOperationException(number.getClass().getName() + "This type of addition operation is not supported");
    }
}
