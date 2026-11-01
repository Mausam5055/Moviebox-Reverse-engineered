package pd;

import com.google.zxing.ChecksumException;
import com.google.zxing.FormatException;
import com.google.zxing.common.reedsolomon.ReedSolomonException;
import id.d;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final kd.c f72436a = new kd.c(kd.a.f66768o);

    private int a(byte[] bArr, int i11, int i12, int i13, int i14) throws ChecksumException {
        int i15 = i12 + i13;
        int i16 = i14 == 0 ? 1 : 2;
        int[] iArr = new int[i15 / i16];
        for (int i17 = 0; i17 < i15; i17++) {
            if (i14 == 0 || i17 % 2 == i14 - 1) {
                iArr[i17 / i16] = bArr[i17 + i11] & 255;
            }
        }
        try {
            int iA = this.f72436a.a(iArr, i13 / i16);
            for (int i18 = 0; i18 < i12; i18++) {
                if (i14 == 0 || i18 % 2 == i14 - 1) {
                    bArr[i18 + i11] = (byte) iArr[i18 / i16];
                }
            }
            return iA;
        } catch (ReedSolomonException unused) {
            throw ChecksumException.getChecksumInstance();
        }
    }

    public d b(id.b bVar, Map map) throws ChecksumException, FormatException {
        int iA;
        byte[] bArr;
        byte[] bArrA = new a(bVar).a();
        int iA2 = a(bArrA, 0, 10, 10, 0);
        int i11 = bArrA[0] & 15;
        if (i11 == 2 || i11 == 3 || i11 == 4) {
            iA = iA2 + a(bArrA, 20, 84, 40, 1) + a(bArrA, 20, 84, 40, 2);
            bArr = new byte[94];
        } else {
            if (i11 != 5) {
                throw FormatException.getFormatInstance();
            }
            iA = iA2 + a(bArrA, 20, 68, 56, 1) + a(bArrA, 20, 68, 56, 2);
            bArr = new byte[78];
        }
        System.arraycopy(bArrA, 0, bArr, 0, 10);
        System.arraycopy(bArrA, 20, bArr, 10, bArr.length - 10);
        d dVarA = b.a(bArr, i11);
        dVarA.n(Integer.valueOf(iA));
        return dVarA;
    }
}
