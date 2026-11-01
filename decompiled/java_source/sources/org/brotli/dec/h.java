package org.brotli.dec;

/* JADX INFO: loaded from: classes7.dex */
final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private byte[] f71637a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int[] f71638b;

    h() {
    }

    static void a(h hVar, int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            int[] iArr = hVar.f71638b;
            byte[] bArr = hVar.f71637a;
            int i13 = i12 * 4;
            iArr[i12] = ((bArr[i13 + 3] & 255) << 24) | (bArr[i13] & 255) | ((bArr[i13 + 1] & 255) << 8) | ((bArr[i13 + 2] & 255) << 16);
        }
    }

    static void b(h hVar, byte[] bArr, int[] iArr) {
        hVar.f71637a = bArr;
        hVar.f71638b = iArr;
    }
}
