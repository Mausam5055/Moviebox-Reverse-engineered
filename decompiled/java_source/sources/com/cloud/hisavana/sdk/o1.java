package com.cloud.hisavana.sdk;

/* JADX INFO: loaded from: classes3.dex */
abstract class o1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final int[] f22804a = new int[0];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final long[] f22805b = new long[0];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final Object[] f22806c = new Object[0];

    static int a(int[] iArr, int i11, int i12) {
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
