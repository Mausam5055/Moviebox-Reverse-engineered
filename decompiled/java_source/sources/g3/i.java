package g3;

import androidx.media3.common.r;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.j0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import l2.l0;
import l2.m0;
import l2.s;
import l2.s0;
import l2.t;

/* JADX INFO: loaded from: classes2.dex */
abstract class i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private s0 f63312b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private t f63313c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private g f63314d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f63315e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f63316f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f63317g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f63318h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f63319i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f63321k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f63322l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f63323m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e f63311a = new e();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private b f63320j = new b();

    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        r f63324a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        g f63325b;

        b() {
        }
    }

    private static final class c implements g {
        private c() {
        }

        @Override // g3.g
        public long a(s sVar) {
            return -1L;
        }

        @Override // g3.g
        public m0 createSeekMap() {
            return new m0.b(C.TIME_UNSET);
        }

        @Override // g3.g
        public void startSeek(long j11) {
        }
    }

    private void a() {
        androidx.media3.common.util.a.i(this.f63312b);
        a1.i(this.f63313c);
    }

    private boolean i(s sVar) {
        while (this.f63311a.d(sVar)) {
            this.f63321k = sVar.getPosition() - this.f63316f;
            if (!h(this.f63311a.c(), this.f63316f, this.f63320j)) {
                return true;
            }
            this.f63316f = sVar.getPosition();
        }
        this.f63318h = 3;
        return false;
    }

    private int j(s sVar) {
        if (!i(sVar)) {
            return -1;
        }
        r rVar = this.f63320j.f63324a;
        this.f63319i = rVar.F;
        if (!this.f63323m) {
            this.f63312b.c(rVar);
            this.f63323m = true;
        }
        g gVar = this.f63320j.f63325b;
        if (gVar != null) {
            this.f63314d = gVar;
        } else if (sVar.getLength() == -1) {
            this.f63314d = new c();
        } else {
            f fVarB = this.f63311a.b();
            this.f63314d = new g3.a(this, this.f63316f, sVar.getLength(), fVarB.f63304h + fVarB.f63305i, fVarB.f63299c, (fVarB.f63298b & 4) != 0);
        }
        this.f63318h = 2;
        this.f63311a.f();
        return 0;
    }

    private int k(s sVar, l0 l0Var) {
        long jA = this.f63314d.a(sVar);
        if (jA >= 0) {
            l0Var.f68620a = jA;
            return 1;
        }
        if (jA < -1) {
            e(-(jA + 2));
        }
        if (!this.f63322l) {
            m0 m0Var = (m0) androidx.media3.common.util.a.i(this.f63314d.createSeekMap());
            this.f63313c.f(m0Var);
            this.f63312b.f(m0Var.getDurationUs());
            this.f63322l = true;
        }
        if (this.f63321k <= 0 && !this.f63311a.d(sVar)) {
            this.f63318h = 3;
            return -1;
        }
        this.f63321k = 0L;
        j0 j0VarC = this.f63311a.c();
        long jF = f(j0VarC);
        if (jF >= 0) {
            long j11 = this.f63317g;
            if (j11 + jF >= this.f63315e) {
                long jB = b(j11);
                this.f63312b.b(j0VarC, j0VarC.g());
                this.f63312b.d(jB, 1, j0VarC.g(), 0, null);
                this.f63315e = -1L;
            }
        }
        this.f63317g += jF;
        return 0;
    }

    protected long b(long j11) {
        return (j11 * 1000000) / ((long) this.f63319i);
    }

    protected long c(long j11) {
        return (((long) this.f63319i) * j11) / 1000000;
    }

    void d(t tVar, s0 s0Var) {
        this.f63313c = tVar;
        this.f63312b = s0Var;
        l(true);
    }

    protected void e(long j11) {
        this.f63317g = j11;
    }

    protected abstract long f(j0 j0Var);

    final int g(s sVar, l0 l0Var) {
        a();
        int i11 = this.f63318h;
        if (i11 == 0) {
            return j(sVar);
        }
        if (i11 == 1) {
            sVar.skipFully((int) this.f63316f);
            this.f63318h = 2;
            return 0;
        }
        if (i11 == 2) {
            a1.i(this.f63314d);
            return k(sVar, l0Var);
        }
        if (i11 == 3) {
            return -1;
        }
        throw new IllegalStateException();
    }

    protected abstract boolean h(j0 j0Var, long j11, b bVar);

    protected void l(boolean z10) {
        if (z10) {
            this.f63320j = new b();
            this.f63316f = 0L;
            this.f63318h = 0;
        } else {
            this.f63318h = 1;
        }
        this.f63315e = -1L;
        this.f63317g = 0L;
    }

    final void m(long j11, long j12) {
        this.f63311a.e();
        if (j11 == 0) {
            l(!this.f63322l);
        } else if (this.f63318h != 0) {
            this.f63315e = c(j12);
            ((g) a1.i(this.f63314d)).startSeek(this.f63315e);
            this.f63318h = 2;
        }
    }
}
