package xd;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.m;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class b implements m {
    private static id.b b(yd.b bVar, int i11, int i12, int i13) {
        yd.a aVarA = bVar.a();
        if (aVarA == null) {
            throw new IllegalStateException();
        }
        int iE = aVarA.e();
        int iD = aVarA.d();
        int i14 = i13 * 2;
        int i15 = iE + i14;
        int i16 = i14 + iD;
        int iMax = Math.max(i11, i15);
        int iMax2 = Math.max(i12, i16);
        int iMin = Math.min(iMax / i15, iMax2 / i16);
        int i17 = (iMax - (iE * iMin)) / 2;
        int i18 = (iMax2 - (iD * iMin)) / 2;
        id.b bVar2 = new id.b(iMax, iMax2);
        int i19 = 0;
        while (i19 < iD) {
            int i20 = 0;
            int i21 = i17;
            while (i20 < iE) {
                if (aVarA.b(i20, i19) == 1) {
                    bVar2.s(i21, i18, iMin, iMin);
                }
                i20++;
                i21 += iMin;
            }
            i19++;
            i18 += iMin;
        }
        return bVar2;
    }

    @Override // com.google.zxing.m
    public id.b a(String str, BarcodeFormat barcodeFormat, int i11, int i12, Map map) {
        if (str.isEmpty()) {
            throw new IllegalArgumentException("Found empty contents");
        }
        if (barcodeFormat != BarcodeFormat.QR_CODE) {
            throw new IllegalArgumentException("Can only encode QR_CODE, but got " + barcodeFormat);
        }
        if (i11 < 0 || i12 < 0) {
            throw new IllegalArgumentException("Requested dimensions are too small: " + i11 + 'x' + i12);
        }
        ErrorCorrectionLevel errorCorrectionLevelValueOf = ErrorCorrectionLevel.L;
        int i13 = 4;
        if (map != null) {
            EncodeHintType encodeHintType = EncodeHintType.ERROR_CORRECTION;
            if (map.containsKey(encodeHintType)) {
                errorCorrectionLevelValueOf = ErrorCorrectionLevel.valueOf(map.get(encodeHintType).toString());
            }
            EncodeHintType encodeHintType2 = EncodeHintType.MARGIN;
            if (map.containsKey(encodeHintType2)) {
                i13 = Integer.parseInt(map.get(encodeHintType2).toString());
            }
        }
        return b(com.google.zxing.qrcode.encoder.b.n(str, errorCorrectionLevelValueOf, map), i11, i12, i13);
    }
}
