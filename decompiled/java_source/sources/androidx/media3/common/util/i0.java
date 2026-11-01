package androidx.media3.common.util;

import androidx.core.view.MotionEventCompat;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes2.dex */
public final class i0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public byte[] f10388a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f10389b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f10390c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f10391d;

    public i0() {
        this.f10388a = a1.f10355f;
    }

    public i0(byte[] bArr) {
        this(bArr, bArr.length);
    }

    public i0(byte[] bArr, int i11) {
        this.f10388a = bArr;
        this.f10391d = i11;
    }

    private void a() {
        int i11;
        int i12 = this.f10389b;
        a.g(i12 >= 0 && (i12 < (i11 = this.f10391d) || (i12 == i11 && this.f10390c == 0)));
    }

    public int b() {
        return ((this.f10391d - this.f10389b) * 8) - this.f10390c;
    }

    public void c() {
        if (this.f10390c == 0) {
            return;
        }
        this.f10390c = 0;
        this.f10389b++;
        a();
    }

    public int d() {
        a.g(this.f10390c == 0);
        return this.f10389b;
    }

    public int e() {
        return (this.f10389b * 8) + this.f10390c;
    }

    public void f(int i11, int i12) {
        if (i12 < 32) {
            i11 &= (1 << i12) - 1;
        }
        int iMin = Math.min(8 - this.f10390c, i12);
        int i13 = this.f10390c;
        int i14 = (8 - i13) - iMin;
        int i15 = (MotionEventCompat.ACTION_POINTER_INDEX_MASK >> i13) | ((1 << i14) - 1);
        byte[] bArr = this.f10388a;
        int i16 = this.f10389b;
        byte b11 = (byte) (i15 & bArr[i16]);
        bArr[i16] = b11;
        int i17 = i12 - iMin;
        bArr[i16] = (byte) (b11 | ((i11 >>> i17) << i14));
        int i18 = i16 + 1;
        while (i17 > 8) {
            this.f10388a[i18] = (byte) (i11 >>> (i17 - 8));
            i17 -= 8;
            i18++;
        }
        int i19 = 8 - i17;
        byte[] bArr2 = this.f10388a;
        byte b12 = (byte) (bArr2[i18] & ((1 << i19) - 1));
        bArr2[i18] = b12;
        bArr2[i18] = (byte) (((i11 & ((1 << i17) - 1)) << i19) | b12);
        r(i12);
        a();
    }

    public boolean g() {
        boolean z10 = (this.f10388a[this.f10389b] & (128 >> this.f10390c)) != 0;
        q();
        return z10;
    }

    public int h(int i11) {
        int i12;
        if (i11 == 0) {
            return 0;
        }
        this.f10390c += i11;
        int i13 = 0;
        while (true) {
            i12 = this.f10390c;
            if (i12 <= 8) {
                break;
            }
            int i14 = i12 - 8;
            this.f10390c = i14;
            byte[] bArr = this.f10388a;
            int i15 = this.f10389b;
            this.f10389b = i15 + 1;
            i13 |= (bArr[i15] & 255) << i14;
        }
        byte[] bArr2 = this.f10388a;
        int i16 = this.f10389b;
        int i17 = ((-1) >>> (32 - i11)) & (i13 | ((bArr2[i16] & 255) >> (8 - i12)));
        if (i12 == 8) {
            this.f10390c = 0;
            this.f10389b = i16 + 1;
        }
        a();
        return i17;
    }

    public void i(byte[] bArr, int i11, int i12) {
        int i13 = (i12 >> 3) + i11;
        while (i11 < i13) {
            byte[] bArr2 = this.f10388a;
            int i14 = this.f10389b;
            int i15 = i14 + 1;
            this.f10389b = i15;
            byte b11 = bArr2[i14];
            int i16 = this.f10390c;
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
        int i18 = this.f10390c;
        if (i18 + i17 > 8) {
            byte[] bArr3 = this.f10388a;
            int i19 = this.f10389b;
            this.f10389b = i19 + 1;
            bArr[i13] = (byte) (b13 | ((bArr3[i19] & 255) << i18));
            this.f10390c = i18 - 8;
        }
        int i20 = this.f10390c + i17;
        this.f10390c = i20;
        byte[] bArr4 = this.f10388a;
        int i21 = this.f10389b;
        bArr[i13] = (byte) (((byte) (((255 & bArr4[i21]) >> (8 - i20)) << (8 - i17))) | bArr[i13]);
        if (i20 == 8) {
            this.f10390c = 0;
            this.f10389b = i21 + 1;
        }
        a();
    }

    public long j(int i11) {
        return i11 <= 32 ? a1.w1(h(i11)) : a1.v1(h(i11 - 32), h(32));
    }

    public void k(byte[] bArr, int i11, int i12) {
        a.g(this.f10390c == 0);
        System.arraycopy(this.f10388a, this.f10389b, bArr, i11, i12);
        this.f10389b += i12;
        a();
    }

    public String l(int i11, Charset charset) {
        byte[] bArr = new byte[i11];
        k(bArr, 0, i11);
        return new String(bArr, charset);
    }

    public void m(j0 j0Var) {
        o(j0Var.e(), j0Var.g());
        p(j0Var.f() * 8);
    }

    public void n(byte[] bArr) {
        o(bArr, bArr.length);
    }

    public void o(byte[] bArr, int i11) {
        this.f10388a = bArr;
        this.f10389b = 0;
        this.f10390c = 0;
        this.f10391d = i11;
    }

    public void p(int i11) {
        int i12 = i11 / 8;
        this.f10389b = i12;
        this.f10390c = i11 - (i12 * 8);
        a();
    }

    public void q() {
        int i11 = this.f10390c + 1;
        this.f10390c = i11;
        if (i11 == 8) {
            this.f10390c = 0;
            this.f10389b++;
        }
        a();
    }

    public void r(int i11) {
        int i12 = i11 / 8;
        int i13 = this.f10389b + i12;
        this.f10389b = i13;
        int i14 = this.f10390c + (i11 - (i12 * 8));
        this.f10390c = i14;
        if (i14 > 7) {
            this.f10389b = i13 + 1;
            this.f10390c = i14 - 8;
        }
        a();
    }

    public void s(int i11) {
        a.g(this.f10390c == 0);
        this.f10389b += i11;
        a();
    }
}
