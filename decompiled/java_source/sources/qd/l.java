package qd;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultMetadataType;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class l extends p {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int[] f73575b = {6, 8, 10, 12, 14};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int[] f73576c = {1, 1, 1, 1};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int[][] f73577d = {new int[]{1, 1, 2}, new int[]{1, 1, 3}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int[][] f73578e = {new int[]{1, 1, 2, 2, 1}, new int[]{2, 1, 1, 1, 2}, new int[]{1, 2, 1, 1, 2}, new int[]{2, 2, 1, 1, 1}, new int[]{1, 1, 2, 1, 2}, new int[]{2, 1, 2, 1, 1}, new int[]{1, 2, 2, 1, 1}, new int[]{1, 1, 1, 2, 2}, new int[]{2, 1, 1, 2, 1}, new int[]{1, 2, 1, 2, 1}, new int[]{1, 1, 3, 3, 1}, new int[]{3, 1, 1, 1, 3}, new int[]{1, 3, 1, 1, 3}, new int[]{3, 3, 1, 1, 1}, new int[]{1, 1, 3, 1, 3}, new int[]{3, 1, 3, 1, 1}, new int[]{1, 3, 3, 1, 1}, new int[]{1, 1, 1, 3, 3}, new int[]{3, 1, 1, 3, 1}, new int[]{1, 3, 1, 3, 1}};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f73579a = -1;

    private static int h(int[] iArr) throws NotFoundException {
        int length = f73578e.length;
        float f11 = 0.38f;
        int i11 = -1;
        for (int i12 = 0; i12 < length; i12++) {
            float fE = p.e(iArr, f73578e[i12], 0.5f);
            if (fE < f11) {
                i11 = i12;
                f11 = fE;
            } else if (fE == f11) {
                i11 = -1;
            }
        }
        if (i11 >= 0) {
            return i11 % 10;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private int[] i(id.a aVar) {
        int[] iArrL;
        aVar.q();
        try {
            int iM = m(aVar);
            try {
                iArrL = l(aVar, iM, f73577d[0]);
            } catch (NotFoundException unused) {
                iArrL = l(aVar, iM, f73577d[1]);
            }
            n(aVar, iArrL[0]);
            int i11 = iArrL[0];
            iArrL[0] = aVar.m() - iArrL[1];
            iArrL[1] = aVar.m() - i11;
            aVar.q();
            return iArrL;
        } catch (Throwable th2) {
            aVar.q();
            throw th2;
        }
    }

    private static void j(id.a aVar, int i11, int i12, StringBuilder sb2) throws NotFoundException {
        int[] iArr = new int[10];
        int[] iArr2 = new int[5];
        int[] iArr3 = new int[5];
        while (i11 < i12) {
            p.f(aVar, i11, iArr);
            for (int i13 = 0; i13 < 5; i13++) {
                int i14 = i13 * 2;
                iArr2[i13] = iArr[i14];
                iArr3[i13] = iArr[i14 + 1];
            }
            sb2.append((char) (h(iArr2) + 48));
            sb2.append((char) (h(iArr3) + 48));
            for (int i15 = 0; i15 < 10; i15++) {
                i11 += iArr[i15];
            }
        }
    }

    private int[] k(id.a aVar) throws NotFoundException {
        int[] iArrL = l(aVar, m(aVar), f73576c);
        int i11 = iArrL[1];
        int i12 = iArrL[0];
        this.f73579a = (i11 - i12) / 4;
        n(aVar, i12);
        return iArrL;
    }

    private static int[] l(id.a aVar, int i11, int[] iArr) throws NotFoundException {
        int length = iArr.length;
        int[] iArr2 = new int[length];
        int iM = aVar.m();
        int i12 = i11;
        boolean z10 = false;
        int i13 = 0;
        while (i11 < iM) {
            if (aVar.i(i11) != z10) {
                iArr2[i13] = iArr2[i13] + 1;
            } else {
                if (i13 != length - 1) {
                    i13++;
                } else {
                    if (p.e(iArr2, iArr, 0.5f) < 0.38f) {
                        return new int[]{i12, i11};
                    }
                    i12 += iArr2[0] + iArr2[1];
                    int i14 = i13 - 1;
                    System.arraycopy(iArr2, 2, iArr2, 0, i14);
                    iArr2[i14] = 0;
                    iArr2[i13] = 0;
                    i13--;
                }
                iArr2[i13] = 1;
                z10 = !z10;
            }
            i11++;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static int m(id.a aVar) throws NotFoundException {
        int iM = aVar.m();
        int iK = aVar.k(0);
        if (iK != iM) {
            return iK;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private void n(id.a aVar, int i11) throws NotFoundException {
        int iMin = Math.min(this.f73579a * 10, i11);
        for (int i12 = i11 - 1; iMin > 0 && i12 >= 0 && !aVar.i(i12); i12--) {
            iMin--;
        }
        if (iMin != 0) {
            throw NotFoundException.getNotFoundInstance();
        }
    }

    @Override // qd.p
    public com.google.zxing.j c(int i11, id.a aVar, Map map) throws NotFoundException, FormatException {
        boolean z10;
        int[] iArrK = k(aVar);
        int[] iArrI = i(aVar);
        StringBuilder sb2 = new StringBuilder(20);
        j(aVar, iArrK[1], iArrI[0], sb2);
        String string = sb2.toString();
        int[] iArr = map != null ? (int[]) map.get(DecodeHintType.ALLOWED_LENGTHS) : null;
        if (iArr == null) {
            iArr = f73575b;
        }
        int length = string.length();
        int length2 = iArr.length;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            if (i12 >= length2) {
                z10 = false;
                break;
            }
            int i14 = iArr[i12];
            if (length == i14) {
                z10 = true;
                break;
            }
            if (i14 > i13) {
                i13 = i14;
            }
            i12++;
        }
        if (!z10 && length > i13) {
            z10 = true;
        }
        if (!z10) {
            throw FormatException.getFormatInstance();
        }
        float f11 = i11;
        com.google.zxing.j jVar = new com.google.zxing.j(string, null, new com.google.zxing.k[]{new com.google.zxing.k(iArrK[1], f11), new com.google.zxing.k(iArrI[0], f11)}, BarcodeFormat.ITF);
        jVar.h(ResultMetadataType.SYMBOLOGY_IDENTIFIER, "]I0");
        return jVar;
    }
}
