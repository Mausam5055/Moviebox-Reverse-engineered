package qd;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.NotFoundException;

/* JADX INFO: loaded from: classes5.dex */
public final class g extends w {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    static final int[] f73570j = {0, 11, 13, 14, 19, 25, 28, 21, 22, 26};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int[] f73571i = new int[4];

    private static void s(StringBuilder sb2, int i11) throws NotFoundException {
        for (int i12 = 0; i12 < 10; i12++) {
            if (i11 == f73570j[i12]) {
                sb2.insert(0, (char) (i12 + 48));
                return;
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    @Override // qd.w
    protected int l(id.a aVar, int[] iArr, StringBuilder sb2) throws NotFoundException {
        int[] iArr2 = this.f73571i;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int iM = aVar.m();
        int i11 = iArr[1];
        int i12 = 0;
        for (int i13 = 0; i13 < 6 && i11 < iM; i13++) {
            int iJ = w.j(aVar, iArr2, i11, w.f73602h);
            sb2.append((char) ((iJ % 10) + 48));
            for (int i14 : iArr2) {
                i11 += i14;
            }
            if (iJ >= 10) {
                i12 |= 1 << (5 - i13);
            }
        }
        s(sb2, i12);
        int i15 = w.n(aVar, i11, true, w.f73599e)[1];
        for (int i16 = 0; i16 < 6 && i15 < iM; i16++) {
            sb2.append((char) (w.j(aVar, iArr2, i15, w.f73601g) + 48));
            for (int i17 : iArr2) {
                i15 += i17;
            }
        }
        return i15;
    }

    @Override // qd.w
    BarcodeFormat q() {
        return BarcodeFormat.EAN_13;
    }
}
