package pd;

import com.google.zxing.FormatException;
import id.d;
import java.text.DecimalFormat;

/* JADX INFO: loaded from: classes5.dex */
abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final byte[] f72430a = {53, 54, 43, 44, 45, 46, 47, 48, 37, 38};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final byte[] f72431b = {55, 56, 57, 58, 59, 60, 49, 50, 51, 52};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final byte[] f72432c = {39, 40, 41, 42, 31, 32};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final byte[] f72433d = {33, 34, 35, 36, 25, 26, 27, 28, 29, 30, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 17, 18, 7, 8, 9, 10, 11, 12, 1, 2};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final byte[][] f72434e = {new byte[]{39, 40, 41, 42, 31, 32}, new byte[]{33, 34, 35, 36, 25, 26}, new byte[]{27, 28, 29, 30, 19, 20}, new byte[]{21, 22, 23, 24, 13, 14}, new byte[]{15, 16, 17, 18, 7, 8}, new byte[]{9, 10, 11, 12, 1, 2}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String[] f72435f = {"\rABCDEFGHIJKLMNOPQRSTUVWXYZ\ufffa\u001c\u001d\u001e\ufffb ￼\"#$%&'()*+,-./0123456789:\ufff1\ufff2\ufff3\ufff4\ufff8", "`abcdefghijklmnopqrstuvwxyz\ufffa\u001c\u001d\u001e\ufffb{￼}~\u007f;<=>?[\\]^_ ,./:@!|￼\ufff5\ufff6￼\ufff0\ufff2\ufff3\ufff4\ufff7", "ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚ\ufffa\u001c\u001d\u001e\ufffbÛÜÝÞßª¬±²³µ¹º¼½¾\u0080\u0081\u0082\u0083\u0084\u0085\u0086\u0087\u0088\u0089\ufff7 \ufff9\ufff3\ufff4\ufff8", "àáâãäåæçèéêëìíîïðñòóôõö÷øùú\ufffa\u001c\u001d\u001e\ufffbûüýþÿ¡¨«¯°´·¸»¿\u008a\u008b\u008c\u008d\u008e\u008f\u0090\u0091\u0092\u0093\u0094\ufff7 \ufff2\ufff9\ufff4\ufff8", "\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\ufffa￼￼\u001b\ufffb\u001c\u001d\u001e\u001f\u009f ¢£¤¥¦§©\u00ad®¶\u0095\u0096\u0097\u0098\u0099\u009a\u009b\u009c\u009d\u009e\ufff7 \ufff2\ufff3\ufff9\ufff8"};

    static d a(byte[] bArr, int i11) throws FormatException {
        String strH;
        StringBuilder sb2 = new StringBuilder(144);
        if (i11 == 2 || i11 == 3) {
            if (i11 == 2) {
                int iF = f(bArr);
                int iG = g(bArr);
                if (iG > 10) {
                    throw FormatException.getFormatInstance();
                }
                strH = new DecimalFormat("0000000000".substring(0, iG)).format(iF);
            } else {
                strH = h(bArr);
            }
            DecimalFormat decimalFormat = new DecimalFormat("000");
            String str = decimalFormat.format(c(bArr));
            String str2 = decimalFormat.format(i(bArr));
            sb2.append(e(bArr, 10, 84));
            if (sb2.toString().startsWith("[)>\u001e01\u001d")) {
                sb2.insert(9, strH + (char) 29 + str + (char) 29 + str2 + (char) 29);
            } else {
                sb2.insert(0, strH + (char) 29 + str + (char) 29 + str2 + (char) 29);
            }
        } else if (i11 == 4) {
            sb2.append(e(bArr, 1, 93));
        } else if (i11 == 5) {
            sb2.append(e(bArr, 1, 77));
        }
        return new d(bArr, sb2.toString(), null, String.valueOf(i11));
    }

    private static int b(int i11, byte[] bArr) {
        int i12 = i11 - 1;
        return ((1 << (5 - (i12 % 6))) & bArr[i12 / 6]) == 0 ? 0 : 1;
    }

    private static int c(byte[] bArr) {
        return d(bArr, f72430a);
    }

    private static int d(byte[] bArr, byte[] bArr2) {
        int iB = 0;
        for (int i11 = 0; i11 < bArr2.length; i11++) {
            iB += b(bArr2[i11], bArr) << ((bArr2.length - i11) - 1);
        }
        return iB;
    }

    private static String e(byte[] bArr, int i11, int i12) {
        StringBuilder sb2 = new StringBuilder();
        int i13 = i11;
        int i14 = -1;
        int i15 = 0;
        int i16 = 0;
        while (i13 < i11 + i12) {
            char cCharAt = f72435f[i15].charAt(bArr[i13]);
            switch (cCharAt) {
                case 65520:
                case 65521:
                case 65522:
                case 65523:
                case 65524:
                    i16 = i15;
                    i15 = cCharAt - 65520;
                    i14 = 1;
                    break;
                case 65525:
                    i14 = 2;
                    i16 = i15;
                    i15 = 0;
                    break;
                case 65526:
                    i14 = 3;
                    i16 = i15;
                    i15 = 0;
                    break;
                case 65527:
                    i14 = -1;
                    i15 = 0;
                    break;
                case 65528:
                    i14 = -1;
                    i15 = 1;
                    break;
                case 65529:
                    i14 = -1;
                    break;
                case 65530:
                default:
                    sb2.append(cCharAt);
                    break;
                case 65531:
                    int i17 = (bArr[i13 + 1] << 24) + (bArr[i13 + 2] << 18) + (bArr[i13 + 3] << 12) + (bArr[i13 + 4] << 6);
                    i13 += 5;
                    sb2.append(new DecimalFormat("000000000").format(i17 + bArr[i13]));
                    break;
            }
            int i18 = i14 - 1;
            if (i14 == 0) {
                i15 = i16;
            }
            i13++;
            i14 = i18;
        }
        while (sb2.length() > 0 && sb2.charAt(sb2.length() - 1) == 65532) {
            sb2.setLength(sb2.length() - 1);
        }
        return sb2.toString();
    }

    private static int f(byte[] bArr) {
        return d(bArr, f72433d);
    }

    private static int g(byte[] bArr) {
        return d(bArr, f72432c);
    }

    private static String h(byte[] bArr) {
        byte[][] bArr2 = f72434e;
        StringBuilder sb2 = new StringBuilder(bArr2.length);
        for (byte[] bArr3 : bArr2) {
            sb2.append(f72435f[0].charAt(d(bArr, bArr3)));
        }
        return sb2.toString();
    }

    private static int i(byte[] bArr) {
        return d(bArr, f72431b);
    }
}
