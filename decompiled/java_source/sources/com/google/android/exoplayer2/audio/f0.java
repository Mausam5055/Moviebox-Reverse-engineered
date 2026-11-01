package com.google.android.exoplayer2.audio;

import java.nio.ShortBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
final class f0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f24666a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f24667b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float f24668c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float f24669d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final float f24670e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f24671f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f24672g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f24673h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final short[] f24674i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private short[] f24675j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f24676k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private short[] f24677l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f24678m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private short[] f24679n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f24680o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f24681p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f24682q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f24683r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f24684s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f24685t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f24686u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f24687v;

    public f0(int i11, int i12, float f11, float f12, int i13) {
        this.f24666a = i11;
        this.f24667b = i12;
        this.f24668c = f11;
        this.f24669d = f12;
        this.f24670e = i11 / i13;
        this.f24671f = i11 / 400;
        int i14 = i11 / 65;
        this.f24672g = i14;
        int i15 = i14 * 2;
        this.f24673h = i15;
        this.f24674i = new short[i15];
        this.f24675j = new short[i15 * i12];
        this.f24677l = new short[i15 * i12];
        this.f24679n = new short[i15 * i12];
    }

    private void a(float f11, int i11) {
        int i12;
        int i13;
        if (this.f24678m == i11) {
            return;
        }
        int i14 = this.f24666a;
        int i15 = (int) (i14 / f11);
        while (true) {
            if (i15 <= 16384 && i14 <= 16384) {
                break;
            }
            i15 /= 2;
            i14 /= 2;
        }
        o(i11);
        int i16 = 0;
        while (true) {
            int i17 = this.f24680o;
            if (i16 >= i17 - 1) {
                u(i17 - 1);
                return;
            }
            while (true) {
                i12 = this.f24681p;
                int i18 = (i12 + 1) * i15;
                i13 = this.f24682q;
                if (i18 <= i13 * i14) {
                    break;
                }
                this.f24677l = f(this.f24677l, this.f24678m, 1);
                int i19 = 0;
                while (true) {
                    int i20 = this.f24667b;
                    if (i19 < i20) {
                        this.f24677l[(this.f24678m * i20) + i19] = n(this.f24679n, (i20 * i16) + i19, i14, i15);
                        i19++;
                    }
                }
                this.f24682q++;
                this.f24678m++;
            }
            int i21 = i12 + 1;
            this.f24681p = i21;
            if (i21 == i14) {
                this.f24681p = 0;
                com.google.android.exoplayer2.util.a.g(i13 == i15);
                this.f24682q = 0;
            }
            i16++;
        }
    }

    private void b(float f11) {
        int iW;
        int i11 = this.f24676k;
        if (i11 < this.f24673h) {
            return;
        }
        int i12 = 0;
        do {
            if (this.f24683r > 0) {
                iW = c(i12);
            } else {
                int iG = g(this.f24675j, i12);
                iW = ((double) f11) > 1.0d ? iG + w(this.f24675j, i12, f11, iG) : m(this.f24675j, i12, f11, iG);
            }
            i12 += iW;
        } while (this.f24673h + i12 <= i11);
        v(i12);
    }

    private int c(int i11) {
        int iMin = Math.min(this.f24673h, this.f24683r);
        d(this.f24675j, i11, iMin);
        this.f24683r -= iMin;
        return iMin;
    }

    private void d(short[] sArr, int i11, int i12) {
        short[] sArrF = f(this.f24677l, this.f24678m, i12);
        this.f24677l = sArrF;
        int i13 = this.f24667b;
        System.arraycopy(sArr, i11 * i13, sArrF, this.f24678m * i13, i13 * i12);
        this.f24678m += i12;
    }

    private void e(short[] sArr, int i11, int i12) {
        int i13 = this.f24673h / i12;
        int i14 = this.f24667b;
        int i15 = i12 * i14;
        int i16 = i11 * i14;
        for (int i17 = 0; i17 < i13; i17++) {
            int i18 = 0;
            for (int i19 = 0; i19 < i15; i19++) {
                i18 += sArr[(i17 * i15) + i16 + i19];
            }
            this.f24674i[i17] = (short) (i18 / i15);
        }
    }

    private short[] f(short[] sArr, int i11, int i12) {
        int length = sArr.length;
        int i13 = this.f24667b;
        int i14 = length / i13;
        return i11 + i12 <= i14 ? sArr : Arrays.copyOf(sArr, (((i14 * 3) / 2) + i12) * i13);
    }

    private int g(short[] sArr, int i11) {
        int iH;
        int i12 = this.f24666a;
        int i13 = i12 > 4000 ? i12 / 4000 : 1;
        if (this.f24667b == 1 && i13 == 1) {
            iH = h(sArr, i11, this.f24671f, this.f24672g);
        } else {
            e(sArr, i11, i13);
            int iH2 = h(this.f24674i, 0, this.f24671f / i13, this.f24672g / i13);
            if (i13 != 1) {
                int i14 = iH2 * i13;
                int i15 = i13 * 4;
                int i16 = i14 - i15;
                int i17 = i14 + i15;
                int i18 = this.f24671f;
                if (i16 < i18) {
                    i16 = i18;
                }
                int i19 = this.f24672g;
                if (i17 > i19) {
                    i17 = i19;
                }
                if (this.f24667b == 1) {
                    iH = h(sArr, i11, i16, i17);
                } else {
                    e(sArr, i11, 1);
                    iH = h(this.f24674i, 0, i16, i17);
                }
            } else {
                iH = iH2;
            }
        }
        int i20 = q(this.f24686u, this.f24687v) ? this.f24684s : iH;
        this.f24685t = this.f24686u;
        this.f24684s = iH;
        return i20;
    }

    private int h(short[] sArr, int i11, int i12, int i13) {
        int i14 = i11 * this.f24667b;
        int i15 = 255;
        int i16 = 1;
        int i17 = 0;
        int i18 = 0;
        while (i12 <= i13) {
            int iAbs = 0;
            for (int i19 = 0; i19 < i12; i19++) {
                iAbs += Math.abs(sArr[i14 + i19] - sArr[(i14 + i12) + i19]);
            }
            if (iAbs * i17 < i16 * i12) {
                i17 = i12;
                i16 = iAbs;
            }
            if (iAbs * i15 > i18 * i12) {
                i15 = i12;
                i18 = iAbs;
            }
            i12++;
        }
        this.f24686u = i16 / i17;
        this.f24687v = i18 / i15;
        return i17;
    }

    private int m(short[] sArr, int i11, float f11, int i12) {
        int i13;
        if (f11 < 0.5f) {
            i13 = (int) ((i12 * f11) / (1.0f - f11));
        } else {
            this.f24683r = (int) ((i12 * ((2.0f * f11) - 1.0f)) / (1.0f - f11));
            i13 = i12;
        }
        int i14 = i12 + i13;
        short[] sArrF = f(this.f24677l, this.f24678m, i14);
        this.f24677l = sArrF;
        int i15 = this.f24667b;
        System.arraycopy(sArr, i11 * i15, sArrF, this.f24678m * i15, i15 * i12);
        p(i13, this.f24667b, this.f24677l, this.f24678m + i12, sArr, i11 + i12, sArr, i11);
        this.f24678m += i14;
        return i13;
    }

    private short n(short[] sArr, int i11, int i12, int i13) {
        short s11 = sArr[i11];
        short s12 = sArr[i11 + this.f24667b];
        int i14 = this.f24682q * i12;
        int i15 = this.f24681p;
        int i16 = i15 * i13;
        int i17 = (i15 + 1) * i13;
        int i18 = i17 - i14;
        int i19 = i17 - i16;
        return (short) (((s11 * i18) + ((i19 - i18) * s12)) / i19);
    }

    private void o(int i11) {
        int i12 = this.f24678m - i11;
        short[] sArrF = f(this.f24679n, this.f24680o, i12);
        this.f24679n = sArrF;
        short[] sArr = this.f24677l;
        int i13 = this.f24667b;
        System.arraycopy(sArr, i11 * i13, sArrF, this.f24680o * i13, i13 * i12);
        this.f24678m = i11;
        this.f24680o += i12;
    }

    private static void p(int i11, int i12, short[] sArr, int i13, short[] sArr2, int i14, short[] sArr3, int i15) {
        for (int i16 = 0; i16 < i12; i16++) {
            int i17 = (i13 * i12) + i16;
            int i18 = (i15 * i12) + i16;
            int i19 = (i14 * i12) + i16;
            for (int i20 = 0; i20 < i11; i20++) {
                sArr[i17] = (short) (((sArr2[i19] * (i11 - i20)) + (sArr3[i18] * i20)) / i11);
                i17 += i12;
                i19 += i12;
                i18 += i12;
            }
        }
    }

    private boolean q(int i11, int i12) {
        return i11 != 0 && this.f24684s != 0 && i12 <= i11 * 3 && i11 * 2 > this.f24685t * 3;
    }

    private void r() {
        int i11 = this.f24678m;
        float f11 = this.f24668c;
        float f12 = this.f24669d;
        float f13 = f11 / f12;
        float f14 = this.f24670e * f12;
        double d11 = f13;
        if (d11 > 1.00001d || d11 < 0.99999d) {
            b(f13);
        } else {
            d(this.f24675j, 0, this.f24676k);
            this.f24676k = 0;
        }
        if (f14 != 1.0f) {
            a(f14, i11);
        }
    }

    private void u(int i11) {
        if (i11 == 0) {
            return;
        }
        short[] sArr = this.f24679n;
        int i12 = this.f24667b;
        System.arraycopy(sArr, i11 * i12, sArr, 0, (this.f24680o - i11) * i12);
        this.f24680o -= i11;
    }

    private void v(int i11) {
        int i12 = this.f24676k - i11;
        short[] sArr = this.f24675j;
        int i13 = this.f24667b;
        System.arraycopy(sArr, i11 * i13, sArr, 0, i13 * i12);
        this.f24676k = i12;
    }

    private int w(short[] sArr, int i11, float f11, int i12) {
        int i13;
        if (f11 >= 2.0f) {
            i13 = (int) (i12 / (f11 - 1.0f));
        } else {
            this.f24683r = (int) ((i12 * (2.0f - f11)) / (f11 - 1.0f));
            i13 = i12;
        }
        short[] sArrF = f(this.f24677l, this.f24678m, i13);
        this.f24677l = sArrF;
        p(i13, this.f24667b, sArrF, this.f24678m, sArr, i11, sArr, i11 + i12);
        this.f24678m += i13;
        return i13;
    }

    public void i() {
        this.f24676k = 0;
        this.f24678m = 0;
        this.f24680o = 0;
        this.f24681p = 0;
        this.f24682q = 0;
        this.f24683r = 0;
        this.f24684s = 0;
        this.f24685t = 0;
        this.f24686u = 0;
        this.f24687v = 0;
    }

    public void j(ShortBuffer shortBuffer) {
        int iMin = Math.min(shortBuffer.remaining() / this.f24667b, this.f24678m);
        shortBuffer.put(this.f24677l, 0, this.f24667b * iMin);
        int i11 = this.f24678m - iMin;
        this.f24678m = i11;
        short[] sArr = this.f24677l;
        int i12 = this.f24667b;
        System.arraycopy(sArr, iMin * i12, sArr, 0, i11 * i12);
    }

    public int k() {
        return this.f24678m * this.f24667b * 2;
    }

    public int l() {
        return this.f24676k * this.f24667b * 2;
    }

    public void s() {
        int i11;
        int i12 = this.f24676k;
        float f11 = this.f24668c;
        float f12 = this.f24669d;
        int i13 = this.f24678m + ((int) ((((i12 / (f11 / f12)) + this.f24680o) / (this.f24670e * f12)) + 0.5f));
        this.f24675j = f(this.f24675j, i12, (this.f24673h * 2) + i12);
        int i14 = 0;
        while (true) {
            i11 = this.f24673h;
            int i15 = this.f24667b;
            if (i14 >= i11 * 2 * i15) {
                break;
            }
            this.f24675j[(i15 * i12) + i14] = 0;
            i14++;
        }
        this.f24676k += i11 * 2;
        r();
        if (this.f24678m > i13) {
            this.f24678m = i13;
        }
        this.f24676k = 0;
        this.f24683r = 0;
        this.f24680o = 0;
    }

    public void t(ShortBuffer shortBuffer) {
        int iRemaining = shortBuffer.remaining();
        int i11 = this.f24667b;
        int i12 = iRemaining / i11;
        short[] sArrF = f(this.f24675j, this.f24676k, i12);
        this.f24675j = sArrF;
        shortBuffer.get(sArrF, this.f24676k * this.f24667b, ((i11 * i12) * 2) / 2);
        this.f24676k += i12;
        r();
    }
}
