package com.google.zxing.qrcode.decoder;

import com.google.zxing.FormatException;

/* JADX INFO: loaded from: classes4.dex */
final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final id.b f32981a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private g f32982b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private e f32983c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f32984d;

    a(id.b bVar) throws FormatException {
        int iK = bVar.k();
        if (iK < 21 || (iK & 3) != 1) {
            throw FormatException.getFormatInstance();
        }
        this.f32981a = bVar;
    }

    private int a(int i11, int i12, int i13) {
        return this.f32984d ? this.f32981a.g(i12, i11) : this.f32981a.g(i11, i12) ? (i13 << 1) | 1 : i13 << 1;
    }

    void b() {
        int i11 = 0;
        while (i11 < this.f32981a.n()) {
            int i12 = i11 + 1;
            for (int i13 = i12; i13 < this.f32981a.k(); i13++) {
                if (this.f32981a.g(i11, i13) != this.f32981a.g(i13, i11)) {
                    this.f32981a.f(i13, i11);
                    this.f32981a.f(i11, i13);
                }
            }
            i11 = i12;
        }
    }

    byte[] c() throws FormatException {
        e eVarD = d();
        g gVarE = e();
        DataMask dataMask = DataMask.values()[eVarD.c()];
        int iK = this.f32981a.k();
        dataMask.unmaskBitMatrix(this.f32981a, iK);
        id.b bVarA = gVarE.a();
        byte[] bArr = new byte[gVarE.h()];
        int i11 = iK - 1;
        boolean z10 = true;
        int i12 = i11;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        while (i12 > 0) {
            if (i12 == 6) {
                i12--;
            }
            for (int i16 = 0; i16 < iK; i16++) {
                int i17 = z10 ? i11 - i16 : i16;
                for (int i18 = 0; i18 < 2; i18++) {
                    int i19 = i12 - i18;
                    if (!bVarA.g(i19, i17)) {
                        i14++;
                        i15 <<= 1;
                        if (this.f32981a.g(i19, i17)) {
                            i15 |= 1;
                        }
                        if (i14 == 8) {
                            bArr[i13] = (byte) i15;
                            i13++;
                            i14 = 0;
                            i15 = 0;
                        }
                    }
                }
            }
            z10 = !z10;
            i12 -= 2;
        }
        if (i13 == gVarE.h()) {
            return bArr;
        }
        throw FormatException.getFormatInstance();
    }

    e d() throws FormatException {
        e eVar = this.f32983c;
        if (eVar != null) {
            return eVar;
        }
        int iA = 0;
        int iA2 = 0;
        for (int i11 = 0; i11 < 6; i11++) {
            iA2 = a(i11, 8, iA2);
        }
        int iA3 = a(8, 7, a(8, 8, a(7, 8, iA2)));
        for (int i12 = 5; i12 >= 0; i12--) {
            iA3 = a(8, i12, iA3);
        }
        int iK = this.f32981a.k();
        int i13 = iK - 7;
        for (int i14 = iK - 1; i14 >= i13; i14--) {
            iA = a(8, i14, iA);
        }
        for (int i15 = iK - 8; i15 < iK; i15++) {
            iA = a(i15, 8, iA);
        }
        e eVarA = e.a(iA3, iA);
        this.f32983c = eVarA;
        if (eVarA != null) {
            return eVarA;
        }
        throw FormatException.getFormatInstance();
    }

    g e() throws FormatException {
        g gVar = this.f32982b;
        if (gVar != null) {
            return gVar;
        }
        int iK = this.f32981a.k();
        int i11 = (iK - 17) / 4;
        if (i11 <= 6) {
            return g.i(i11);
        }
        int i12 = iK - 11;
        int iA = 0;
        int iA2 = 0;
        for (int i13 = 5; i13 >= 0; i13--) {
            for (int i14 = iK - 9; i14 >= i12; i14--) {
                iA2 = a(i14, i13, iA2);
            }
        }
        g gVarC = g.c(iA2);
        if (gVarC != null && gVarC.e() == iK) {
            this.f32982b = gVarC;
            return gVarC;
        }
        for (int i15 = 5; i15 >= 0; i15--) {
            for (int i16 = iK - 9; i16 >= i12; i16--) {
                iA = a(i15, i16, iA);
            }
        }
        g gVarC2 = g.c(iA);
        if (gVarC2 == null || gVarC2.e() != iK) {
            throw FormatException.getFormatInstance();
        }
        this.f32982b = gVarC2;
        return gVarC2;
    }

    void f() {
        if (this.f32983c == null) {
            return;
        }
        DataMask.values()[this.f32983c.c()].unmaskBitMatrix(this.f32981a, this.f32981a.k());
    }

    void g(boolean z10) {
        this.f32982b = null;
        this.f32983c = null;
        this.f32984d = z10;
    }
}
