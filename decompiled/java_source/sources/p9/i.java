package p9;

import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import g9.a0;
import g9.b0;
import g9.e0;
import g9.m;
import g9.n;

/* JADX INFO: loaded from: classes4.dex */
abstract class i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private e0 f72375b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private n f72376c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private g f72377d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f72378e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f72379f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f72380g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f72381h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f72382i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f72384k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f72385l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f72386m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e f72374a = new e();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private b f72383j = new b();

    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        o1 f72387a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        g f72388b;

        b() {
        }
    }

    private static final class c implements g {
        private c() {
        }

        @Override // p9.g
        public long a(m mVar) {
            return -1L;
        }

        @Override // p9.g
        public b0 createSeekMap() {
            return new b0.b(C.TIME_UNSET);
        }

        @Override // p9.g
        public void startSeek(long j11) {
        }
    }

    private void a() {
        com.google.android.exoplayer2.util.a.i(this.f72375b);
        p0.j(this.f72376c);
    }

    private boolean i(m mVar) {
        while (this.f72374a.d(mVar)) {
            this.f72384k = mVar.getPosition() - this.f72379f;
            if (!h(this.f72374a.c(), this.f72379f, this.f72383j)) {
                return true;
            }
            this.f72379f = mVar.getPosition();
        }
        this.f72381h = 3;
        return false;
    }

    private int j(m mVar) {
        if (!i(mVar)) {
            return -1;
        }
        o1 o1Var = this.f72383j.f72387a;
        this.f72382i = o1Var.f25510z;
        if (!this.f72386m) {
            this.f72375b.e(o1Var);
            this.f72386m = true;
        }
        g gVar = this.f72383j.f72388b;
        if (gVar != null) {
            this.f72377d = gVar;
        } else if (mVar.getLength() == -1) {
            this.f72377d = new c();
        } else {
            f fVarB = this.f72374a.b();
            this.f72377d = new p9.a(this, this.f72379f, mVar.getLength(), fVarB.f72367h + fVarB.f72368i, fVarB.f72362c, (fVarB.f72361b & 4) != 0);
        }
        this.f72381h = 2;
        this.f72374a.f();
        return 0;
    }

    private int k(m mVar, a0 a0Var) {
        long jA = this.f72377d.a(mVar);
        if (jA >= 0) {
            a0Var.f63369a = jA;
            return 1;
        }
        if (jA < -1) {
            e(-(jA + 2));
        }
        if (!this.f72385l) {
            this.f72376c.d((b0) com.google.android.exoplayer2.util.a.i(this.f72377d.createSeekMap()));
            this.f72385l = true;
        }
        if (this.f72384k <= 0 && !this.f72374a.d(mVar)) {
            this.f72381h = 3;
            return -1;
        }
        this.f72384k = 0L;
        d0 d0VarC = this.f72374a.c();
        long jF = f(d0VarC);
        if (jF >= 0) {
            long j11 = this.f72380g;
            if (j11 + jF >= this.f72378e) {
                long jB = b(j11);
                this.f72375b.c(d0VarC, d0VarC.f());
                this.f72375b.d(jB, 1, d0VarC.f(), 0, null);
                this.f72378e = -1L;
            }
        }
        this.f72380g += jF;
        return 0;
    }

    protected long b(long j11) {
        return (j11 * 1000000) / ((long) this.f72382i);
    }

    protected long c(long j11) {
        return (((long) this.f72382i) * j11) / 1000000;
    }

    void d(n nVar, e0 e0Var) {
        this.f72376c = nVar;
        this.f72375b = e0Var;
        l(true);
    }

    protected void e(long j11) {
        this.f72380g = j11;
    }

    protected abstract long f(d0 d0Var);

    final int g(m mVar, a0 a0Var) {
        a();
        int i11 = this.f72381h;
        if (i11 == 0) {
            return j(mVar);
        }
        if (i11 == 1) {
            mVar.skipFully((int) this.f72379f);
            this.f72381h = 2;
            return 0;
        }
        if (i11 == 2) {
            p0.j(this.f72377d);
            return k(mVar, a0Var);
        }
        if (i11 == 3) {
            return -1;
        }
        throw new IllegalStateException();
    }

    protected abstract boolean h(d0 d0Var, long j11, b bVar);

    protected void l(boolean z10) {
        if (z10) {
            this.f72383j = new b();
            this.f72379f = 0L;
            this.f72381h = 0;
        } else {
            this.f72381h = 1;
        }
        this.f72378e = -1L;
        this.f72380g = 0L;
    }

    final void m(long j11, long j12) {
        this.f72374a.e();
        if (j11 == 0) {
            l(!this.f72385l);
        } else if (this.f72381h != 0) {
            this.f72378e = c(j12);
            ((g) p0.j(this.f72377d)).startSeek(this.f72378e);
            this.f72381h = 2;
        }
    }
}
