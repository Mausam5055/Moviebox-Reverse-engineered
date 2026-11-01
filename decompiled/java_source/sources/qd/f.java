package qd;

import com.google.zxing.BarcodeFormat;
import java.util.Collection;
import java.util.Collections;

/* JADX INFO: loaded from: classes5.dex */
public class f extends q {
    private static int i(boolean[] zArr, int i11, int i12) {
        for (int i13 = 0; i13 < 9; i13++) {
            boolean z10 = true;
            int i14 = i11 + i13;
            if (((1 << (8 - i13)) & i12) == 0) {
                z10 = false;
            }
            zArr[i14] = z10;
        }
        return 9;
    }

    private static int j(String str, int i11) {
        int iIndexOf = 0;
        int i12 = 1;
        for (int length = str.length() - 1; length >= 0; length--) {
            iIndexOf += "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".indexOf(str.charAt(length)) * i12;
            i12++;
            if (i12 > i11) {
                i12 = 1;
            }
        }
        return iIndexOf % 47;
    }

    static String k(String str) {
        int length = str.length();
        StringBuilder sb2 = new StringBuilder(length * 2);
        for (int i11 = 0; i11 < length; i11++) {
            char cCharAt = str.charAt(i11);
            if (cCharAt == 0) {
                sb2.append("bU");
            } else if (cCharAt <= 26) {
                sb2.append('a');
                sb2.append((char) (cCharAt + '@'));
            } else if (cCharAt <= 31) {
                sb2.append('b');
                sb2.append((char) (cCharAt + '&'));
            } else if (cCharAt == ' ' || cCharAt == '$' || cCharAt == '%' || cCharAt == '+') {
                sb2.append(cCharAt);
            } else if (cCharAt <= ',') {
                sb2.append('c');
                sb2.append((char) (cCharAt + ' '));
            } else if (cCharAt <= '9') {
                sb2.append(cCharAt);
            } else if (cCharAt == ':') {
                sb2.append("cZ");
            } else if (cCharAt <= '?') {
                sb2.append('b');
                sb2.append((char) (cCharAt + 11));
            } else if (cCharAt == '@') {
                sb2.append("bV");
            } else if (cCharAt <= 'Z') {
                sb2.append(cCharAt);
            } else if (cCharAt <= '_') {
                sb2.append('b');
                sb2.append((char) (cCharAt - 16));
            } else if (cCharAt == '`') {
                sb2.append("bW");
            } else if (cCharAt <= 'z') {
                sb2.append('d');
                sb2.append((char) (cCharAt - ' '));
            } else {
                if (cCharAt > 127) {
                    throw new IllegalArgumentException("Requested content contains a non-encodable character: '" + cCharAt + "'");
                }
                sb2.append('b');
                sb2.append((char) (cCharAt - '+'));
            }
        }
        return sb2.toString();
    }

    @Override // qd.q
    public boolean[] d(String str) {
        String strK = k(str);
        int length = strK.length();
        if (length > 80) {
            throw new IllegalArgumentException("Requested contents should be less than 80 digits long after converting to extended encoding, but got " + length);
        }
        boolean[] zArr = new boolean[((strK.length() + 4) * 9) + 1];
        int i11 = i(zArr, 0, e.f73567e);
        for (int i12 = 0; i12 < length; i12++) {
            i11 += i(zArr, i11, e.f73566d["0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".indexOf(strK.charAt(i12))]);
        }
        int iJ = j(strK, 20);
        int[] iArr = e.f73566d;
        int i13 = i11 + i(zArr, i11, iArr[iJ]);
        int i14 = i13 + i(zArr, i13, iArr[j(strK + "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".charAt(iJ), 15)]);
        zArr[i14 + i(zArr, i14, e.f73567e)] = true;
        return zArr;
    }

    @Override // qd.q
    protected Collection g() {
        return Collections.singleton(BarcodeFormat.CODE_93);
    }
}
