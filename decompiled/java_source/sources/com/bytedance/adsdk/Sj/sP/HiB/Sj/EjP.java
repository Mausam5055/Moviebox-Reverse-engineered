package com.bytedance.adsdk.Sj.sP.HiB.Sj;

/* JADX INFO: loaded from: classes2.dex */
public class EjP {
    private static Object Sj(double d11, Number number) {
        if ((number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
            return Boolean.valueOf(d11 < ((double) number.intValue()));
        }
        if (number instanceof Long) {
            return Boolean.valueOf(d11 < ((double) number.longValue()));
        }
        if (number instanceof Float) {
            return Boolean.valueOf(d11 < ((double) number.floatValue()));
        }
        if (number instanceof Double) {
            return Boolean.valueOf(d11 < number.doubleValue());
        }
        throw new UnsupportedOperationException(number.getClass().getName() + "This type of addition operation is not supported");
    }

    private static Object Sj(float f11, Number number) {
        if ((number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
            return Boolean.valueOf(f11 < ((float) number.intValue()));
        }
        if (number instanceof Long) {
            return Boolean.valueOf(f11 < ((float) number.longValue()));
        }
        if (number instanceof Float) {
            return Boolean.valueOf(f11 < number.floatValue());
        }
        if (number instanceof Double) {
            return Boolean.valueOf(((double) f11) < number.doubleValue());
        }
        throw new UnsupportedOperationException(number.getClass().getName() + "This type of addition operation is not supported");
    }

    private static Object Sj(int i11, Number number) {
        if ((number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
            return Boolean.valueOf(i11 < number.intValue());
        }
        if (number instanceof Long) {
            return Boolean.valueOf(((long) i11) < number.longValue());
        }
        if (number instanceof Float) {
            return Boolean.valueOf(((float) i11) < number.floatValue());
        }
        if (number instanceof Double) {
            return Boolean.valueOf(((double) i11) < number.doubleValue());
        }
        throw new UnsupportedOperationException(number.getClass().getName() + "This type of addition operation is not supported");
    }

    private static Object Sj(long j11, Number number) {
        if ((number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
            return Boolean.valueOf(j11 < ((long) number.intValue()));
        }
        if (number instanceof Long) {
            return Boolean.valueOf(j11 < number.longValue());
        }
        if (number instanceof Float) {
            return Boolean.valueOf(((float) j11) < number.floatValue());
        }
        if (number instanceof Double) {
            return Boolean.valueOf(((double) j11) < number.doubleValue());
        }
        throw new UnsupportedOperationException(number.getClass().getName() + "This type of addition operation is not supported");
    }

    public static Object Sj(Object obj, Number number) {
        if ((obj instanceof Integer) || (obj instanceof Short) || (obj instanceof Byte)) {
            return Sj(((Number) obj).intValue(), number);
        }
        if (obj instanceof Long) {
            return Sj(((Long) obj).longValue(), number);
        }
        if (obj instanceof Float) {
            return Sj(((Float) obj).floatValue(), number);
        }
        if (obj instanceof Double) {
            return Sj(((Double) obj).doubleValue(), number);
        }
        if (!(obj instanceof String)) {
            throw new UnsupportedOperationException(obj.getClass().getName() + "This type of addition operation is not supported");
        }
        try {
            return Sj(Float.parseFloat((String) obj), number);
        } catch (NumberFormatException unused) {
            throw new UnsupportedOperationException(obj.getClass().getName() + "This type of addition operation is not supported");
        }
    }
}
