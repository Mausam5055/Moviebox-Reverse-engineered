package id;

import com.google.zxing.NotFoundException;

/* JADX INFO: loaded from: classes5.dex */
public abstract class j extends com.google.zxing.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final byte[] f65180d = new byte[0];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private byte[] f65181b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int[] f65182c;

    public j(com.google.zxing.e eVar) {
        super(eVar);
        this.f65181b = f65180d;
        this.f65182c = new int[32];
    }

    private static int g(int[] iArr) throws NotFoundException {
        int length = iArr.length;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        for (int i14 = 0; i14 < length; i14++) {
            int i15 = iArr[i14];
            if (i15 > i11) {
                i13 = i14;
                i11 = i15;
            }
            if (i15 > i12) {
                i12 = i15;
            }
        }
        int i16 = 0;
        int i17 = 0;
        for (int i18 = 0; i18 < length; i18++) {
            int i19 = i18 - i13;
            int i20 = iArr[i18] * i19 * i19;
            if (i20 > i17) {
                i16 = i18;
                i17 = i20;
            }
        }
        if (i13 <= i16) {
            int i21 = i13;
            i13 = i16;
            i16 = i21;
        }
        if (i13 - i16 <= length / 16) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i22 = i13 - 1;
        int i23 = -1;
        int i24 = i22;
        while (i22 > i16) {
            int i25 = i22 - i16;
            int i26 = i25 * i25 * (i13 - i22) * (i12 - iArr[i22]);
            if (i26 > i23) {
                i24 = i22;
                i23 = i26;
            }
            i22--;
        }
        return i24 << 3;
    }

    private void h(int i11) {
        if (this.f65181b.length < i11) {
            this.f65181b = new byte[i11];
        }
        for (int i12 = 0; i12 < 32; i12++) {
            this.f65182c[i12] = 0;
        }
    }

    @Override // com.google.zxing.a
    public b b() throws NotFoundException {
        com.google.zxing.e eVarE = e();
        int iD = eVarE.d();
        int iA = eVarE.a();
        b bVar = new b(iD, iA);
        h(iD);
        int[] iArr = this.f65182c;
        for (int i11 = 1; i11 < 5; i11++) {
            byte[] bArrC = eVarE.c((iA * i11) / 5, this.f65181b);
            int i12 = (iD * 4) / 5;
            for (int i13 = iD / 5; i13 < i12; i13++) {
                int i14 = (bArrC[i13] & 255) >> 3;
                iArr[i14] = iArr[i14] + 1;
            }
        }
        int iG = g(iArr);
        byte[] bArrB = eVarE.b();
        for (int i15 = 0; i15 < iA; i15++) {
            int i16 = i15 * iD;
            for (int i17 = 0; i17 < iD; i17++) {
                if ((bArrB[i16 + i17] & 255) < iG) {
                    bVar.r(i17, i15);
                }
            }
        }
        return bVar;
    }

    @Override // com.google.zxing.a
    public a c(int i11, a aVar) throws NotFoundException {
        com.google.zxing.e eVarE = e();
        int iD = eVarE.d();
        if (aVar == null || aVar.m() < iD) {
            aVar = new a(iD);
        } else {
            aVar.e();
        }
        h(iD);
        byte[] bArrC = eVarE.c(i11, this.f65181b);
        int[] iArr = this.f65182c;
        for (int i12 = 0; i12 < iD; i12++) {
            int i13 = (bArrC[i12] & 255) >> 3;
            iArr[i13] = iArr[i13] + 1;
        }
        int iG = g(iArr);
        if (iD < 3) {
            for (int i14 = 0; i14 < iD; i14++) {
                if ((bArrC[i14] & 255) < iG) {
                    aVar.r(i14);
                }
            }
        } else {
            int i15 = 1;
            int i16 = bArrC[0] & 255;
            int i17 = bArrC[1] & 255;
            while (i15 < iD - 1) {
                int i18 = i15 + 1;
                int i19 = bArrC[i18] & 255;
                if ((((i17 * 4) - i16) - i19) / 2 < iG) {
                    aVar.r(i15);
                }
                i16 = i17;
                i15 = i18;
                i17 = i19;
            }
        }
        return aVar;
    }
}
