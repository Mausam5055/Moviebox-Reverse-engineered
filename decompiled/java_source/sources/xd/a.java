package xd;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.i;
import com.google.zxing.j;
import com.google.zxing.k;
import com.google.zxing.qrcode.decoder.d;
import com.google.zxing.qrcode.detector.c;
import id.f;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class a implements i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final k[] f78197b = new k[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d f78198a = new d();

    private static id.b c(id.b bVar) throws NotFoundException {
        int[] iArrM = bVar.m();
        int[] iArrI = bVar.i();
        if (iArrM == null || iArrI == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        float fD = d(iArrM, bVar);
        int i11 = iArrM[1];
        int i12 = iArrI[1];
        int i13 = iArrM[0];
        int i14 = iArrI[0];
        if (i13 >= i14 || i11 >= i12) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i15 = i12 - i11;
        if (i15 != i14 - i13 && (i14 = i13 + i15) >= bVar.n()) {
            throw NotFoundException.getNotFoundInstance();
        }
        int iRound = Math.round(((i14 - i13) + 1) / fD);
        int iRound2 = Math.round((i15 + 1) / fD);
        if (iRound <= 0 || iRound2 <= 0) {
            throw NotFoundException.getNotFoundInstance();
        }
        if (iRound2 != iRound) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i16 = (int) (fD / 2.0f);
        int i17 = i11 + i16;
        int i18 = i13 + i16;
        int i19 = (((int) ((iRound - 1) * fD)) + i18) - i14;
        if (i19 > 0) {
            if (i19 > i16) {
                throw NotFoundException.getNotFoundInstance();
            }
            i18 -= i19;
        }
        int i20 = (((int) ((iRound2 - 1) * fD)) + i17) - i12;
        if (i20 > 0) {
            if (i20 > i16) {
                throw NotFoundException.getNotFoundInstance();
            }
            i17 -= i20;
        }
        id.b bVar2 = new id.b(iRound, iRound2);
        for (int i21 = 0; i21 < iRound2; i21++) {
            int i22 = ((int) (i21 * fD)) + i17;
            for (int i23 = 0; i23 < iRound; i23++) {
                if (bVar.g(((int) (i23 * fD)) + i18, i22)) {
                    bVar2.r(i23, i21);
                }
            }
        }
        return bVar2;
    }

    private static float d(int[] iArr, id.b bVar) throws NotFoundException {
        int iK = bVar.k();
        int iN = bVar.n();
        int i11 = iArr[0];
        boolean z10 = true;
        int i12 = iArr[1];
        int i13 = 0;
        while (i11 < iN && i12 < iK) {
            if (z10 != bVar.g(i11, i12)) {
                i13++;
                if (i13 == 5) {
                    break;
                }
                z10 = !z10;
            }
            i11++;
            i12++;
        }
        if (i11 == iN || i12 == iK) {
            throw NotFoundException.getNotFoundInstance();
        }
        return (i11 - iArr[0]) / 7.0f;
    }

    @Override // com.google.zxing.i
    public final j a(com.google.zxing.b bVar, Map map) throws NotFoundException, ChecksumException, FormatException {
        k[] kVarArrB;
        id.d dVarC;
        if (map == null || !map.containsKey(DecodeHintType.PURE_BARCODE)) {
            f fVarE = new c(bVar.a()).e(map);
            id.d dVarC2 = this.f78198a.c(fVarE.a(), map);
            kVarArrB = fVarE.b();
            dVarC = dVarC2;
        } else {
            dVarC = this.f78198a.c(c(bVar.a()), map);
            kVarArrB = f78197b;
        }
        if (dVarC.f() instanceof com.google.zxing.qrcode.decoder.f) {
            ((com.google.zxing.qrcode.decoder.f) dVarC.f()).a(kVarArrB);
        }
        j jVar = new j(dVarC.k(), dVarC.g(), kVarArrB, BarcodeFormat.QR_CODE);
        List listA = dVarC.a();
        if (listA != null) {
            jVar.h(ResultMetadataType.BYTE_SEGMENTS, listA);
        }
        String strB = dVarC.b();
        if (strB != null) {
            jVar.h(ResultMetadataType.ERROR_CORRECTION_LEVEL, strB);
        }
        if (dVarC.l()) {
            jVar.h(ResultMetadataType.STRUCTURED_APPEND_SEQUENCE, Integer.valueOf(dVarC.i()));
            jVar.h(ResultMetadataType.STRUCTURED_APPEND_PARITY, Integer.valueOf(dVarC.h()));
        }
        jVar.h(ResultMetadataType.ERRORS_CORRECTED, dVarC.d());
        jVar.h(ResultMetadataType.SYMBOLOGY_IDENTIFIER, "]Q" + dVarC.j());
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
