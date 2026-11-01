package wd;

import androidx.datastore.preferences.protobuf.DescriptorProtos$Edition;
import com.google.zxing.WriterException;
import com.google.zxing.common.CharacterSetECI;
import com.google.zxing.pdf417.encoder.Compaction;
import id.h;
import id.m;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import okio.Utf8;

/* JADX INFO: loaded from: classes5.dex */
abstract class e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final byte[] f77657c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final byte[] f77655a = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 38, 13, 9, 44, 58, 35, 45, 46, 36, 47, 43, 37, 42, 61, 94, 0, 32, 0, 0, 0};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final byte[] f77656b = {59, 60, 62, 64, 91, 92, 93, 95, 96, 126, 33, 13, 9, 44, 58, 10, 45, 46, 36, 47, 34, 124, 42, 40, 41, Utf8.REPLACEMENT_BYTE, 123, 125, 39, 0};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final byte[] f77658d = new byte[128];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Charset f77659e = StandardCharsets.ISO_8859_1;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f77660a;

        static {
            int[] iArr = new int[Compaction.values().length];
            f77660a = iArr;
            try {
                iArr[Compaction.TEXT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f77660a[Compaction.BYTE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f77660a[Compaction.NUMERIC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private static final class b implements h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f77661a;

        private b(String str) {
            this.f77661a = str;
        }

        /* synthetic */ b(String str, a aVar) {
            this(str);
        }

        @Override // id.h
        public boolean a(int i11) {
            return false;
        }

        @Override // id.h
        public int b(int i11) {
            return -1;
        }

        @Override // id.h
        public char charAt(int i11) {
            return this.f77661a.charAt(i11);
        }

        @Override // id.h
        public int length() {
            return this.f77661a.length();
        }

        @Override // id.h
        public CharSequence subSequence(int i11, int i12) {
            return this.f77661a.subSequence(i11, i12);
        }

        public String toString() {
            return this.f77661a;
        }
    }

    static {
        int i11 = 0;
        byte[] bArr = new byte[128];
        f77657c = bArr;
        Arrays.fill(bArr, (byte) -1);
        int i12 = 0;
        while (true) {
            byte[] bArr2 = f77655a;
            if (i12 >= bArr2.length) {
                break;
            }
            byte b11 = bArr2[i12];
            if (b11 > 0) {
                f77657c[b11] = (byte) i12;
            }
            i12++;
        }
        Arrays.fill(f77658d, (byte) -1);
        while (true) {
            byte[] bArr3 = f77656b;
            if (i11 >= bArr3.length) {
                return;
            }
            byte b12 = bArr3[i11];
            if (b12 > 0) {
                f77658d[b12] = (byte) i11;
            }
            i11++;
        }
    }

    private static int a(h hVar, int i11, Charset charset) throws WriterException {
        CharsetEncoder charsetEncoderNewEncoder = charset == null ? null : charset.newEncoder();
        int length = hVar.length();
        int i12 = i11;
        while (i12 < length) {
            int i13 = 0;
            int i14 = i12;
            while (i13 < 13 && !hVar.a(i14) && l(hVar.charAt(i14)) && (i14 = i12 + (i13 = i13 + 1)) < length) {
            }
            if (i13 >= 13) {
                return i12 - i11;
            }
            if (charsetEncoderNewEncoder != null && !charsetEncoderNewEncoder.canEncode(hVar.charAt(i12))) {
                char cCharAt = hVar.charAt(i12);
                throw new WriterException("Non-encodable character detected: " + cCharAt + " (Unicode: " + ((int) cCharAt) + ')');
            }
            i12++;
        }
        return i12 - i11;
    }

    private static int b(h hVar, int i11) {
        int length = hVar.length();
        int i12 = 0;
        if (i11 < length) {
            while (i11 < length && !hVar.a(i11) && l(hVar.charAt(i11))) {
                i12++;
                i11++;
            }
        }
        return i12;
    }

    private static int c(h hVar, int i11) {
        int length = hVar.length();
        int i12 = i11;
        while (i12 < length) {
            int i13 = 0;
            while (i13 < 13 && i12 < length && !hVar.a(i12) && l(hVar.charAt(i12))) {
                i13++;
                i12++;
            }
            if (i13 >= 13) {
                return (i12 - i11) - i13;
            }
            if (i13 <= 0) {
                if (hVar.a(i12) || !o(hVar.charAt(i12))) {
                    break;
                }
                i12++;
            }
        }
        return i12 - i11;
    }

    private static void d(byte[] bArr, int i11, int i12, int i13, StringBuilder sb2) {
        int i14;
        if (i12 == 1 && i13 == 0) {
            sb2.append((char) 913);
        } else if (i12 % 6 == 0) {
            sb2.append((char) 924);
        } else {
            sb2.append((char) 901);
        }
        if (i12 >= 6) {
            char[] cArr = new char[5];
            i14 = i11;
            while ((i11 + i12) - i14 >= 6) {
                long j11 = 0;
                for (int i15 = 0; i15 < 6; i15++) {
                    j11 = (j11 << 8) + ((long) (bArr[i14 + i15] & 255));
                }
                for (int i16 = 0; i16 < 5; i16++) {
                    cArr[i16] = (char) (j11 % 900);
                    j11 /= 900;
                }
                for (int i17 = 4; i17 >= 0; i17--) {
                    sb2.append(cArr[i17]);
                }
                i14 += 6;
            }
        } else {
            i14 = i11;
        }
        while (i14 < i11 + i12) {
            sb2.append((char) (bArr[i14] & 255));
            i14++;
        }
    }

    static String e(String str, Compaction compaction, Charset charset, boolean z10) throws WriterException {
        h bVar;
        CharacterSetECI characterSetECI;
        if (str.isEmpty()) {
            throw new WriterException("Empty message not allowed");
        }
        if (charset == null && !z10) {
            for (int i11 = 0; i11 < str.length(); i11++) {
                if (str.charAt(i11) > 255) {
                    throw new WriterException("Non-encodable character detected: " + str.charAt(i11) + " (Unicode: " + ((int) str.charAt(i11)) + "). Consider specifying EncodeHintType.PDF417_AUTO_ECI and/or EncodeTypeHint.CHARACTER_SET.");
                }
            }
        }
        StringBuilder sb2 = new StringBuilder(str.length());
        a aVar = null;
        if (z10) {
            bVar = new m(str, charset, -1);
        } else {
            bVar = new b(str, aVar);
            if (charset == null) {
                charset = f77659e;
            } else if (!f77659e.equals(charset) && (characterSetECI = CharacterSetECI.getCharacterSetECI(charset)) != null) {
                i(characterSetECI.getValue(), sb2);
            }
        }
        int length = bVar.length();
        int i12 = a.f77660a[compaction.ordinal()];
        if (i12 == 1) {
            h(bVar, 0, length, sb2, 0);
        } else if (i12 != 2) {
            if (i12 != 3) {
                int i13 = 0;
                int iH = 0;
                int i14 = 0;
                while (i13 < length) {
                    while (i13 < length && bVar.a(i13)) {
                        i(bVar.b(i13), sb2);
                        i13++;
                    }
                    if (i13 >= length) {
                        break;
                    }
                    int iB = b(bVar, i13);
                    if (iB >= 13) {
                        sb2.append((char) 902);
                        g(bVar, i13, iB, sb2);
                        i13 += iB;
                        iH = 0;
                        i14 = 2;
                    } else {
                        int iC = c(bVar, i13);
                        if (iC >= 5 || iB == length) {
                            if (i14 != 0) {
                                sb2.append((char) 900);
                                iH = 0;
                                i14 = 0;
                            }
                            iH = h(bVar, i13, iC, sb2, iH);
                            i13 += iC;
                        } else {
                            int iA = a(bVar, i13, z10 ? null : charset);
                            if (iA == 0) {
                                iA = 1;
                            }
                            byte[] bytes = z10 ? null : bVar.subSequence(i13, i13 + iA).toString().getBytes(charset);
                            if ((!(bytes == null && iA == 1) && (bytes == null || bytes.length != 1)) || i14 != 0) {
                                if (z10) {
                                    f(bVar, i13, i13 + iA, i14, sb2);
                                } else {
                                    d(bytes, 0, bytes.length, i14, sb2);
                                }
                                iH = 0;
                                i14 = 1;
                            } else if (z10) {
                                f(bVar, i13, 1, 0, sb2);
                            } else {
                                d(bytes, 0, 1, 0, sb2);
                            }
                            i13 += iA;
                        }
                    }
                }
            } else {
                sb2.append((char) 902);
                g(bVar, 0, length, sb2);
            }
        } else if (z10) {
            f(bVar, 0, bVar.length(), 0, sb2);
        } else {
            byte[] bytes2 = bVar.toString().getBytes(charset);
            d(bytes2, 0, bytes2.length, 1, sb2);
        }
        return sb2.toString();
    }

    private static void f(h hVar, int i11, int i12, int i13, StringBuilder sb2) throws WriterException {
        int iMin = Math.min(i12 + i11, hVar.length());
        int i14 = i11;
        while (true) {
            if (i14 >= iMin || !hVar.a(i14)) {
                int i15 = i14;
                while (i15 < iMin && !hVar.a(i15)) {
                    i15++;
                }
                int i16 = i15 - i14;
                if (i16 <= 0) {
                    return;
                }
                d(p(hVar, i14, i15), 0, i16, i14 == i11 ? i13 : 1, sb2);
                i14 = i15;
            } else {
                i(hVar.b(i14), sb2);
                i14++;
            }
        }
    }

    private static void g(h hVar, int i11, int i12, StringBuilder sb2) {
        StringBuilder sb3 = new StringBuilder((i12 / 3) + 1);
        BigInteger bigIntegerValueOf = BigInteger.valueOf(900L);
        BigInteger bigIntegerValueOf2 = BigInteger.valueOf(0L);
        int i13 = 0;
        while (i13 < i12) {
            sb3.setLength(0);
            int iMin = Math.min(44, i12 - i13);
            StringBuilder sb4 = new StringBuilder();
            sb4.append("1");
            int i14 = i11 + i13;
            sb4.append((Object) hVar.subSequence(i14, i14 + iMin));
            BigInteger bigInteger = new BigInteger(sb4.toString());
            do {
                sb3.append((char) bigInteger.mod(bigIntegerValueOf).intValue());
                bigInteger = bigInteger.divide(bigIntegerValueOf);
            } while (!bigInteger.equals(bigIntegerValueOf2));
            for (int length = sb3.length() - 1; length >= 0; length--) {
                sb2.append(sb3.charAt(length));
            }
            i13 += iMin;
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x000f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:80:0x010b A[EDGE_INSN: B:80:0x010b->B:60:0x010b BREAK  A[LOOP:0: B:3:0x000f->B:98:0x000f], SYNTHETIC] */
    private static int h(h hVar, int i11, int i12, StringBuilder sb2, int i13) throws WriterException {
        StringBuilder sb3 = new StringBuilder(i12);
        int i14 = i13;
        int i15 = 0;
        while (true) {
            int i16 = i11 + i15;
            if (!hVar.a(i16)) {
                char cCharAt = hVar.charAt(i16);
                if (i14 == 0) {
                    if (k(cCharAt)) {
                        if (cCharAt == ' ') {
                            sb3.append((char) 26);
                        } else {
                            sb3.append((char) (cCharAt - 'A'));
                        }
                    } else if (j(cCharAt)) {
                        sb3.append((char) 27);
                        i14 = 1;
                    } else if (m(cCharAt)) {
                        sb3.append((char) 28);
                        i14 = 2;
                    } else {
                        sb3.append((char) 29);
                        sb3.append((char) f77658d[cCharAt]);
                    }
                    i15++;
                    if (i15 >= i12) {
                        break;
                        break;
                    }
                } else {
                    if (i14 != 1) {
                        if (i14 != 2) {
                            if (n(cCharAt)) {
                                sb3.append((char) f77658d[cCharAt]);
                            } else {
                                sb3.append((char) 29);
                                i14 = 0;
                            }
                        } else if (m(cCharAt)) {
                            sb3.append((char) f77657c[cCharAt]);
                        } else if (k(cCharAt)) {
                            sb3.append((char) 28);
                            i14 = 0;
                        } else if (j(cCharAt)) {
                            sb3.append((char) 27);
                            i14 = 1;
                        } else {
                            int i17 = i16 + 1;
                            if (i17 >= i12 || hVar.a(i17) || !n(hVar.charAt(i17))) {
                                sb3.append((char) 29);
                                sb3.append((char) f77658d[cCharAt]);
                            } else {
                                sb3.append((char) 25);
                                i14 = 3;
                            }
                        }
                    } else if (j(cCharAt)) {
                        if (cCharAt == ' ') {
                            sb3.append((char) 26);
                        } else {
                            sb3.append((char) (cCharAt - 'a'));
                        }
                    } else if (k(cCharAt)) {
                        sb3.append((char) 27);
                        sb3.append((char) (cCharAt - 'A'));
                    } else if (m(cCharAt)) {
                        sb3.append((char) 28);
                        i14 = 2;
                    } else {
                        sb3.append((char) 29);
                        sb3.append((char) f77658d[cCharAt]);
                    }
                    i15++;
                    if (i15 >= i12) {
                        break;
                    }
                }
            } else {
                i(hVar.b(i16), sb2);
                i15++;
            }
        }
        int length = sb3.length();
        char cCharAt2 = 0;
        for (int i18 = 0; i18 < length; i18++) {
            if (i18 % 2 != 0) {
                cCharAt2 = (char) ((cCharAt2 * 30) + sb3.charAt(i18));
                sb2.append(cCharAt2);
            } else {
                cCharAt2 = sb3.charAt(i18);
            }
        }
        if (length % 2 != 0) {
            sb2.append((char) ((cCharAt2 * 30) + 29));
        }
        return i14;
    }

    private static void i(int i11, StringBuilder sb2) throws WriterException {
        if (i11 >= 0 && i11 < 900) {
            sb2.append((char) 927);
            sb2.append((char) i11);
            return;
        }
        if (i11 < 810900) {
            sb2.append((char) 926);
            sb2.append((char) ((i11 / DescriptorProtos$Edition.EDITION_LEGACY_VALUE) - 1));
            sb2.append((char) (i11 % DescriptorProtos$Edition.EDITION_LEGACY_VALUE));
        } else if (i11 < 811800) {
            sb2.append((char) 925);
            sb2.append((char) (810900 - i11));
        } else {
            throw new WriterException("ECI number not in valid range from 0..811799, but was " + i11);
        }
    }

    private static boolean j(char c11) {
        return c11 == ' ' || (c11 >= 'a' && c11 <= 'z');
    }

    private static boolean k(char c11) {
        return c11 == ' ' || (c11 >= 'A' && c11 <= 'Z');
    }

    private static boolean l(char c11) {
        return c11 >= '0' && c11 <= '9';
    }

    private static boolean m(char c11) {
        return f77657c[c11] != -1;
    }

    private static boolean n(char c11) {
        return f77658d[c11] != -1;
    }

    private static boolean o(char c11) {
        return c11 == '\t' || c11 == '\n' || c11 == '\r' || (c11 >= ' ' && c11 <= '~');
    }

    static byte[] p(h hVar, int i11, int i12) {
        byte[] bArr = new byte[i12 - i11];
        for (int i13 = i11; i13 < i12; i13++) {
            bArr[i13 - i11] = (byte) (hVar.charAt(i13) & 255);
        }
        return bArr;
    }
}
