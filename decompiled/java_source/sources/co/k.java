package co;

import java.nio.ShortBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f17601a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f17602b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float f17603c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float f17604d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f17605e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final float f17606f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f17607g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f17608h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f17609i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final short[] f17610j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private short[] f17611k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f17612l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private short[] f17613m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f17614n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private short[] f17615o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f17616p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f17617q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f17618r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f17619s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f17620t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f17621u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f17622v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f17623w;

    public k(int i11, int i12, float f11, float f12, float f13, int i13) {
        this.f17601a = i11;
        this.f17602b = i12;
        this.f17603c = f11;
        this.f17604d = f12;
        this.f17605e = f13;
        this.f17606f = i11 / i13;
        this.f17607g = i11 / 400;
        int i14 = i11 / 65;
        this.f17608h = i14;
        int i15 = i14 * 2;
        this.f17609i = i15;
        this.f17610j = new short[i15];
        this.f17611k = new short[i15 * i12];
        this.f17613m = new short[i15 * i12];
        this.f17615o = new short[i15 * i12];
    }

    private void a(float f11, int i11) {
        int i12;
        int i13;
        if (this.f17614n == i11) {
            return;
        }
        int i14 = this.f17601a;
        int i15 = (int) (i14 / f11);
        while (true) {
            if (i15 <= 16384 && i14 <= 16384) {
                break;
            }
            i15 /= 2;
            i14 /= 2;
        }
        n(i11);
        int i16 = 0;
        while (true) {
            int i17 = this.f17616p;
            if (i16 >= i17 - 1) {
                t(i17 - 1);
                return;
            }
            while (true) {
                i12 = this.f17617q;
                int i18 = (i12 + 1) * i15;
                i13 = this.f17618r;
                if (i18 <= i13 * i14) {
                    break;
                }
                this.f17613m = f(this.f17613m, this.f17614n, 1);
                int i19 = 0;
                while (true) {
                    int i20 = this.f17602b;
                    if (i19 < i20) {
                        this.f17613m[(this.f17614n * i20) + i19] = m(this.f17615o, (i20 * i16) + i19, i14, i15);
                        i19++;
                    }
                }
                this.f17618r++;
                this.f17614n++;
            }
            int i21 = i12 + 1;
            this.f17617q = i21;
            if (i21 == i14) {
                this.f17617q = 0;
                androidx.media3.common.util.a.g(i13 == i15);
                this.f17618r = 0;
            }
            i16++;
        }
    }

    private void b(float f11) {
        int iX;
        int i11 = this.f17612l;
        if (i11 < this.f17609i) {
            return;
        }
        int i12 = 0;
        do {
            if (this.f17619s > 0) {
                iX = c(i12);
            } else {
                int iG = g(this.f17611k, i12);
                iX = ((double) f11) > 1.0d ? iG + x(this.f17611k, i12, f11, iG) : l(this.f17611k, i12, f11, iG);
            }
            i12 += iX;
        } while (this.f17609i + i12 <= i11);
        u(i12);
    }

    private int c(int i11) {
        int iMin = Math.min(this.f17609i, this.f17619s);
        d(this.f17611k, i11, iMin);
        this.f17619s -= iMin;
        return iMin;
    }

    private void d(short[] sArr, int i11, int i12) {
        short[] sArrF = f(this.f17613m, this.f17614n, i12);
        this.f17613m = sArrF;
        int i13 = this.f17602b;
        System.arraycopy(sArr, i11 * i13, sArrF, this.f17614n * i13, i13 * i12);
        this.f17614n += i12;
    }

    private void e(short[] sArr, int i11, int i12) {
        int i13 = this.f17609i / i12;
        int i14 = this.f17602b;
        int i15 = i12 * i14;
        int i16 = i11 * i14;
        for (int i17 = 0; i17 < i13; i17++) {
            int i18 = 0;
            for (int i19 = 0; i19 < i15; i19++) {
                i18 += sArr[(i17 * i15) + i16 + i19];
            }
            this.f17610j[i17] = (short) (i18 / i15);
        }
    }

    private short[] f(short[] sArr, int i11, int i12) {
        int length = sArr.length;
        int i13 = this.f17602b;
        int i14 = length / i13;
        return i11 + i12 <= i14 ? sArr : Arrays.copyOf(sArr, (((i14 * 3) / 2) + i12) * i13);
    }

    private int g(short[] sArr, int i11) {
        int iH;
        int i12 = this.f17601a;
        int i13 = i12 > 4000 ? i12 / 4000 : 1;
        if (this.f17602b == 1 && i13 == 1) {
            iH = h(sArr, i11, this.f17607g, this.f17608h);
        } else {
            e(sArr, i11, i13);
            int iH2 = h(this.f17610j, 0, this.f17607g / i13, this.f17608h / i13);
            if (i13 != 1) {
                int i14 = iH2 * i13;
                int i15 = i13 * 4;
                int i16 = i14 - i15;
                int i17 = i14 + i15;
                int i18 = this.f17607g;
                if (i16 < i18) {
                    i16 = i18;
                }
                int i19 = this.f17608h;
                if (i17 > i19) {
                    i17 = i19;
                }
                if (this.f17602b == 1) {
                    iH = h(sArr, i11, i16, i17);
                } else {
                    e(sArr, i11, 1);
                    iH = h(this.f17610j, 0, i16, i17);
                }
            } else {
                iH = iH2;
            }
        }
        int i20 = p(this.f17622v, this.f17623w) ? this.f17620t : iH;
        this.f17621u = this.f17622v;
        this.f17620t = iH;
        return i20;
    }

    private int h(short[] sArr, int i11, int i12, int i13) {
        int i14 = i11 * this.f17602b;
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
        this.f17622v = i16 / i17;
        this.f17623w = i18 / i15;
        return i17;
    }

    private int l(short[] sArr, int i11, float f11, int i12) {
        int i13;
        if (f11 < 0.5f) {
            i13 = (int) ((i12 * f11) / (1.0f - f11));
        } else {
            this.f17619s = (int) ((i12 * ((2.0f * f11) - 1.0f)) / (1.0f - f11));
            i13 = i12;
        }
        int i14 = i12 + i13;
        short[] sArrF = f(this.f17613m, this.f17614n, i14);
        this.f17613m = sArrF;
        int i15 = this.f17602b;
        System.arraycopy(sArr, i11 * i15, sArrF, this.f17614n * i15, i15 * i12);
        o(i13, this.f17602b, this.f17613m, this.f17614n + i12, sArr, i11 + i12, sArr, i11);
        this.f17614n += i14;
        return i13;
    }

    private short m(short[] sArr, int i11, int i12, int i13) {
        short s11 = sArr[i11];
        short s12 = sArr[i11 + this.f17602b];
        int i14 = this.f17618r * i12;
        int i15 = this.f17617q;
        int i16 = i15 * i13;
        int i17 = (i15 + 1) * i13;
        int i18 = i17 - i14;
        int i19 = i17 - i16;
        return (short) (((s11 * i18) + ((i19 - i18) * s12)) / i19);
    }

    private void n(int i11) {
        int i12 = this.f17614n - i11;
        short[] sArrF = f(this.f17615o, this.f17616p, i12);
        this.f17615o = sArrF;
        short[] sArr = this.f17613m;
        int i13 = this.f17602b;
        System.arraycopy(sArr, i11 * i13, sArrF, this.f17616p * i13, i13 * i12);
        this.f17614n = i11;
        this.f17616p += i12;
    }

    private static void o(int i11, int i12, short[] sArr, int i13, short[] sArr2, int i14, short[] sArr3, int i15) {
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

    private boolean p(int i11, int i12) {
        return i11 != 0 && this.f17620t != 0 && i12 <= i11 * 3 && i11 * 2 > this.f17621u * 3;
    }

    private void q() {
        int i11 = this.f17614n;
        float f11 = this.f17603c;
        float f12 = this.f17604d;
        float f13 = f11 / f12;
        float f14 = this.f17606f * f12;
        double d11 = f13;
        if (d11 > 1.00001d || d11 < 0.99999d) {
            b(f13);
        } else {
            d(this.f17611k, 0, this.f17612l);
            this.f17612l = 0;
        }
        if (f14 != 1.0f) {
            a(f14, i11);
        }
        float f15 = this.f17605e;
        if (f15 != 1.0f) {
            v(this.f17613m, i11, this.f17614n - i11, f15);
        }
    }

    private void t(int i11) {
        if (i11 == 0) {
            return;
        }
        short[] sArr = this.f17615o;
        int i12 = this.f17602b;
        System.arraycopy(sArr, i11 * i12, sArr, 0, (this.f17616p - i11) * i12);
        this.f17616p -= i11;
    }

    private void u(int i11) {
        int i12 = this.f17612l - i11;
        short[] sArr = this.f17611k;
        int i13 = this.f17602b;
        System.arraycopy(sArr, i11 * i13, sArr, 0, i13 * i12);
        this.f17612l = i12;
    }

    /* JADX WARN: Code duplicated, block: B:6:0x0014 A[PHI: r1
  0x0014: PHI (r1v2 int) = (r1v0 int), (r1v1 int) binds: [B:5:0x0012, B:8:0x0018] A[DONT_GENERATE, DONT_INLINE]] */
    private void v(short[] sArr, int i11, int i12, float f11) {
        int i13 = (int) (f11 * 4096.0f);
        int i14 = this.f17602b;
        int i15 = i11 * i14;
        int i16 = (i12 * i14) + i15;
        while (i15 < i16) {
            int i17 = (sArr[i15] * i13) >> 12;
            int i18 = 32767;
            if (i17 > 32767) {
                i17 = i18;
            } else {
                i18 = -32767;
                if (i17 < -32767) {
                    i17 = i18;
                }
            }
            sArr[i15] = (short) i17;
            i15++;
        }
    }

    private int x(short[] sArr, int i11, float f11, int i12) {
        int i13;
        if (f11 >= 2.0f) {
            i13 = (int) (i12 / (f11 - 1.0f));
        } else {
            this.f17619s = (int) ((i12 * (2.0f - f11)) / (f11 - 1.0f));
            i13 = i12;
        }
        short[] sArrF = f(this.f17613m, this.f17614n, i13);
        this.f17613m = sArrF;
        o(i13, this.f17602b, sArrF, this.f17614n, sArr, i11, sArr, i11 + i12);
        this.f17614n += i13;
        return i13;
    }

    public void i() {
        this.f17612l = 0;
        this.f17614n = 0;
        this.f17616p = 0;
        this.f17617q = 0;
        this.f17618r = 0;
        this.f17619s = 0;
        this.f17620t = 0;
        this.f17621u = 0;
        this.f17622v = 0;
        this.f17623w = 0;
    }

    public void j(ShortBuffer shortBuffer) {
        int iMin = Math.min(shortBuffer.remaining() / this.f17602b, this.f17614n);
        shortBuffer.put(this.f17613m, 0, this.f17602b * iMin);
        int i11 = this.f17614n - iMin;
        this.f17614n = i11;
        short[] sArr = this.f17613m;
        int i12 = this.f17602b;
        System.arraycopy(sArr, iMin * i12, sArr, 0, i11 * i12);
    }

    public int k() {
        return this.f17614n * this.f17602b * 2;
    }

    public void r() {
        int i11;
        int i12 = this.f17612l;
        float f11 = this.f17603c;
        float f12 = this.f17604d;
        int i13 = this.f17614n + ((int) ((((i12 / (f11 / f12)) + this.f17616p) / (this.f17606f * f12)) + 0.5f));
        this.f17611k = f(this.f17611k, i12, (this.f17609i * 2) + i12);
        int i14 = 0;
        while (true) {
            i11 = this.f17609i;
            int i15 = this.f17602b;
            if (i14 >= i11 * 2 * i15) {
                break;
            }
            this.f17611k[(i15 * i12) + i14] = 0;
            i14++;
        }
        this.f17612l += i11 * 2;
        q();
        if (this.f17614n > i13) {
            this.f17614n = i13;
        }
        this.f17612l = 0;
        this.f17619s = 0;
        this.f17616p = 0;
    }

    public void s(ShortBuffer shortBuffer) {
        int iRemaining = shortBuffer.remaining();
        int i11 = this.f17602b;
        int i12 = iRemaining / i11;
        short[] sArrF = f(this.f17611k, this.f17612l, i12);
        this.f17611k = sArrF;
        shortBuffer.get(sArrF, this.f17612l * this.f17602b, ((i11 * i12) * 2) / 2);
        this.f17612l += i12;
        q();
    }

    public void w(float f11) {
        this.f17605e = f11;
    }
}
