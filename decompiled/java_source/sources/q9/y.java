package q9;

import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.gms.location.DeviceOrientationRequest;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes4.dex */
final class y {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f73531c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f73532d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f73533e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final l0 f73529a = new l0(0);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f73534f = C.TIME_UNSET;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f73535g = C.TIME_UNSET;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f73536h = C.TIME_UNSET;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.android.exoplayer2.util.d0 f73530b = new com.google.android.exoplayer2.util.d0();

    y() {
    }

    private static boolean a(byte[] bArr) {
        return (bArr[0] & 196) == 68 && (bArr[2] & 4) == 4 && (bArr[4] & 4) == 4 && (bArr[5] & 1) == 1 && (bArr[8] & 3) == 3;
    }

    private int b(g9.m mVar) {
        this.f73530b.M(p0.f27631f);
        this.f73531c = true;
        mVar.resetPeekPosition();
        return 0;
    }

    private int f(byte[] bArr, int i11) {
        return (bArr[i11 + 3] & 255) | ((bArr[i11] & 255) << 24) | ((bArr[i11 + 1] & 255) << 16) | ((bArr[i11 + 2] & 255) << 8);
    }

    private int h(g9.m mVar, g9.a0 a0Var) {
        int iMin = (int) Math.min(DeviceOrientationRequest.OUTPUT_PERIOD_DEFAULT, mVar.getLength());
        long j11 = 0;
        if (mVar.getPosition() != j11) {
            a0Var.f63369a = j11;
            return 1;
        }
        this.f73530b.L(iMin);
        mVar.resetPeekPosition();
        mVar.peekFully(this.f73530b.d(), 0, iMin);
        this.f73534f = i(this.f73530b);
        this.f73532d = true;
        return 0;
    }

    private long i(com.google.android.exoplayer2.util.d0 d0Var) {
        int iF = d0Var.f();
        for (int iE = d0Var.e(); iE < iF - 3; iE++) {
            if (f(d0Var.d(), iE) == 442) {
                d0Var.P(iE + 4);
                long jL = l(d0Var);
                if (jL != C.TIME_UNSET) {
                    return jL;
                }
            }
        }
        return C.TIME_UNSET;
    }

    private int j(g9.m mVar, g9.a0 a0Var) {
        long length = mVar.getLength();
        int iMin = (int) Math.min(DeviceOrientationRequest.OUTPUT_PERIOD_DEFAULT, length);
        long j11 = length - ((long) iMin);
        if (mVar.getPosition() != j11) {
            a0Var.f63369a = j11;
            return 1;
        }
        this.f73530b.L(iMin);
        mVar.resetPeekPosition();
        mVar.peekFully(this.f73530b.d(), 0, iMin);
        this.f73535g = k(this.f73530b);
        this.f73533e = true;
        return 0;
    }

    private long k(com.google.android.exoplayer2.util.d0 d0Var) {
        int iE = d0Var.e();
        for (int iF = d0Var.f() - 4; iF >= iE; iF--) {
            if (f(d0Var.d(), iF) == 442) {
                d0Var.P(iF + 4);
                long jL = l(d0Var);
                if (jL != C.TIME_UNSET) {
                    return jL;
                }
            }
        }
        return C.TIME_UNSET;
    }

    public static long l(com.google.android.exoplayer2.util.d0 d0Var) {
        int iE = d0Var.e();
        if (d0Var.a() < 9) {
            return C.TIME_UNSET;
        }
        byte[] bArr = new byte[9];
        d0Var.j(bArr, 0, 9);
        d0Var.P(iE);
        return !a(bArr) ? C.TIME_UNSET : m(bArr);
    }

    private static long m(byte[] bArr) {
        byte b11 = bArr[0];
        long j11 = (((((long) b11) & 56) >> 3) << 30) | ((((long) b11) & 3) << 28) | ((((long) bArr[1]) & 255) << 20);
        byte b12 = bArr[2];
        return j11 | (((((long) b12) & 248) >> 3) << 15) | ((((long) b12) & 3) << 13) | ((((long) bArr[3]) & 255) << 5) | ((((long) bArr[4]) & 248) >> 3);
    }

    public long c() {
        return this.f73536h;
    }

    public l0 d() {
        return this.f73529a;
    }

    public boolean e() {
        return this.f73531c;
    }

    public int g(g9.m mVar, g9.a0 a0Var) {
        if (!this.f73533e) {
            return j(mVar, a0Var);
        }
        if (this.f73535g == C.TIME_UNSET) {
            return b(mVar);
        }
        if (!this.f73532d) {
            return h(mVar, a0Var);
        }
        long j11 = this.f73534f;
        if (j11 == C.TIME_UNSET) {
            return b(mVar);
        }
        long jB = this.f73529a.b(this.f73535g) - this.f73529a.b(j11);
        this.f73536h = jB;
        if (jB < 0) {
            com.google.android.exoplayer2.util.s.i("PsDurationReader", "Invalid duration: " + this.f73536h + ". Using TIME_UNSET instead.");
            this.f73536h = C.TIME_UNSET;
        }
        return b(mVar);
    }
}
