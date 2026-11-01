package ed;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.aztec.decoder.Decoder;
import com.google.zxing.i;
import com.google.zxing.j;
import com.google.zxing.k;
import com.google.zxing.l;
import id.d;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class b implements i {
    /* JADX WARN: Code duplicated, block: B:22:0x0040  */
    /* JADX WARN: Code duplicated, block: B:34:0x0065  */
    /* JADX WARN: Code duplicated, block: B:38:0x0072 A[LOOP:0: B:37:0x0070->B:38:0x0072, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:41:0x0098  */
    /* JADX WARN: Code duplicated, block: B:44:0x00a3  */
    @Override // com.google.zxing.i
    public j a(com.google.zxing.b bVar, Map map) throws NotFoundException, FormatException {
        k[] kVarArrB;
        int iC;
        int iC2;
        k[] kVarArrB2;
        FormatException formatException;
        k[] kVarArr;
        j jVar;
        List listA;
        String strB;
        l lVar;
        fd.a aVar = new fd.a(bVar.a());
        d dVarC = null;
        try {
            a aVarA = aVar.a(false);
            kVarArrB = aVarA.b();
            try {
                iC = aVarA.c();
                try {
                    iC2 = iC;
                    kVarArrB2 = kVarArrB;
                    formatException = null;
                    dVarC = new Decoder().c(aVarA);
                    e = null;
                } catch (FormatException e11) {
                    e = e11;
                    iC2 = iC;
                    kVarArrB2 = kVarArrB;
                    formatException = e;
                    e = null;
                } catch (NotFoundException e12) {
                    e = e12;
                    iC2 = iC;
                    kVarArrB2 = kVarArrB;
                    formatException = null;
                }
            } catch (FormatException e13) {
                e = e13;
                iC = 0;
                iC2 = iC;
                kVarArrB2 = kVarArrB;
                formatException = e;
                e = null;
                if (dVarC == null) {
                    try {
                        a aVarA2 = aVar.a(true);
                        kVarArrB2 = aVarA2.b();
                        iC2 = aVarA2.c();
                        dVarC = new Decoder().c(aVarA2);
                    } catch (FormatException | NotFoundException e14) {
                        if (e != null) {
                            throw e;
                        }
                        if (formatException != null) {
                            throw formatException;
                        }
                        throw e14;
                    }
                }
                kVarArr = kVarArrB2;
                int i11 = iC2;
                if (map != null) {
                    for (k kVar : kVarArr) {
                        lVar.a(kVar);
                    }
                }
                jVar = new j(dVarC.k(), dVarC.g(), dVarC.e(), kVarArr, BarcodeFormat.AZTEC, System.currentTimeMillis());
                listA = dVarC.a();
                if (listA != null) {
                    jVar.h(ResultMetadataType.BYTE_SEGMENTS, listA);
                }
                strB = dVarC.b();
                if (strB != null) {
                    jVar.h(ResultMetadataType.ERROR_CORRECTION_LEVEL, strB);
                }
                jVar.h(ResultMetadataType.ERRORS_CORRECTED, Integer.valueOf(i11 + dVarC.d().intValue()));
                jVar.h(ResultMetadataType.SYMBOLOGY_IDENTIFIER, "]z" + dVarC.j());
                return jVar;
            } catch (NotFoundException e15) {
                e = e15;
                iC = 0;
                iC2 = iC;
                kVarArrB2 = kVarArrB;
                formatException = null;
                if (dVarC == null) {
                    a aVarA3 = aVar.a(true);
                    kVarArrB2 = aVarA3.b();
                    iC2 = aVarA3.c();
                    dVarC = new Decoder().c(aVarA3);
                }
                kVarArr = kVarArrB2;
                int i12 = iC2;
                if (map != null) {
                    while (i < r2) {
                        lVar.a(kVar);
                    }
                }
                jVar = new j(dVarC.k(), dVarC.g(), dVarC.e(), kVarArr, BarcodeFormat.AZTEC, System.currentTimeMillis());
                listA = dVarC.a();
                if (listA != null) {
                    jVar.h(ResultMetadataType.BYTE_SEGMENTS, listA);
                }
                strB = dVarC.b();
                if (strB != null) {
                    jVar.h(ResultMetadataType.ERROR_CORRECTION_LEVEL, strB);
                }
                jVar.h(ResultMetadataType.ERRORS_CORRECTED, Integer.valueOf(i12 + dVarC.d().intValue()));
                jVar.h(ResultMetadataType.SYMBOLOGY_IDENTIFIER, "]z" + dVarC.j());
                return jVar;
            }
        } catch (FormatException e16) {
            e = e16;
            kVarArrB = null;
        } catch (NotFoundException e17) {
            e = e17;
            kVarArrB = null;
        }
        if (dVarC == null) {
            a aVarA4 = aVar.a(true);
            kVarArrB2 = aVarA4.b();
            iC2 = aVarA4.c();
            dVarC = new Decoder().c(aVarA4);
        }
        kVarArr = kVarArrB2;
        int i13 = iC2;
        if (map != null && (lVar = (l) map.get(DecodeHintType.NEED_RESULT_POINT_CALLBACK)) != null) {
            while (i < r2) {
                lVar.a(kVar);
            }
        }
        jVar = new j(dVarC.k(), dVarC.g(), dVarC.e(), kVarArr, BarcodeFormat.AZTEC, System.currentTimeMillis());
        listA = dVarC.a();
        if (listA != null) {
            jVar.h(ResultMetadataType.BYTE_SEGMENTS, listA);
        }
        strB = dVarC.b();
        if (strB != null) {
            jVar.h(ResultMetadataType.ERROR_CORRECTION_LEVEL, strB);
        }
        jVar.h(ResultMetadataType.ERRORS_CORRECTED, Integer.valueOf(i13 + dVarC.d().intValue()));
        jVar.h(ResultMetadataType.SYMBOLOGY_IDENTIFIER, "]z" + dVarC.j());
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
