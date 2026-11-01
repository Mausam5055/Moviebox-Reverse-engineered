package qd;

import com.google.zxing.BarcodeFormat;

/* JADX INFO: loaded from: classes5.dex */
public final class i extends w {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int[] f73572i = new int[4];

    @Override // qd.w
    protected int l(id.a aVar, int[] iArr, StringBuilder sb2) {
        int[] iArr2 = this.f73572i;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int iM = aVar.m();
        int i11 = iArr[1];
        for (int i12 = 0; i12 < 4 && i11 < iM; i12++) {
            sb2.append((char) (w.j(aVar, iArr2, i11, w.f73601g) + 48));
            for (int i13 : iArr2) {
                i11 += i13;
            }
        }
        int i14 = w.n(aVar, i11, true, w.f73599e)[1];
        for (int i15 = 0; i15 < 4 && i14 < iM; i15++) {
            sb2.append((char) (w.j(aVar, iArr2, i14, w.f73601g) + 48));
            for (int i16 : iArr2) {
                i14 += i16;
            }
        }
        return i14;
    }

    @Override // qd.w
    BarcodeFormat q() {
        return BarcodeFormat.EAN_8;
    }
}
