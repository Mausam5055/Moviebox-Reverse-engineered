package com.google.android.exoplayer2.util;

/* JADX INFO: loaded from: classes3.dex */
public final class e0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private byte[] f27568a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f27569b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f27570c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f27571d;

    public e0(byte[] bArr, int i11, int i12) {
        i(bArr, i11, i12);
    }

    private void a() {
        int i11;
        int i12 = this.f27570c;
        a.g(i12 >= 0 && (i12 < (i11 = this.f27569b) || (i12 == i11 && this.f27571d == 0)));
    }

    private int f() {
        int i11 = 0;
        while (!d()) {
            i11++;
        }
        return ((1 << i11) - 1) + (i11 > 0 ? e(i11) : 0);
    }

    private boolean j(int i11) {
        if (2 <= i11 && i11 < this.f27569b) {
            byte[] bArr = this.f27568a;
            if (bArr[i11] == 3 && bArr[i11 - 2] == 0 && bArr[i11 - 1] == 0) {
                return true;
            }
        }
        return false;
    }

    public boolean b(int i11) {
        int i12 = this.f27570c;
        int i13 = i11 / 8;
        int i14 = i12 + i13;
        int i15 = (this.f27571d + i11) - (i13 * 8);
        if (i15 > 7) {
            i14++;
            i15 -= 8;
        }
        while (true) {
            i12++;
            if (i12 > i14 || i14 >= this.f27569b) {
                break;
            }
            if (j(i12)) {
                i14++;
                i12 += 2;
            }
        }
        int i16 = this.f27569b;
        if (i14 >= i16) {
            return i14 == i16 && i15 == 0;
        }
        return true;
    }

    public boolean c() {
        int i11 = this.f27570c;
        int i12 = this.f27571d;
        int i13 = 0;
        while (this.f27570c < this.f27569b && !d()) {
            i13++;
        }
        boolean z10 = this.f27570c == this.f27569b;
        this.f27570c = i11;
        this.f27571d = i12;
        return !z10 && b((i13 * 2) + 1);
    }

    public boolean d() {
        boolean z10 = (this.f27568a[this.f27570c] & (128 >> this.f27571d)) != 0;
        k();
        return z10;
    }

    public int e(int i11) {
        int i12;
        this.f27571d += i11;
        int i13 = 0;
        while (true) {
            i12 = this.f27571d;
            int i14 = 2;
            if (i12 <= 8) {
                break;
            }
            int i15 = i12 - 8;
            this.f27571d = i15;
            byte[] bArr = this.f27568a;
            int i16 = this.f27570c;
            i13 |= (bArr[i16] & 255) << i15;
            if (!j(i16 + 1)) {
                i14 = 1;
            }
            this.f27570c = i16 + i14;
        }
        byte[] bArr2 = this.f27568a;
        int i17 = this.f27570c;
        int i18 = ((-1) >>> (32 - i11)) & (i13 | ((bArr2[i17] & 255) >> (8 - i12)));
        if (i12 == 8) {
            this.f27571d = 0;
            this.f27570c = i17 + (j(i17 + 1) ? 2 : 1);
        }
        a();
        return i18;
    }

    public int g() {
        int iF = f();
        return (iF % 2 == 0 ? -1 : 1) * ((iF + 1) / 2);
    }

    public int h() {
        return f();
    }

    public void i(byte[] bArr, int i11, int i12) {
        this.f27568a = bArr;
        this.f27570c = i11;
        this.f27569b = i12;
        this.f27571d = 0;
        a();
    }

    public void k() {
        int i11 = this.f27571d + 1;
        this.f27571d = i11;
        if (i11 == 8) {
            this.f27571d = 0;
            int i12 = this.f27570c;
            this.f27570c = i12 + (j(i12 + 1) ? 2 : 1);
        }
        a();
    }

    public void l(int i11) {
        int i12 = this.f27570c;
        int i13 = i11 / 8;
        int i14 = i12 + i13;
        this.f27570c = i14;
        int i15 = this.f27571d + (i11 - (i13 * 8));
        this.f27571d = i15;
        if (i15 > 7) {
            this.f27570c = i14 + 1;
            this.f27571d = i15 - 8;
        }
        while (true) {
            i12++;
            if (i12 > this.f27570c) {
                a();
                return;
            } else if (j(i12)) {
                this.f27570c++;
                i12 += 2;
            }
        }
    }
}
