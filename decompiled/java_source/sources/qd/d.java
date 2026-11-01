package qd;

import com.google.zxing.BarcodeFormat;
import java.util.Collection;
import java.util.Collections;

/* JADX INFO: loaded from: classes5.dex */
public final class d extends q {
    private static void i(int i11, int[] iArr) {
        for (int i12 = 0; i12 < 9; i12++) {
            int i13 = 1;
            if (((1 << (8 - i12)) & i11) != 0) {
                i13 = 2;
            }
            iArr[i12] = i13;
        }
    }

    /* JADX WARN: Code duplicated, block: B:51:0x00d8  */
    private static String j(String str) {
        int length = str.length();
        StringBuilder sb2 = new StringBuilder();
        for (int i11 = 0; i11 < length; i11++) {
            char cCharAt = str.charAt(i11);
            if (cCharAt == 0) {
                sb2.append("%U");
            } else if (cCharAt == ' ') {
                sb2.append(cCharAt);
            } else if (cCharAt == '@') {
                sb2.append("%V");
            } else if (cCharAt == '`') {
                sb2.append("%W");
            } else if (cCharAt == '-' || cCharAt == '.') {
                sb2.append(cCharAt);
            } else if (cCharAt <= 26) {
                sb2.append('$');
                sb2.append((char) (cCharAt + '@'));
            } else if (cCharAt < ' ') {
                sb2.append('%');
                sb2.append((char) (cCharAt + '&'));
            } else if (cCharAt <= ',' || cCharAt == '/' || cCharAt == ':') {
                sb2.append('/');
                sb2.append((char) (cCharAt + ' '));
            } else if (cCharAt <= '9') {
                sb2.append(cCharAt);
            } else if (cCharAt <= '?') {
                sb2.append('%');
                sb2.append((char) (cCharAt + 11));
            } else if (cCharAt <= 'Z') {
                sb2.append(cCharAt);
            } else if (cCharAt <= '_') {
                sb2.append('%');
                sb2.append((char) (cCharAt - 16));
            } else if (cCharAt <= 'z') {
                sb2.append('+');
                sb2.append((char) (cCharAt - ' '));
            } else {
                if (cCharAt > 127) {
                    throw new IllegalArgumentException("Requested content contains a non-encodable character: '" + str.charAt(i11) + "'");
                }
                sb2.append('%');
                sb2.append((char) (cCharAt - '+'));
            }
        }
        return sb2.toString();
    }

    @Override // qd.q
    public boolean[] d(String str) {
        int length = str.length();
        if (length > 80) {
            throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got " + length);
        }
        for (int i11 = 0; i11 < length; i11++) {
            if ("0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%".indexOf(str.charAt(i11)) < 0) {
                str = j(str);
                length = str.length();
                if (length <= 80) {
                    break;
                }
                throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got " + length + " (extended full ASCII mode)");
            }
        }
        int[] iArr = new int[9];
        boolean[] zArr = new boolean[(length * 13) + 25];
        i(148, iArr);
        int iB = q.b(zArr, 0, iArr, true);
        int[] iArr2 = {1};
        int iB2 = iB + q.b(zArr, iB, iArr2, false);
        for (int i12 = 0; i12 < length; i12++) {
            i(c.f73560e["0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%".indexOf(str.charAt(i12))], iArr);
            int iB3 = iB2 + q.b(zArr, iB2, iArr, true);
            iB2 = iB3 + q.b(zArr, iB3, iArr2, false);
        }
        i(148, iArr);
        q.b(zArr, iB2, iArr, true);
        return zArr;
    }

    @Override // qd.q
    protected Collection g() {
        return Collections.singleton(BarcodeFormat.CODE_39);
    }
}
