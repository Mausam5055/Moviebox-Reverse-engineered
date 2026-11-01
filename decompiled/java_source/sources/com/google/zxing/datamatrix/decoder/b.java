package com.google.zxing.datamatrix.decoder;

/* JADX INFO: loaded from: classes4.dex */
final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f32862a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final byte[] f32863b;

    private b(int i11, byte[] bArr) {
        this.f32862a = i11;
        this.f32863b = bArr;
    }

    static b[] b(byte[] bArr, d dVar) {
        d.c cVarD = dVar.d();
        d.b[] bVarArrA = cVarD.a();
        int iA = 0;
        for (d.b bVar : bVarArrA) {
            iA += bVar.a();
        }
        b[] bVarArr = new b[iA];
        int i11 = 0;
        for (d.b bVar2 : bVarArrA) {
            int i12 = 0;
            while (i12 < bVar2.a()) {
                int iB = bVar2.b();
                bVarArr[i11] = new b(iB, new byte[cVarD.b() + iB]);
                i12++;
                i11++;
            }
        }
        int length = bVarArr[0].f32863b.length - cVarD.b();
        int i13 = length - 1;
        int i14 = 0;
        for (int i15 = 0; i15 < i13; i15++) {
            int i16 = 0;
            while (i16 < i11) {
                bVarArr[i16].f32863b[i15] = bArr[i14];
                i16++;
                i14++;
            }
        }
        boolean z10 = dVar.i() == 24;
        int i17 = z10 ? 8 : i11;
        int i18 = 0;
        while (i18 < i17) {
            bVarArr[i18].f32863b[i13] = bArr[i14];
            i18++;
            i14++;
        }
        int length2 = bVarArr[0].f32863b.length;
        while (length < length2) {
            int i19 = 0;
            while (i19 < i11) {
                int i20 = z10 ? (i19 + 8) % i11 : i19;
                bVarArr[i20].f32863b[(!z10 || i20 <= 7) ? length : length - 1] = bArr[i14];
                i19++;
                i14++;
            }
            length++;
        }
        if (i14 == bArr.length) {
            return bVarArr;
        }
        throw new IllegalArgumentException();
    }

    byte[] a() {
        return this.f32863b;
    }

    int c() {
        return this.f32862a;
    }
}
