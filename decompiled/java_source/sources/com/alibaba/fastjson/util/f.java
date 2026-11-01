package com.alibaba.fastjson.util;

import androidx.datastore.preferences.protobuf.DescriptorProtos$Edition;
import com.alibaba.fastjson.JSONException;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Arrays;
import java.util.Properties;
import okio.Utf8;

/* JADX INFO: loaded from: classes2.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Properties f18219a = new Properties();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Charset f18220b = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final char[] f18221c = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final boolean[] f18222d = new boolean[256];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final boolean[] f18223e = new boolean[256];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final byte[] f18224f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final byte[] f18225g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final boolean[] f18226h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final boolean[] f18227i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final char[] f18228j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final char[] f18229k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    static final char[] f18230l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    static final char[] f18231m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    static final char[] f18232n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    static final int[] f18233o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final char[] f18234p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final int[] f18235q;

    static class a implements PrivilegedAction {
        a() {
        }

        @Override // java.security.PrivilegedAction
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public InputStream run() {
            ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
            return contextClassLoader != null ? contextClassLoader.getResourceAsStream("fastjson.properties") : ClassLoader.getSystemResourceAsStream("fastjson.properties");
        }
    }

    static {
        char c11 = 0;
        while (true) {
            boolean[] zArr = f18222d;
            if (c11 >= zArr.length) {
                break;
            }
            if (c11 >= 'A' && c11 <= 'Z') {
                zArr[c11] = true;
            } else if (c11 >= 'a' && c11 <= 'z') {
                zArr[c11] = true;
            } else if (c11 == '_' || c11 == '$') {
                zArr[c11] = true;
            }
            c11 = (char) (c11 + 1);
        }
        char c12 = 0;
        while (true) {
            boolean[] zArr2 = f18223e;
            if (c12 < zArr2.length) {
                if (c12 >= 'A' && c12 <= 'Z') {
                    zArr2[c12] = true;
                } else if (c12 >= 'a' && c12 <= 'z') {
                    zArr2[c12] = true;
                } else if (c12 == '_') {
                    zArr2[c12] = true;
                } else if (c12 >= '0' && c12 <= '9') {
                    zArr2[c12] = true;
                }
                c12 = (char) (c12 + 1);
            } else {
                try {
                    break;
                } catch (Throwable unused) {
                }
            }
        }
        l();
        byte[] bArr = new byte[161];
        f18224f = bArr;
        byte[] bArr2 = new byte[161];
        f18225g = bArr2;
        f18226h = new boolean[161];
        f18227i = new boolean[161];
        f18228j = new char[93];
        bArr[0] = 4;
        bArr[1] = 4;
        bArr[2] = 4;
        bArr[3] = 4;
        bArr[4] = 4;
        bArr[5] = 4;
        bArr[6] = 4;
        bArr[7] = 4;
        bArr[8] = 1;
        bArr[9] = 1;
        bArr[10] = 1;
        bArr[11] = 4;
        bArr[12] = 1;
        bArr[13] = 1;
        bArr[34] = 1;
        bArr[92] = 1;
        bArr2[0] = 4;
        bArr2[1] = 4;
        bArr2[2] = 4;
        bArr2[3] = 4;
        bArr2[4] = 4;
        bArr2[5] = 4;
        bArr2[6] = 4;
        bArr2[7] = 4;
        bArr2[8] = 1;
        bArr2[9] = 1;
        bArr2[10] = 1;
        bArr2[11] = 4;
        bArr2[12] = 1;
        bArr2[13] = 1;
        bArr2[92] = 1;
        bArr2[39] = 1;
        for (int i11 = 14; i11 <= 31; i11++) {
            f18224f[i11] = 4;
            f18225g[i11] = 4;
        }
        for (int i12 = 127; i12 < 160; i12++) {
            f18224f[i12] = 4;
            f18225g[i12] = 4;
        }
        for (int i13 = 0; i13 < 161; i13++) {
            f18226h[i13] = f18224f[i13] != 0;
            f18227i[i13] = f18225g[i13] != 0;
        }
        char[] cArr = f18228j;
        cArr[0] = '0';
        cArr[1] = '1';
        cArr[2] = '2';
        cArr[3] = '3';
        cArr[4] = '4';
        cArr[5] = '5';
        cArr[6] = '6';
        cArr[7] = '7';
        cArr[8] = 'b';
        cArr[9] = 't';
        cArr[10] = 'n';
        cArr[11] = 'v';
        cArr[12] = 'f';
        cArr[13] = 'r';
        cArr[34] = '\"';
        cArr[39] = '\'';
        cArr[47] = '/';
        cArr[92] = '\\';
        f18229k = new char[]{'0', '0', '0', '1', '0', '2', '0', '3', '0', '4', '0', '5', '0', '6', '0', '7', '0', '8', '0', '9', '0', 'A', '0', 'B', '0', 'C', '0', 'D', '0', 'E', '0', 'F', '1', '0', '1', '1', '1', '2', '1', '3', '1', '4', '1', '5', '1', '6', '1', '7', '1', '8', '1', '9', '1', 'A', '1', 'B', '1', 'C', '1', 'D', '1', 'E', '1', 'F', '2', '0', '2', '1', '2', '2', '2', '3', '2', '4', '2', '5', '2', '6', '2', '7', '2', '8', '2', '9', '2', 'A', '2', 'B', '2', 'C', '2', 'D', '2', 'E', '2', 'F'};
        f18230l = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};
        f18231m = new char[]{'0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '6', '6', '6', '6', '6', '6', '6', '6', '6', '6', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '8', '8', '8', '8', '8', '8', '8', '8', '8', '8', '9', '9', '9', '9', '9', '9', '9', '9', '9', '9'};
        f18232n = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};
        f18233o = new int[]{9, 99, DescriptorProtos$Edition.EDITION_PROTO3_VALUE, 9999, DescriptorProtos$Edition.EDITION_99999_TEST_ONLY_VALUE, 999999, 9999999, 99999999, 999999999, Integer.MAX_VALUE};
        char[] charArray = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray();
        f18234p = charArray;
        int[] iArr = new int[256];
        f18235q = iArr;
        Arrays.fill(iArr, -1);
        int length = charArray.length;
        for (int i14 = 0; i14 < length; i14++) {
            f18235q[f18234p[i14]] = i14;
        }
        f18235q[61] = 0;
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception unused) {
            }
        }
    }

    public static void b(CharsetDecoder charsetDecoder, ByteBuffer byteBuffer, CharBuffer charBuffer) {
        try {
            CoderResult coderResultDecode = charsetDecoder.decode(byteBuffer, charBuffer, true);
            if (!coderResultDecode.isUnderflow()) {
                coderResultDecode.throwException();
            }
            CoderResult coderResultFlush = charsetDecoder.flush(charBuffer);
            if (coderResultFlush.isUnderflow()) {
                return;
            }
            coderResultFlush.throwException();
        } catch (CharacterCodingException e11) {
            throw new JSONException("utf8 decode error, " + e11.getMessage(), e11);
        }
    }

    public static byte[] c(String str) {
        int i11;
        int i12;
        int length = str.length();
        if (length == 0) {
            return new byte[0];
        }
        int i13 = length - 1;
        int i14 = 0;
        while (i14 < i13 && f18235q[str.charAt(i14) & 255] < 0) {
            i14++;
        }
        while (i13 > 0 && f18235q[str.charAt(i13) & 255] < 0) {
            i13--;
        }
        if (str.charAt(i13) == '=') {
            i11 = str.charAt(i13 + (-1)) == '=' ? 2 : 1;
        } else {
            i11 = 0;
        }
        int i15 = (i13 - i14) + 1;
        if (length > 76) {
            i12 = (str.charAt(76) == '\r' ? i15 / 78 : 0) << 1;
        } else {
            i12 = 0;
        }
        int i16 = (((i15 - i12) * 6) >> 3) - i11;
        byte[] bArr = new byte[i16];
        int i17 = (i16 / 3) * 3;
        int i18 = 0;
        int i19 = 0;
        while (i18 < i17) {
            int[] iArr = f18235q;
            int i20 = i14 + 4;
            int i21 = iArr[str.charAt(i14 + 3)] | (iArr[str.charAt(i14 + 1)] << 12) | (iArr[str.charAt(i14)] << 18) | (iArr[str.charAt(i14 + 2)] << 6);
            bArr[i18] = (byte) (i21 >> 16);
            int i22 = i18 + 2;
            bArr[i18 + 1] = (byte) (i21 >> 8);
            i18 += 3;
            bArr[i22] = (byte) i21;
            if (i12 <= 0 || (i19 = i19 + 1) != 19) {
                i14 = i20;
            } else {
                i14 += 6;
                i19 = 0;
            }
        }
        if (i18 < i16) {
            int i23 = 0;
            int i24 = 0;
            while (i14 <= i13 - i11) {
                i23 |= f18235q[str.charAt(i14)] << (18 - (i24 * 6));
                i24++;
                i14++;
            }
            int i25 = 16;
            while (i18 < i16) {
                bArr[i18] = (byte) (i23 >> i25);
                i25 -= 8;
                i18++;
            }
        }
        return bArr;
    }

    public static byte[] d(String str, int i11, int i12) {
        int i13;
        int i14;
        if (i12 == 0) {
            return new byte[0];
        }
        int i15 = (i11 + i12) - 1;
        int i16 = i11;
        while (i16 < i15 && f18235q[str.charAt(i16)] < 0) {
            i16++;
        }
        while (i15 > 0 && f18235q[str.charAt(i15)] < 0) {
            i15--;
        }
        if (str.charAt(i15) == '=') {
            i13 = str.charAt(i15 + (-1)) == '=' ? 2 : 1;
        } else {
            i13 = 0;
        }
        int i17 = (i15 - i16) + 1;
        if (i12 > 76) {
            i14 = (str.charAt(76) == '\r' ? i17 / 78 : 0) << 1;
        } else {
            i14 = 0;
        }
        int i18 = (((i17 - i14) * 6) >> 3) - i13;
        byte[] bArr = new byte[i18];
        int i19 = (i18 / 3) * 3;
        int i20 = 0;
        int i21 = 0;
        while (i20 < i19) {
            int[] iArr = f18235q;
            int i22 = i16 + 4;
            int i23 = iArr[str.charAt(i16 + 3)] | (iArr[str.charAt(i16 + 1)] << 12) | (iArr[str.charAt(i16)] << 18) | (iArr[str.charAt(i16 + 2)] << 6);
            bArr[i20] = (byte) (i23 >> 16);
            int i24 = i20 + 2;
            bArr[i20 + 1] = (byte) (i23 >> 8);
            i20 += 3;
            bArr[i24] = (byte) i23;
            if (i14 <= 0 || (i21 = i21 + 1) != 19) {
                i16 = i22;
            } else {
                i16 += 6;
                i21 = 0;
            }
        }
        if (i20 < i18) {
            int i25 = 0;
            int i26 = 0;
            while (i16 <= i15 - i13) {
                i25 |= f18235q[str.charAt(i16)] << (18 - (i26 * 6));
                i26++;
                i16++;
            }
            int i27 = 16;
            while (i20 < i18) {
                bArr[i20] = (byte) (i25 >> i27);
                i27 -= 8;
                i20++;
            }
        }
        return bArr;
    }

    public static int e(byte[] bArr, int i11, int i12, char[] cArr) {
        int i13 = i11 + i12;
        int iMin = Math.min(i12, cArr.length);
        int i14 = 0;
        while (i14 < iMin) {
            byte b11 = bArr[i11];
            if (b11 < 0) {
                break;
            }
            i11++;
            cArr[i14] = (char) b11;
            i14++;
        }
        while (i11 < i13) {
            int i15 = i11 + 1;
            byte b12 = bArr[i11];
            if (b12 >= 0) {
                cArr[i14] = (char) b12;
                i14++;
                i11 = i15;
            } else {
                if ((b12 >> 5) != -2 || (b12 & 30) == 0) {
                    if ((b12 >> 4) == -2) {
                        int i16 = i11 + 2;
                        if (i16 < i13) {
                            byte b13 = bArr[i15];
                            i11 += 3;
                            byte b14 = bArr[i16];
                            if ((b12 != -32 || (b13 & 224) != 128) && (b13 & 192) == 128 && (b14 & 192) == 128) {
                                char c11 = (char) (((b13 << 6) ^ (b12 << 12)) ^ ((-123008) ^ b14));
                                if (c11 >= 55296 && c11 < 57344) {
                                    return -1;
                                }
                                cArr[i14] = c11;
                                i14++;
                            }
                        }
                        return -1;
                    }
                    if ((b12 >> 3) == -2 && i11 + 3 < i13) {
                        byte b15 = bArr[i15];
                        int i17 = i11 + 3;
                        byte b16 = bArr[i11 + 2];
                        i11 += 4;
                        byte b17 = bArr[i17];
                        int i18 = (((b12 << 18) ^ (b15 << 12)) ^ (b16 << 6)) ^ (3678080 ^ b17);
                        if ((b15 & 192) == 128 && (b16 & 192) == 128 && (b17 & 192) == 128 && i18 >= 65536 && i18 < 1114112) {
                            int i19 = i14 + 1;
                            cArr[i14] = (char) ((i18 >>> 10) + Utf8.HIGH_SURROGATE_HEADER);
                            i14 += 2;
                            cArr[i19] = (char) ((i18 & 1023) + Utf8.LOG_SURROGATE_HEADER);
                        }
                    }
                    return -1;
                }
                if (i15 >= i13) {
                    return -1;
                }
                i11 += 2;
                byte b18 = bArr[i15];
                if ((b18 & 192) != 128) {
                    return -1;
                }
                cArr[i14] = (char) ((b18 ^ (b12 << 6)) ^ Utf8.MASK_2BYTES);
                i14++;
            }
        }
        return i14;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0079  */
    /* JADX WARN: Code duplicated, block: B:37:0x007e  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [char, int] */
    /* JADX WARN: Type inference failed for: r3v1, types: [int] */
    /* JADX WARN: Type inference failed for: r3v7, types: [int] */
    /* JADX WARN: Type inference failed for: r3v8 */
    public static int f(char[] cArr, int i11, int i12, byte[] bArr) {
        int i13;
        char c11;
        int i14 = i11 + i12;
        int iMin = Math.min(i12, bArr.length);
        int i15 = 0;
        while (i15 < iMin && (c11 = cArr[i11]) < 128) {
            i11++;
            bArr[i15] = (byte) c11;
            i15++;
        }
        while (i11 < i14) {
            int i16 = i11 + 1;
            char c12 = cArr[i11];
            if (c12 < 128) {
                i13 = i15 + 1;
                bArr[i15] = (byte) c12;
            } else {
                if (c12 < 2048) {
                    int i17 = i15 + 1;
                    bArr[i15] = (byte) ((c12 >> 6) | PsExtractor.AUDIO_STREAM);
                    i15 += 2;
                    bArr[i17] = (byte) ((c12 & 63) | 128);
                } else if (c12 < 55296 || c12 >= 57344) {
                    bArr[i15] = (byte) ((c12 >> 12) | 224);
                    int i18 = i15 + 2;
                    bArr[i15 + 1] = (byte) ((63 & (c12 >> 6)) | 128);
                    i15 += 3;
                    bArr[i18] = (byte) ((c12 & 63) | 128);
                } else if (c12 >= 55296 && c12 < 56320) {
                    if (i14 - i11 < 2) {
                        c12 = -1;
                    } else {
                        char c13 = cArr[i11 + 1];
                        if (c13 < 56320 || c13 >= 57344) {
                            i13 = i15 + 1;
                            bArr[i15] = Utf8.REPLACEMENT_BYTE;
                        } else {
                            c12 = ((c12 << 10) + c13) - 56613888;
                        }
                    }
                    if (c12 < 0) {
                        i13 = i15 + 1;
                        bArr[i15] = Utf8.REPLACEMENT_BYTE;
                    } else {
                        bArr[i15] = (byte) ((c12 >> 18) | 240);
                        bArr[i15 + 1] = (byte) (((c12 >> 12) & 63) | 128);
                        bArr[i15 + 2] = (byte) ((63 & (c12 >> 6)) | 128);
                        bArr[i15 + 3] = (byte) ((c12 & 63) | 128);
                        i16 = i11 + 2;
                        i13 = i15 + 4;
                    }
                } else if (c12 >= 56320 && c12 < 57344) {
                    i13 = i15 + 1;
                    bArr[i15] = Utf8.REPLACEMENT_BYTE;
                } else if (c12 < 0) {
                    i13 = i15 + 1;
                    bArr[i15] = Utf8.REPLACEMENT_BYTE;
                } else {
                    bArr[i15] = (byte) ((c12 >> 18) | 240);
                    bArr[i15 + 1] = (byte) (((c12 >> 12) & 63) | 128);
                    bArr[i15 + 2] = (byte) ((63 & (c12 >> 6)) | 128);
                    bArr[i15 + 3] = (byte) ((c12 & 63) | 128);
                    i16 = i11 + 2;
                    i13 = i15 + 4;
                }
                i11 = i16;
            }
            i15 = i13;
            i11 = i16;
        }
        return i15;
    }

    public static boolean g(char c11) {
        boolean[] zArr = f18222d;
        return c11 < zArr.length && zArr[c11];
    }

    public static void h(int i11, int i12, char[] cArr) {
        char c11;
        if (i11 < 0) {
            i11 = -i11;
            c11 = '-';
        } else {
            c11 = 0;
        }
        while (i11 >= 65536) {
            int i13 = i11 / 100;
            int i14 = i11 - (((i13 << 6) + (i13 << 5)) + (i13 << 2));
            cArr[i12 - 1] = f18232n[i14];
            i12 -= 2;
            cArr[i12] = f18231m[i14];
            i11 = i13;
        }
        while (true) {
            int i15 = (52429 * i11) >>> 19;
            int i16 = i12 - 1;
            cArr[i16] = f18230l[i11 - ((i15 << 3) + (i15 << 1))];
            if (i15 == 0) {
                break;
            }
            i11 = i15;
            i12 = i16;
        }
        if (c11 != 0) {
            cArr[i12 - 2] = c11;
        }
    }

    public static void i(long j11, int i11, char[] cArr) {
        char c11;
        if (j11 < 0) {
            j11 = -j11;
            c11 = '-';
        } else {
            c11 = 0;
        }
        while (j11 > 2147483647L) {
            long j12 = j11 / 100;
            int i12 = (int) (j11 - (((j12 << 6) + (j12 << 5)) + (j12 << 2)));
            cArr[i11 - 1] = f18232n[i12];
            i11 -= 2;
            cArr[i11] = f18231m[i12];
            j11 = j12;
        }
        int i13 = (int) j11;
        while (i13 >= 65536) {
            int i14 = i13 / 100;
            int i15 = i13 - (((i14 << 6) + (i14 << 5)) + (i14 << 2));
            cArr[i11 - 1] = f18232n[i15];
            i11 -= 2;
            cArr[i11] = f18231m[i15];
            i13 = i14;
        }
        while (true) {
            int i16 = (52429 * i13) >>> 19;
            int i17 = i11 - 1;
            cArr[i17] = f18230l[i13 - ((i16 << 3) + (i16 << 1))];
            if (i16 == 0) {
                break;
            }
            i13 = i16;
            i11 = i17;
        }
        if (c11 != 0) {
            cArr[i11 - 2] = c11;
        }
    }

    public static String j(String str) {
        String property;
        try {
            property = System.getProperty(str);
        } catch (SecurityException unused) {
            property = null;
        }
        return property == null ? f18219a.getProperty(str) : property;
    }

    public static boolean k(char c11) {
        boolean[] zArr = f18223e;
        return c11 < zArr.length && zArr[c11];
    }

    public static void l() {
        InputStream inputStream = (InputStream) AccessController.doPrivileged(new a());
        if (inputStream != null) {
            try {
                f18219a.load(inputStream);
                inputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    public static String m(Reader reader) {
        StringBuilder sb2 = new StringBuilder();
        try {
            char[] cArr = new char[2048];
            while (true) {
                int i11 = reader.read(cArr, 0, 2048);
                if (i11 < 0) {
                    return sb2.toString();
                }
                sb2.append(cArr, 0, i11);
            }
        } catch (Exception e11) {
            throw new JSONException("read string from reader error", e11);
        }
    }

    public static int n(int i11) {
        int i12 = 0;
        while (i11 > f18233o[i12]) {
            i12++;
        }
        return i12 + 1;
    }

    public static int o(long j11) {
        long j12 = 10;
        for (int i11 = 1; i11 < 19; i11++) {
            if (j11 < j12) {
                return i11;
            }
            j12 *= 10;
        }
        return 19;
    }
}
