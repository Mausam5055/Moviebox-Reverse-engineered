package com.google.android.exoplayer2;

import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes3.dex */
final class b2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.google.android.exoplayer2.source.n f24804a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f24805b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final t9.s[] f24806c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f24807d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f24808e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public c2 f24809f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f24810g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean[] f24811h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final z2[] f24812i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final la.q f24813j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final h2 f24814k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private b2 f24815l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private t9.x f24816m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private la.r f24817n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f24818o;

    public b2(z2[] z2VarArr, long j11, la.q qVar, com.google.android.exoplayer2.upstream.b bVar, h2 h2Var, c2 c2Var, la.r rVar) {
        this.f24812i = z2VarArr;
        this.f24818o = j11;
        this.f24813j = qVar;
        this.f24814k = h2Var;
        com.google.android.exoplayer2.source.o.b bVar2 = c2Var.f24821a;
        this.f24805b = bVar2.f76114a;
        this.f24809f = c2Var;
        this.f24816m = t9.x.f76163d;
        this.f24817n = rVar;
        this.f24806c = new t9.s[z2VarArr.length];
        this.f24811h = new boolean[z2VarArr.length];
        this.f24804a = e(bVar2, h2Var, bVar, c2Var.f24822b, c2Var.f24824d);
    }

    private void c(t9.s[] sVarArr) {
        int i11 = 0;
        while (true) {
            z2[] z2VarArr = this.f24812i;
            if (i11 >= z2VarArr.length) {
                return;
            }
            if (z2VarArr[i11].getTrackType() == -2 && this.f24817n.c(i11)) {
                sVarArr[i11] = new t9.g();
            }
            i11++;
        }
    }

    private static com.google.android.exoplayer2.source.n e(com.google.android.exoplayer2.source.o.b bVar, h2 h2Var, com.google.android.exoplayer2.upstream.b bVar2, long j11, long j12) {
        com.google.android.exoplayer2.source.n nVarH = h2Var.h(bVar, bVar2, j11);
        return j12 != C.TIME_UNSET ? new com.google.android.exoplayer2.source.b(nVarH, true, 0L, j12) : nVarH;
    }

    private void f() {
        if (!r()) {
            return;
        }
        int i11 = 0;
        while (true) {
            la.r rVar = this.f24817n;
            if (i11 >= rVar.f68800a) {
                return;
            }
            boolean zC = rVar.c(i11);
            com.google.android.exoplayer2.trackselection.h hVar = this.f24817n.f68802c[i11];
            if (zC && hVar != null) {
                hVar.disable();
            }
            i11++;
        }
    }

    private void g(t9.s[] sVarArr) {
        int i11 = 0;
        while (true) {
            z2[] z2VarArr = this.f24812i;
            if (i11 >= z2VarArr.length) {
                return;
            }
            if (z2VarArr[i11].getTrackType() == -2) {
                sVarArr[i11] = null;
            }
            i11++;
        }
    }

    private void h() {
        if (!r()) {
            return;
        }
        int i11 = 0;
        while (true) {
            la.r rVar = this.f24817n;
            if (i11 >= rVar.f68800a) {
                return;
            }
            boolean zC = rVar.c(i11);
            com.google.android.exoplayer2.trackselection.h hVar = this.f24817n.f68802c[i11];
            if (zC && hVar != null) {
                hVar.enable();
            }
            i11++;
        }
    }

    private boolean r() {
        return this.f24815l == null;
    }

    private static void u(h2 h2Var, com.google.android.exoplayer2.source.n nVar) {
        try {
            if (nVar instanceof com.google.android.exoplayer2.source.b) {
                h2Var.y(((com.google.android.exoplayer2.source.b) nVar).f25716a);
            } else {
                h2Var.y(nVar);
            }
        } catch (RuntimeException e11) {
            com.google.android.exoplayer2.util.s.d("MediaPeriodHolder", "Period release failed.", e11);
        }
    }

    public void A() {
        com.google.android.exoplayer2.source.n nVar = this.f24804a;
        if (nVar instanceof com.google.android.exoplayer2.source.b) {
            long j11 = this.f24809f.f24824d;
            if (j11 == C.TIME_UNSET) {
                j11 = Long.MIN_VALUE;
            }
            ((com.google.android.exoplayer2.source.b) nVar).l(0L, j11);
        }
    }

    public long a(la.r rVar, long j11, boolean z10) {
        return b(rVar, j11, z10, new boolean[this.f24812i.length]);
    }

    public long b(la.r rVar, long j11, boolean z10, boolean[] zArr) {
        int i11 = 0;
        while (true) {
            boolean z11 = true;
            if (i11 >= rVar.f68800a) {
                break;
            }
            boolean[] zArr2 = this.f24811h;
            if (z10 || !rVar.b(this.f24817n, i11)) {
                z11 = false;
            }
            zArr2[i11] = z11;
            i11++;
        }
        g(this.f24806c);
        f();
        this.f24817n = rVar;
        h();
        long jB = this.f24804a.b(rVar.f68802c, this.f24811h, this.f24806c, zArr, j11);
        c(this.f24806c);
        this.f24808e = false;
        int i12 = 0;
        while (true) {
            t9.s[] sVarArr = this.f24806c;
            if (i12 >= sVarArr.length) {
                return jB;
            }
            if (sVarArr[i12] != null) {
                com.google.android.exoplayer2.util.a.g(rVar.c(i12));
                if (this.f24812i[i12].getTrackType() != -2) {
                    this.f24808e = true;
                }
            } else {
                com.google.android.exoplayer2.util.a.g(rVar.f68802c[i12] == null);
            }
            i12++;
        }
    }

    public void d(long j11) {
        com.google.android.exoplayer2.util.a.g(r());
        this.f24804a.continueLoading(y(j11));
    }

    public long i() {
        if (!this.f24807d) {
            return this.f24809f.f24822b;
        }
        long bufferedPositionUs = this.f24808e ? this.f24804a.getBufferedPositionUs() : Long.MIN_VALUE;
        return bufferedPositionUs == Long.MIN_VALUE ? this.f24809f.f24825e : bufferedPositionUs;
    }

    public b2 j() {
        return this.f24815l;
    }

    public long k() {
        if (this.f24807d) {
            return this.f24804a.getNextLoadPositionUs();
        }
        return 0L;
    }

    public long l() {
        return this.f24818o;
    }

    public long m() {
        return this.f24809f.f24822b + this.f24818o;
    }

    public t9.x n() {
        return this.f24816m;
    }

    public la.r o() {
        return this.f24817n;
    }

    public void p(float f11, k3 k3Var) {
        this.f24807d = true;
        this.f24816m = this.f24804a.getTrackGroups();
        la.r rVarV = v(f11, k3Var);
        c2 c2Var = this.f24809f;
        long jMax = c2Var.f24822b;
        long j11 = c2Var.f24825e;
        if (j11 != C.TIME_UNSET && jMax >= j11) {
            jMax = Math.max(0L, j11 - 1);
        }
        long jA = a(rVarV, jMax, false);
        long j12 = this.f24818o;
        c2 c2Var2 = this.f24809f;
        this.f24818o = j12 + (c2Var2.f24822b - jA);
        this.f24809f = c2Var2.b(jA);
    }

    public boolean q() {
        return this.f24807d && (!this.f24808e || this.f24804a.getBufferedPositionUs() == Long.MIN_VALUE);
    }

    public void s(long j11) {
        com.google.android.exoplayer2.util.a.g(r());
        if (this.f24807d) {
            this.f24804a.reevaluateBuffer(y(j11));
        }
    }

    public void t() {
        f();
        u(this.f24814k, this.f24804a);
    }

    public la.r v(float f11, k3 k3Var) {
        la.r rVarH = this.f24813j.h(this.f24812i, n(), this.f24809f.f24821a, k3Var);
        for (com.google.android.exoplayer2.trackselection.h hVar : rVarH.f68802c) {
            if (hVar != null) {
                hVar.onPlaybackSpeed(f11);
            }
        }
        return rVarH;
    }

    public void w(b2 b2Var) {
        if (b2Var == this.f24815l) {
            return;
        }
        f();
        this.f24815l = b2Var;
        h();
    }

    public void x(long j11) {
        this.f24818o = j11;
    }

    public long y(long j11) {
        return j11 - l();
    }

    public long z(long j11) {
        return j11 + l();
    }
}
