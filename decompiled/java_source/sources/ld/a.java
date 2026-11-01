package ld;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.datamatrix.decoder.c;
import com.google.zxing.i;
import com.google.zxing.j;
import com.google.zxing.k;
import id.d;
import id.f;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class a implements i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final k[] f68806b = new k[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f68807a = new c();

    private static id.b c(id.b bVar) throws NotFoundException {
        int[] iArrM = bVar.m();
        int[] iArrI = bVar.i();
        if (iArrM == null || iArrI == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        int iD = d(iArrM, bVar);
        int i11 = iArrM[1];
        int i12 = iArrI[1];
        int i13 = iArrM[0];
        int i14 = ((iArrI[0] - i13) + 1) / iD;
        int i15 = ((i12 - i11) + 1) / iD;
        if (i14 <= 0 || i15 <= 0) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i16 = iD / 2;
        int i17 = i11 + i16;
        int i18 = i13 + i16;
        id.b bVar2 = new id.b(i14, i15);
        for (int i19 = 0; i19 < i15; i19++) {
            int i20 = (i19 * iD) + i17;
            for (int i21 = 0; i21 < i14; i21++) {
                if (bVar.g((i21 * iD) + i18, i20)) {
                    bVar2.r(i21, i19);
                }
            }
        }
        return bVar2;
    }

    private static int d(int[] iArr, id.b bVar) throws NotFoundException {
        int iN = bVar.n();
        int i11 = iArr[0];
        int i12 = iArr[1];
        while (i11 < iN && bVar.g(i11, i12)) {
            i11++;
        }
        if (i11 == iN) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i13 = i11 - iArr[0];
        if (i13 != 0) {
            return i13;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    @Override // com.google.zxing.i
    public j a(com.google.zxing.b bVar, Map map) throws NotFoundException, FormatException {
        k[] kVarArrB;
        d dVarB;
        if (map == null || !map.containsKey(DecodeHintType.PURE_BARCODE)) {
            f fVarB = new md.a(bVar.a()).b();
            d dVarB2 = this.f68807a.b(fVarB.a());
            kVarArrB = fVarB.b();
            dVarB = dVarB2;
        } else {
            dVarB = this.f68807a.b(c(bVar.a()));
            kVarArrB = f68806b;
        }
        j jVar = new j(dVarB.k(), dVarB.g(), kVarArrB, BarcodeFormat.DATA_MATRIX);
        List listA = dVarB.a();
        if (listA != null) {
            jVar.h(ResultMetadataType.BYTE_SEGMENTS, listA);
        }
        String strB = dVarB.b();
        if (strB != null) {
            jVar.h(ResultMetadataType.ERROR_CORRECTION_LEVEL, strB);
        }
        jVar.h(ResultMetadataType.ERRORS_CORRECTED, dVarB.d());
        jVar.h(ResultMetadataType.SYMBOLOGY_IDENTIFIER, "]d" + dVarB.j());
        return jVar;
    }

    @Override // com.google.zxing.i
    public j b(com.google.zxing.b bVar) {
        return a(bVar, null);
    }

    @Override // com.google.zxing.i
    public void reset() {
    }
}
