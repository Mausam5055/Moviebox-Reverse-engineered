package ld;

import android.support.v4.media.session.c;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.datamatrix.encoder.MinimalEncoder;
import com.google.zxing.datamatrix.encoder.SymbolShapeHint;
import com.google.zxing.datamatrix.encoder.g;
import com.google.zxing.m;
import java.nio.charset.Charset;
import java.util.Map;
import nd.d;

/* JADX INFO: loaded from: classes5.dex */
public final class b implements m {
    private static id.b b(yd.a aVar, int i11, int i12) {
        id.b bVar;
        int iE = aVar.e();
        int iD = aVar.d();
        int iMax = Math.max(i11, iE);
        int iMax2 = Math.max(i12, iD);
        int iMin = Math.min(iMax / iE, iMax2 / iD);
        int i13 = (iMax - (iE * iMin)) / 2;
        int i14 = (iMax2 - (iD * iMin)) / 2;
        if (i12 < iD || i11 < iE) {
            bVar = new id.b(iE, iD);
            i13 = 0;
            i14 = 0;
        } else {
            bVar = new id.b(i11, i12);
        }
        bVar.b();
        int i15 = 0;
        while (i15 < iD) {
            int i16 = i13;
            int i17 = 0;
            while (i17 < iE) {
                if (aVar.b(i17, i15) == 1) {
                    bVar.s(i16, i14, iMin, iMin);
                }
                i17++;
                i16 += iMin;
            }
            i15++;
            i14 += iMin;
        }
        return bVar;
    }

    private static id.b c(nd.b bVar, d dVar, int i11, int i12) {
        int iH = dVar.h();
        int iG = dVar.g();
        yd.a aVar = new yd.a(dVar.j(), dVar.i());
        int i13 = 0;
        for (int i14 = 0; i14 < iG; i14++) {
            if (i14 % dVar.f70318e == 0) {
                int i15 = 0;
                for (int i16 = 0; i16 < dVar.j(); i16++) {
                    aVar.g(i15, i13, i16 % 2 == 0);
                    i15++;
                }
                i13++;
            }
            int i17 = 0;
            for (int i18 = 0; i18 < iH; i18++) {
                if (i18 % dVar.f70317d == 0) {
                    aVar.g(i17, i13, true);
                    i17++;
                }
                aVar.g(i17, i13, bVar.e(i18, i14));
                int i19 = i17 + 1;
                int i20 = dVar.f70317d;
                if (i18 % i20 == i20 - 1) {
                    aVar.g(i19, i13, i14 % 2 == 0);
                    i17 += 2;
                } else {
                    i17 = i19;
                }
            }
            int i21 = i13 + 1;
            int i22 = dVar.f70318e;
            if (i14 % i22 == i22 - 1) {
                int i23 = 0;
                for (int i24 = 0; i24 < dVar.j(); i24++) {
                    aVar.g(i23, i21, true);
                    i23++;
                }
                i13 += 2;
            } else {
                i13 = i21;
            }
        }
        return b(aVar, i11, i12);
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0082 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:34:0x0084  */
    @Override // com.google.zxing.m
    public id.b a(String str, BarcodeFormat barcodeFormat, int i11, int i12, Map map) {
        String strB;
        EncodeHintType encodeHintType;
        if (str.isEmpty()) {
            throw new IllegalArgumentException("Found empty contents");
        }
        if (barcodeFormat != BarcodeFormat.DATA_MATRIX) {
            throw new IllegalArgumentException("Can only encode DATA_MATRIX, but got " + barcodeFormat);
        }
        if (i11 < 0 || i12 < 0) {
            throw new IllegalArgumentException("Requested dimensions can't be negative: " + i11 + 'x' + i12);
        }
        SymbolShapeHint symbolShapeHint = SymbolShapeHint.FORCE_NONE;
        if (map != null) {
            SymbolShapeHint symbolShapeHint2 = (SymbolShapeHint) map.get(EncodeHintType.DATA_MATRIX_SHAPE);
            if (symbolShapeHint2 != null) {
                symbolShapeHint = symbolShapeHint2;
            }
            c.a(map.get(EncodeHintType.MIN_SIZE));
            c.a(map.get(EncodeHintType.MAX_SIZE));
        }
        boolean z10 = false;
        if (map != null) {
            EncodeHintType encodeHintType2 = EncodeHintType.DATA_MATRIX_COMPACT;
            if (map.containsKey(encodeHintType2) && Boolean.parseBoolean(map.get(encodeHintType2).toString())) {
                EncodeHintType encodeHintType3 = EncodeHintType.GS1_FORMAT;
                if (map.containsKey(encodeHintType3) && Boolean.parseBoolean(map.get(encodeHintType3).toString())) {
                    z10 = true;
                }
                EncodeHintType encodeHintType4 = EncodeHintType.CHARACTER_SET;
                strB = MinimalEncoder.h(str, map.containsKey(encodeHintType4) ? Charset.forName(map.get(encodeHintType4).toString()) : null, z10 ? 29 : -1, symbolShapeHint);
            } else {
                if (map != null) {
                    encodeHintType = EncodeHintType.FORCE_C40;
                    if (map.containsKey(encodeHintType) && Boolean.parseBoolean(map.get(encodeHintType).toString())) {
                        z10 = true;
                    }
                }
                strB = g.b(str, symbolShapeHint, null, null, z10);
            }
        } else {
            if (map != null) {
                encodeHintType = EncodeHintType.FORCE_C40;
                if (map.containsKey(encodeHintType)) {
                    z10 = true;
                }
            }
            strB = g.b(str, symbolShapeHint, null, null, z10);
        }
        d dVarL = d.l(strB.length(), symbolShapeHint, null, null, true);
        nd.b bVar = new nd.b(nd.c.b(strB, dVarL), dVarL.h(), dVarL.g());
        bVar.h();
        return c(bVar, dVarL, i11, i12);
    }
}
