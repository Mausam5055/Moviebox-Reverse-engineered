package com.google.common.primitives;

import java.lang.reflect.Field;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Comparator;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes4.dex */
enum UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator implements Comparator<byte[]> {
    INSTANCE;

    static final boolean BIG_ENDIAN = ByteOrder.nativeOrder().equals(ByteOrder.BIG_ENDIAN);
    static final int BYTE_ARRAY_BASE_OFFSET;
    static final Unsafe theUnsafe;

    class a implements PrivilegedExceptionAction {
        a() {
        }

        @Override // java.security.PrivilegedExceptionAction
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Unsafe run() throws IllegalAccessException {
            for (Field field : Unsafe.class.getDeclaredFields()) {
                field.setAccessible(true);
                Object obj = field.get(null);
                if (Unsafe.class.isInstance(obj)) {
                    return (Unsafe) Unsafe.class.cast(obj);
                }
            }
            throw new NoSuchFieldError("the Unsafe");
        }
    }

    static {
        Unsafe unsafe = getUnsafe();
        theUnsafe = unsafe;
        int iArrayBaseOffset = unsafe.arrayBaseOffset(byte[].class);
        BYTE_ARRAY_BASE_OFFSET = iArrayBaseOffset;
        if (!"64".equals(System.getProperty("sun.arch.data.model")) || iArrayBaseOffset % 8 != 0 || unsafe.arrayIndexScale(byte[].class) != 1) {
            throw new Error();
        }
    }

    private static Unsafe getUnsafe() {
        try {
            try {
                return Unsafe.getUnsafe();
            } catch (PrivilegedActionException e11) {
                throw new RuntimeException("Could not initialize intrinsics", e11.getCause());
            }
        } catch (SecurityException unused) {
            return (Unsafe) AccessController.doPrivileged(new a());
        }
    }

    @Override // java.util.Comparator
    public int compare(byte[] bArr, byte[] bArr2) {
        int iMin = Math.min(bArr.length, bArr2.length);
        int i11 = iMin & (-8);
        int i12 = 0;
        while (i12 < i11) {
            Unsafe unsafe = theUnsafe;
            int i13 = BYTE_ARRAY_BASE_OFFSET;
            long j11 = i12;
            long j12 = unsafe.getLong(bArr, ((long) i13) + j11);
            long j13 = unsafe.getLong(bArr2, ((long) i13) + j11);
            if (j12 != j13) {
                if (BIG_ENDIAN) {
                    return Long.compare(j12 ^ Long.MIN_VALUE, j13 ^ Long.MIN_VALUE);
                }
                int iNumberOfTrailingZeros = Long.numberOfTrailingZeros(j12 ^ j13) & (-8);
                return ((int) ((j12 >>> iNumberOfTrailingZeros) & 255)) - ((int) ((j13 >>> iNumberOfTrailingZeros) & 255));
            }
            i12 += 8;
        }
        while (i12 < iMin) {
            int iB = e.b(bArr[i12], bArr2[i12]);
            if (iB != 0) {
                return iB;
            }
            i12++;
        }
        return bArr.length - bArr2.length;
    }

    @Override // java.lang.Enum
    public String toString() {
        return "UnsignedBytes.lexicographicalComparator() (sun.misc.Unsafe version)";
    }
}
