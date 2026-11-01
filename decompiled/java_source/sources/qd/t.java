package qd;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultMetadataType;
import java.util.EnumMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
final class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int[] f73590a = new int[4];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final StringBuilder f73591b = new StringBuilder();

    t() {
    }

    private int a(id.a aVar, int[] iArr, StringBuilder sb2) throws NotFoundException {
        int[] iArr2 = this.f73590a;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int iM = aVar.m();
        int iL = iArr[1];
        int i11 = 0;
        for (int i12 = 0; i12 < 2 && iL < iM; i12++) {
            int iJ = w.j(aVar, iArr2, iL, w.f73602h);
            sb2.append((char) ((iJ % 10) + 48));
            for (int i13 : iArr2) {
                iL += i13;
            }
            if (iJ >= 10) {
                i11 |= 1 << (1 - i12);
            }
            if (i12 != 1) {
                iL = aVar.l(aVar.k(iL));
            }
        }
        if (sb2.length() != 2) {
            throw NotFoundException.getNotFoundInstance();
        }
        if (Integer.parseInt(sb2.toString()) % 4 == i11) {
            return iL;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static Map c(String str) {
        if (str.length() != 2) {
            return null;
        }
        EnumMap enumMap = new EnumMap(ResultMetadataType.class);
        enumMap.put(ResultMetadataType.ISSUE_NUMBER, Integer.valueOf(str));
        return enumMap;
    }

    com.google.zxing.j b(int i11, id.a aVar, int[] iArr) throws NotFoundException {
        StringBuilder sb2 = this.f73591b;
        sb2.setLength(0);
        int iA = a(aVar, iArr, sb2);
        String string = sb2.toString();
        Map mapC = c(string);
        float f11 = i11;
        com.google.zxing.j jVar = new com.google.zxing.j(string, null, new com.google.zxing.k[]{new com.google.zxing.k((iArr[0] + iArr[1]) / 2.0f, f11), new com.google.zxing.k(iA, f11)}, BarcodeFormat.UPC_EAN_EXTENSION);
        if (mapC != null) {
            jVar.g(mapC);
        }
        return jVar;
    }
}
