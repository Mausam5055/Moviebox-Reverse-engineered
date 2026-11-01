package qd;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.FormatException;
import java.util.Collection;
import java.util.Collections;

/* JADX INFO: loaded from: classes5.dex */
public final class z extends x {
    @Override // qd.q
    public boolean[] d(String str) {
        int length = str.length();
        if (length == 7) {
            try {
                str = str + w.r(y.s(str));
            } catch (FormatException e11) {
                throw new IllegalArgumentException(e11);
            }
        } else {
            if (length != 8) {
                throw new IllegalArgumentException("Requested contents should be 7 or 8 digits long, but got " + length);
            }
            try {
                if (!w.i(y.s(str))) {
                    throw new IllegalArgumentException("Contents do not pass checksum");
                }
            } catch (FormatException unused) {
                throw new IllegalArgumentException("Illegal contents");
            }
        }
        q.c(str);
        int iDigit = Character.digit(str.charAt(0), 10);
        if (iDigit != 0 && iDigit != 1) {
            throw new IllegalArgumentException("Number system must be 0 or 1");
        }
        int i11 = y.f73607k[iDigit][Character.digit(str.charAt(7), 10)];
        boolean[] zArr = new boolean[51];
        int iB = q.b(zArr, 0, w.f73598d, true);
        for (int i12 = 1; i12 <= 6; i12++) {
            int iDigit2 = Character.digit(str.charAt(i12), 10);
            if (((i11 >> (6 - i12)) & 1) == 1) {
                iDigit2 += 10;
            }
            iB += q.b(zArr, iB, w.f73602h[iDigit2], false);
        }
        q.b(zArr, iB, w.f73600f, false);
        return zArr;
    }

    @Override // qd.q
    protected Collection g() {
        return Collections.singleton(BarcodeFormat.UPC_E);
    }
}
