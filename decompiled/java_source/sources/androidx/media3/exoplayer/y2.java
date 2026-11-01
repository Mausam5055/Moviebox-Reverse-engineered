package androidx.media3.exoplayer;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
final class y2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.media3.exoplayer.source.q f13368a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f13369b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final g2.u[] f13370c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f13371d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f13372e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f13373f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f13374g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public z2 f13375h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f13376i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final boolean[] f13377j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final y3[] f13378k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final j2.e0 f13379l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final q3 f13380m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private y2 f13381n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private g2.z f13382o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private j2.f0 f13383p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f13384q;

    interface a {
        y2 a(z2 z2Var, long j11);
    }

    public y2(y3[] y3VarArr, long j11, j2.e0 e0Var, androidx.media3.exoplayer.upstream.b bVar, q3 q3Var, z2 z2Var, j2.f0 f0Var, long j12) {
        this.f13378k = y3VarArr;
        this.f13384q = j11;
        this.f13379l = e0Var;
        this.f13380m = q3Var;
        androidx.media3.exoplayer.source.r.b bVar2 = z2Var.f13388a;
        this.f13369b = bVar2.f12883a;
        this.f13375h = z2Var;
        this.f13371d = j12;
        this.f13382o = g2.z.f63264d;
        this.f13383p = f0Var;
        this.f13370c = new g2.u[y3VarArr.length];
        this.f13377j = new boolean[y3VarArr.length];
        this.f13368a = f(bVar2, q3Var, bVar, z2Var.f13389b, z2Var.f13391d, z2Var.f13393f);
    }

    private void c(g2.u[] uVarArr) {
        int i11 = 0;
        while (true) {
            y3[] y3VarArr = this.f13378k;
            if (i11 >= y3VarArr.length) {
                return;
            }
            if (y3VarArr[i11].getTrackType() == -2 && this.f13383p.c(i11)) {
                uVarArr[i11] = new g2.h();
            }
            i11++;
        }
    }

    private static androidx.media3.exoplayer.source.q f(androidx.media3.exoplayer.source.r.b bVar, q3 q3Var, androidx.media3.exoplayer.upstream.b bVar2, long j11, long j12, boolean z10) {
        androidx.media3.exoplayer.source.q qVarH = q3Var.h(bVar, bVar2, j11);
        return j12 != C.TIME_UNSET ? new androidx.media3.exoplayer.source.b(qVarH, !z10, 0L, j12) : qVarH;
    }

    private void g() {
        if (!u()) {
            return;
        }
        int i11 = 0;
        while (true) {
            j2.f0 f0Var = this.f13383p;
            if (i11 >= f0Var.f65754a) {
                return;
            }
            boolean zC = f0Var.c(i11);
            j2.z zVar = this.f13383p.f65756c[i11];
            if (zC && zVar != null) {
                zVar.disable();
            }
            i11++;
        }
    }

    private void h(g2.u[] uVarArr) {
        int i11 = 0;
        while (true) {
            y3[] y3VarArr = this.f13378k;
            if (i11 >= y3VarArr.length) {
                return;
            }
            if (y3VarArr[i11].getTrackType() == -2) {
                uVarArr[i11] = null;
            }
            i11++;
        }
    }

    private void i() {
        if (!u()) {
            return;
        }
        int i11 = 0;
        while (true) {
            j2.f0 f0Var = this.f13383p;
            if (i11 >= f0Var.f65754a) {
                return;
            }
            boolean zC = f0Var.c(i11);
            j2.z zVar = this.f13383p.f65756c[i11];
            if (zC && zVar != null) {
                zVar.enable();
            }
            i11++;
        }
    }

    private boolean u() {
        return this.f13381n == null;
    }

    private static void y(q3 q3Var, androidx.media3.exoplayer.source.q qVar) {
        try {
            if (qVar instanceof androidx.media3.exoplayer.source.b) {
                q3Var.z(((androidx.media3.exoplayer.source.b) qVar).f12682a);
            } else {
                q3Var.z(qVar);
            }
        } catch (RuntimeException e11) {
            androidx.media3.common.util.u.d("MediaPeriodHolder", "Period release failed.", e11);
        }
    }

    public void A(y2 y2Var) {
        if (y2Var == this.f13381n) {
            return;
        }
        g();
        this.f13381n = y2Var;
        i();
    }

    public void B(long j11) {
        this.f13384q = j11;
    }

    public long C(long j11) {
        return j11 - m();
    }

    public long D(long j11) {
        return j11 + m();
    }

    public void E() {
        androidx.media3.exoplayer.source.q qVar = this.f13368a;
        if (qVar instanceof androidx.media3.exoplayer.source.b) {
            long j11 = this.f13375h.f13391d;
            if (j11 == C.TIME_UNSET) {
                j11 = Long.MIN_VALUE;
            }
            ((androidx.media3.exoplayer.source.b) qVar).n(0L, j11);
        }
    }

    public long a(j2.f0 f0Var, long j11, boolean z10) {
        return b(f0Var, j11, z10, new boolean[this.f13378k.length]);
    }

    public long b(j2.f0 f0Var, long j11, boolean z10, boolean[] zArr) {
        int i11 = 0;
        while (true) {
            boolean z11 = true;
            if (i11 >= f0Var.f65754a) {
                break;
            }
            boolean[] zArr2 = this.f13377j;
            if (z10 || !f0Var.b(this.f13383p, i11)) {
                z11 = false;
            }
            zArr2[i11] = z11;
            i11++;
        }
        h(this.f13370c);
        g();
        this.f13383p = f0Var;
        i();
        long jE = this.f13368a.e(f0Var.f65756c, this.f13377j, this.f13370c, zArr, j11);
        c(this.f13370c);
        this.f13374g = false;
        int i12 = 0;
        while (true) {
            g2.u[] uVarArr = this.f13370c;
            if (i12 >= uVarArr.length) {
                return jE;
            }
            if (uVarArr[i12] != null) {
                androidx.media3.common.util.a.g(f0Var.c(i12));
                if (this.f13378k[i12].getTrackType() != -2) {
                    this.f13374g = true;
                }
            } else {
                androidx.media3.common.util.a.g(f0Var.f65756c[i12] == null);
            }
            i12++;
        }
    }

    public boolean d(z2 z2Var) {
        if (b3.e(this.f13375h.f13392e, z2Var.f13392e)) {
            z2 z2Var2 = this.f13375h;
            if (z2Var2.f13389b == z2Var.f13389b && z2Var2.f13388a.equals(z2Var.f13388a)) {
                return true;
            }
        }
        return false;
    }

    public void e(v2 v2Var) {
        androidx.media3.common.util.a.g(u());
        this.f13368a.a(v2Var);
    }

    public long j() {
        if (!this.f13373f) {
            return this.f13375h.f13389b;
        }
        long bufferedPositionUs = this.f13374g ? this.f13368a.getBufferedPositionUs() : Long.MIN_VALUE;
        return bufferedPositionUs == Long.MIN_VALUE ? this.f13375h.f13392e : bufferedPositionUs;
    }

    public y2 k() {
        return this.f13381n;
    }

    public long l() {
        if (this.f13373f) {
            return this.f13368a.getNextLoadPositionUs();
        }
        return 0L;
    }

    public long m() {
        return this.f13384q;
    }

    public long n() {
        return this.f13375h.f13389b + this.f13384q;
    }

    public g2.z o() {
        return this.f13382o;
    }

    public j2.f0 p() {
        return this.f13383p;
    }

    public void q(float f11, androidx.media3.common.e0 e0Var, boolean z10) {
        this.f13373f = true;
        this.f13382o = this.f13368a.getTrackGroups();
        j2.f0 f0VarZ = z(f11, e0Var, z10);
        z2 z2Var = this.f13375h;
        long jMax = z2Var.f13389b;
        long j11 = z2Var.f13392e;
        if (j11 != C.TIME_UNSET && jMax >= j11) {
            jMax = Math.max(0L, j11 - 1);
        }
        long jA = a(f0VarZ, jMax, false);
        long j12 = this.f13384q;
        z2 z2Var2 = this.f13375h;
        this.f13384q = j12 + (z2Var2.f13389b - jA);
        this.f13375h = z2Var2.b(jA);
    }

    public boolean r() {
        try {
            if (this.f13373f) {
                for (g2.u uVar : this.f13370c) {
                    if (uVar != null) {
                        uVar.maybeThrowError();
                    }
                }
            } else {
                this.f13368a.maybeThrowPrepareError();
            }
            return false;
        } catch (IOException unused) {
            return true;
        }
    }

    public boolean s() {
        return this.f13373f && (!this.f13374g || this.f13368a.getBufferedPositionUs() == Long.MIN_VALUE);
    }

    public boolean t() {
        return this.f13373f && (s() || j() - this.f13375h.f13389b >= this.f13371d);
    }

    public void v(androidx.media3.exoplayer.source.q.a aVar, long j11) {
        this.f13372e = true;
        this.f13368a.g(aVar, j11);
    }

    public void w(long j11) {
        androidx.media3.common.util.a.g(u());
        if (this.f13373f) {
            this.f13368a.reevaluateBuffer(C(j11));
        }
    }

    public void x() {
        g();
        y(this.f13380m, this.f13368a);
    }

    public j2.f0 z(float f11, androidx.media3.common.e0 e0Var, boolean z10) {
        j2.f0 f0VarK = this.f13379l.k(this.f13378k, o(), this.f13375h.f13388a, e0Var);
        for (int i11 = 0; i11 < f0VarK.f65754a; i11++) {
            boolean z11 = true;
            if (f0VarK.c(i11)) {
                if (f0VarK.f65756c[i11] == null && this.f13378k[i11].getTrackType() != -2) {
                    z11 = false;
                }
                androidx.media3.common.util.a.g(z11);
            } else {
                androidx.media3.common.util.a.g(f0VarK.f65756c[i11] == null);
            }
        }
        for (j2.z zVar : f0VarK.f65756c) {
            if (zVar != null) {
                zVar.onPlaybackSpeed(f11);
                zVar.b(z10);
            }
        }
        return f0VarK;
    }
}
