package com.google.android.exoplayer2.util;

import androidx.core.view.MotionEventCompat;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes3.dex */
public final class c0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public byte[] f27560a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f27561b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f27562c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f27563d;

    public c0() {
        this.f27560a = p0.f27631f;
    }

    public c0(byte[] bArr) {
        this(bArr, bArr.length);
    }

    public c0(byte[] bArr, int i11) {
        this.f27560a = bArr;
        this.f27563d = i11;
    }

    private void a() {
        int i11;
        int i12 = this.f27561b;
        a.g(i12 >= 0 && (i12 < (i11 = this.f27563d) || (i12 == i11 && this.f27562c == 0)));
    }

    public int b() {
        return ((this.f27563d - this.f27561b) * 8) - this.f27562c;
    }

    public void c() {
        if (this.f27562c == 0) {
            return;
        }
        this.f27562c = 0;
        this.f27561b++;
        a();
    }

    public int d() {
        a.g(this.f27562c == 0);
        return this.f27561b;
    }

    public int e() {
        return (this.f27561b * 8) + this.f27562c;
    }

    public void f(int i11, int i12) {
        if (i12 < 32) {
            i11 &= (1 << i12) - 1;
        }
        int iMin = Math.min(8 - this.f27562c, i12);
        int i13 = this.f27562c;
        int i14 = (8 - i13) - iMin;
        int i15 = (MotionEventCompat.ACTION_POINTER_INDEX_MASK >> i13) | ((1 << i14) - 1);
        byte[] bArr = this.f27560a;
        int i16 = this.f27561b;
        byte b11 = (byte) (i15 & bArr[i16]);
        bArr[i16] = b11;
        int i17 = i12 - iMin;
        bArr[i16] = (byte) (b11 | ((i11 >>> i17) << i14));
        int i18 = i16 + 1;
        while (i17 > 8) {
            this.f27560a[i18] = (byte) (i11 >>> (i17 - 8));
            i17 -= 8;
            i18++;
        }
        int i19 = 8 - i17;
        byte[] bArr2 = this.f27560a;
        byte b12 = (byte) (bArr2[i18] & ((1 << i19) - 1));
        bArr2[i18] = b12;
        bArr2[i18] = (byte) (((i11 & ((1 << i17) - 1)) << i19) | b12);
        r(i12);
        a();
    }

    public boolean g() {
        boolean z10 = (this.f27560a[this.f27561b] & (128 >> this.f27562c)) != 0;
        q();
        return z10;
    }

    public int h(int i11) {
        int i12;
        if (i11 == 0) {
            return 0;
        }
        this.f27562c += i11;
        int i13 = 0;
        while (true) {
            i12 = this.f27562c;
            if (i12 <= 8) {
                break;
            }
            int i14 = i12 - 8;
            this.f27562c = i14;
            byte[] bArr = this.f27560a;
            int i15 = this.f27561b;
            this.f27561b = i15 + 1;
            i13 |= (bArr[i15] & 255) << i14;
        }
        byte[] bArr2 = this.f27560a;
        int i16 = this.f27561b;
        int i17 = ((-1) >>> (32 - i11)) & (i13 | ((bArr2[i16] & 255) >> (8 - i12)));
        if (i12 == 8) {
            this.f27562c = 0;
            this.f27561b = i16 + 1;
        }
        a();
        return i17;
    }

    public void i(byte[] bArr, int i11, int i12) {
        int i13 = (i12 >> 3) + i11;
        while (i11 < i13) {
            byte[] bArr2 = this.f27560a;
            int i14 = this.f27561b;
            int i15 = i14 + 1;
            this.f27561b = i15;
            byte b11 = bArr2[i14];
            int i16 = this.f27562c;
            byte b12 = (byte) (b11 << i16);
            bArr[i11] = b12;
            bArr[i11] = (byte) (((255 & bArr2[i15]) >> (8 - i16)) | b12);
            i11++;
        }
        int i17 = i12 & 7;
        if (i17 == 0) {
            return;
        }
        byte b13 = (byte) (bArr[i13] & (255 >> i17));
        bArr[i13] = b13;
        int i18 = this.f27562c;
        if (i18 + i17 > 8) {
            byte[] bArr3 = this.f27560a;
            int i19 = this.f27561b;
            this.f27561b = i19 + 1;
            bArr[i13] = (byte) (b13 | ((bArr3[i19] & 255) << i18));
            this.f27562c = i18 - 8;
        }
        int i20 = this.f27562c + i17;
        this.f27562c = i20;
        byte[] bArr4 = this.f27560a;
        int i21 = this.f27561b;
        bArr[i13] = (byte) (((byte) (((255 & bArr4[i21]) >> (8 - i20)) << (8 - i17))) | bArr[i13]);
        if (i20 == 8) {
            this.f27562c = 0;
            this.f27561b = i21 + 1;
        }
        a();
    }

    public long j(int i11) {
        return i11 <= 32 ? p0.b1(h(i11)) : p0.a1(h(i11 - 32), h(32));
    }

    public void k(byte[] bArr, int i11, int i12) {
        a.g(this.f27562c == 0);
        System.arraycopy(this.f27560a, this.f27561b, bArr, i11, i12);
        this.f27561b += i12;
        a();
    }

    public String l(int i11, Charset charset) {
        byte[] bArr = new byte[i11];
        k(bArr, 0, i11);
        return new String(bArr, charset);
    }

    public void m(d0 d0Var) {
        o(d0Var.d(), d0Var.f());
        p(d0Var.e() * 8);
    }

    public void n(byte[] bArr) {
        o(bArr, bArr.length);
    }

    public void o(byte[] bArr, int i11) {
        this.f27560a = bArr;
        this.f27561b = 0;
        this.f27562c = 0;
        this.f27563d = i11;
    }

    public void p(int i11) {
        int i12 = i11 / 8;
        this.f27561b = i12;
        this.f27562c = i11 - (i12 * 8);
        a();
    }

    public void q() {
        int i11 = this.f27562c + 1;
        this.f27562c = i11;
        if (i11 == 8) {
            this.f27562c = 0;
            this.f27561b++;
        }
        a();
    }

    public void r(int i11) {
        int i12 = i11 / 8;
        int i13 = this.f27561b + i12;
        this.f27561b = i13;
        int i14 = this.f27562c + (i11 - (i12 * 8));
        this.f27562c = i14;
        if (i14 > 7) {
            this.f27561b = i13 + 1;
            this.f27562c = i14 - 8;
        }
        a();
    }

    public void s(int i11) {
        a.g(this.f27562c == 0);
        this.f27561b += i11;
        a();
    }
}
