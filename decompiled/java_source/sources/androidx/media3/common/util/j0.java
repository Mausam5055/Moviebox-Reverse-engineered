package androidx.media3.common.util;

import com.google.common.collect.ImmutableSet;
import com.google.common.primitives.Chars;
import com.google.common.primitives.Ints;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import okhttp3.internal.http2.Settings;
import okio.Utf8;

/* JADX INFO: loaded from: classes2.dex */
public final class j0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final char[] f10395d = {'\r', '\n'};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final char[] f10396e = {'\n'};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final ImmutableSet f10397f = ImmutableSet.of(StandardCharsets.US_ASCII, StandardCharsets.UTF_8, StandardCharsets.UTF_16, StandardCharsets.UTF_16BE, StandardCharsets.UTF_16LE);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private byte[] f10398a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f10399b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f10400c;

    public j0() {
        this.f10398a = a1.f10355f;
    }

    public j0(int i11) {
        this.f10398a = new byte[i11];
        this.f10400c = i11;
    }

    public j0(byte[] bArr) {
        this.f10398a = bArr;
        this.f10400c = bArr.length;
    }

    public j0(byte[] bArr, int i11) {
        this.f10398a = bArr;
        this.f10400c = i11;
    }

    private void Y(Charset charset) {
        if (m(charset, f10395d) == '\r') {
            m(charset, f10396e);
        }
    }

    private int d(Charset charset) {
        int i11;
        if (charset.equals(StandardCharsets.UTF_8) || charset.equals(StandardCharsets.US_ASCII)) {
            i11 = 1;
        } else {
            if (!charset.equals(StandardCharsets.UTF_16) && !charset.equals(StandardCharsets.UTF_16LE) && !charset.equals(StandardCharsets.UTF_16BE)) {
                throw new IllegalArgumentException("Unsupported charset: " + charset);
            }
            i11 = 2;
        }
        int i12 = this.f10399b;
        while (true) {
            int i13 = this.f10400c;
            if (i12 >= i13 - (i11 - 1)) {
                return i13;
            }
            if ((charset.equals(StandardCharsets.UTF_8) || charset.equals(StandardCharsets.US_ASCII)) && a1.I0(this.f10398a[i12])) {
                return i12;
            }
            if (charset.equals(StandardCharsets.UTF_16) || charset.equals(StandardCharsets.UTF_16BE)) {
                byte[] bArr = this.f10398a;
                if (bArr[i12] == 0 && a1.I0(bArr[i12 + 1])) {
                    return i12;
                }
            }
            if (charset.equals(StandardCharsets.UTF_16LE)) {
                byte[] bArr2 = this.f10398a;
                if (bArr2[i12 + 1] == 0 && a1.I0(bArr2[i12])) {
                    return i12;
                }
            }
            i12 += i11;
        }
    }

    private int i(Charset charset) {
        byte b11;
        byte b12;
        byte b13 = 1;
        if ((charset.equals(StandardCharsets.UTF_8) || charset.equals(StandardCharsets.US_ASCII)) && a() >= 1) {
            b11 = this.f10398a[this.f10399b];
            b12 = 0;
        } else {
            if ((charset.equals(StandardCharsets.UTF_16) || charset.equals(StandardCharsets.UTF_16BE)) && a() >= 2) {
                byte[] bArr = this.f10398a;
                int i11 = this.f10399b;
                b12 = bArr[i11];
                b11 = bArr[i11 + 1];
            } else {
                if (!charset.equals(StandardCharsets.UTF_16LE) || a() < 2) {
                    return 0;
                }
                byte[] bArr2 = this.f10398a;
                int i12 = this.f10399b;
                b12 = bArr2[i12 + 1];
                b11 = bArr2[i12];
            }
            b13 = 2;
        }
        return Ints.h(b12, b11, (byte) 0, b13);
    }

    private char m(Charset charset, char[] cArr) {
        int i11 = i(charset);
        if (i11 == 0) {
            return (char) 0;
        }
        char c11 = (char) (i11 >> 16);
        if (!Chars.a(cArr, c11)) {
            return (char) 0;
        }
        this.f10399b += i11 & Settings.DEFAULT_INITIAL_WINDOW_SIZE;
        return c11;
    }

    public long A() {
        byte[] bArr = this.f10398a;
        int i11 = this.f10399b;
        int i12 = i11 + 1;
        this.f10399b = i12;
        long j11 = (((long) bArr[i11]) & 255) << 56;
        int i13 = i11 + 2;
        this.f10399b = i13;
        long j12 = j11 | ((((long) bArr[i12]) & 255) << 48);
        int i14 = i11 + 3;
        this.f10399b = i14;
        long j13 = j12 | ((((long) bArr[i13]) & 255) << 40);
        int i15 = i11 + 4;
        this.f10399b = i15;
        long j14 = j13 | ((((long) bArr[i14]) & 255) << 32);
        int i16 = i11 + 5;
        this.f10399b = i16;
        long j15 = j14 | ((((long) bArr[i15]) & 255) << 24);
        int i17 = i11 + 6;
        this.f10399b = i17;
        long j16 = j15 | ((((long) bArr[i16]) & 255) << 16);
        int i18 = i11 + 7;
        this.f10399b = i18;
        long j17 = j16 | ((((long) bArr[i17]) & 255) << 8);
        this.f10399b = i11 + 8;
        return (((long) bArr[i18]) & 255) | j17;
    }

    public String B() {
        return n((char) 0);
    }

    public String C(int i11) {
        if (i11 == 0) {
            return "";
        }
        int i12 = this.f10399b;
        int i13 = (i12 + i11) - 1;
        String strI = a1.I(this.f10398a, i12, (i13 >= this.f10400c || this.f10398a[i13] != 0) ? i11 : i11 - 1);
        this.f10399b += i11;
        return strI;
    }

    public short D() {
        byte[] bArr = this.f10398a;
        int i11 = this.f10399b;
        int i12 = i11 + 1;
        this.f10399b = i12;
        int i13 = (bArr[i11] & 255) << 8;
        this.f10399b = i11 + 2;
        return (short) ((bArr[i12] & 255) | i13);
    }

    public String E(int i11) {
        return F(i11, StandardCharsets.UTF_8);
    }

    public String F(int i11, Charset charset) {
        String str = new String(this.f10398a, this.f10399b, i11, charset);
        this.f10399b += i11;
        return str;
    }

    public int G() {
        return (H() << 21) | (H() << 14) | (H() << 7) | H();
    }

    public int H() {
        byte[] bArr = this.f10398a;
        int i11 = this.f10399b;
        this.f10399b = i11 + 1;
        return bArr[i11] & 255;
    }

    public int I() {
        byte[] bArr = this.f10398a;
        int i11 = this.f10399b;
        int i12 = i11 + 1;
        this.f10399b = i12;
        int i13 = (bArr[i11] & 255) << 8;
        this.f10399b = i11 + 2;
        int i14 = (bArr[i12] & 255) | i13;
        this.f10399b = i11 + 4;
        return i14;
    }

    public long J() {
        byte[] bArr = this.f10398a;
        int i11 = this.f10399b;
        int i12 = i11 + 1;
        this.f10399b = i12;
        long j11 = (((long) bArr[i11]) & 255) << 24;
        int i13 = i11 + 2;
        this.f10399b = i13;
        long j12 = j11 | ((((long) bArr[i12]) & 255) << 16);
        int i14 = i11 + 3;
        this.f10399b = i14;
        long j13 = j12 | ((((long) bArr[i13]) & 255) << 8);
        this.f10399b = i11 + 4;
        return (((long) bArr[i14]) & 255) | j13;
    }

    public int K() {
        byte[] bArr = this.f10398a;
        int i11 = this.f10399b;
        int i12 = i11 + 1;
        this.f10399b = i12;
        int i13 = (bArr[i11] & 255) << 16;
        int i14 = i11 + 2;
        this.f10399b = i14;
        int i15 = ((bArr[i12] & 255) << 8) | i13;
        this.f10399b = i11 + 3;
        return (bArr[i14] & 255) | i15;
    }

    public int L() {
        int iQ = q();
        if (iQ >= 0) {
            return iQ;
        }
        throw new IllegalStateException("Top bit not zero: " + iQ);
    }

    public int M() {
        return Ints.d(N());
    }

    public long N() {
        long j11 = 0;
        for (int i11 = 0; i11 < 9; i11++) {
            if (this.f10399b == this.f10400c) {
                throw new IllegalStateException("Attempting to read a byte over the limit.");
            }
            long jH = H();
            j11 |= (127 & jH) << (i11 * 7);
            if ((jH & 128) == 0) {
                break;
            }
        }
        return j11;
    }

    public long O() {
        long jA = A();
        if (jA >= 0) {
            return jA;
        }
        throw new IllegalStateException("Top bit not zero: " + jA);
    }

    public int P() {
        byte[] bArr = this.f10398a;
        int i11 = this.f10399b;
        int i12 = i11 + 1;
        this.f10399b = i12;
        int i13 = (bArr[i11] & 255) << 8;
        this.f10399b = i11 + 2;
        return (bArr[i12] & 255) | i13;
    }

    public long Q() {
        int i11;
        int i12;
        long j11 = this.f10398a[this.f10399b];
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
            byte b11 = this.f10398a[this.f10399b + i11];
            if ((b11 & 192) != 128) {
                throw new NumberFormatException("Invalid UTF-8 sequence continuation byte: " + j11);
            }
            j11 = (j11 << 6) | ((long) (b11 & Utf8.REPLACEMENT_BYTE));
        }
        this.f10399b += i12;
        return j11;
    }

    public Charset R() {
        if (a() >= 3) {
            byte[] bArr = this.f10398a;
            int i11 = this.f10399b;
            if (bArr[i11] == -17 && bArr[i11 + 1] == -69 && bArr[i11 + 2] == -65) {
                this.f10399b = i11 + 3;
                return StandardCharsets.UTF_8;
            }
        }
        if (a() < 2) {
            return null;
        }
        byte[] bArr2 = this.f10398a;
        int i12 = this.f10399b;
        byte b11 = bArr2[i12];
        if (b11 == -2 && bArr2[i12 + 1] == -1) {
            this.f10399b = i12 + 2;
            return StandardCharsets.UTF_16BE;
        }
        if (b11 != -1 || bArr2[i12 + 1] != -2) {
            return null;
        }
        this.f10399b = i12 + 2;
        return StandardCharsets.UTF_16LE;
    }

    public void S(int i11) {
        U(b() < i11 ? new byte[i11] : this.f10398a, i11);
    }

    public void T(byte[] bArr) {
        U(bArr, bArr.length);
    }

    public void U(byte[] bArr, int i11) {
        this.f10398a = bArr;
        this.f10400c = i11;
        this.f10399b = 0;
    }

    public void V(int i11) {
        a.a(i11 >= 0 && i11 <= this.f10398a.length);
        this.f10400c = i11;
    }

    public void W(int i11) {
        a.a(i11 >= 0 && i11 <= this.f10400c);
        this.f10399b = i11;
    }

    public void X(int i11) {
        W(this.f10399b + i11);
    }

    public int a() {
        return this.f10400c - this.f10399b;
    }

    public int b() {
        return this.f10398a.length;
    }

    public void c(int i11) {
        if (i11 > b()) {
            this.f10398a = Arrays.copyOf(this.f10398a, i11);
        }
    }

    public byte[] e() {
        return this.f10398a;
    }

    public int f() {
        return this.f10399b;
    }

    public int g() {
        return this.f10400c;
    }

    public char h(Charset charset) {
        a.b(f10397f.contains(charset), "Unsupported charset: " + charset);
        return (char) (i(charset) >> 16);
    }

    public int j() {
        return this.f10398a[this.f10399b] & 255;
    }

    public void k(i0 i0Var, int i11) {
        l(i0Var.f10388a, 0, i11);
        i0Var.p(0);
    }

    public void l(byte[] bArr, int i11, int i12) {
        System.arraycopy(this.f10398a, this.f10399b, bArr, i11, i12);
        this.f10399b += i12;
    }

    public String n(char c11) {
        if (a() == 0) {
            return null;
        }
        int i11 = this.f10399b;
        while (i11 < this.f10400c && this.f10398a[i11] != c11) {
            i11++;
        }
        byte[] bArr = this.f10398a;
        int i12 = this.f10399b;
        String strI = a1.I(bArr, i12, i11 - i12);
        this.f10399b = i11;
        if (i11 < this.f10400c) {
            this.f10399b = i11 + 1;
        }
        return strI;
    }

    public double o() {
        return Double.longBitsToDouble(A());
    }

    public float p() {
        return Float.intBitsToFloat(q());
    }

    public int q() {
        byte[] bArr = this.f10398a;
        int i11 = this.f10399b;
        int i12 = i11 + 1;
        this.f10399b = i12;
        int i13 = (bArr[i11] & 255) << 24;
        int i14 = i11 + 2;
        this.f10399b = i14;
        int i15 = ((bArr[i12] & 255) << 16) | i13;
        int i16 = i11 + 3;
        this.f10399b = i16;
        int i17 = i15 | ((bArr[i14] & 255) << 8);
        this.f10399b = i11 + 4;
        return (bArr[i16] & 255) | i17;
    }

    public int r() {
        byte[] bArr = this.f10398a;
        int i11 = this.f10399b;
        int i12 = i11 + 1;
        this.f10399b = i12;
        int i13 = ((bArr[i11] & 255) << 24) >> 8;
        int i14 = i11 + 2;
        this.f10399b = i14;
        int i15 = ((bArr[i12] & 255) << 8) | i13;
        this.f10399b = i11 + 3;
        return (bArr[i14] & 255) | i15;
    }

    public String s() {
        return t(StandardCharsets.UTF_8);
    }

    public String t(Charset charset) {
        a.b(f10397f.contains(charset), "Unsupported charset: " + charset);
        if (a() == 0) {
            return null;
        }
        if (!charset.equals(StandardCharsets.US_ASCII)) {
            R();
        }
        String strF = F(d(charset) - this.f10399b, charset);
        if (this.f10399b == this.f10400c) {
            return strF;
        }
        Y(charset);
        return strF;
    }

    public int u() {
        byte[] bArr = this.f10398a;
        int i11 = this.f10399b;
        int i12 = i11 + 1;
        this.f10399b = i12;
        int i13 = bArr[i11] & 255;
        int i14 = i11 + 2;
        this.f10399b = i14;
        int i15 = ((bArr[i12] & 255) << 8) | i13;
        int i16 = i11 + 3;
        this.f10399b = i16;
        int i17 = i15 | ((bArr[i14] & 255) << 16);
        this.f10399b = i11 + 4;
        return ((bArr[i16] & 255) << 24) | i17;
    }

    public long v() {
        byte[] bArr = this.f10398a;
        int i11 = this.f10399b;
        int i12 = i11 + 1;
        this.f10399b = i12;
        long j11 = ((long) bArr[i11]) & 255;
        int i13 = i11 + 2;
        this.f10399b = i13;
        long j12 = j11 | ((((long) bArr[i12]) & 255) << 8);
        int i14 = i11 + 3;
        this.f10399b = i14;
        long j13 = j12 | ((((long) bArr[i13]) & 255) << 16);
        int i15 = i11 + 4;
        this.f10399b = i15;
        long j14 = j13 | ((((long) bArr[i14]) & 255) << 24);
        int i16 = i11 + 5;
        this.f10399b = i16;
        long j15 = j14 | ((((long) bArr[i15]) & 255) << 32);
        int i17 = i11 + 6;
        this.f10399b = i17;
        long j16 = j15 | ((((long) bArr[i16]) & 255) << 40);
        int i18 = i11 + 7;
        this.f10399b = i18;
        long j17 = j16 | ((((long) bArr[i17]) & 255) << 48);
        this.f10399b = i11 + 8;
        return ((((long) bArr[i18]) & 255) << 56) | j17;
    }

    public short w() {
        byte[] bArr = this.f10398a;
        int i11 = this.f10399b;
        int i12 = i11 + 1;
        this.f10399b = i12;
        int i13 = bArr[i11] & 255;
        this.f10399b = i11 + 2;
        return (short) (((bArr[i12] & 255) << 8) | i13);
    }

    public long x() {
        byte[] bArr = this.f10398a;
        int i11 = this.f10399b;
        int i12 = i11 + 1;
        this.f10399b = i12;
        long j11 = ((long) bArr[i11]) & 255;
        int i13 = i11 + 2;
        this.f10399b = i13;
        long j12 = j11 | ((((long) bArr[i12]) & 255) << 8);
        int i14 = i11 + 3;
        this.f10399b = i14;
        long j13 = j12 | ((((long) bArr[i13]) & 255) << 16);
        this.f10399b = i11 + 4;
        return ((((long) bArr[i14]) & 255) << 24) | j13;
    }

    public int y() {
        int iU = u();
        if (iU >= 0) {
            return iU;
        }
        throw new IllegalStateException("Top bit not zero: " + iU);
    }

    public int z() {
        byte[] bArr = this.f10398a;
        int i11 = this.f10399b;
        int i12 = i11 + 1;
        this.f10399b = i12;
        int i13 = bArr[i11] & 255;
        this.f10399b = i11 + 2;
        return ((bArr[i12] & 255) << 8) | i13;
    }
}
