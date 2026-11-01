package com.bytedance.adsdk.sP;

/* JADX INFO: loaded from: classes2.dex */
class sP {
    static final int[] Sj = new int[0];
    static final long[] sP = new long[0];
    static final Object[] TKC = new Object[0];

    static int Sj(int[] iArr, int i11, int i12) {
        int i13 = i11 - 1;
        int i14 = 0;
        while (i14 <= i13) {
            int i15 = (i14 + i13) >>> 1;
            int i16 = iArr[i15];
            if (i16 < i12) {
                i14 = i15 + 1;
            } else {
                if (i16 <= i12) {
                    return i15;
                }
                i13 = i15 - 1;
            }
        }
        return ~i14;
    }
}
