package org.brotli.dec;

/* JADX INFO: loaded from: classes7.dex */
abstract class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final byte[] f71677a = new byte[1024];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int[] f71678b = new int[1024];

    static void a(byte[] bArr, int i11, int i12) {
        int i13 = 0;
        while (i13 < i12) {
            int iMin = Math.min(i13 + 1024, i12) - i13;
            System.arraycopy(f71677a, 0, bArr, i11 + i13, iMin);
            i13 += iMin;
        }
    }

    static void b(int[] iArr, int i11, int i12) {
        int i13 = 0;
        while (i13 < i12) {
            int iMin = Math.min(i13 + 1024, i12) - i13;
            System.arraycopy(f71678b, 0, iArr, i11 + i13, iMin);
            i13 += iMin;
        }
    }
}
