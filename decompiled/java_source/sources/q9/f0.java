package q9;

import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes4.dex */
final class f0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f73240a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f73243d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f73244e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f73245f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final l0 f73241b = new l0(0);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f73246g = C.TIME_UNSET;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f73247h = C.TIME_UNSET;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f73248i = C.TIME_UNSET;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.google.android.exoplayer2.util.d0 f73242c = new com.google.android.exoplayer2.util.d0();

    f0(int i11) {
        this.f73240a = i11;
    }

    private int a(g9.m mVar) {
        this.f73242c.M(p0.f27631f);
        this.f73243d = true;
        mVar.resetPeekPosition();
        return 0;
    }

    private int f(g9.m mVar, g9.a0 a0Var, int i11) {
        int iMin = (int) Math.min(this.f73240a, mVar.getLength());
        long j11 = 0;
        if (mVar.getPosition() != j11) {
            a0Var.f63369a = j11;
            return 1;
        }
        this.f73242c.L(iMin);
        mVar.resetPeekPosition();
        mVar.peekFully(this.f73242c.d(), 0, iMin);
        this.f73246g = g(this.f73242c, i11);
        this.f73244e = true;
        return 0;
    }

    private long g(com.google.android.exoplayer2.util.d0 d0Var, int i11) {
        int iF = d0Var.f();
        for (int iE = d0Var.e(); iE < iF; iE++) {
            if (d0Var.d()[iE] == 71) {
                long jC = j0.c(d0Var, iE, i11);
                if (jC != C.TIME_UNSET) {
                    return jC;
                }
            }
        }
        return C.TIME_UNSET;
    }

    private int h(g9.m mVar, g9.a0 a0Var, int i11) {
        long length = mVar.getLength();
        int iMin = (int) Math.min(this.f73240a, length);
        long j11 = length - ((long) iMin);
        if (mVar.getPosition() != j11) {
            a0Var.f63369a = j11;
            return 1;
        }
        this.f73242c.L(iMin);
        mVar.resetPeekPosition();
        mVar.peekFully(this.f73242c.d(), 0, iMin);
        this.f73247h = i(this.f73242c, i11);
        this.f73245f = true;
        return 0;
    }

    private long i(com.google.android.exoplayer2.util.d0 d0Var, int i11) {
        int iE = d0Var.e();
        int iF = d0Var.f();
        for (int i12 = iF - 188; i12 >= iE; i12--) {
            if (j0.b(d0Var.d(), iE, iF, i12)) {
                long jC = j0.c(d0Var, i12, i11);
                if (jC != C.TIME_UNSET) {
                    return jC;
                }
            }
        }
        return C.TIME_UNSET;
    }

    public long b() {
        return this.f73248i;
    }

    public l0 c() {
        return this.f73241b;
    }

    public boolean d() {
        return this.f73243d;
    }

    public int e(g9.m mVar, g9.a0 a0Var, int i11) {
        if (i11 <= 0) {
            return a(mVar);
        }
        if (!this.f73245f) {
            return h(mVar, a0Var, i11);
        }
        if (this.f73247h == C.TIME_UNSET) {
            return a(mVar);
        }
        if (!this.f73244e) {
            return f(mVar, a0Var, i11);
        }
        long j11 = this.f73246g;
        if (j11 == C.TIME_UNSET) {
            return a(mVar);
        }
        long jB = this.f73241b.b(this.f73247h) - this.f73241b.b(j11);
        this.f73248i = jB;
        if (jB < 0) {
            com.google.android.exoplayer2.util.s.i("TsDurationReader", "Invalid duration: " + this.f73248i + ". Using TIME_UNSET instead.");
            this.f73248i = C.TIME_UNSET;
        }
        return a(mVar);
    }
}
