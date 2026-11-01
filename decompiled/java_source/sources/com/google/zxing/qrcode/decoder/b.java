package com.google.zxing.qrcode.decoder;

/* JADX INFO: loaded from: classes4.dex */
final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f32985a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final byte[] f32986b;

    private b(int i11, byte[] bArr) {
        this.f32985a = i11;
        this.f32986b = bArr;
    }

    static b[] b(byte[] bArr, g gVar, ErrorCorrectionLevel errorCorrectionLevel) {
        if (bArr.length != gVar.h()) {
            throw new IllegalArgumentException();
        }
        g.b bVarF = gVar.f(errorCorrectionLevel);
        g.a[] aVarArrA = bVarF.a();
        int iA = 0;
        for (g.a aVar : aVarArrA) {
            iA += aVar.a();
        }
        b[] bVarArr = new b[iA];
        int i11 = 0;
        for (g.a aVar2 : aVarArrA) {
            int i12 = 0;
            while (i12 < aVar2.a()) {
                int iB = aVar2.b();
                bVarArr[i11] = new b(iB, new byte[bVarF.b() + iB]);
                i12++;
                i11++;
            }
        }
        int length = bVarArr[0].f32986b.length;
        int i13 = iA - 1;
        while (i13 >= 0 && bVarArr[i13].f32986b.length != length) {
            i13--;
        }
        int i14 = i13 + 1;
        int iB2 = length - bVarF.b();
        int i15 = 0;
        for (int i16 = 0; i16 < iB2; i16++) {
            int i17 = 0;
            while (i17 < i11) {
                bVarArr[i17].f32986b[i16] = bArr[i15];
                i17++;
                i15++;
            }
        }
        int i18 = i14;
        while (i18 < i11) {
            bVarArr[i18].f32986b[iB2] = bArr[i15];
            i18++;
            i15++;
        }
        int length2 = bVarArr[0].f32986b.length;
        while (iB2 < length2) {
            int i19 = 0;
            while (i19 < i11) {
                bVarArr[i19].f32986b[i19 < i14 ? iB2 : iB2 + 1] = bArr[i15];
                i19++;
                i15++;
            }
            iB2++;
        }
        return bVarArr;
    }

    byte[] a() {
        return this.f32986b;
    }

    int c() {
        return this.f32985a;
    }
}
