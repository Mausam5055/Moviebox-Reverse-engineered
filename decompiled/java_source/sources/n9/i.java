package n9;

import com.google.android.exoplayer2.audio.b0;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.s;
import g9.c0;

/* JADX INFO: loaded from: classes4.dex */
final class i implements g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f70285a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f70286b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f70287c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f70288d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f70289e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long[] f70290f;

    private i(long j11, int i11, long j12) {
        this(j11, i11, j12, -1L, null);
    }

    private i(long j11, int i11, long j12, long j13, long[] jArr) {
        this.f70285a = j11;
        this.f70286b = i11;
        this.f70287c = j12;
        this.f70290f = jArr;
        this.f70288d = j13;
        this.f70289e = j13 != -1 ? j11 + j13 : -1L;
    }

    public static i b(long j11, long j12, b0.a aVar, d0 d0Var) {
        int iH;
        int i11 = aVar.f24627g;
        int i12 = aVar.f24624d;
        int iN = d0Var.n();
        if ((iN & 1) != 1 || (iH = d0Var.H()) == 0) {
            return null;
        }
        long jN0 = p0.N0(iH, ((long) i11) * 1000000, i12);
        if ((iN & 6) != 6) {
            return new i(j12, aVar.f24623c, jN0);
        }
        long jF = d0Var.F();
        long[] jArr = new long[100];
        for (int i13 = 0; i13 < 100; i13++) {
            jArr[i13] = d0Var.D();
        }
        if (j11 != -1) {
            long j13 = j12 + jF;
            if (j11 != j13) {
                s.i("XingSeeker", "XING data size mismatch: " + j11 + ", " + j13);
            }
        }
        return new i(j12, aVar.f24623c, jN0, jF, jArr);
    }

    private long c(int i11) {
        return (this.f70287c * ((long) i11)) / 100;
    }

    @Override // n9.g
    public long a() {
        return this.f70289e;
    }

    @Override // g9.b0
    public long getDurationUs() {
        return this.f70287c;
    }

    @Override // g9.b0
    public g9.b0.a getSeekPoints(long j11) {
        if (!isSeekable()) {
            return new g9.b0.a(new c0(0L, this.f70285a + ((long) this.f70286b)));
        }
        long jR = p0.r(j11, 0L, this.f70287c);
        double d11 = (jR * 100.0d) / this.f70287c;
        double d12 = 0.0d;
        if (d11 > 0.0d) {
            if (d11 >= 100.0d) {
                d12 = 256.0d;
            } else {
                int i11 = (int) d11;
                long[] jArr = (long[]) com.google.android.exoplayer2.util.a.i(this.f70290f);
                double d13 = jArr[i11];
                d12 = d13 + ((d11 - ((double) i11)) * ((i11 == 99 ? 256.0d : jArr[i11 + 1]) - d13));
            }
        }
        return new g9.b0.a(new c0(jR, this.f70285a + p0.r(Math.round((d12 / 256.0d) * this.f70288d), this.f70286b, this.f70288d - 1)));
    }

    @Override // n9.g
    public long getTimeUs(long j11) {
        long j12 = j11 - this.f70285a;
        if (!isSeekable() || j12 <= this.f70286b) {
            return 0L;
        }
        long[] jArr = (long[]) com.google.android.exoplayer2.util.a.i(this.f70290f);
        double d11 = (j12 * 256.0d) / this.f70288d;
        int i11 = p0.i(jArr, (long) d11, true, true);
        long jC = c(i11);
        long j13 = jArr[i11];
        int i12 = i11 + 1;
        long jC2 = c(i12);
        long j14 = i11 == 99 ? 256L : jArr[i12];
        return jC + Math.round((j13 == j14 ? 0.0d : (d11 - j13) / (j14 - j13)) * (jC2 - jC));
    }

    @Override // g9.b0
    public boolean isSeekable() {
        return this.f70290f != null;
    }
}
