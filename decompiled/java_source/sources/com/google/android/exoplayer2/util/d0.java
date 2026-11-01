package com.google.android.exoplayer2.util;

import java.nio.charset.Charset;
import java.util.Arrays;
import okio.Utf8;

/* JADX INFO: loaded from: classes3.dex */
public final class d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private byte[] f27564a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f27565b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f27566c;

    public d0() {
        this.f27564a = p0.f27631f;
    }

    public d0(int i11) {
        this.f27564a = new byte[i11];
        this.f27566c = i11;
    }

    public d0(byte[] bArr) {
        this.f27564a = bArr;
        this.f27566c = bArr.length;
    }

    public d0(byte[] bArr, int i11) {
        this.f27564a = bArr;
        this.f27566c = i11;
    }

    public String A(int i11) {
        return B(i11, com.google.common.base.c.f30228c);
    }

    public String B(int i11, Charset charset) {
        String str = new String(this.f27564a, this.f27565b, i11, charset);
        this.f27565b += i11;
        return str;
    }

    public int C() {
        return (D() << 21) | (D() << 14) | (D() << 7) | D();
    }

    public int D() {
        byte[] bArr = this.f27564a;
        int i11 = this.f27565b;
        this.f27565b = i11 + 1;
        return bArr[i11] & 255;
    }

    public int E() {
        byte[] bArr = this.f27564a;
        int i11 = this.f27565b;
        int i12 = i11 + 1;
        this.f27565b = i12;
        int i13 = (bArr[i11] & 255) << 8;
        this.f27565b = i11 + 2;
        int i14 = (bArr[i12] & 255) | i13;
        this.f27565b = i11 + 4;
        return i14;
    }

    public long F() {
        byte[] bArr = this.f27564a;
        int i11 = this.f27565b;
        int i12 = i11 + 1;
        this.f27565b = i12;
        long j11 = (((long) bArr[i11]) & 255) << 24;
        int i13 = i11 + 2;
        this.f27565b = i13;
        long j12 = j11 | ((((long) bArr[i12]) & 255) << 16);
        int i14 = i11 + 3;
        this.f27565b = i14;
        long j13 = j12 | ((((long) bArr[i13]) & 255) << 8);
        this.f27565b = i11 + 4;
        return (((long) bArr[i14]) & 255) | j13;
    }

    public int G() {
        byte[] bArr = this.f27564a;
        int i11 = this.f27565b;
        int i12 = i11 + 1;
        this.f27565b = i12;
        int i13 = (bArr[i11] & 255) << 16;
        int i14 = i11 + 2;
        this.f27565b = i14;
        int i15 = ((bArr[i12] & 255) << 8) | i13;
        this.f27565b = i11 + 3;
        return (bArr[i14] & 255) | i15;
    }

    public int H() {
        int iN = n();
        if (iN >= 0) {
            return iN;
        }
        throw new IllegalStateException("Top bit not zero: " + iN);
    }

    public long I() {
        long jW = w();
        if (jW >= 0) {
            return jW;
        }
        throw new IllegalStateException("Top bit not zero: " + jW);
    }

    public int J() {
        byte[] bArr = this.f27564a;
        int i11 = this.f27565b;
        int i12 = i11 + 1;
        this.f27565b = i12;
        int i13 = (bArr[i11] & 255) << 8;
        this.f27565b = i11 + 2;
        return (bArr[i12] & 255) | i13;
    }

    public long K() {
        int i11;
        int i12;
        long j11 = this.f27564a[this.f27565b];
        int i13 = 7;
        while (true) {
            if (i13 >= 0) {
                int i14 = 1 << i13;
                if ((((long) i14) & j11) == 0) {
                    if (i13 < 6) {
                        j11 &= (long) (i14 - 1);
                        i12 = 7 - i13;
                        break;
                    }
                    if (i13 == 7) {
                        i12 = 1;
                        break;
                    }
                } else {
                    i13--;
                }
            }
            i12 = 0;
            break;
        }
        if (i12 == 0) {
            throw new NumberFormatException("Invalid UTF-8 sequence first byte: " + j11);
        }
        for (i11 = 1; i11 < i12; i11++) {
            byte b11 = this.f27564a[this.f27565b + i11];
            if ((b11 & 192) != 128) {
                throw new NumberFormatException("Invalid UTF-8 sequence continuation byte: " + j11);
            }
            j11 = (j11 << 6) | ((long) (b11 & Utf8.REPLACEMENT_BYTE));
        }
        this.f27565b += i12;
        return j11;
    }

    public void L(int i11) {
        N(b() < i11 ? new byte[i11] : this.f27564a, i11);
    }

    public void M(byte[] bArr) {
        N(bArr, bArr.length);
    }

    public void N(byte[] bArr, int i11) {
        this.f27564a = bArr;
        this.f27566c = i11;
        this.f27565b = 0;
    }

    public void O(int i11) {
        a.a(i11 >= 0 && i11 <= this.f27564a.length);
        this.f27566c = i11;
    }

    public void P(int i11) {
        a.a(i11 >= 0 && i11 <= this.f27566c);
        this.f27565b = i11;
    }

    public void Q(int i11) {
        P(this.f27565b + i11);
    }

    public int a() {
        return this.f27566c - this.f27565b;
    }

    public int b() {
        return this.f27564a.length;
    }

    public void c(int i11) {
        if (i11 > b()) {
            this.f27564a = Arrays.copyOf(this.f27564a, i11);
        }
    }

    public byte[] d() {
        return this.f27564a;
    }

    public int e() {
        return this.f27565b;
    }

    public int f() {
        return this.f27566c;
    }

    public char g() {
        byte[] bArr = this.f27564a;
        int i11 = this.f27565b;
        return (char) ((bArr[i11 + 1] & 255) | ((bArr[i11] & 255) << 8));
    }

    public int h() {
        return this.f27564a[this.f27565b] & 255;
    }

    public void i(c0 c0Var, int i11) {
        j(c0Var.f27560a, 0, i11);
        c0Var.p(0);
    }

    public void j(byte[] bArr, int i11, int i12) {
        System.arraycopy(this.f27564a, this.f27565b, bArr, i11, i12);
        this.f27565b += i12;
    }

    public String k(char c11) {
        if (a() == 0) {
            return null;
        }
        int i11 = this.f27565b;
        while (i11 < this.f27566c && this.f27564a[i11] != c11) {
            i11++;
        }
        byte[] bArr = this.f27564a;
        int i12 = this.f27565b;
        String strE = p0.E(bArr, i12, i11 - i12);
        this.f27565b = i11;
        if (i11 < this.f27566c) {
            this.f27565b = i11 + 1;
        }
        return strE;
    }

    public double l() {
        return Double.longBitsToDouble(w());
    }

    public float m() {
        return Float.intBitsToFloat(n());
    }

    public int n() {
        byte[] bArr = this.f27564a;
        int i11 = this.f27565b;
        int i12 = i11 + 1;
        this.f27565b = i12;
        int i13 = (bArr[i11] & 255) << 24;
        int i14 = i11 + 2;
        this.f27565b = i14;
        int i15 = ((bArr[i12] & 255) << 16) | i13;
        int i16 = i11 + 3;
        this.f27565b = i16;
        int i17 = i15 | ((bArr[i14] & 255) << 8);
        this.f27565b = i11 + 4;
        return (bArr[i16] & 255) | i17;
    }

    public int o() {
        byte[] bArr = this.f27564a;
        int i11 = this.f27565b;
        int i12 = i11 + 1;
        this.f27565b = i12;
        int i13 = ((bArr[i11] & 255) << 24) >> 8;
        int i14 = i11 + 2;
        this.f27565b = i14;
        int i15 = ((bArr[i12] & 255) << 8) | i13;
        this.f27565b = i11 + 3;
        return (bArr[i14] & 255) | i15;
    }

    public String p() {
        if (a() == 0) {
            return null;
        }
        int i11 = this.f27565b;
        while (i11 < this.f27566c && !p0.v0(this.f27564a[i11])) {
            i11++;
        }
        int i12 = this.f27565b;
        if (i11 - i12 >= 3) {
            byte[] bArr = this.f27564a;
            if (bArr[i12] == -17 && bArr[i12 + 1] == -69 && bArr[i12 + 2] == -65) {
                this.f27565b = i12 + 3;
            }
        }
        byte[] bArr2 = this.f27564a;
        int i13 = this.f27565b;
        String strE = p0.E(bArr2, i13, i11 - i13);
        this.f27565b = i11;
        int i14 = this.f27566c;
        if (i11 == i14) {
            return strE;
        }
        byte[] bArr3 = this.f27564a;
        if (bArr3[i11] == 13) {
            int i15 = i11 + 1;
            this.f27565b = i15;
            if (i15 == i14) {
                return strE;
            }
        }
        int i16 = this.f27565b;
        if (bArr3[i16] == 10) {
            this.f27565b = i16 + 1;
        }
        return strE;
    }

    public int q() {
        byte[] bArr = this.f27564a;
        int i11 = this.f27565b;
        int i12 = i11 + 1;
        this.f27565b = i12;
        int i13 = bArr[i11] & 255;
        int i14 = i11 + 2;
        this.f27565b = i14;
        int i15 = ((bArr[i12] & 255) << 8) | i13;
        int i16 = i11 + 3;
        this.f27565b = i16;
        int i17 = i15 | ((bArr[i14] & 255) << 16);
        this.f27565b = i11 + 4;
        return ((bArr[i16] & 255) << 24) | i17;
    }

    public long r() {
        byte[] bArr = this.f27564a;
        int i11 = this.f27565b;
        int i12 = i11 + 1;
        this.f27565b = i12;
        long j11 = ((long) bArr[i11]) & 255;
        int i13 = i11 + 2;
        this.f27565b = i13;
        long j12 = j11 | ((((long) bArr[i12]) & 255) << 8);
        int i14 = i11 + 3;
        this.f27565b = i14;
        long j13 = j12 | ((((long) bArr[i13]) & 255) << 16);
        int i15 = i11 + 4;
        this.f27565b = i15;
        long j14 = j13 | ((((long) bArr[i14]) & 255) << 24);
        int i16 = i11 + 5;
        this.f27565b = i16;
        long j15 = j14 | ((((long) bArr[i15]) & 255) << 32);
        int i17 = i11 + 6;
        this.f27565b = i17;
        long j16 = j15 | ((((long) bArr[i16]) & 255) << 40);
        int i18 = i11 + 7;
        this.f27565b = i18;
        long j17 = j16 | ((((long) bArr[i17]) & 255) << 48);
        this.f27565b = i11 + 8;
        return ((((long) bArr[i18]) & 255) << 56) | j17;
    }

    public short s() {
        byte[] bArr = this.f27564a;
        int i11 = this.f27565b;
        int i12 = i11 + 1;
        this.f27565b = i12;
        int i13 = bArr[i11] & 255;
        this.f27565b = i11 + 2;
        return (short) (((bArr[i12] & 255) << 8) | i13);
    }

    public long t() {
        byte[] bArr = this.f27564a;
        int i11 = this.f27565b;
        int i12 = i11 + 1;
        this.f27565b = i12;
        long j11 = ((long) bArr[i11]) & 255;
        int i13 = i11 + 2;
        this.f27565b = i13;
        long j12 = j11 | ((((long) bArr[i12]) & 255) << 8);
        int i14 = i11 + 3;
        this.f27565b = i14;
        long j13 = j12 | ((((long) bArr[i13]) & 255) << 16);
        this.f27565b = i11 + 4;
        return ((((long) bArr[i14]) & 255) << 24) | j13;
    }

    public int u() {
        int iQ = q();
        if (iQ >= 0) {
            return iQ;
        }
        throw new IllegalStateException("Top bit not zero: " + iQ);
    }

    public int v() {
        byte[] bArr = this.f27564a;
        int i11 = this.f27565b;
        int i12 = i11 + 1;
        this.f27565b = i12;
        int i13 = bArr[i11] & 255;
        this.f27565b = i11 + 2;
        return ((bArr[i12] & 255) << 8) | i13;
    }

    public long w() {
        byte[] bArr = this.f27564a;
        int i11 = this.f27565b;
        int i12 = i11 + 1;
        this.f27565b = i12;
        long j11 = (((long) bArr[i11]) & 255) << 56;
        int i13 = i11 + 2;
        this.f27565b = i13;
        long j12 = j11 | ((((long) bArr[i12]) & 255) << 48);
        int i14 = i11 + 3;
        this.f27565b = i14;
        long j13 = j12 | ((((long) bArr[i13]) & 255) << 40);
        int i15 = i11 + 4;
        this.f27565b = i15;
        long j14 = j13 | ((((long) bArr[i14]) & 255) << 32);
        int i16 = i11 + 5;
        this.f27565b = i16;
        long j15 = j14 | ((((long) bArr[i15]) & 255) << 24);
        int i17 = i11 + 6;
        this.f27565b = i17;
        long j16 = j15 | ((((long) bArr[i16]) & 255) << 16);
        int i18 = i11 + 7;
        this.f27565b = i18;
        long j17 = j16 | ((((long) bArr[i17]) & 255) << 8);
        this.f27565b = i11 + 8;
        return (((long) bArr[i18]) & 255) | j17;
    }

    public String x() {
        return k((char) 0);
    }

    public String y(int i11) {
        if (i11 == 0) {
            return "";
        }
        int i12 = this.f27565b;
        int i13 = (i12 + i11) - 1;
        String strE = p0.E(this.f27564a, i12, (i13 >= this.f27566c || this.f27564a[i13] != 0) ? i11 : i11 - 1);
        this.f27565b += i11;
        return strE;
    }

    public short z() {
        byte[] bArr = this.f27564a;
        int i11 = this.f27565b;
        int i12 = i11 + 1;
        this.f27565b = i12;
        int i13 = (bArr[i11] & 255) << 8;
        this.f27565b = i11 + 2;
        return (short) ((bArr[i12] & 255) | i13);
    }
}
