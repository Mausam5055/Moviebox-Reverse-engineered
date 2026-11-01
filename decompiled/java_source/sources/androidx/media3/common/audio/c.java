package androidx.media3.common.audio;

import java.nio.ShortBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f9834a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f9835b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float f9836c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float f9837d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final float f9838e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f9839f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f9840g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f9841h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final short[] f9842i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private short[] f9843j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f9844k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private short[] f9845l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f9846m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private short[] f9847n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f9848o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f9849p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f9850q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f9851r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f9852s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f9853t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f9854u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f9855v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private double f9856w;

    public c(int i11, int i12, float f11, float f12, int i13) {
        this.f9834a = i11;
        this.f9835b = i12;
        this.f9836c = f11;
        this.f9837d = f12;
        this.f9838e = i11 / i13;
        this.f9839f = i11 / 400;
        int i14 = i11 / 65;
        this.f9840g = i14;
        int i15 = i14 * 2;
        this.f9841h = i15;
        this.f9842i = new short[i15];
        this.f9843j = new short[i15 * i12];
        this.f9845l = new short[i15 * i12];
        this.f9847n = new short[i15 * i12];
    }

    private void a(float f11, int i11) {
        int i12;
        int i13;
        if (this.f9846m == i11) {
            return;
        }
        int i14 = this.f9834a;
        long j11 = (long) (i14 / f11);
        long j12 = i14;
        while (j11 != 0 && j12 != 0 && j11 % 2 == 0 && j12 % 2 == 0) {
            j11 /= 2;
            j12 /= 2;
        }
        o(i11);
        int i15 = 0;
        while (true) {
            int i16 = this.f9848o;
            if (i15 >= i16 - 1) {
                u(i16 - 1);
                return;
            }
            while (true) {
                i12 = this.f9849p;
                long j13 = ((long) (i12 + 1)) * j11;
                i13 = this.f9850q;
                if (j13 <= ((long) i13) * j12) {
                    break;
                }
                this.f9845l = f(this.f9845l, this.f9846m, 1);
                int i17 = 0;
                while (true) {
                    int i18 = this.f9835b;
                    if (i17 < i18) {
                        this.f9845l[(this.f9846m * i18) + i17] = n(this.f9847n, (i18 * i15) + i17, j12, j11);
                        i17++;
                    }
                }
                this.f9850q++;
                this.f9846m++;
            }
            int i19 = i12 + 1;
            this.f9849p = i19;
            if (i19 == j12) {
                this.f9849p = 0;
                androidx.media3.common.util.a.g(((long) i13) == j11);
                this.f9850q = 0;
            }
            i15++;
        }
    }

    private void b(double d11) {
        int iM;
        int i11 = this.f9844k;
        if (i11 < this.f9841h) {
            return;
        }
        int iW = 0;
        do {
            if (this.f9851r > 0) {
                iM = c(iW);
            } else {
                int iG = g(this.f9843j, iW);
                if (d11 > 1.0d) {
                    iW += iG + w(this.f9843j, iW, d11, iG);
                } else {
                    iM = m(this.f9843j, iW, d11, iG);
                }
            }
            iW += iM;
        } while (this.f9841h + iW <= i11);
        v(iW);
    }

    private int c(int i11) {
        int iMin = Math.min(this.f9841h, this.f9851r);
        d(this.f9843j, i11, iMin);
        this.f9851r -= iMin;
        return iMin;
    }

    private void d(short[] sArr, int i11, int i12) {
        short[] sArrF = f(this.f9845l, this.f9846m, i12);
        this.f9845l = sArrF;
        int i13 = this.f9835b;
        System.arraycopy(sArr, i11 * i13, sArrF, this.f9846m * i13, i13 * i12);
        this.f9846m += i12;
    }

    private void e(short[] sArr, int i11, int i12) {
        int i13 = this.f9841h / i12;
        int i14 = this.f9835b;
        int i15 = i12 * i14;
        int i16 = i11 * i14;
        for (int i17 = 0; i17 < i13; i17++) {
            int i18 = 0;
            for (int i19 = 0; i19 < i15; i19++) {
                i18 += sArr[(i17 * i15) + i16 + i19];
            }
            this.f9842i[i17] = (short) (i18 / i15);
        }
    }

    private short[] f(short[] sArr, int i11, int i12) {
        int length = sArr.length;
        int i13 = this.f9835b;
        int i14 = length / i13;
        return i11 + i12 <= i14 ? sArr : Arrays.copyOf(sArr, (((i14 * 3) / 2) + i12) * i13);
    }

    private int g(short[] sArr, int i11) {
        int iH;
        int i12 = this.f9834a;
        int i13 = i12 > 4000 ? i12 / 4000 : 1;
        if (this.f9835b == 1 && i13 == 1) {
            iH = h(sArr, i11, this.f9839f, this.f9840g);
        } else {
            e(sArr, i11, i13);
            int iH2 = h(this.f9842i, 0, this.f9839f / i13, this.f9840g / i13);
            if (i13 != 1) {
                int i14 = iH2 * i13;
                int i15 = i13 * 4;
                int i16 = i14 - i15;
                int i17 = i14 + i15;
                int i18 = this.f9839f;
                if (i16 < i18) {
                    i16 = i18;
                }
                int i19 = this.f9840g;
                if (i17 > i19) {
                    i17 = i19;
                }
                if (this.f9835b == 1) {
                    iH = h(sArr, i11, i16, i17);
                } else {
                    e(sArr, i11, 1);
                    iH = h(this.f9842i, 0, i16, i17);
                }
            } else {
                iH = iH2;
            }
        }
        int i20 = q(this.f9854u, this.f9855v) ? this.f9852s : iH;
        this.f9853t = this.f9854u;
        this.f9852s = iH;
        return i20;
    }

    private int h(short[] sArr, int i11, int i12, int i13) {
        int i14 = i11 * this.f9835b;
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
        this.f9854u = i16 / i17;
        this.f9855v = i18 / i15;
        return i17;
    }

    private int m(short[] sArr, int i11, double d11, int i12) {
        int iRound;
        if (d11 < 0.5d) {
            double d12 = ((((double) i12) * d11) / (1.0d - d11)) + this.f9856w;
            iRound = (int) Math.round(d12);
            this.f9856w = d12 - ((double) iRound);
        } else {
            double d13 = ((((double) i12) * ((2.0d * d11) - 1.0d)) / (1.0d - d11)) + this.f9856w;
            int iRound2 = (int) Math.round(d13);
            this.f9851r = iRound2;
            this.f9856w = d13 - ((double) iRound2);
            iRound = i12;
        }
        int i13 = i12 + iRound;
        short[] sArrF = f(this.f9845l, this.f9846m, i13);
        this.f9845l = sArrF;
        int i14 = this.f9835b;
        System.arraycopy(sArr, i11 * i14, sArrF, this.f9846m * i14, i14 * i12);
        p(iRound, this.f9835b, this.f9845l, this.f9846m + i12, sArr, i11 + i12, sArr, i11);
        this.f9846m += i13;
        return iRound;
    }

    private short n(short[] sArr, int i11, long j11, long j12) {
        short s11 = sArr[i11];
        short s12 = sArr[i11 + this.f9835b];
        long j13 = ((long) this.f9850q) * j11;
        int i12 = this.f9849p;
        long j14 = ((long) i12) * j12;
        long j15 = ((long) (i12 + 1)) * j12;
        long j16 = j15 - j13;
        long j17 = j15 - j14;
        return (short) (((((long) s11) * j16) + ((j17 - j16) * ((long) s12))) / j17);
    }

    private void o(int i11) {
        int i12 = this.f9846m - i11;
        short[] sArrF = f(this.f9847n, this.f9848o, i12);
        this.f9847n = sArrF;
        short[] sArr = this.f9845l;
        int i13 = this.f9835b;
        System.arraycopy(sArr, i11 * i13, sArrF, this.f9848o * i13, i13 * i12);
        this.f9846m = i11;
        this.f9848o += i12;
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
        return i11 != 0 && this.f9852s != 0 && i12 <= i11 * 3 && i11 * 2 > this.f9853t * 3;
    }

    private void r() {
        int i11 = this.f9846m;
        float f11 = this.f9836c;
        float f12 = this.f9837d;
        double d11 = f11 / f12;
        float f13 = this.f9838e * f12;
        if (d11 > 1.0000100135803223d || d11 < 0.9999899864196777d) {
            b(d11);
        } else {
            d(this.f9843j, 0, this.f9844k);
            this.f9844k = 0;
        }
        if (f13 != 1.0f) {
            a(f13, i11);
        }
    }

    private void u(int i11) {
        if (i11 == 0) {
            return;
        }
        short[] sArr = this.f9847n;
        int i12 = this.f9835b;
        System.arraycopy(sArr, i11 * i12, sArr, 0, (this.f9848o - i11) * i12);
        this.f9848o -= i11;
    }

    private void v(int i11) {
        int i12 = this.f9844k - i11;
        short[] sArr = this.f9843j;
        int i13 = this.f9835b;
        System.arraycopy(sArr, i11 * i13, sArr, 0, i13 * i12);
        this.f9844k = i12;
    }

    private int w(short[] sArr, int i11, double d11, int i12) {
        int iRound;
        if (d11 >= 2.0d) {
            double d12 = (((double) i12) / (d11 - 1.0d)) + this.f9856w;
            iRound = (int) Math.round(d12);
            this.f9856w = d12 - ((double) iRound);
        } else {
            double d13 = ((((double) i12) * (2.0d - d11)) / (d11 - 1.0d)) + this.f9856w;
            int iRound2 = (int) Math.round(d13);
            this.f9851r = iRound2;
            this.f9856w = d13 - ((double) iRound2);
            iRound = i12;
        }
        short[] sArrF = f(this.f9845l, this.f9846m, iRound);
        this.f9845l = sArrF;
        p(iRound, this.f9835b, sArrF, this.f9846m, sArr, i11, sArr, i11 + i12);
        this.f9846m += iRound;
        return iRound;
    }

    public void i() {
        this.f9844k = 0;
        this.f9846m = 0;
        this.f9848o = 0;
        this.f9849p = 0;
        this.f9850q = 0;
        this.f9851r = 0;
        this.f9852s = 0;
        this.f9853t = 0;
        this.f9854u = 0;
        this.f9855v = 0;
        this.f9856w = 0.0d;
    }

    public void j(ShortBuffer shortBuffer) {
        androidx.media3.common.util.a.g(this.f9846m >= 0);
        int iMin = Math.min(shortBuffer.remaining() / this.f9835b, this.f9846m);
        shortBuffer.put(this.f9845l, 0, this.f9835b * iMin);
        int i11 = this.f9846m - iMin;
        this.f9846m = i11;
        short[] sArr = this.f9845l;
        int i12 = this.f9835b;
        System.arraycopy(sArr, iMin * i12, sArr, 0, i11 * i12);
    }

    public int k() {
        androidx.media3.common.util.a.g(this.f9846m >= 0);
        return this.f9846m * this.f9835b * 2;
    }

    public int l() {
        return this.f9844k * this.f9835b * 2;
    }

    public void s() {
        int i11;
        int i12 = this.f9844k;
        float f11 = this.f9836c;
        float f12 = this.f9837d;
        double d11 = f11 / f12;
        double d12 = this.f9838e * f12;
        int i13 = this.f9851r;
        int i14 = this.f9846m + ((int) ((((((((double) (i12 - i13)) / d11) + ((double) i13)) + this.f9856w) + ((double) this.f9848o)) / d12) + 0.5d));
        this.f9856w = 0.0d;
        this.f9843j = f(this.f9843j, i12, (this.f9841h * 2) + i12);
        int i15 = 0;
        while (true) {
            i11 = this.f9841h;
            int i16 = this.f9835b;
            if (i15 >= i11 * 2 * i16) {
                break;
            }
            this.f9843j[(i16 * i12) + i15] = 0;
            i15++;
        }
        this.f9844k += i11 * 2;
        r();
        if (this.f9846m > i14) {
            this.f9846m = Math.max(i14, 0);
        }
        this.f9844k = 0;
        this.f9851r = 0;
        this.f9848o = 0;
    }

    public void t(ShortBuffer shortBuffer) {
        int iRemaining = shortBuffer.remaining();
        int i11 = this.f9835b;
        int i12 = iRemaining / i11;
        short[] sArrF = f(this.f9843j, this.f9844k, i12);
        this.f9843j = sArrF;
        shortBuffer.get(sArrF, this.f9844k * this.f9835b, ((i11 * i12) * 2) / 2);
        this.f9844k += i12;
        r();
    }
}
