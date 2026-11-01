package qd;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultMetadataType;
import java.util.Arrays;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class a extends p {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final char[] f73550d = "0123456789-$:/.+ABCD".toCharArray();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final int[] f73551e = {3, 6, 9, 96, 18, 66, 33, 36, 48, 72, 12, 24, 69, 81, 84, 21, 26, 41, 11, 14};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final char[] f73552f = {'A', 'B', 'C', 'D'};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final StringBuilder f73553a = new StringBuilder(20);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int[] f73554b = new int[80];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f73555c = 0;

    static boolean h(char[] cArr, char c11) {
        if (cArr != null) {
            for (char c12 : cArr) {
                if (c12 == c11) {
                    return true;
                }
            }
        }
        return false;
    }

    private void i(int i11) {
        int[] iArr = this.f73554b;
        int i12 = this.f73555c;
        iArr[i12] = i11;
        int i13 = i12 + 1;
        this.f73555c = i13;
        if (i13 >= iArr.length) {
            int[] iArr2 = new int[i13 * 2];
            System.arraycopy(iArr, 0, iArr2, 0, i13);
            this.f73554b = iArr2;
        }
    }

    private int j() throws NotFoundException {
        for (int i11 = 1; i11 < this.f73555c; i11 += 2) {
            int iL = l(i11);
            if (iL != -1 && h(f73552f, f73550d[iL])) {
                int i12 = 0;
                for (int i13 = i11; i13 < i11 + 7; i13++) {
                    i12 += this.f73554b[i13];
                }
                if (i11 == 1 || this.f73554b[i11 - 1] >= i12 / 2) {
                    return i11;
                }
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private void k(id.a aVar) throws NotFoundException {
        int i11 = 0;
        this.f73555c = 0;
        int iL = aVar.l(0);
        int iM = aVar.m();
        if (iL >= iM) {
            throw NotFoundException.getNotFoundInstance();
        }
        boolean z10 = true;
        while (iL < iM) {
            if (aVar.i(iL) != z10) {
                i11++;
            } else {
                i(i11);
                z10 = !z10;
                i11 = 1;
            }
            iL++;
        }
        i(i11);
    }

    private int l(int i11) {
        int i12 = i11 + 7;
        if (i12 >= this.f73555c) {
            return -1;
        }
        int[] iArr = this.f73554b;
        int i13 = Integer.MAX_VALUE;
        int i14 = 0;
        int i15 = Integer.MAX_VALUE;
        int i16 = 0;
        for (int i17 = i11; i17 < i12; i17 += 2) {
            int i18 = iArr[i17];
            if (i18 < i15) {
                i15 = i18;
            }
            if (i18 > i16) {
                i16 = i18;
            }
        }
        int i19 = (i15 + i16) / 2;
        int i20 = 0;
        for (int i21 = i11 + 1; i21 < i12; i21 += 2) {
            int i22 = iArr[i21];
            if (i22 < i13) {
                i13 = i22;
            }
            if (i22 > i20) {
                i20 = i22;
            }
        }
        int i23 = (i13 + i20) / 2;
        int i24 = 128;
        int i25 = 0;
        for (int i26 = 0; i26 < 7; i26++) {
            i24 >>= 1;
            if (iArr[i11 + i26] > ((i26 & 1) == 0 ? i19 : i23)) {
                i25 |= i24;
            }
        }
        while (true) {
            int[] iArr2 = f73551e;
            if (i14 >= iArr2.length) {
                return -1;
            }
            if (iArr2[i14] == i25) {
                return i14;
            }
            i14++;
        }
    }

    private void m(int i11) throws NotFoundException {
        int[] iArr = new int[4];
        iArr[0] = 0;
        iArr[1] = 0;
        iArr[2] = 0;
        iArr[3] = 0;
        int[] iArr2 = new int[4];
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int length = this.f73553a.length() - 1;
        int i12 = i11;
        int i13 = 0;
        while (true) {
            if (i13 > length) {
                break;
            }
            int i14 = f73551e[this.f73553a.charAt(i13)];
            for (int i15 = 6; i15 >= 0; i15--) {
                int i16 = (i15 & 1) + ((i14 & 1) * 2);
                iArr[i16] = iArr[i16] + this.f73554b[i12 + i15];
                iArr2[i16] = iArr2[i16] + 1;
                i14 >>= 1;
            }
            i12 += 8;
            i13++;
        }
        float[] fArr = new float[4];
        float[] fArr2 = new float[4];
        for (int i17 = 0; i17 < 2; i17++) {
            fArr2[i17] = 0.0f;
            int i18 = i17 + 2;
            float f11 = iArr[i17] / iArr2[i17];
            int i19 = iArr[i18];
            int i20 = iArr2[i18];
            float f12 = (f11 + (i19 / i20)) / 2.0f;
            fArr2[i18] = f12;
            fArr[i17] = f12;
            fArr[i18] = ((i19 * 2.0f) + 1.5f) / i20;
        }
        int i21 = i11;
        for (int i22 = 0; i22 <= length; i22++) {
            int i23 = f73551e[this.f73553a.charAt(i22)];
            for (int i24 = 6; i24 >= 0; i24--) {
                int i25 = (i24 & 1) + ((i23 & 1) * 2);
                float f13 = this.f73554b[i21 + i24];
                if (f13 < fArr2[i25] || f13 > fArr[i25]) {
                    throw NotFoundException.getNotFoundInstance();
                }
                i23 >>= 1;
            }
            i21 += 8;
        }
    }

    @Override // qd.p
    public com.google.zxing.j c(int i11, id.a aVar, Map map) throws NotFoundException {
        int i12;
        Arrays.fill(this.f73554b, 0);
        k(aVar);
        int iJ = j();
        this.f73553a.setLength(0);
        int i13 = iJ;
        while (true) {
            int iL = l(i13);
            if (iL == -1) {
                throw NotFoundException.getNotFoundInstance();
            }
            this.f73553a.append((char) iL);
            i12 = i13 + 8;
            if ((this.f73553a.length() > 1 && h(f73552f, f73550d[iL])) || i12 >= this.f73555c) {
                break;
            }
            i13 = i12;
        }
        int i14 = i13 + 7;
        int i15 = this.f73554b[i14];
        int i16 = 0;
        for (int i17 = -8; i17 < -1; i17++) {
            i16 += this.f73554b[i12 + i17];
        }
        if (i12 < this.f73555c && i15 < i16 / 2) {
            throw NotFoundException.getNotFoundInstance();
        }
        m(iJ);
        for (int i18 = 0; i18 < this.f73553a.length(); i18++) {
            StringBuilder sb2 = this.f73553a;
            sb2.setCharAt(i18, f73550d[sb2.charAt(i18)]);
        }
        char cCharAt = this.f73553a.charAt(0);
        char[] cArr = f73552f;
        if (!h(cArr, cCharAt)) {
            throw NotFoundException.getNotFoundInstance();
        }
        StringBuilder sb3 = this.f73553a;
        if (!h(cArr, sb3.charAt(sb3.length() - 1))) {
            throw NotFoundException.getNotFoundInstance();
        }
        if (this.f73553a.length() <= 3) {
            throw NotFoundException.getNotFoundInstance();
        }
        if (map == null || !map.containsKey(DecodeHintType.RETURN_CODABAR_START_END)) {
            StringBuilder sb4 = this.f73553a;
            sb4.deleteCharAt(sb4.length() - 1);
            this.f73553a.deleteCharAt(0);
        }
        int i19 = 0;
        for (int i20 = 0; i20 < iJ; i20++) {
            i19 += this.f73554b[i20];
        }
        float f11 = i19;
        while (iJ < i14) {
            i19 += this.f73554b[iJ];
            iJ++;
        }
        float f12 = i11;
        com.google.zxing.j jVar = new com.google.zxing.j(this.f73553a.toString(), null, new com.google.zxing.k[]{new com.google.zxing.k(f11, f12), new com.google.zxing.k(i19, f12)}, BarcodeFormat.CODABAR);
        jVar.h(ResultMetadataType.SYMBOLOGY_IDENTIFIER, "]F0");
        return jVar;
    }
}
