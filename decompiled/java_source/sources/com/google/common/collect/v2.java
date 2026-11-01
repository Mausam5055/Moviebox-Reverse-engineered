package com.google.common.collect;

/* JADX INFO: loaded from: classes4.dex */
abstract class v2 {
    static int a(int i11, double d11) {
        int iMax = Math.max(i11, 2);
        int iHighestOneBit = Integer.highestOneBit(iMax);
        if (iMax <= ((int) (d11 * ((double) iHighestOneBit)))) {
            return iHighestOneBit;
        }
        int i12 = iHighestOneBit << 1;
        if (i12 > 0) {
            return i12;
        }
        return 1073741824;
    }

    static boolean b(int i11, int i12, double d11) {
        return ((double) i11) > d11 * ((double) i12) && i12 < 1073741824;
    }

    static int c(int i11) {
        return (int) (((long) Integer.rotateLeft((int) (((long) i11) * (-862048943)), 15)) * 461845907);
    }

    static int d(Object obj) {
        return c(obj == null ? 0 : obj.hashCode());
    }
}
