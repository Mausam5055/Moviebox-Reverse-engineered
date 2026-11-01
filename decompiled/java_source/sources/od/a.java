package od;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.ChecksumException;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.i;
import com.google.zxing.j;
import com.google.zxing.k;
import id.b;
import id.d;
import java.util.Map;
import pd.c;

/* JADX INFO: loaded from: classes5.dex */
public final class a implements i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final k[] f70963b = new k[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f70964a = new c();

    private static b c(b bVar) throws NotFoundException {
        int[] iArrJ = bVar.j();
        if (iArrJ == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i11 = iArrJ[0];
        int i12 = iArrJ[1];
        int i13 = iArrJ[2];
        int i14 = iArrJ[3];
        b bVar2 = new b(30, 33);
        for (int i15 = 0; i15 < 33; i15++) {
            int iMin = Math.min((((i15 * i14) + (i14 / 2)) / 33) + i12, i14 - 1);
            for (int i16 = 0; i16 < 30; i16++) {
                if (bVar.g(Math.min((((i16 * i13) + (i13 / 2)) + (((i15 & 1) * i13) / 2)) / 30, i13 - 1) + i11, iMin)) {
                    bVar2.r(i16, i15);
                }
            }
        }
        return bVar2;
    }

    @Override // com.google.zxing.i
    public j a(com.google.zxing.b bVar, Map map) throws NotFoundException, ChecksumException, FormatException {
        d dVarB = this.f70964a.b(c(bVar.a()), map);
        j jVar = new j(dVarB.k(), dVarB.g(), f70963b, BarcodeFormat.MAXICODE);
        jVar.h(ResultMetadataType.ERRORS_CORRECTED, dVarB.d());
        String strB = dVarB.b();
        if (strB != null) {
            jVar.h(ResultMetadataType.ERROR_CORRECTION_LEVEL, strB);
        }
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
