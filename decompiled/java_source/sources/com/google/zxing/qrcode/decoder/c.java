package com.google.zxing.qrcode.decoder;

import com.google.zxing.FormatException;
import com.google.zxing.common.CharacterSetECI;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import id.o;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final char[] f32987a = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ $%*+-./:".toCharArray();

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f32988a;

        static {
            int[] iArr = new int[Mode.values().length];
            f32988a = iArr;
            try {
                iArr[Mode.NUMERIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f32988a[Mode.ALPHANUMERIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f32988a[Mode.BYTE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f32988a[Mode.KANJI.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f32988a[Mode.TERMINATOR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f32988a[Mode.FNC1_FIRST_POSITION.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f32988a[Mode.FNC1_SECOND_POSITION.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f32988a[Mode.STRUCTURED_APPEND.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f32988a[Mode.ECI.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f32988a[Mode.HANZI.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:41:0x0103 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:42:0x0105  */
    /* JADX WARN: Code duplicated, block: B:43:0x0107 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:44:0x0109  */
    /* JADX WARN: Code duplicated, block: B:46:0x010c  */
    /* JADX WARN: Code duplicated, block: B:47:0x010f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:48:0x0111  */
    /* JADX WARN: Code duplicated, block: B:49:0x0114 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:50:0x0116  */
    /* JADX WARN: Code duplicated, block: B:51:0x0118  */
    /* JADX WARN: Code duplicated, block: B:54:0x0125  */
    /* JADX WARN: Code duplicated, block: B:55:0x0127  */
    /* JADX WARN: Code duplicated, block: B:57:0x012a  */
    /* JADX WARN: Code duplicated, block: B:58:0x012c  */
    /* JADX WARN: Code duplicated, block: B:61:0x013d A[LOOP:0: B:64:0x0021->B:61:0x013d, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:68:0x0101 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r15v5 */
    /* JADX WARN: Type inference failed for: r15v6 */
    /* JADX WARN: Type inference failed for: r15v7, types: [int] */
    /* JADX WARN: Type inference failed for: r15v8 */
    /* JADX WARN: Type inference failed for: r15v9 */
    static id.d a(byte[] bArr, g gVar, ErrorCorrectionLevel errorCorrectionLevel, Map map) throws FormatException {
        boolean z10;
        ?? r15;
        char c11;
        ArrayList arrayList;
        String string;
        id.c cVar = new id.c(bArr);
        StringBuilder sb2 = new StringBuilder(50);
        boolean z11 = true;
        ArrayList arrayList2 = new ArrayList(1);
        boolean z12 = false;
        boolean z13 = false;
        boolean z14 = false;
        int i11 = -1;
        int iD = -1;
        CharacterSetECI characterSetECIByValue = null;
        while (true) {
            try {
                char c12 = 4;
                Mode modeForBits = cVar.a() < 4 ? Mode.TERMINATOR : Mode.forBits(cVar.d(4));
                int[] iArr = a.f32988a;
                char c13 = 3;
                char c14 = 2;
                switch (iArr[modeForBits.ordinal()]) {
                    case 5:
                        c14 = 2;
                        c13 = 3;
                        modeForBits = modeForBits;
                        z10 = z11;
                        c12 = 4;
                        if (modeForBits == Mode.TERMINATOR) {
                            if (characterSetECIByValue != null) {
                                if (z13) {
                                    r15 = c12;
                                } else if (z14) {
                                    c11 = 6;
                                    r15 = c11;
                                } else {
                                    r15 = c14;
                                }
                            } else if (z13) {
                                r15 = c13;
                            } else if (z14) {
                                c11 = 5;
                                r15 = c11;
                            } else {
                                r15 = z10;
                            }
                            String string2 = sb2.toString();
                            if (arrayList2.isEmpty()) {
                                arrayList = null;
                            } else {
                                arrayList = arrayList2;
                            }
                            if (errorCorrectionLevel == null) {
                                string = null;
                            } else {
                                string = errorCorrectionLevel.toString();
                            }
                            return new id.d(bArr, string2, arrayList, string, i11, iD, r15);
                        }
                        z11 = z10;
                        break;
                    case 6:
                        c14 = 2;
                        c13 = 3;
                        modeForBits = modeForBits;
                        z10 = z11;
                        c12 = 4;
                        z12 = z10;
                        z13 = z12;
                        if (modeForBits == Mode.TERMINATOR) {
                            if (characterSetECIByValue != null) {
                                if (z13) {
                                    r15 = c12;
                                } else if (z14) {
                                    c11 = 6;
                                    r15 = c11;
                                } else {
                                    r15 = c14;
                                }
                            } else if (z13) {
                                r15 = c13;
                            } else if (z14) {
                                c11 = 5;
                                r15 = c11;
                            } else {
                                r15 = z10;
                            }
                            String string3 = sb2.toString();
                            if (arrayList2.isEmpty()) {
                                arrayList = null;
                            } else {
                                arrayList = arrayList2;
                            }
                            if (errorCorrectionLevel == null) {
                                string = null;
                            } else {
                                string = errorCorrectionLevel.toString();
                            }
                            return new id.d(bArr, string3, arrayList, string, i11, iD, r15);
                        }
                        z11 = z10;
                        break;
                    case 7:
                        c14 = 2;
                        c13 = 3;
                        modeForBits = modeForBits;
                        z10 = z11;
                        c12 = 4;
                        z12 = z10;
                        z14 = z12;
                        if (modeForBits == Mode.TERMINATOR) {
                            if (characterSetECIByValue != null) {
                                if (z13) {
                                    r15 = c12;
                                } else if (z14) {
                                    c11 = 6;
                                    r15 = c11;
                                } else {
                                    r15 = c14;
                                }
                            } else if (z13) {
                                r15 = c13;
                            } else if (z14) {
                                c11 = 5;
                                r15 = c11;
                            } else {
                                r15 = z10;
                            }
                            String string4 = sb2.toString();
                            if (arrayList2.isEmpty()) {
                                arrayList = null;
                            } else {
                                arrayList = arrayList2;
                            }
                            if (errorCorrectionLevel == null) {
                                string = null;
                            } else {
                                string = errorCorrectionLevel.toString();
                            }
                            return new id.d(bArr, string4, arrayList, string, i11, iD, r15);
                        }
                        z11 = z10;
                        break;
                    case 8:
                        c14 = 2;
                        c13 = 3;
                        modeForBits = modeForBits;
                        z10 = z11;
                        c12 = 4;
                        if (cVar.a() < 16) {
                            throw FormatException.getFormatInstance();
                        }
                        int iD2 = cVar.d(8);
                        iD = cVar.d(8);
                        i11 = iD2;
                        if (modeForBits == Mode.TERMINATOR) {
                            if (characterSetECIByValue != null) {
                                if (z13) {
                                    r15 = c12;
                                } else if (z14) {
                                    c11 = 6;
                                    r15 = c11;
                                } else {
                                    r15 = c14;
                                }
                            } else if (z13) {
                                r15 = c13;
                            } else if (z14) {
                                c11 = 5;
                                r15 = c11;
                            } else {
                                r15 = z10;
                            }
                            String string5 = sb2.toString();
                            if (arrayList2.isEmpty()) {
                                arrayList = null;
                            } else {
                                arrayList = arrayList2;
                            }
                            if (errorCorrectionLevel == null) {
                                string = null;
                            } else {
                                string = errorCorrectionLevel.toString();
                            }
                            return new id.d(bArr, string5, arrayList, string, i11, iD, r15);
                        }
                        z11 = z10;
                        break;
                        break;
                    case 9:
                        c14 = 2;
                        c13 = 3;
                        modeForBits = modeForBits;
                        z10 = z11;
                        c12 = 4;
                        characterSetECIByValue = CharacterSetECI.getCharacterSetECIByValue(g(cVar));
                        if (characterSetECIByValue == null) {
                            throw FormatException.getFormatInstance();
                        }
                        if (modeForBits == Mode.TERMINATOR) {
                            if (characterSetECIByValue != null) {
                                if (z13) {
                                    r15 = c12;
                                } else if (z14) {
                                    c11 = 6;
                                    r15 = c11;
                                } else {
                                    r15 = c14;
                                }
                            } else if (z13) {
                                r15 = c13;
                            } else if (z14) {
                                c11 = 5;
                                r15 = c11;
                            } else {
                                r15 = z10;
                            }
                            String string6 = sb2.toString();
                            if (arrayList2.isEmpty()) {
                                arrayList = null;
                            } else {
                                arrayList = arrayList2;
                            }
                            if (errorCorrectionLevel == null) {
                                string = null;
                            } else {
                                string = errorCorrectionLevel.toString();
                            }
                            return new id.d(bArr, string6, arrayList, string, i11, iD, r15);
                        }
                        z11 = z10;
                        break;
                        break;
                    case 10:
                        c14 = 2;
                        c13 = 3;
                        modeForBits = modeForBits;
                        c12 = 4;
                        int iD3 = cVar.d(4);
                        int iD4 = cVar.d(modeForBits.getCharacterCountBits(gVar));
                        z10 = true;
                        if (iD3 == 1) {
                            d(cVar, sb2, iD4);
                        }
                        if (modeForBits == Mode.TERMINATOR) {
                            if (characterSetECIByValue != null) {
                                if (z13) {
                                    r15 = c12;
                                } else if (z14) {
                                    c11 = 6;
                                    r15 = c11;
                                } else {
                                    r15 = c14;
                                }
                            } else if (z13) {
                                r15 = c13;
                            } else if (z14) {
                                c11 = 5;
                                r15 = c11;
                            } else {
                                r15 = z10;
                            }
                            String string7 = sb2.toString();
                            if (arrayList2.isEmpty()) {
                                arrayList = null;
                            } else {
                                arrayList = arrayList2;
                            }
                            if (errorCorrectionLevel == null) {
                                string = null;
                            } else {
                                string = errorCorrectionLevel.toString();
                            }
                            return new id.d(bArr, string7, arrayList, string, i11, iD, r15);
                        }
                        z11 = z10;
                        break;
                    default:
                        int iD5 = cVar.d(modeForBits.getCharacterCountBits(gVar));
                        int i12 = iArr[modeForBits.ordinal()];
                        if (i12 == z11) {
                            f(cVar, sb2, iD5);
                        } else if (i12 == 2) {
                            b(cVar, sb2, iD5, z12);
                        } else if (i12 == 3) {
                            c(cVar, sb2, iD5, characterSetECIByValue, arrayList2, map);
                        } else {
                            if (i12 != 4) {
                                throw FormatException.getFormatInstance();
                            }
                            e(cVar, sb2, iD5);
                            c14 = 2;
                            c13 = 3;
                            modeForBits = modeForBits;
                            z10 = z11;
                            c12 = 4;
                            if (modeForBits == Mode.TERMINATOR) {
                                if (characterSetECIByValue != null) {
                                    if (z13) {
                                        r15 = c12;
                                    } else if (z14) {
                                        c11 = 6;
                                        r15 = c11;
                                    } else {
                                        r15 = c14;
                                    }
                                } else if (z13) {
                                    r15 = c13;
                                } else if (z14) {
                                    c11 = 5;
                                    r15 = c11;
                                } else {
                                    r15 = z10;
                                }
                                String string8 = sb2.toString();
                                if (arrayList2.isEmpty()) {
                                    arrayList = null;
                                } else {
                                    arrayList = arrayList2;
                                }
                                if (errorCorrectionLevel == null) {
                                    string = null;
                                } else {
                                    string = errorCorrectionLevel.toString();
                                }
                                return new id.d(bArr, string8, arrayList, string, i11, iD, r15);
                            }
                            z11 = z10;
                        }
                        z10 = true;
                        if (modeForBits == Mode.TERMINATOR) {
                            if (characterSetECIByValue != null) {
                                if (z13) {
                                    r15 = c12;
                                } else if (z14) {
                                    c11 = 6;
                                    r15 = c11;
                                } else {
                                    r15 = c14;
                                }
                            } else if (z13) {
                                r15 = c13;
                            } else if (z14) {
                                c11 = 5;
                                r15 = c11;
                            } else {
                                r15 = z10;
                            }
                            String string9 = sb2.toString();
                            if (arrayList2.isEmpty()) {
                                arrayList = null;
                            } else {
                                arrayList = arrayList2;
                            }
                            if (errorCorrectionLevel == null) {
                                string = null;
                            } else {
                                string = errorCorrectionLevel.toString();
                            }
                            return new id.d(bArr, string9, arrayList, string, i11, iD, r15);
                        }
                        z11 = z10;
                        break;
                }
            } catch (IllegalArgumentException unused) {
                throw FormatException.getFormatInstance();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x006a  */
    private static void b(id.c cVar, StringBuilder sb2, int i11, boolean z10) throws FormatException {
        while (i11 > 1) {
            if (cVar.a() < 11) {
                throw FormatException.getFormatInstance();
            }
            int iD = cVar.d(11);
            sb2.append(h(iD / 45));
            sb2.append(h(iD % 45));
            i11 -= 2;
        }
        if (i11 == 1) {
            if (cVar.a() < 6) {
                throw FormatException.getFormatInstance();
            }
            sb2.append(h(cVar.d(6)));
        }
        if (z10) {
            for (int length = sb2.length(); length < sb2.length(); length++) {
                if (sb2.charAt(length) == '%') {
                    if (length < sb2.length() - 1) {
                        int i12 = length + 1;
                        if (sb2.charAt(i12) == '%') {
                            sb2.deleteCharAt(i12);
                        } else {
                            sb2.setCharAt(length, (char) 29);
                        }
                    } else {
                        sb2.setCharAt(length, (char) 29);
                    }
                }
            }
        }
    }

    private static void c(id.c cVar, StringBuilder sb2, int i11, CharacterSetECI characterSetECI, Collection collection, Map map) throws FormatException {
        if (i11 * 8 > cVar.a()) {
            throw FormatException.getFormatInstance();
        }
        byte[] bArr = new byte[i11];
        for (int i12 = 0; i12 < i11; i12++) {
            bArr[i12] = (byte) cVar.d(8);
        }
        sb2.append(new String(bArr, characterSetECI == null ? o.a(bArr, map) : characterSetECI.getCharset()));
        collection.add(bArr);
    }

    private static void d(id.c cVar, StringBuilder sb2, int i11) throws FormatException {
        if (o.f65202c == null) {
            throw FormatException.getFormatInstance();
        }
        if (i11 * 13 > cVar.a()) {
            throw FormatException.getFormatInstance();
        }
        byte[] bArr = new byte[i11 * 2];
        int i12 = 0;
        while (i11 > 0) {
            int iD = cVar.d(13);
            int i13 = (iD % 96) | ((iD / 96) << 8);
            int i14 = i13 + (i13 < 2560 ? 41377 : 42657);
            bArr[i12] = (byte) ((i14 >> 8) & 255);
            bArr[i12 + 1] = (byte) (i14 & 255);
            i12 += 2;
            i11--;
        }
        sb2.append(new String(bArr, o.f65202c));
    }

    private static void e(id.c cVar, StringBuilder sb2, int i11) throws FormatException {
        if (i11 * 13 > cVar.a()) {
            throw FormatException.getFormatInstance();
        }
        byte[] bArr = new byte[i11 * 2];
        int i12 = 0;
        while (i11 > 0) {
            int iD = cVar.d(13);
            int i13 = (iD % PsExtractor.AUDIO_STREAM) | ((iD / PsExtractor.AUDIO_STREAM) << 8);
            int i14 = i13 + (i13 < 7936 ? 33088 : 49472);
            bArr[i12] = (byte) (i14 >> 8);
            bArr[i12 + 1] = (byte) i14;
            i12 += 2;
            i11--;
        }
        sb2.append(new String(bArr, o.f65201b));
    }

    private static void f(id.c cVar, StringBuilder sb2, int i11) throws FormatException {
        while (i11 >= 3) {
            if (cVar.a() < 10) {
                throw FormatException.getFormatInstance();
            }
            int iD = cVar.d(10);
            if (iD >= 1000) {
                throw FormatException.getFormatInstance();
            }
            sb2.append(h(iD / 100));
            sb2.append(h((iD / 10) % 10));
            sb2.append(h(iD % 10));
            i11 -= 3;
        }
        if (i11 == 2) {
            if (cVar.a() < 7) {
                throw FormatException.getFormatInstance();
            }
            int iD2 = cVar.d(7);
            if (iD2 >= 100) {
                throw FormatException.getFormatInstance();
            }
            sb2.append(h(iD2 / 10));
            sb2.append(h(iD2 % 10));
            return;
        }
        if (i11 == 1) {
            if (cVar.a() < 4) {
                throw FormatException.getFormatInstance();
            }
            int iD3 = cVar.d(4);
            if (iD3 >= 10) {
                throw FormatException.getFormatInstance();
            }
            sb2.append(h(iD3));
        }
    }

    private static int g(id.c cVar) throws FormatException {
        int iD = cVar.d(8);
        if ((iD & 128) == 0) {
            return iD & 127;
        }
        if ((iD & PsExtractor.AUDIO_STREAM) == 128) {
            return cVar.d(8) | ((iD & 63) << 8);
        }
        if ((iD & 224) == 192) {
            return cVar.d(16) | ((iD & 31) << 16);
        }
        throw FormatException.getFormatInstance();
    }

    private static char h(int i11) throws FormatException {
        char[] cArr = f32987a;
        if (i11 < cArr.length) {
            return cArr[i11];
        }
        throw FormatException.getFormatInstance();
    }
}
