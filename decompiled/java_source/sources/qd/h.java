package qd;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.FormatException;
import java.util.Collection;
import java.util.Collections;

/* JADX INFO: loaded from: classes5.dex */
public final class h extends x {
    @Override // qd.q
    public boolean[] d(String str) {
        int length = str.length();
        if (length == 12) {
            try {
                str = str + w.r(str);
            } catch (FormatException e11) {
                throw new IllegalArgumentException(e11);
            }
        } else {
            if (length != 13) {
                throw new IllegalArgumentException("Requested contents should be 12 or 13 digits long, but got " + length);
            }
            try {
                if (!w.i(str)) {
                    throw new IllegalArgumentException("Contents do not pass checksum");
                }
            } catch (FormatException unused) {
                throw new IllegalArgumentException("Illegal contents");
            }
        }
        q.c(str);
        int i11 = g.f73570j[Character.digit(str.charAt(0), 10)];
        boolean[] zArr = new boolean[95];
        int iB = q.b(zArr, 0, w.f73598d, true);
        for (int i12 = 1; i12 <= 6; i12++) {
            int iDigit = Character.digit(str.charAt(i12), 10);
            if (((i11 >> (6 - i12)) & 1) == 1) {
                iDigit += 10;
            }
            iB += q.b(zArr, iB, w.f73602h[iDigit], false);
        }
        int iB2 = iB + q.b(zArr, iB, w.f73599e, false);
        for (int i13 = 7; i13 <= 12; i13++) {
            iB2 += q.b(zArr, iB2, w.f73601g[Character.digit(str.charAt(i13), 10)], true);
        }
        q.b(zArr, iB2, w.f73598d, true);
        return zArr;
    }

    @Override // qd.q
    protected Collection g() {
        return Collections.singleton(BarcodeFormat.EAN_13);
    }
}
