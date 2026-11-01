package qd;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.FormatException;
import java.util.Collection;
import java.util.Collections;

/* JADX INFO: loaded from: classes5.dex */
public final class j extends x {
    @Override // qd.q
    public boolean[] d(String str) {
        int length = str.length();
        if (length == 7) {
            try {
                str = str + w.r(str);
            } catch (FormatException e11) {
                throw new IllegalArgumentException(e11);
            }
        } else {
            if (length != 8) {
                throw new IllegalArgumentException("Requested contents should be 7 or 8 digits long, but got " + length);
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
        boolean[] zArr = new boolean[67];
        int iB = q.b(zArr, 0, w.f73598d, true);
        for (int i11 = 0; i11 <= 3; i11++) {
            iB += q.b(zArr, iB, w.f73601g[Character.digit(str.charAt(i11), 10)], false);
        }
        int iB2 = iB + q.b(zArr, iB, w.f73599e, false);
        for (int i12 = 4; i12 <= 7; i12++) {
            iB2 += q.b(zArr, iB2, w.f73601g[Character.digit(str.charAt(i12), 10)], true);
        }
        q.b(zArr, iB2, w.f73598d, true);
        return zArr;
    }

    @Override // qd.q
    protected Collection g() {
        return Collections.singleton(BarcodeFormat.EAN_8);
    }
}
