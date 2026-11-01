package com.cloud.tmc.integration.utils;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class ArrayUtils {
    public static final int INDEX_NOT_FOUND = -1;

    public interface Closure<E> {
        void execute(int i11, E e11);
    }

    private ArrayUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    @NonNull
    public static byte[] add(@Nullable byte[] bArr, byte b11) {
        return (byte[]) realAddOne(bArr, Byte.valueOf(b11), Byte.TYPE);
    }

    @NonNull
    public static byte[] add(@Nullable byte[] bArr, int i11, byte b11) {
        return (byte[]) realAdd(bArr, i11, Byte.valueOf(b11), Byte.TYPE);
    }

    @Nullable
    public static byte[] add(@Nullable byte[] bArr, int i11, @Nullable byte[] bArr2) {
        Object objRealAddArr = realAddArr(bArr, i11, bArr2, Byte.TYPE);
        if (objRealAddArr == null) {
            return null;
        }
        return (byte[]) objRealAddArr;
    }

    @Nullable
    public static byte[] add(@Nullable byte[] bArr, @Nullable byte[] bArr2) {
        return (byte[]) realAddArr(bArr, bArr2);
    }

    @NonNull
    public static char[] add(@Nullable char[] cArr, char c11) {
        return (char[]) realAddOne(cArr, Character.valueOf(c11), Character.TYPE);
    }

    @NonNull
    public static char[] add(@Nullable char[] cArr, int i11, char c11) {
        return (char[]) realAdd(cArr, i11, Character.valueOf(c11), Character.TYPE);
    }

    public static char[] add(@Nullable char[] cArr, int i11, @Nullable char[] cArr2) {
        Object objRealAddArr = realAddArr(cArr, i11, cArr2, Character.TYPE);
        if (objRealAddArr == null) {
            return null;
        }
        return (char[]) objRealAddArr;
    }

    @Nullable
    public static char[] add(@Nullable char[] cArr, @Nullable char[] cArr2) {
        return (char[]) realAddArr(cArr, cArr2);
    }

    @NonNull
    public static double[] add(@Nullable double[] dArr, double d11) {
        return (double[]) realAddOne(dArr, Double.valueOf(d11), Double.TYPE);
    }

    @NonNull
    public static double[] add(@Nullable double[] dArr, int i11, double d11) {
        return (double[]) realAdd(dArr, i11, Double.valueOf(d11), Double.TYPE);
    }

    @Nullable
    public static double[] add(@Nullable double[] dArr, int i11, @Nullable double[] dArr2) {
        Object objRealAddArr = realAddArr(dArr, i11, dArr2, Double.TYPE);
        if (objRealAddArr == null) {
            return null;
        }
        return (double[]) objRealAddArr;
    }

    @Nullable
    public static double[] add(@Nullable double[] dArr, @Nullable double[] dArr2) {
        return (double[]) realAddArr(dArr, dArr2);
    }

    @NonNull
    public static float[] add(@Nullable float[] fArr, float f11) {
        return (float[]) realAddOne(fArr, Float.valueOf(f11), Float.TYPE);
    }

    @NonNull
    public static float[] add(@Nullable float[] fArr, int i11, float f11) {
        return (float[]) realAdd(fArr, i11, Float.valueOf(f11), Float.TYPE);
    }

    @Nullable
    public static float[] add(@Nullable float[] fArr, int i11, @Nullable float[] fArr2) {
        Object objRealAddArr = realAddArr(fArr, i11, fArr2, Float.TYPE);
        if (objRealAddArr == null) {
            return null;
        }
        return (float[]) objRealAddArr;
    }

    @Nullable
    public static float[] add(@Nullable float[] fArr, @Nullable float[] fArr2) {
        return (float[]) realAddArr(fArr, fArr2);
    }

    @NonNull
    public static int[] add(@Nullable int[] iArr, int i11) {
        return (int[]) realAddOne(iArr, Integer.valueOf(i11), Integer.TYPE);
    }

    @NonNull
    public static int[] add(@Nullable int[] iArr, int i11, int i12) {
        return (int[]) realAdd(iArr, i11, Integer.valueOf(i12), Integer.TYPE);
    }

    @Nullable
    public static int[] add(@Nullable int[] iArr, int i11, @Nullable int[] iArr2) {
        Object objRealAddArr = realAddArr(iArr, i11, iArr2, Integer.TYPE);
        if (objRealAddArr == null) {
            return null;
        }
        return (int[]) objRealAddArr;
    }

    @Nullable
    public static int[] add(@Nullable int[] iArr, @Nullable int[] iArr2) {
        return (int[]) realAddArr(iArr, iArr2);
    }

    @NonNull
    public static long[] add(@Nullable long[] jArr, int i11, long j11) {
        return (long[]) realAdd(jArr, i11, Long.valueOf(j11), Long.TYPE);
    }

    @Nullable
    public static long[] add(@Nullable long[] jArr, int i11, @Nullable long[] jArr2) {
        Object objRealAddArr = realAddArr(jArr, i11, jArr2, Long.TYPE);
        if (objRealAddArr == null) {
            return null;
        }
        return (long[]) objRealAddArr;
    }

    @NonNull
    public static long[] add(@Nullable long[] jArr, long j11) {
        return (long[]) realAddOne(jArr, Long.valueOf(j11), Long.TYPE);
    }

    @Nullable
    public static long[] add(@Nullable long[] jArr, @Nullable long[] jArr2) {
        return (long[]) realAddArr(jArr, jArr2);
    }

    @NonNull
    public static <T> T[] add(@Nullable T[] tArr, int i11, @Nullable T t11) {
        Class<?> componentType;
        if (tArr != null) {
            componentType = tArr.getClass().getComponentType();
        } else {
            if (t11 == null) {
                T[] tArr2 = (T[]) new Object[1];
                tArr2[0] = null;
                return tArr2;
            }
            componentType = t11.getClass();
        }
        return (T[]) ((Object[]) realAdd(tArr, i11, t11, componentType));
    }

    @Nullable
    public static <T> T[] add(@Nullable T[] tArr, int i11, @Nullable T[] tArr2) {
        Class<?> componentType;
        if (tArr != null) {
            componentType = tArr.getClass().getComponentType();
        } else {
            if (tArr2 == null) {
                return null;
            }
            componentType = tArr2.getClass().getComponentType();
        }
        return (T[]) ((Object[]) realAddArr(tArr, i11, tArr2, componentType));
    }

    @NonNull
    public static <T> T[] add(@Nullable T[] tArr, @Nullable T t11) {
        Class<?> cls;
        if (tArr != null) {
            cls = tArr.getClass();
        } else {
            cls = t11 != null ? t11.getClass() : Object.class;
        }
        return (T[]) ((Object[]) realAddOne(tArr, t11, cls));
    }

    @Nullable
    public static <T> T[] add(@Nullable T[] tArr, @Nullable T[] tArr2) {
        return (T[]) ((Object[]) realAddArr(tArr, tArr2));
    }

    @NonNull
    public static short[] add(@Nullable short[] sArr, int i11, short s11) {
        return (short[]) realAdd(sArr, i11, Short.valueOf(s11), Short.TYPE);
    }

    @Nullable
    public static short[] add(@Nullable short[] sArr, int i11, @Nullable short[] sArr2) {
        Object objRealAddArr = realAddArr(sArr, i11, sArr2, Short.TYPE);
        if (objRealAddArr == null) {
            return null;
        }
        return (short[]) objRealAddArr;
    }

    @NonNull
    public static short[] add(@Nullable short[] sArr, short s11) {
        return (short[]) realAddOne(sArr, Short.valueOf(s11), Short.TYPE);
    }

    @Nullable
    public static short[] add(@Nullable short[] sArr, @Nullable short[] sArr2) {
        return (short[]) realAddArr(sArr, sArr2);
    }

    @NonNull
    public static boolean[] add(@Nullable boolean[] zArr, int i11, boolean z10) {
        return (boolean[]) realAdd(zArr, i11, Boolean.valueOf(z10), Boolean.TYPE);
    }

    @Nullable
    public static boolean[] add(@Nullable boolean[] zArr, int i11, @Nullable boolean[] zArr2) {
        Object objRealAddArr = realAddArr(zArr, i11, zArr2, Boolean.TYPE);
        if (objRealAddArr == null) {
            return null;
        }
        return (boolean[]) objRealAddArr;
    }

    @NonNull
    public static boolean[] add(@Nullable boolean[] zArr, boolean z10) {
        return (boolean[]) realAddOne(zArr, Boolean.valueOf(z10), Boolean.TYPE);
    }

    @Nullable
    public static boolean[] add(@Nullable boolean[] zArr, @Nullable boolean[] zArr2) {
        return (boolean[]) realAddArr(zArr, zArr2);
    }

    @NonNull
    public static <T> List<T> asArrayList(@Nullable T... tArr) {
        ArrayList arrayList = new ArrayList();
        if (tArr != null && tArr.length != 0) {
            arrayList.addAll(Arrays.asList(tArr));
        }
        return arrayList;
    }

    @NonNull
    public static <T> List<T> asLinkedList(@Nullable T... tArr) {
        LinkedList linkedList = new LinkedList();
        if (tArr != null && tArr.length != 0) {
            linkedList.addAll(Arrays.asList(tArr));
        }
        return linkedList;
    }

    @NonNull
    public static <T> List<T> asList(@Nullable T... tArr) {
        return (tArr == null || tArr.length == 0) ? Collections.emptyList() : Arrays.asList(tArr);
    }

    @NonNull
    public static <T> List<T> asUnmodifiableList(@Nullable T... tArr) {
        return Collections.unmodifiableList(asList(tArr));
    }

    public static boolean contains(@Nullable byte[] bArr, byte b11) {
        return indexOf(bArr, b11) != -1;
    }

    public static boolean contains(@Nullable char[] cArr, char c11) {
        return indexOf(cArr, c11) != -1;
    }

    public static boolean contains(@Nullable double[] dArr, double d11) {
        return indexOf(dArr, d11) != -1;
    }

    public static boolean contains(@Nullable double[] dArr, double d11, double d12) {
        return indexOf(dArr, d11, 0, d12) != -1;
    }

    public static boolean contains(@Nullable float[] fArr, float f11) {
        return indexOf(fArr, f11) != -1;
    }

    public static boolean contains(@Nullable int[] iArr, int i11) {
        return indexOf(iArr, i11) != -1;
    }

    public static boolean contains(@Nullable long[] jArr, long j11) {
        return indexOf(jArr, j11) != -1;
    }

    public static boolean contains(@Nullable Object[] objArr, @Nullable Object obj) {
        return indexOf(objArr, obj) != -1;
    }

    public static boolean contains(@Nullable short[] sArr, short s11) {
        return indexOf(sArr, s11) != -1;
    }

    public static boolean contains(@Nullable boolean[] zArr, boolean z10) {
        return indexOf(zArr, z10) != -1;
    }

    @Nullable
    public static byte[] copy(@Nullable byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return subArray(bArr, 0, bArr.length);
    }

    @Nullable
    public static char[] copy(@Nullable char[] cArr) {
        if (cArr == null) {
            return null;
        }
        return subArray(cArr, 0, cArr.length);
    }

    @Nullable
    public static double[] copy(@Nullable double[] dArr) {
        if (dArr == null) {
            return null;
        }
        return subArray(dArr, 0, dArr.length);
    }

    @Nullable
    public static float[] copy(@Nullable float[] fArr) {
        if (fArr == null) {
            return null;
        }
        return subArray(fArr, 0, fArr.length);
    }

    @Nullable
    public static int[] copy(@Nullable int[] iArr) {
        if (iArr == null) {
            return null;
        }
        return subArray(iArr, 0, iArr.length);
    }

    @Nullable
    public static long[] copy(@Nullable long[] jArr) {
        if (jArr == null) {
            return null;
        }
        return subArray(jArr, 0, jArr.length);
    }

    @Nullable
    public static <T> T[] copy(@Nullable T[] tArr) {
        if (tArr == null) {
            return null;
        }
        return (T[]) subArray(tArr, 0, tArr.length);
    }

    @Nullable
    public static short[] copy(@Nullable short[] sArr) {
        if (sArr == null) {
            return null;
        }
        return subArray(sArr, 0, sArr.length);
    }

    @Nullable
    public static boolean[] copy(@Nullable boolean[] zArr) {
        if (zArr == null) {
            return null;
        }
        return subArray(zArr, 0, zArr.length);
    }

    public static boolean equals(byte[] bArr, byte[] bArr2) {
        return Arrays.equals(bArr, bArr2);
    }

    public static boolean equals(char[] cArr, char[] cArr2) {
        return Arrays.equals(cArr, cArr2);
    }

    public static boolean equals(double[] dArr, double[] dArr2) {
        return Arrays.equals(dArr, dArr2);
    }

    public static boolean equals(float[] fArr, float[] fArr2) {
        return Arrays.equals(fArr, fArr2);
    }

    public static boolean equals(int[] iArr, int[] iArr2) {
        return Arrays.equals(iArr, iArr2);
    }

    public static boolean equals(@Nullable Object[] objArr, @Nullable Object[] objArr2) {
        return Arrays.deepEquals(objArr, objArr2);
    }

    public static boolean equals(short[] sArr, short[] sArr2) {
        return Arrays.equals(sArr, sArr2);
    }

    public static boolean equals(boolean[] zArr, boolean[] zArr2) {
        return Arrays.equals(zArr, zArr2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <E> void forAllDo(@Nullable Object obj, @Nullable Closure<E> closure) {
        if (obj == null || closure == 0) {
            return;
        }
        int i11 = 0;
        if (obj instanceof Object[]) {
            Object[] objArr = (Object[]) obj;
            int length = objArr.length;
            while (i11 < length) {
                closure.execute(i11, objArr[i11]);
                i11++;
            }
            return;
        }
        if (obj instanceof boolean[]) {
            boolean[] zArr = (boolean[]) obj;
            int length2 = zArr.length;
            while (i11 < length2) {
                closure.execute(i11, zArr[i11] ? Boolean.TRUE : Boolean.FALSE);
                i11++;
            }
            return;
        }
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            int length3 = bArr.length;
            while (i11 < length3) {
                closure.execute(i11, Byte.valueOf(bArr[i11]));
                i11++;
            }
            return;
        }
        if (obj instanceof char[]) {
            char[] cArr = (char[]) obj;
            int length4 = cArr.length;
            while (i11 < length4) {
                closure.execute(i11, Character.valueOf(cArr[i11]));
                i11++;
            }
            return;
        }
        if (obj instanceof short[]) {
            short[] sArr = (short[]) obj;
            int length5 = sArr.length;
            while (i11 < length5) {
                closure.execute(i11, Short.valueOf(sArr[i11]));
                i11++;
            }
            return;
        }
        if (obj instanceof int[]) {
            int[] iArr = (int[]) obj;
            int length6 = iArr.length;
            while (i11 < length6) {
                closure.execute(i11, Integer.valueOf(iArr[i11]));
                i11++;
            }
            return;
        }
        if (obj instanceof long[]) {
            long[] jArr = (long[]) obj;
            int length7 = jArr.length;
            while (i11 < length7) {
                closure.execute(i11, Long.valueOf(jArr[i11]));
                i11++;
            }
            return;
        }
        if (obj instanceof float[]) {
            float[] fArr = (float[]) obj;
            int length8 = fArr.length;
            while (i11 < length8) {
                closure.execute(i11, Float.valueOf(fArr[i11]));
                i11++;
            }
            return;
        }
        if (!(obj instanceof double[])) {
            throw new IllegalArgumentException("Not an array: " + obj.getClass());
        }
        double[] dArr = (double[]) obj;
        int length9 = dArr.length;
        while (i11 < length9) {
            closure.execute(i11, Double.valueOf(dArr[i11]));
            i11++;
        }
    }

    @Nullable
    public static Object get(@Nullable Object obj, int i11) {
        return get(obj, i11, null);
    }

    @Nullable
    public static Object get(@Nullable Object obj, int i11, @Nullable Object obj2) {
        if (obj == null) {
            return obj2;
        }
        try {
            return Array.get(obj, i11);
        } catch (Exception unused) {
            return obj2;
        }
    }

    public static int getLength(@Nullable Object obj) {
        if (obj == null) {
            return 0;
        }
        return Array.getLength(obj);
    }

    public static int indexOf(@Nullable byte[] bArr, byte b11) {
        return indexOf(bArr, b11, 0);
    }

    public static int indexOf(@Nullable byte[] bArr, byte b11, int i11) {
        if (bArr == null) {
            return -1;
        }
        if (i11 < 0) {
            i11 = 0;
        }
        while (i11 < bArr.length) {
            if (b11 == bArr[i11]) {
                return i11;
            }
            i11++;
        }
        return -1;
    }

    public static int indexOf(@Nullable char[] cArr, char c11) {
        return indexOf(cArr, c11, 0);
    }

    public static int indexOf(@Nullable char[] cArr, char c11, int i11) {
        if (cArr == null) {
            return -1;
        }
        if (i11 < 0) {
            i11 = 0;
        }
        while (i11 < cArr.length) {
            if (c11 == cArr[i11]) {
                return i11;
            }
            i11++;
        }
        return -1;
    }

    public static int indexOf(@Nullable double[] dArr, double d11) {
        return indexOf(dArr, d11, 0);
    }

    public static int indexOf(@Nullable double[] dArr, double d11, double d12) {
        return indexOf(dArr, d11, 0, d12);
    }

    public static int indexOf(@Nullable double[] dArr, double d11, int i11) {
        if (isEmpty(dArr)) {
            return -1;
        }
        if (i11 < 0) {
            i11 = 0;
        }
        while (i11 < dArr.length) {
            if (d11 == dArr[i11]) {
                return i11;
            }
            i11++;
        }
        return -1;
    }

    public static int indexOf(@Nullable double[] dArr, double d11, int i11, double d12) {
        if (isEmpty(dArr)) {
            return -1;
        }
        if (i11 < 0) {
            i11 = 0;
        }
        double d13 = d11 - d12;
        double d14 = d11 + d12;
        while (i11 < dArr.length) {
            double d15 = dArr[i11];
            if (d15 >= d13 && d15 <= d14) {
                return i11;
            }
            i11++;
        }
        return -1;
    }

    public static int indexOf(@Nullable float[] fArr, float f11) {
        return indexOf(fArr, f11, 0);
    }

    public static int indexOf(@Nullable float[] fArr, float f11, int i11) {
        if (isEmpty(fArr)) {
            return -1;
        }
        if (i11 < 0) {
            i11 = 0;
        }
        while (i11 < fArr.length) {
            if (f11 == fArr[i11]) {
                return i11;
            }
            i11++;
        }
        return -1;
    }

    public static int indexOf(@Nullable int[] iArr, int i11) {
        return indexOf(iArr, i11, 0);
    }

    public static int indexOf(@Nullable int[] iArr, int i11, int i12) {
        if (iArr == null) {
            return -1;
        }
        if (i12 < 0) {
            i12 = 0;
        }
        while (i12 < iArr.length) {
            if (i11 == iArr[i12]) {
                return i12;
            }
            i12++;
        }
        return -1;
    }

    public static int indexOf(@Nullable long[] jArr, long j11) {
        return indexOf(jArr, j11, 0);
    }

    public static int indexOf(@Nullable long[] jArr, long j11, int i11) {
        if (jArr == null) {
            return -1;
        }
        if (i11 < 0) {
            i11 = 0;
        }
        while (i11 < jArr.length) {
            if (j11 == jArr[i11]) {
                return i11;
            }
            i11++;
        }
        return -1;
    }

    public static int indexOf(@Nullable Object[] objArr, @Nullable Object obj) {
        return indexOf(objArr, obj, 0);
    }

    public static int indexOf(@Nullable Object[] objArr, @Nullable Object obj, int i11) {
        if (objArr == null) {
            return -1;
        }
        if (i11 < 0) {
            i11 = 0;
        }
        if (obj == null) {
            while (i11 < objArr.length) {
                if (objArr[i11] == null) {
                    return i11;
                }
                i11++;
            }
        } else {
            while (i11 < objArr.length) {
                if (obj.equals(objArr[i11])) {
                    return i11;
                }
                i11++;
            }
        }
        return -1;
    }

    public static int indexOf(@Nullable short[] sArr, short s11) {
        return indexOf(sArr, s11, 0);
    }

    public static int indexOf(@Nullable short[] sArr, short s11, int i11) {
        if (sArr == null) {
            return -1;
        }
        if (i11 < 0) {
            i11 = 0;
        }
        while (i11 < sArr.length) {
            if (s11 == sArr[i11]) {
                return i11;
            }
            i11++;
        }
        return -1;
    }

    public static int indexOf(@Nullable boolean[] zArr, boolean z10) {
        return indexOf(zArr, z10, 0);
    }

    public static int indexOf(@Nullable boolean[] zArr, boolean z10, int i11) {
        if (isEmpty(zArr)) {
            return -1;
        }
        if (i11 < 0) {
            i11 = 0;
        }
        while (i11 < zArr.length) {
            if (z10 == zArr[i11]) {
                return i11;
            }
            i11++;
        }
        return -1;
    }

    public static boolean isEmpty(@Nullable Object obj) {
        return getLength(obj) == 0;
    }

    public static boolean isSameLength(@Nullable Object obj, @Nullable Object obj2) {
        return getLength(obj) == getLength(obj2);
    }

    public static int lastIndexOf(@Nullable byte[] bArr, byte b11) {
        return lastIndexOf(bArr, b11, Integer.MAX_VALUE);
    }

    public static int lastIndexOf(@Nullable byte[] bArr, byte b11, int i11) {
        if (bArr == null || i11 < 0) {
            return -1;
        }
        if (i11 >= bArr.length) {
            i11 = bArr.length - 1;
        }
        while (i11 >= 0) {
            if (b11 == bArr[i11]) {
                return i11;
            }
            i11--;
        }
        return -1;
    }

    public static int lastIndexOf(@Nullable char[] cArr, char c11) {
        return lastIndexOf(cArr, c11, Integer.MAX_VALUE);
    }

    public static int lastIndexOf(@Nullable char[] cArr, char c11, int i11) {
        if (cArr == null || i11 < 0) {
            return -1;
        }
        if (i11 >= cArr.length) {
            i11 = cArr.length - 1;
        }
        while (i11 >= 0) {
            if (c11 == cArr[i11]) {
                return i11;
            }
            i11--;
        }
        return -1;
    }

    public static int lastIndexOf(@Nullable double[] dArr, double d11) {
        return lastIndexOf(dArr, d11, Integer.MAX_VALUE);
    }

    public static int lastIndexOf(@Nullable double[] dArr, double d11, double d12) {
        return lastIndexOf(dArr, d11, Integer.MAX_VALUE, d12);
    }

    public static int lastIndexOf(@Nullable double[] dArr, double d11, int i11) {
        if (isEmpty(dArr) || i11 < 0) {
            return -1;
        }
        if (i11 >= dArr.length) {
            i11 = dArr.length - 1;
        }
        while (i11 >= 0) {
            if (d11 == dArr[i11]) {
                return i11;
            }
            i11--;
        }
        return -1;
    }

    public static int lastIndexOf(@Nullable double[] dArr, double d11, int i11, double d12) {
        if (isEmpty(dArr) || i11 < 0) {
            return -1;
        }
        if (i11 >= dArr.length) {
            i11 = dArr.length - 1;
        }
        double d13 = d11 - d12;
        double d14 = d11 + d12;
        while (i11 >= 0) {
            double d15 = dArr[i11];
            if (d15 >= d13 && d15 <= d14) {
                return i11;
            }
            i11--;
        }
        return -1;
    }

    public static int lastIndexOf(@Nullable float[] fArr, float f11) {
        return lastIndexOf(fArr, f11, Integer.MAX_VALUE);
    }

    public static int lastIndexOf(@Nullable float[] fArr, float f11, int i11) {
        if (isEmpty(fArr) || i11 < 0) {
            return -1;
        }
        if (i11 >= fArr.length) {
            i11 = fArr.length - 1;
        }
        while (i11 >= 0) {
            if (f11 == fArr[i11]) {
                return i11;
            }
            i11--;
        }
        return -1;
    }

    public static int lastIndexOf(@Nullable int[] iArr, int i11) {
        return lastIndexOf(iArr, i11, Integer.MAX_VALUE);
    }

    public static int lastIndexOf(@Nullable int[] iArr, int i11, int i12) {
        if (iArr == null || i12 < 0) {
            return -1;
        }
        if (i12 >= iArr.length) {
            i12 = iArr.length - 1;
        }
        while (i12 >= 0) {
            if (i11 == iArr[i12]) {
                return i12;
            }
            i12--;
        }
        return -1;
    }

    public static int lastIndexOf(@Nullable long[] jArr, long j11) {
        return lastIndexOf(jArr, j11, Integer.MAX_VALUE);
    }

    public static int lastIndexOf(@Nullable long[] jArr, long j11, int i11) {
        if (jArr == null || i11 < 0) {
            return -1;
        }
        if (i11 >= jArr.length) {
            i11 = jArr.length - 1;
        }
        while (i11 >= 0) {
            if (j11 == jArr[i11]) {
                return i11;
            }
            i11--;
        }
        return -1;
    }

    public static int lastIndexOf(@Nullable Object[] objArr, @Nullable Object obj) {
        return lastIndexOf(objArr, obj, Integer.MAX_VALUE);
    }

    public static int lastIndexOf(@Nullable Object[] objArr, @Nullable Object obj, int i11) {
        if (objArr == null || i11 < 0) {
            return -1;
        }
        if (i11 >= objArr.length) {
            i11 = objArr.length - 1;
        }
        if (obj == null) {
            while (i11 >= 0) {
                if (objArr[i11] == null) {
                    return i11;
                }
                i11--;
            }
        } else {
            while (i11 >= 0) {
                if (obj.equals(objArr[i11])) {
                    return i11;
                }
                i11--;
            }
        }
        return -1;
    }

    public static int lastIndexOf(@Nullable short[] sArr, short s11) {
        return lastIndexOf(sArr, s11, Integer.MAX_VALUE);
    }

    public static int lastIndexOf(@Nullable short[] sArr, short s11, int i11) {
        if (sArr == null || i11 < 0) {
            return -1;
        }
        if (i11 >= sArr.length) {
            i11 = sArr.length - 1;
        }
        while (i11 >= 0) {
            if (s11 == sArr[i11]) {
                return i11;
            }
            i11--;
        }
        return -1;
    }

    public static int lastIndexOf(@Nullable boolean[] zArr, boolean z10) {
        return lastIndexOf(zArr, z10, Integer.MAX_VALUE);
    }

    public static int lastIndexOf(@Nullable boolean[] zArr, boolean z10, int i11) {
        if (isEmpty(zArr) || i11 < 0) {
            return -1;
        }
        if (i11 >= zArr.length) {
            i11 = zArr.length - 1;
        }
        while (i11 >= 0) {
            if (z10 == zArr[i11]) {
                return i11;
            }
            i11--;
        }
        return -1;
    }

    @NonNull
    public static <T> T[] newArray(T... tArr) {
        return tArr;
    }

    @NonNull
    public static boolean[] newBooleanArray(boolean... zArr) {
        return zArr;
    }

    @NonNull
    public static byte[] newByteArray(byte... bArr) {
        return bArr;
    }

    @NonNull
    public static char[] newCharArray(char... cArr) {
        return cArr;
    }

    @NonNull
    public static double[] newDoubleArray(double... dArr) {
        return dArr;
    }

    @NonNull
    public static float[] newFloatArray(float... fArr) {
        return fArr;
    }

    @NonNull
    public static int[] newIntArray(int... iArr) {
        return iArr;
    }

    @NonNull
    public static long[] newLongArray(long... jArr) {
        return jArr;
    }

    @NonNull
    public static short[] newShortArray(short... sArr) {
        return sArr;
    }

    @NonNull
    private static Object realAdd(@Nullable Object obj, int i11, @Nullable Object obj2, Class cls) {
        if (obj == null) {
            if (i11 == 0) {
                Object objNewInstance = Array.newInstance((Class<?>) cls, 1);
                Array.set(objNewInstance, 0, obj2);
                return objNewInstance;
            }
            throw new IndexOutOfBoundsException("Index: " + i11 + ", Length: 0");
        }
        int length = Array.getLength(obj);
        if (i11 > length || i11 < 0) {
            throw new IndexOutOfBoundsException("Index: " + i11 + ", Length: " + length);
        }
        Object objNewInstance2 = Array.newInstance((Class<?>) cls, length + 1);
        System.arraycopy(obj, 0, objNewInstance2, 0, i11);
        Array.set(objNewInstance2, i11, obj2);
        if (i11 < length) {
            System.arraycopy(obj, i11, objNewInstance2, i11 + 1, length - i11);
        }
        return objNewInstance2;
    }

    @Nullable
    private static Object realAddArr(@Nullable Object obj, int i11, @Nullable Object obj2, Class cls) {
        if (obj == null && obj2 == null) {
            return null;
        }
        int length = getLength(obj);
        int length2 = getLength(obj2);
        if (length == 0) {
            if (i11 == 0) {
                return realCopy(obj2);
            }
            throw new IndexOutOfBoundsException("Index: " + i11 + ", array1 Length: 0");
        }
        if (length2 == 0) {
            return realCopy(obj);
        }
        if (i11 > length || i11 < 0) {
            throw new IndexOutOfBoundsException("Index: " + i11 + ", array1 Length: " + length);
        }
        Object objNewInstance = Array.newInstance(obj.getClass().getComponentType(), length + length2);
        if (i11 == length) {
            System.arraycopy(obj, 0, objNewInstance, 0, length);
            System.arraycopy(obj2, 0, objNewInstance, length, length2);
        } else if (i11 == 0) {
            System.arraycopy(obj2, 0, objNewInstance, 0, length2);
            System.arraycopy(obj, 0, objNewInstance, length2, length);
        } else {
            System.arraycopy(obj, 0, objNewInstance, 0, i11);
            System.arraycopy(obj2, 0, objNewInstance, i11, length2);
            System.arraycopy(obj, i11, objNewInstance, length2 + i11, length - i11);
        }
        return objNewInstance;
    }

    private static Object realAddArr(@Nullable Object obj, @Nullable Object obj2) {
        if (obj == null && obj2 == null) {
            return null;
        }
        if (obj == null) {
            return realCopy(obj2);
        }
        if (obj2 == null) {
            return realCopy(obj);
        }
        int length = getLength(obj);
        int length2 = getLength(obj2);
        Object objNewInstance = Array.newInstance(obj.getClass().getComponentType(), length + length2);
        System.arraycopy(obj, 0, objNewInstance, 0, length);
        System.arraycopy(obj2, 0, objNewInstance, length, length2);
        return objNewInstance;
    }

    @NonNull
    private static Object realAddOne(@Nullable Object obj, @Nullable Object obj2, Class cls) {
        Object objNewInstance;
        int i11 = 0;
        if (obj != null) {
            int length = getLength(obj);
            objNewInstance = Array.newInstance(obj.getClass().getComponentType(), length + 1);
            System.arraycopy(obj, 0, objNewInstance, 0, length);
            i11 = length;
        } else {
            objNewInstance = Array.newInstance((Class<?>) cls, 1);
        }
        Array.set(objNewInstance, i11, obj2);
        return objNewInstance;
    }

    @Nullable
    private static Object realCopy(@Nullable Object obj) {
        if (obj == null) {
            return null;
        }
        return realSubArray(obj, 0, getLength(obj));
    }

    @Nullable
    private static Object realSubArray(@Nullable Object obj, int i11, int i12) {
        if (obj == null) {
            return null;
        }
        if (i11 < 0) {
            i11 = 0;
        }
        int length = getLength(obj);
        if (i12 > length) {
            i12 = length;
        }
        int i13 = i12 - i11;
        Class<?> componentType = obj.getClass().getComponentType();
        if (i13 <= 0) {
            return Array.newInstance(componentType, 0);
        }
        Object objNewInstance = Array.newInstance(componentType, i13);
        System.arraycopy(obj, i11, objNewInstance, 0, i13);
        return objNewInstance;
    }

    @Nullable
    private static Object remove(@Nullable Object obj, int i11) {
        int length = getLength(obj);
        if (i11 < 0 || i11 >= length) {
            throw new IndexOutOfBoundsException("Index: " + i11 + ", Length: " + length);
        }
        Object objNewInstance = null;
        if (obj != null) {
            try {
                if (obj.getClass().getComponentType() != null) {
                    int i12 = length - 1;
                    objNewInstance = Array.newInstance(obj.getClass().getComponentType(), i12);
                    System.arraycopy(obj, 0, objNewInstance, 0, i11);
                    if (i11 < i12) {
                        System.arraycopy(obj, i11 + 1, objNewInstance, i11, (length - i11) - 1);
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return objNewInstance;
    }

    @Nullable
    public static byte[] remove(@Nullable byte[] bArr, int i11) {
        if (bArr == null) {
            return null;
        }
        return (byte[]) remove((Object) bArr, i11);
    }

    @Nullable
    public static char[] remove(@Nullable char[] cArr, int i11) {
        if (cArr == null) {
            return null;
        }
        return (char[]) remove((Object) cArr, i11);
    }

    @Nullable
    public static double[] remove(@Nullable double[] dArr, int i11) {
        if (dArr == null) {
            return null;
        }
        return (double[]) remove((Object) dArr, i11);
    }

    @Nullable
    public static float[] remove(@Nullable float[] fArr, int i11) {
        if (fArr == null) {
            return null;
        }
        return (float[]) remove((Object) fArr, i11);
    }

    @Nullable
    public static int[] remove(@Nullable int[] iArr, int i11) {
        if (iArr == null) {
            return null;
        }
        return (int[]) remove((Object) iArr, i11);
    }

    @Nullable
    public static long[] remove(@Nullable long[] jArr, int i11) {
        if (jArr == null) {
            return null;
        }
        return (long[]) remove((Object) jArr, i11);
    }

    @Nullable
    public static Object[] remove(@Nullable Object[] objArr, int i11) {
        if (objArr == null) {
            return null;
        }
        return (Object[]) remove((Object) objArr, i11);
    }

    @Nullable
    public static short[] remove(@Nullable short[] sArr, int i11) {
        if (sArr == null) {
            return null;
        }
        return (short[]) remove((Object) sArr, i11);
    }

    @Nullable
    public static boolean[] remove(@Nullable boolean[] zArr, int i11) {
        if (zArr == null) {
            return null;
        }
        return (boolean[]) remove((Object) zArr, i11);
    }

    @Nullable
    public static byte[] removeElement(@Nullable byte[] bArr, byte b11) {
        int iIndexOf = indexOf(bArr, b11);
        return iIndexOf == -1 ? copy(bArr) : remove(bArr, iIndexOf);
    }

    @Nullable
    public static char[] removeElement(@Nullable char[] cArr, char c11) {
        int iIndexOf = indexOf(cArr, c11);
        return iIndexOf == -1 ? copy(cArr) : remove(cArr, iIndexOf);
    }

    @Nullable
    public static double[] removeElement(@Nullable double[] dArr, double d11) {
        int iIndexOf = indexOf(dArr, d11);
        return iIndexOf == -1 ? copy(dArr) : remove(dArr, iIndexOf);
    }

    @Nullable
    public static float[] removeElement(@Nullable float[] fArr, float f11) {
        int iIndexOf = indexOf(fArr, f11);
        return iIndexOf == -1 ? copy(fArr) : remove(fArr, iIndexOf);
    }

    @Nullable
    public static int[] removeElement(@Nullable int[] iArr, int i11) {
        int iIndexOf = indexOf(iArr, i11);
        return iIndexOf == -1 ? copy(iArr) : remove(iArr, iIndexOf);
    }

    @Nullable
    public static long[] removeElement(@Nullable long[] jArr, long j11) {
        int iIndexOf = indexOf(jArr, j11);
        return iIndexOf == -1 ? copy(jArr) : remove(jArr, iIndexOf);
    }

    @Nullable
    public static Object[] removeElement(@Nullable Object[] objArr, @Nullable Object obj) {
        int iIndexOf = indexOf(objArr, obj);
        return iIndexOf == -1 ? copy(objArr) : remove(objArr, iIndexOf);
    }

    @Nullable
    public static short[] removeElement(@Nullable short[] sArr, short s11) {
        int iIndexOf = indexOf(sArr, s11);
        return iIndexOf == -1 ? copy(sArr) : remove(sArr, iIndexOf);
    }

    @Nullable
    public static boolean[] removeElement(@Nullable boolean[] zArr, boolean z10) {
        int iIndexOf = indexOf(zArr, z10);
        return iIndexOf == -1 ? copy(zArr) : remove(zArr, iIndexOf);
    }

    public static void reverse(byte[] bArr) {
        if (bArr == null) {
            return;
        }
        int length = bArr.length - 1;
        for (int i11 = 0; length > i11; i11++) {
            byte b11 = bArr[length];
            bArr[length] = bArr[i11];
            bArr[i11] = b11;
            length--;
        }
    }

    public static void reverse(char[] cArr) {
        if (cArr == null) {
            return;
        }
        int length = cArr.length - 1;
        for (int i11 = 0; length > i11; i11++) {
            char c11 = cArr[length];
            cArr[length] = cArr[i11];
            cArr[i11] = c11;
            length--;
        }
    }

    public static void reverse(double[] dArr) {
        if (dArr == null) {
            return;
        }
        int length = dArr.length - 1;
        for (int i11 = 0; length > i11; i11++) {
            double d11 = dArr[length];
            dArr[length] = dArr[i11];
            dArr[i11] = d11;
            length--;
        }
    }

    public static void reverse(float[] fArr) {
        if (fArr == null) {
            return;
        }
        int length = fArr.length - 1;
        for (int i11 = 0; length > i11; i11++) {
            float f11 = fArr[length];
            fArr[length] = fArr[i11];
            fArr[i11] = f11;
            length--;
        }
    }

    public static void reverse(int[] iArr) {
        if (iArr == null) {
            return;
        }
        int length = iArr.length - 1;
        for (int i11 = 0; length > i11; i11++) {
            int i12 = iArr[length];
            iArr[length] = iArr[i11];
            iArr[i11] = i12;
            length--;
        }
    }

    public static void reverse(long[] jArr) {
        if (jArr == null) {
            return;
        }
        int length = jArr.length - 1;
        for (int i11 = 0; length > i11; i11++) {
            long j11 = jArr[length];
            jArr[length] = jArr[i11];
            jArr[i11] = j11;
            length--;
        }
    }

    public static <T> void reverse(T[] tArr) {
        if (tArr == null) {
            return;
        }
        int length = tArr.length - 1;
        for (int i11 = 0; length > i11; i11++) {
            T t11 = tArr[length];
            tArr[length] = tArr[i11];
            tArr[i11] = t11;
            length--;
        }
    }

    public static void reverse(short[] sArr) {
        if (sArr == null) {
            return;
        }
        int length = sArr.length - 1;
        for (int i11 = 0; length > i11; i11++) {
            short s11 = sArr[length];
            sArr[length] = sArr[i11];
            sArr[i11] = s11;
            length--;
        }
    }

    public static void reverse(boolean[] zArr) {
        if (zArr == null) {
            return;
        }
        int length = zArr.length - 1;
        for (int i11 = 0; length > i11; i11++) {
            boolean z10 = zArr[length];
            zArr[length] = zArr[i11];
            zArr[i11] = z10;
            length--;
        }
    }

    public static void set(@Nullable Object obj, int i11, @Nullable Object obj2) {
        if (obj == null) {
            return;
        }
        Array.set(obj, i11, obj2);
    }

    public static void sort(@Nullable byte[] bArr) {
        if (bArr == null || bArr.length < 2) {
            return;
        }
        Arrays.sort(bArr);
    }

    public static void sort(@Nullable char[] cArr) {
        if (cArr == null || cArr.length < 2) {
            return;
        }
        Arrays.sort(cArr);
    }

    public static void sort(@Nullable double[] dArr) {
        if (dArr == null || dArr.length < 2) {
            return;
        }
        Arrays.sort(dArr);
    }

    public static void sort(@Nullable float[] fArr) {
        if (fArr == null || fArr.length < 2) {
            return;
        }
        Arrays.sort(fArr);
    }

    public static void sort(@Nullable int[] iArr) {
        if (iArr == null || iArr.length < 2) {
            return;
        }
        Arrays.sort(iArr);
    }

    public static void sort(@Nullable long[] jArr) {
        if (jArr == null || jArr.length < 2) {
            return;
        }
        Arrays.sort(jArr);
    }

    public static <T> void sort(@Nullable T[] tArr, Comparator<? super T> comparator) {
        if (tArr == null || tArr.length < 2) {
            return;
        }
        Arrays.sort(tArr, comparator);
    }

    public static void sort(@Nullable short[] sArr) {
        if (sArr == null || sArr.length < 2) {
            return;
        }
        Arrays.sort(sArr);
    }

    @Nullable
    public static byte[] subArray(@Nullable byte[] bArr, int i11, int i12) {
        return (byte[]) realSubArray(bArr, i11, i12);
    }

    @Nullable
    public static char[] subArray(@Nullable char[] cArr, int i11, int i12) {
        return (char[]) realSubArray(cArr, i11, i12);
    }

    @Nullable
    public static double[] subArray(@Nullable double[] dArr, int i11, int i12) {
        return (double[]) realSubArray(dArr, i11, i12);
    }

    @Nullable
    public static float[] subArray(@Nullable float[] fArr, int i11, int i12) {
        return (float[]) realSubArray(fArr, i11, i12);
    }

    @Nullable
    public static int[] subArray(@Nullable int[] iArr, int i11, int i12) {
        return (int[]) realSubArray(iArr, i11, i12);
    }

    @Nullable
    public static long[] subArray(@Nullable long[] jArr, int i11, int i12) {
        return (long[]) realSubArray(jArr, i11, i12);
    }

    @Nullable
    public static <T> T[] subArray(@Nullable T[] tArr, int i11, int i12) {
        return (T[]) ((Object[]) realSubArray(tArr, i11, i12));
    }

    @Nullable
    public static short[] subArray(@Nullable short[] sArr, int i11, int i12) {
        return (short[]) realSubArray(sArr, i11, i12);
    }

    @Nullable
    public static boolean[] subArray(@Nullable boolean[] zArr, int i11, int i12) {
        return (boolean[]) realSubArray(zArr, i11, i12);
    }

    @Nullable
    public static Boolean[] toObject(@Nullable boolean[] zArr) {
        if (zArr == null) {
            return null;
        }
        if (zArr.length == 0) {
            return new Boolean[0];
        }
        Boolean[] boolArr = new Boolean[zArr.length];
        for (int i11 = 0; i11 < zArr.length; i11++) {
            boolArr[i11] = zArr[i11] ? Boolean.TRUE : Boolean.FALSE;
        }
        return boolArr;
    }

    @Nullable
    public static Byte[] toObject(@Nullable byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        if (bArr.length == 0) {
            return new Byte[0];
        }
        Byte[] bArr2 = new Byte[bArr.length];
        for (int i11 = 0; i11 < bArr.length; i11++) {
            bArr2[i11] = new Byte(bArr[i11]);
        }
        return bArr2;
    }

    @Nullable
    public static Character[] toObject(@Nullable char[] cArr) {
        if (cArr == null) {
            return null;
        }
        if (cArr.length == 0) {
            return new Character[0];
        }
        Character[] chArr = new Character[cArr.length];
        for (int i11 = 0; i11 < cArr.length; i11++) {
            chArr[i11] = new Character(cArr[i11]);
        }
        return chArr;
    }

    @Nullable
    public static Double[] toObject(@Nullable double[] dArr) {
        if (dArr == null) {
            return null;
        }
        if (dArr.length == 0) {
            return new Double[0];
        }
        Double[] dArr2 = new Double[dArr.length];
        for (int i11 = 0; i11 < dArr.length; i11++) {
            dArr2[i11] = new Double(dArr[i11]);
        }
        return dArr2;
    }

    @Nullable
    public static Float[] toObject(@Nullable float[] fArr) {
        if (fArr == null) {
            return null;
        }
        if (fArr.length == 0) {
            return new Float[0];
        }
        Float[] fArr2 = new Float[fArr.length];
        for (int i11 = 0; i11 < fArr.length; i11++) {
            fArr2[i11] = new Float(fArr[i11]);
        }
        return fArr2;
    }

    @Nullable
    public static Integer[] toObject(@Nullable int[] iArr) {
        if (iArr == null) {
            return null;
        }
        if (iArr.length == 0) {
            return new Integer[0];
        }
        Integer[] numArr = new Integer[iArr.length];
        for (int i11 = 0; i11 < iArr.length; i11++) {
            numArr[i11] = new Integer(iArr[i11]);
        }
        return numArr;
    }

    @Nullable
    public static Long[] toObject(@Nullable long[] jArr) {
        if (jArr == null) {
            return null;
        }
        if (jArr.length == 0) {
            return new Long[0];
        }
        Long[] lArr = new Long[jArr.length];
        for (int i11 = 0; i11 < jArr.length; i11++) {
            lArr[i11] = new Long(jArr[i11]);
        }
        return lArr;
    }

    @Nullable
    public static Short[] toObject(@Nullable short[] sArr) {
        if (sArr == null) {
            return null;
        }
        if (sArr.length == 0) {
            return new Short[0];
        }
        Short[] shArr = new Short[sArr.length];
        for (int i11 = 0; i11 < sArr.length; i11++) {
            shArr[i11] = new Short(sArr[i11]);
        }
        return shArr;
    }

    @Nullable
    public static byte[] toPrimitive(@Nullable Byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        if (bArr.length == 0) {
            return new byte[0];
        }
        byte[] bArr2 = new byte[bArr.length];
        for (int i11 = 0; i11 < bArr.length; i11++) {
            bArr2[i11] = bArr[i11].byteValue();
        }
        return bArr2;
    }

    @Nullable
    public static byte[] toPrimitive(@Nullable Byte[] bArr, byte b11) {
        if (bArr == null) {
            return null;
        }
        if (bArr.length == 0) {
            return new byte[0];
        }
        byte[] bArr2 = new byte[bArr.length];
        for (int i11 = 0; i11 < bArr.length; i11++) {
            Byte b12 = bArr[i11];
            bArr2[i11] = b12 == null ? b11 : b12.byteValue();
        }
        return bArr2;
    }

    @Nullable
    public static char[] toPrimitive(@Nullable Character[] chArr) {
        if (chArr == null) {
            return null;
        }
        if (chArr.length == 0) {
            return new char[0];
        }
        char[] cArr = new char[chArr.length];
        for (int i11 = 0; i11 < chArr.length; i11++) {
            cArr[i11] = chArr[i11].charValue();
        }
        return cArr;
    }

    @Nullable
    public static char[] toPrimitive(@Nullable Character[] chArr, char c11) {
        if (chArr == null) {
            return null;
        }
        if (chArr.length == 0) {
            return new char[0];
        }
        char[] cArr = new char[chArr.length];
        for (int i11 = 0; i11 < chArr.length; i11++) {
            Character ch2 = chArr[i11];
            cArr[i11] = ch2 == null ? c11 : ch2.charValue();
        }
        return cArr;
    }

    @Nullable
    public static double[] toPrimitive(@Nullable Double[] dArr) {
        if (dArr == null) {
            return null;
        }
        if (dArr.length == 0) {
            return new double[0];
        }
        double[] dArr2 = new double[dArr.length];
        for (int i11 = 0; i11 < dArr.length; i11++) {
            dArr2[i11] = dArr[i11].doubleValue();
        }
        return dArr2;
    }

    @Nullable
    public static double[] toPrimitive(@Nullable Double[] dArr, double d11) {
        if (dArr == null) {
            return null;
        }
        if (dArr.length == 0) {
            return new double[0];
        }
        double[] dArr2 = new double[dArr.length];
        for (int i11 = 0; i11 < dArr.length; i11++) {
            Double d12 = dArr[i11];
            dArr2[i11] = d12 == null ? d11 : d12.doubleValue();
        }
        return dArr2;
    }

    @Nullable
    public static float[] toPrimitive(@Nullable Float[] fArr) {
        if (fArr == null) {
            return null;
        }
        if (fArr.length == 0) {
            return new float[0];
        }
        float[] fArr2 = new float[fArr.length];
        for (int i11 = 0; i11 < fArr.length; i11++) {
            fArr2[i11] = fArr[i11].floatValue();
        }
        return fArr2;
    }

    @Nullable
    public static float[] toPrimitive(@Nullable Float[] fArr, float f11) {
        if (fArr == null) {
            return null;
        }
        if (fArr.length == 0) {
            return new float[0];
        }
        float[] fArr2 = new float[fArr.length];
        for (int i11 = 0; i11 < fArr.length; i11++) {
            Float f12 = fArr[i11];
            fArr2[i11] = f12 == null ? f11 : f12.floatValue();
        }
        return fArr2;
    }

    @Nullable
    public static int[] toPrimitive(@Nullable Integer[] numArr) {
        if (numArr == null) {
            return null;
        }
        if (numArr.length == 0) {
            return new int[0];
        }
        int[] iArr = new int[numArr.length];
        for (int i11 = 0; i11 < numArr.length; i11++) {
            iArr[i11] = numArr[i11].intValue();
        }
        return iArr;
    }

    @Nullable
    public static int[] toPrimitive(@Nullable Integer[] numArr, int i11) {
        if (numArr == null) {
            return null;
        }
        if (numArr.length == 0) {
            return new int[0];
        }
        int[] iArr = new int[numArr.length];
        for (int i12 = 0; i12 < numArr.length; i12++) {
            Integer num = numArr[i12];
            iArr[i12] = num == null ? i11 : num.intValue();
        }
        return iArr;
    }

    @Nullable
    public static long[] toPrimitive(@Nullable Long[] lArr) {
        if (lArr == null) {
            return null;
        }
        if (lArr.length == 0) {
            return new long[0];
        }
        long[] jArr = new long[lArr.length];
        for (int i11 = 0; i11 < lArr.length; i11++) {
            jArr[i11] = lArr[i11].longValue();
        }
        return jArr;
    }

    @Nullable
    public static long[] toPrimitive(@Nullable Long[] lArr, long j11) {
        if (lArr == null) {
            return null;
        }
        if (lArr.length == 0) {
            return new long[0];
        }
        long[] jArr = new long[lArr.length];
        for (int i11 = 0; i11 < lArr.length; i11++) {
            Long l11 = lArr[i11];
            jArr[i11] = l11 == null ? j11 : l11.longValue();
        }
        return jArr;
    }

    @Nullable
    public static short[] toPrimitive(@Nullable Short[] shArr) {
        if (shArr == null) {
            return null;
        }
        if (shArr.length == 0) {
            return new short[0];
        }
        short[] sArr = new short[shArr.length];
        for (int i11 = 0; i11 < shArr.length; i11++) {
            sArr[i11] = shArr[i11].shortValue();
        }
        return sArr;
    }

    @Nullable
    public static short[] toPrimitive(@Nullable Short[] shArr, short s11) {
        if (shArr == null) {
            return null;
        }
        if (shArr.length == 0) {
            return new short[0];
        }
        short[] sArr = new short[shArr.length];
        for (int i11 = 0; i11 < shArr.length; i11++) {
            Short sh2 = shArr[i11];
            sArr[i11] = sh2 == null ? s11 : sh2.shortValue();
        }
        return sArr;
    }

    @Nullable
    public static boolean[] toPrimitive(@Nullable Boolean[] boolArr) {
        if (boolArr == null) {
            return null;
        }
        if (boolArr.length == 0) {
            return new boolean[0];
        }
        boolean[] zArr = new boolean[boolArr.length];
        for (int i11 = 0; i11 < boolArr.length; i11++) {
            zArr[i11] = boolArr[i11].booleanValue();
        }
        return zArr;
    }

    @Nullable
    public static boolean[] toPrimitive(@Nullable Boolean[] boolArr, boolean z10) {
        if (boolArr == null) {
            return null;
        }
        if (boolArr.length == 0) {
            return new boolean[0];
        }
        boolean[] zArr = new boolean[boolArr.length];
        for (int i11 = 0; i11 < boolArr.length; i11++) {
            Boolean bool = boolArr[i11];
            zArr[i11] = bool == null ? z10 : bool.booleanValue();
        }
        return zArr;
    }

    @NonNull
    public static String toString(@Nullable Object obj) {
        if (obj == null) {
            return "null";
        }
        if (obj instanceof Object[]) {
            return Arrays.deepToString((Object[]) obj);
        }
        if (obj instanceof boolean[]) {
            return Arrays.toString((boolean[]) obj);
        }
        if (obj instanceof byte[]) {
            return Arrays.toString((byte[]) obj);
        }
        if (obj instanceof char[]) {
            return Arrays.toString((char[]) obj);
        }
        if (obj instanceof double[]) {
            return Arrays.toString((double[]) obj);
        }
        if (obj instanceof float[]) {
            return Arrays.toString((float[]) obj);
        }
        if (obj instanceof int[]) {
            return Arrays.toString((int[]) obj);
        }
        if (obj instanceof long[]) {
            return Arrays.toString((long[]) obj);
        }
        if (obj instanceof short[]) {
            return Arrays.toString((short[]) obj);
        }
        throw new IllegalArgumentException("Array has incompatible type: " + obj.getClass());
    }
}
