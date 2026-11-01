package com.google.zxing.qrcode.encoder;

import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.common.CharacterSetECI;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.google.zxing.qrcode.decoder.Mode;
import com.google.zxing.qrcode.decoder.g;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import id.o;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int[] f33050a = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 36, -1, -1, -1, 37, 38, -1, -1, -1, -1, 39, 40, -1, 41, 42, 43, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 44, -1, -1, -1, -1, -1, -1, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, -1, -1, -1, -1, -1};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final Charset f33051b = StandardCharsets.ISO_8859_1;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f33052a;

        static {
            int[] iArr = new int[Mode.values().length];
            f33052a = iArr;
            try {
                iArr[Mode.NUMERIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f33052a[Mode.ALPHANUMERIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f33052a[Mode.BYTE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f33052a[Mode.KANJI.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    static void a(String str, id.a aVar, Charset charset) {
        for (byte b11 : str.getBytes(charset)) {
            aVar.c(b11, 8);
        }
    }

    static void b(CharSequence charSequence, id.a aVar) throws WriterException {
        int length = charSequence.length();
        int i11 = 0;
        while (i11 < length) {
            int iP = p(charSequence.charAt(i11));
            if (iP == -1) {
                throw new WriterException();
            }
            int i12 = i11 + 1;
            if (i12 < length) {
                int iP2 = p(charSequence.charAt(i12));
                if (iP2 == -1) {
                    throw new WriterException();
                }
                aVar.c((iP * 45) + iP2, 11);
                i11 += 2;
            } else {
                aVar.c(iP, 6);
                i11 = i12;
            }
        }
    }

    static void c(String str, Mode mode, id.a aVar, Charset charset) {
        int i11 = a.f33052a[mode.ordinal()];
        if (i11 == 1) {
            h(str, aVar);
            return;
        }
        if (i11 == 2) {
            b(str, aVar);
            return;
        }
        if (i11 == 3) {
            a(str, aVar, charset);
        } else {
            if (i11 == 4) {
                e(str, aVar);
                return;
            }
            throw new WriterException("Invalid mode: " + mode);
        }
    }

    private static void d(CharacterSetECI characterSetECI, id.a aVar) {
        aVar.c(Mode.ECI.getBits(), 4);
        aVar.c(characterSetECI.getValue(), 8);
    }

    static void e(String str, id.a aVar) throws WriterException {
        int i11;
        byte[] bytes = str.getBytes(o.f65201b);
        if (bytes.length % 2 != 0) {
            throw new WriterException("Kanji byte size not even");
        }
        int length = bytes.length - 1;
        for (int i12 = 0; i12 < length; i12 += 2) {
            int i13 = ((bytes[i12] & 255) << 8) | (bytes[i12 + 1] & 255);
            int i14 = 33088;
            if (i13 >= 33088 && i13 <= 40956) {
                i11 = i13 - i14;
            } else if (i13 < 57408 || i13 > 60351) {
                i11 = -1;
            } else {
                i14 = 49472;
                i11 = i13 - i14;
            }
            if (i11 == -1) {
                throw new WriterException("Invalid byte sequence");
            }
            aVar.c(((i11 >> 8) * PsExtractor.AUDIO_STREAM) + (i11 & 255), 13);
        }
    }

    static void f(int i11, g gVar, Mode mode, id.a aVar) throws WriterException {
        int characterCountBits = mode.getCharacterCountBits(gVar);
        int i12 = 1 << characterCountBits;
        if (i11 < i12) {
            aVar.c(i11, characterCountBits);
            return;
        }
        throw new WriterException(i11 + " is bigger than " + (i12 - 1));
    }

    static void g(Mode mode, id.a aVar) {
        aVar.c(mode.getBits(), 4);
    }

    static void h(CharSequence charSequence, id.a aVar) {
        int length = charSequence.length();
        int i11 = 0;
        while (i11 < length) {
            int iCharAt = charSequence.charAt(i11) - '0';
            int i12 = i11 + 2;
            if (i12 < length) {
                aVar.c((iCharAt * 100) + ((charSequence.charAt(i11 + 1) - '0') * 10) + (charSequence.charAt(i12) - '0'), 10);
                i11 += 3;
            } else {
                i11++;
                if (i11 < length) {
                    aVar.c((iCharAt * 10) + (charSequence.charAt(i11) - '0'), 7);
                    i11 = i12;
                } else {
                    aVar.c(iCharAt, 4);
                }
            }
        }
    }

    private static int i(Mode mode, id.a aVar, id.a aVar2, g gVar) {
        return aVar.m() + mode.getCharacterCountBits(gVar) + aVar2.m();
    }

    private static int j(yd.a aVar) {
        return c.a(aVar) + c.c(aVar) + c.d(aVar) + c.e(aVar);
    }

    private static int k(id.a aVar, ErrorCorrectionLevel errorCorrectionLevel, g gVar, yd.a aVar2) throws WriterException {
        int i11 = Integer.MAX_VALUE;
        int i12 = -1;
        for (int i13 = 0; i13 < 8; i13++) {
            d.a(aVar, errorCorrectionLevel, gVar, i13, aVar2);
            int iJ = j(aVar2);
            if (iJ < i11) {
                i12 = i13;
                i11 = iJ;
            }
        }
        return i12;
    }

    private static Mode l(String str, Charset charset) {
        if (o.f65201b.equals(charset) && s(str)) {
            return Mode.KANJI;
        }
        boolean z10 = false;
        boolean z11 = false;
        for (int i11 = 0; i11 < str.length(); i11++) {
            char cCharAt = str.charAt(i11);
            if (cCharAt >= '0' && cCharAt <= '9') {
                z11 = true;
            } else {
                if (p(cCharAt) == -1) {
                    return Mode.BYTE;
                }
                z10 = true;
            }
        }
        if (z10) {
            return Mode.ALPHANUMERIC;
        }
        return z11 ? Mode.NUMERIC : Mode.BYTE;
    }

    private static g m(int i11, ErrorCorrectionLevel errorCorrectionLevel) throws WriterException {
        for (int i12 = 1; i12 <= 40; i12++) {
            g gVarI = g.i(i12);
            if (v(i11, gVarI, errorCorrectionLevel)) {
                return gVarI;
            }
        }
        throw new WriterException("Data too big");
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0037  */
    /* JADX WARN: Code duplicated, block: B:47:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:60:0x013d  */
    /* JADX WARN: Code duplicated, block: B:9:0x001c  */
    public static yd.b n(String str, ErrorCorrectionLevel errorCorrectionLevel, Map map) throws WriterException {
        boolean z10;
        boolean z11;
        g gVarT;
        g gVarE;
        id.a aVar;
        Mode mode;
        CharacterSetECI characterSetECI;
        int iK;
        boolean z12 = false;
        if (map != null) {
            EncodeHintType encodeHintType = EncodeHintType.GS1_FORMAT;
            if (map.containsKey(encodeHintType) && Boolean.parseBoolean(map.get(encodeHintType).toString())) {
                z10 = true;
            } else {
                z10 = false;
            }
        } else {
            z10 = false;
        }
        if (map != null) {
            EncodeHintType encodeHintType2 = EncodeHintType.QR_COMPACT;
            if (map.containsKey(encodeHintType2) && Boolean.parseBoolean(map.get(encodeHintType2).toString())) {
                z11 = true;
            } else {
                z11 = false;
            }
        } else {
            z11 = false;
        }
        Object obj = f33051b;
        if (map != null && map.containsKey(EncodeHintType.CHARACTER_SET)) {
            z12 = true;
        }
        Charset charsetForName = z12 ? Charset.forName(map.get(EncodeHintType.CHARACTER_SET).toString()) : obj;
        if (z11) {
            mode = Mode.BYTE;
            if (charsetForName.equals(obj)) {
                charsetForName = null;
            }
            MinimalEncoder.c cVarI = MinimalEncoder.i(str, null, charsetForName, z10, errorCorrectionLevel);
            aVar = new id.a();
            cVarI.b(aVar);
            gVarE = cVarI.e();
        } else {
            Mode modeL = l(str, charsetForName);
            id.a aVar2 = new id.a();
            Mode mode2 = Mode.BYTE;
            if (modeL == mode2 && z12 && (characterSetECI = CharacterSetECI.getCharacterSetECI(charsetForName)) != null) {
                d(characterSetECI, aVar2);
            }
            if (z10) {
                g(Mode.FNC1_FIRST_POSITION, aVar2);
            }
            g(modeL, aVar2);
            id.a aVar3 = new id.a();
            c(str, modeL, aVar3, charsetForName);
            if (map != null) {
                EncodeHintType encodeHintType3 = EncodeHintType.QR_VERSION;
                if (map.containsKey(encodeHintType3)) {
                    gVarT = g.i(Integer.parseInt(map.get(encodeHintType3).toString()));
                    if (!v(i(modeL, aVar2, aVar3, gVarT), gVarT, errorCorrectionLevel)) {
                        throw new WriterException("Data too big for requested version");
                    }
                } else {
                    gVarT = t(errorCorrectionLevel, modeL, aVar2, aVar3);
                }
            } else {
                gVarT = t(errorCorrectionLevel, modeL, aVar2, aVar3);
            }
            id.a aVar4 = new id.a();
            aVar4.b(aVar2);
            f(modeL == mode2 ? aVar3.n() : str.length(), gVarT, modeL, aVar4);
            aVar4.b(aVar3);
            gVarE = gVarT;
            aVar = aVar4;
            mode = modeL;
        }
        g.b bVarF = gVarE.f(errorCorrectionLevel);
        int iH = gVarE.h() - bVarF.d();
        u(iH, aVar);
        id.a aVarR = r(aVar, gVarE.h(), iH, bVarF.c());
        yd.b bVar = new yd.b();
        bVar.c(errorCorrectionLevel);
        bVar.f(mode);
        bVar.g(gVarE);
        int iE = gVarE.e();
        yd.a aVar5 = new yd.a(iE, iE);
        if (map != null) {
            EncodeHintType encodeHintType4 = EncodeHintType.QR_MASK_PATTERN;
            if (map.containsKey(encodeHintType4)) {
                iK = Integer.parseInt(map.get(encodeHintType4).toString());
                if (!yd.b.b(iK)) {
                    iK = -1;
                }
            } else {
                iK = -1;
            }
        } else {
            iK = -1;
        }
        if (iK == -1) {
            iK = k(aVarR, errorCorrectionLevel, gVarE, aVar5);
        }
        bVar.d(iK);
        d.a(aVarR, errorCorrectionLevel, gVarE, iK, aVar5);
        bVar.e(aVar5);
        return bVar;
    }

    static byte[] o(byte[] bArr, int i11) {
        int length = bArr.length;
        int[] iArr = new int[length + i11];
        for (int i12 = 0; i12 < length; i12++) {
            iArr[i12] = bArr[i12] & 255;
        }
        new kd.d(kd.a.f66765l).b(iArr, i11);
        byte[] bArr2 = new byte[i11];
        for (int i13 = 0; i13 < i11; i13++) {
            bArr2[i13] = (byte) iArr[length + i13];
        }
        return bArr2;
    }

    static int p(int i11) {
        int[] iArr = f33050a;
        if (i11 < iArr.length) {
            return iArr[i11];
        }
        return -1;
    }

    static void q(int i11, int i12, int i13, int i14, int[] iArr, int[] iArr2) throws WriterException {
        if (i14 >= i13) {
            throw new WriterException("Block ID too large");
        }
        int i15 = i11 % i13;
        int i16 = i13 - i15;
        int i17 = i11 / i13;
        int i18 = i17 + 1;
        int i19 = i12 / i13;
        int i20 = i19 + 1;
        int i21 = i17 - i19;
        int i22 = i18 - i20;
        if (i21 != i22) {
            throw new WriterException("EC bytes mismatch");
        }
        if (i13 != i16 + i15) {
            throw new WriterException("RS blocks mismatch");
        }
        if (i11 != ((i19 + i21) * i16) + ((i20 + i22) * i15)) {
            throw new WriterException("Total bytes mismatch");
        }
        if (i14 < i16) {
            iArr[0] = i19;
            iArr2[0] = i21;
        } else {
            iArr[0] = i20;
            iArr2[0] = i22;
        }
    }

    static id.a r(id.a aVar, int i11, int i12, int i13) throws WriterException {
        if (aVar.n() != i12) {
            throw new WriterException("Number of bits and data bytes does not match");
        }
        ArrayList arrayList = new ArrayList(i13);
        int i14 = 0;
        int iMax = 0;
        int iMax2 = 0;
        for (int i15 = 0; i15 < i13; i15++) {
            int[] iArr = new int[1];
            int[] iArr2 = new int[1];
            q(i11, i12, i13, i15, iArr, iArr2);
            int i16 = iArr[0];
            byte[] bArr = new byte[i16];
            aVar.t(i14 * 8, bArr, 0, i16);
            byte[] bArrO = o(bArr, iArr2[0]);
            arrayList.add(new com.google.zxing.qrcode.encoder.a(bArr, bArrO));
            iMax = Math.max(iMax, i16);
            iMax2 = Math.max(iMax2, bArrO.length);
            i14 += iArr[0];
        }
        if (i12 != i14) {
            throw new WriterException("Data bytes does not match offset");
        }
        id.a aVar2 = new id.a();
        for (int i17 = 0; i17 < iMax; i17++) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                byte[] bArrA = ((com.google.zxing.qrcode.encoder.a) it.next()).a();
                if (i17 < bArrA.length) {
                    aVar2.c(bArrA[i17], 8);
                }
            }
        }
        for (int i18 = 0; i18 < iMax2; i18++) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                byte[] bArrB = ((com.google.zxing.qrcode.encoder.a) it2.next()).b();
                if (i18 < bArrB.length) {
                    aVar2.c(bArrB[i18], 8);
                }
            }
        }
        if (i11 == aVar2.n()) {
            return aVar2;
        }
        throw new WriterException("Interleaving error: " + i11 + " and " + aVar2.n() + " differ.");
    }

    static boolean s(String str) {
        byte[] bytes = str.getBytes(o.f65201b);
        int length = bytes.length;
        if (length % 2 != 0) {
            return false;
        }
        for (int i11 = 0; i11 < length; i11 += 2) {
            int i12 = bytes[i11] & 255;
            if ((i12 < 129 || i12 > 159) && (i12 < 224 || i12 > 235)) {
                return false;
            }
        }
        return true;
    }

    private static g t(ErrorCorrectionLevel errorCorrectionLevel, Mode mode, id.a aVar, id.a aVar2) {
        return m(i(mode, aVar, aVar2, m(i(mode, aVar, aVar2, g.i(1)), errorCorrectionLevel)), errorCorrectionLevel);
    }

    static void u(int i11, id.a aVar) throws WriterException {
        int i12 = i11 * 8;
        if (aVar.m() > i12) {
            throw new WriterException("data bits cannot fit in the QR Code" + aVar.m() + " > " + i12);
        }
        for (int i13 = 0; i13 < 4 && aVar.m() < i12; i13++) {
            aVar.a(false);
        }
        int iM = aVar.m() & 7;
        if (iM > 0) {
            while (iM < 8) {
                aVar.a(false);
                iM++;
            }
        }
        int iN = i11 - aVar.n();
        for (int i14 = 0; i14 < iN; i14++) {
            aVar.c((i14 & 1) == 0 ? 236 : 17, 8);
        }
        if (aVar.m() != i12) {
            throw new WriterException("Bits size does not equal capacity");
        }
    }

    static boolean v(int i11, g gVar, ErrorCorrectionLevel errorCorrectionLevel) {
        return gVar.h() - gVar.f(errorCorrectionLevel).d() >= (i11 + 7) / 8;
    }
}
