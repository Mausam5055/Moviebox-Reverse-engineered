package com.google.common.collect;

import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
abstract class g2 {
    static Object a(int i11) {
        if (i11 >= 2 && i11 <= 1073741824 && Integer.highestOneBit(i11) == i11) {
            if (i11 <= 256) {
                return new byte[i11];
            }
            return i11 <= 65536 ? new short[i11] : new int[i11];
        }
        throw new IllegalArgumentException("must be power of 2 between 2^1 and 2^30: " + i11);
    }

    static int b(int i11, int i12) {
        return i11 & (~i12);
    }

    static int c(int i11, int i12) {
        return i11 & i12;
    }

    static int d(int i11, int i12, int i13) {
        return (i11 & (~i13)) | (i12 & i13);
    }

    static int e(int i11) {
        return (i11 < 32 ? 4 : 2) * (i11 + 1);
    }

    static int f(Object obj, Object obj2, int i11, Object obj3, int[] iArr, Object[] objArr, Object[] objArr2) {
        int iD = v2.d(obj);
        int i12 = iD & i11;
        int iH = h(obj3, i12);
        if (iH == 0) {
            return -1;
        }
        int iB = b(iD, i11);
        int i13 = -1;
        while (true) {
            int i14 = iH - 1;
            int i15 = iArr[i14];
            if (b(i15, i11) == iB && com.google.common.base.j.a(obj, objArr[i14]) && (objArr2 == null || com.google.common.base.j.a(obj2, objArr2[i14]))) {
                int iC = c(i15, i11);
                if (i13 == -1) {
                    i(obj3, i12, iC);
                } else {
                    iArr[i13] = d(iArr[i13], iC, i11);
                }
                return i14;
            }
            int iC2 = c(i15, i11);
            if (iC2 == 0) {
                return -1;
            }
            i13 = i14;
            iH = iC2;
        }
    }

    static void g(Object obj) {
        if (obj instanceof byte[]) {
            Arrays.fill((byte[]) obj, (byte) 0);
        } else if (obj instanceof short[]) {
            Arrays.fill((short[]) obj, (short) 0);
        } else {
            Arrays.fill((int[]) obj, 0);
        }
    }

    static int h(Object obj, int i11) {
        if (obj instanceof byte[]) {
            return ((byte[]) obj)[i11] & 255;
        }
        return obj instanceof short[] ? ((short[]) obj)[i11] & 65535 : ((int[]) obj)[i11];
    }

    static void i(Object obj, int i11, int i12) {
        if (obj instanceof byte[]) {
            ((byte[]) obj)[i11] = (byte) i12;
        } else if (obj instanceof short[]) {
            ((short[]) obj)[i11] = (short) i12;
        } else {
            ((int[]) obj)[i11] = i12;
        }
    }

    static int j(int i11) {
        return Math.max(4, v2.a(i11 + 1, 1.0d));
    }
}
