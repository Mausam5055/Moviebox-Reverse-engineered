package ed;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.m;
import java.nio.charset.Charset;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class c implements m {
    private static id.b b(String str, BarcodeFormat barcodeFormat, int i11, int i12, Charset charset, int i13, int i14) {
        if (barcodeFormat == BarcodeFormat.AZTEC) {
            return c(com.google.zxing.aztec.encoder.c.d(str, i13, i14, charset), i11, i12);
        }
        throw new IllegalArgumentException("Can only encode AZTEC, but got " + barcodeFormat);
    }

    private static id.b c(com.google.zxing.aztec.encoder.a aVar, int i11, int i12) {
        id.b bVarA = aVar.a();
        if (bVarA == null) {
            throw new IllegalStateException();
        }
        int iN = bVarA.n();
        int iK = bVarA.k();
        int iMax = Math.max(i11, iN);
        int iMax2 = Math.max(i12, iK);
        int iMin = Math.min(iMax / iN, iMax2 / iK);
        int i13 = (iMax - (iN * iMin)) / 2;
        int i14 = (iMax2 - (iK * iMin)) / 2;
        id.b bVar = new id.b(iMax, iMax2);
        int i15 = 0;
        while (i15 < iK) {
            int i16 = 0;
            int i17 = i13;
            while (i16 < iN) {
                if (bVarA.g(i16, i15)) {
                    bVar.s(i17, i14, iMin, iMin);
                }
                i16++;
                i17 += iMin;
            }
            i15++;
            i14 += iMin;
        }
        return bVar;
    }

    @Override // com.google.zxing.m
    public id.b a(String str, BarcodeFormat barcodeFormat, int i11, int i12, Map map) {
        Charset charsetForName = null;
        int i13 = 33;
        int i14 = 0;
        if (map != null) {
            EncodeHintType encodeHintType = EncodeHintType.CHARACTER_SET;
            charsetForName = map.containsKey(encodeHintType) ? Charset.forName(map.get(encodeHintType).toString()) : null;
            EncodeHintType encodeHintType2 = EncodeHintType.ERROR_CORRECTION;
            i13 = map.containsKey(encodeHintType2) ? Integer.parseInt(map.get(encodeHintType2).toString()) : 33;
            EncodeHintType encodeHintType3 = EncodeHintType.AZTEC_LAYERS;
            if (map.containsKey(encodeHintType3)) {
                i14 = Integer.parseInt(map.get(encodeHintType3).toString());
            }
        }
        return b(str, barcodeFormat, i11, i12, charsetForName, i13, i14);
    }
}
