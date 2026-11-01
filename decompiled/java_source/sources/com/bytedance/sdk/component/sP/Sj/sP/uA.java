package com.bytedance.sdk.component.sP.Sj.sP;

import java.net.IDN;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public final class uA {
    public static final Charset Sj = Charset.forName("UTF-8");

    public static int Sj(char c11) {
        if (c11 >= '0' && c11 <= '9') {
            return c11 - '0';
        }
        if (c11 >= 'a' && c11 <= 'f') {
            return c11 - 'W';
        }
        if (c11 < 'A' || c11 > 'F') {
            return -1;
        }
        return c11 - '7';
    }

    public static int Sj(String str, int i11, int i12) {
        while (i11 < i12) {
            char cCharAt = str.charAt(i11);
            if (cCharAt != '\t' && cCharAt != '\n' && cCharAt != '\f' && cCharAt != '\r' && cCharAt != ' ') {
                return i11;
            }
            i11++;
        }
        return i12;
    }

    public static int Sj(String str, int i11, int i12, char c11) {
        while (i11 < i12) {
            if (str.charAt(i11) == c11) {
                return i11;
            }
            i11++;
        }
        return i12;
    }

    public static int Sj(String str, int i11, int i12, String str2) {
        while (i11 < i12) {
            if (str2.indexOf(str.charAt(i11)) != -1) {
                return i11;
            }
            i11++;
        }
        return i12;
    }

    public static String Sj(String str) {
        if (!str.contains(":")) {
            try {
                String lowerCase = IDN.toASCII(str).toLowerCase(Locale.US);
                if (lowerCase.isEmpty() || sP(lowerCase)) {
                    return null;
                }
                return lowerCase;
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }
        InetAddress inetAddressTKC = (str.startsWith("[") && str.endsWith("]")) ? TKC(str, 1, str.length() - 1) : TKC(str, 0, str.length());
        if (inetAddressTKC == null) {
            return null;
        }
        byte[] address = inetAddressTKC.getAddress();
        if (address.length == 16) {
            return Sj(address);
        }
        throw new AssertionError("Invalid IPv6 address: '" + str + "'");
    }

    private static String Sj(byte[] bArr) {
        int i11 = -1;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        while (i13 < bArr.length) {
            int i15 = i13;
            while (i15 < 16 && bArr[i15] == 0 && bArr[i15 + 1] == 0) {
                i15 += 2;
            }
            int i16 = i15 - i13;
            if (i16 > i14 && i16 >= 4) {
                i11 = i13;
                i14 = i16;
            }
            i13 = i15 + 2;
        }
        Sj sj2 = new Sj();
        while (i12 < bArr.length) {
            if (i12 == i11) {
                sj2.sP(58);
                i12 += i14;
                if (i12 == 16) {
                    sj2.sP(58);
                }
            } else {
                if (i12 > 0) {
                    sj2.sP(58);
                }
                sj2.sP(((bArr[i12] & 255) << 8) | (bArr[i12 + 1] & 255));
                i12 += 2;
            }
        }
        return sj2.TKC();
    }

    public static void Sj(long j11, long j12, long j13) {
        if ((j12 | j13) < 0 || j12 > j11 || j11 - j12 < j13) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    private static boolean Sj(String str, int i11, int i12, byte[] bArr, int i13) {
        int i14 = i13;
        while (i11 < i12) {
            if (i14 == bArr.length) {
                return false;
            }
            if (i14 != i13) {
                if (str.charAt(i11) != '.') {
                    return false;
                }
                i11++;
            }
            int i15 = i11;
            int i16 = 0;
            while (i15 < i12) {
                char cCharAt = str.charAt(i15);
                if (cCharAt < '0' || cCharAt > '9') {
                    break;
                }
                if ((i16 == 0 && i11 != i15) || (i16 = ((i16 * 10) + cCharAt) - 48) > 255) {
                    return false;
                }
                i15++;
            }
            if (i15 - i11 == 0) {
                return false;
            }
            bArr[i14] = (byte) i16;
            i14++;
            i11 = i15;
        }
        return i14 == i13 + 4;
    }

    public static boolean Sj(byte[] bArr, int i11, byte[] bArr2, int i12, int i13) {
        for (int i14 = 0; i14 < i13; i14++) {
            if (bArr[i14 + i11] != bArr2[i14 + i12]) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x004f  */
    /* JADX WARN: Code duplicated, block: B:33:0x0059 A[LOOP:1: B:30:0x004d->B:33:0x0059, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:58:0x005f A[EDGE_INSN: B:58:0x005f->B:34:0x005f BREAK  A[LOOP:1: B:30:0x004d->B:33:0x0059], SYNTHETIC] */
    private static InetAddress TKC(String str, int i11, int i12) {
        int i13;
        int i14;
        int iSj;
        byte[] bArr = new byte[16];
        int i15 = 0;
        int i16 = -1;
        int i17 = -1;
        while (i11 < i12) {
            if (i15 == 16) {
                return null;
            }
            int i18 = i11 + 2;
            if (i18 <= i12 && str.regionMatches(i11, "::", 0, 2)) {
                if (i16 != -1) {
                    return null;
                }
                i15 += 2;
                i16 = i15;
                if (i18 == i12) {
                    break;
                }
                i17 = i18;
                i13 = 0;
                i11 = i17;
                while (i11 < i12) {
                    iSj = Sj(str.charAt(i11));
                    if (iSj != -1) {
                        break;
                        break;
                    }
                    i13 = (i13 << 4) + iSj;
                    i11++;
                }
                i14 = i11 - i17;
                if (i14 != 0) {
                }
                return null;
            }
            if (i15 != 0) {
                if (!str.regionMatches(i11, ":", 0, 1)) {
                    if (!str.regionMatches(i11, ".", 0, 1) || !Sj(str, i17, i12, bArr, i15 - 2)) {
                        return null;
                    }
                    i15 += 2;
                    break;
                }
                i11++;
            }
            i17 = i11;
            i13 = 0;
            i11 = i17;
            while (i11 < i12) {
                iSj = Sj(str.charAt(i11));
                if (iSj != -1) {
                    break;
                }
                i13 = (i13 << 4) + iSj;
                i11++;
            }
            i14 = i11 - i17;
            if (i14 != 0 || i14 > 4) {
                return null;
            }
            int i19 = i15 + 1;
            bArr[i15] = (byte) ((i13 >>> 8) & 255);
            i15 += 2;
            bArr[i19] = (byte) (i13 & 255);
        }
        if (i15 != 16) {
            if (i16 == -1) {
                return null;
            }
            int i20 = i15 - i16;
            System.arraycopy(bArr, i16, bArr, 16 - i20, i20);
            Arrays.fill(bArr, i16, (16 - i15) + i16, (byte) 0);
        }
        try {
            return InetAddress.getByAddress(bArr);
        } catch (UnknownHostException unused) {
            throw new AssertionError();
        }
    }

    public static int sP(String str, int i11, int i12) {
        for (int i13 = i12 - 1; i13 >= i11; i13--) {
            char cCharAt = str.charAt(i13);
            if (cCharAt != '\t' && cCharAt != '\n' && cCharAt != '\f' && cCharAt != '\r' && cCharAt != ' ') {
                return i13 + 1;
            }
        }
        return i11;
    }

    private static boolean sP(String str) {
        for (int i11 = 0; i11 < str.length(); i11++) {
            char cCharAt = str.charAt(i11);
            if (cCharAt <= 31 || cCharAt >= 127 || " #%/:?@[\\]".indexOf(cCharAt) != -1) {
                return true;
            }
        }
        return false;
    }
}
