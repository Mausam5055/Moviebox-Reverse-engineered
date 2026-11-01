package com.google.zxing.qrcode.decoder;

import com.google.zxing.ChecksumException;
import com.google.zxing.FormatException;
import com.google.zxing.common.reedsolomon.ReedSolomonException;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final kd.c f32989a = new kd.c(kd.a.f66765l);

    private int a(byte[] bArr, int i11) throws ChecksumException {
        int length = bArr.length;
        int[] iArr = new int[length];
        for (int i12 = 0; i12 < length; i12++) {
            iArr[i12] = bArr[i12] & 255;
        }
        try {
            int iA = this.f32989a.a(iArr, bArr.length - i11);
            for (int i13 = 0; i13 < i11; i13++) {
                bArr[i13] = (byte) iArr[i13];
            }
            return iA;
        } catch (ReedSolomonException unused) {
            throw ChecksumException.getChecksumInstance();
        }
    }

    private id.d b(a aVar, Map map) throws FormatException {
        g gVarE = aVar.e();
        ErrorCorrectionLevel errorCorrectionLevelD = aVar.d().d();
        b[] bVarArrB = b.b(aVar.c(), gVarE, errorCorrectionLevelD);
        int iC = 0;
        for (b bVar : bVarArrB) {
            iC += bVar.c();
        }
        byte[] bArr = new byte[iC];
        int iA = 0;
        int i11 = 0;
        for (b bVar2 : bVarArrB) {
            byte[] bArrA = bVar2.a();
            int iC2 = bVar2.c();
            iA += a(bArrA, iC2);
            int i12 = 0;
            while (i12 < iC2) {
                bArr[i11] = bArrA[i12];
                i12++;
                i11++;
            }
        }
        id.d dVarA = c.a(bArr, gVarE, errorCorrectionLevelD, map);
        dVarA.n(Integer.valueOf(iA));
        return dVarA;
    }

    public id.d c(id.b bVar, Map map) throws ChecksumException, FormatException {
        ChecksumException e11;
        a aVar = new a(bVar);
        FormatException formatException = null;
        try {
            return b(aVar, map);
        } catch (ChecksumException e12) {
            e11 = e12;
            try {
                aVar.f();
                aVar.g(true);
                aVar.e();
                aVar.d();
                aVar.b();
                id.d dVarB = b(aVar, map);
                dVarB.p(new f(true));
                return dVarB;
            } catch (ChecksumException | FormatException unused) {
                if (formatException != null) {
                    throw formatException;
                }
                throw e11;
            }
        } catch (FormatException e13) {
            e11 = null;
            formatException = e13;
            aVar.f();
            aVar.g(true);
            aVar.e();
            aVar.d();
            aVar.b();
            id.d dVarB2 = b(aVar, map);
            dVarB2.p(new f(true));
            return dVarB2;
        }
    }
}
