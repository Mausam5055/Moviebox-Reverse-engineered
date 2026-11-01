package z9;

import com.google.android.exoplayer2.source.rtsp.j;
import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import g9.e0;
import g9.n;

/* JADX INFO: loaded from: classes4.dex */
public final class c implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j f79371a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private e0 f79373c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f79374d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f79376f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f79377g;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c0 f79372b = new c0();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f79375e = C.TIME_UNSET;

    public c(j jVar) {
        this.f79371a = jVar;
    }

    private void d() {
        if (this.f79374d > 0) {
            e();
        }
    }

    private void e() {
        ((e0) p0.j(this.f79373c)).d(this.f79376f, 1, this.f79374d, 0, null);
        this.f79374d = 0;
    }

    private void f(d0 d0Var, boolean z10, int i11, long j11) {
        int iA = d0Var.a();
        ((e0) com.google.android.exoplayer2.util.a.e(this.f79373c)).c(d0Var, iA);
        this.f79374d += iA;
        this.f79376f = j11;
        if (z10 && i11 == 3) {
            e();
        }
    }

    private void g(d0 d0Var, int i11, long j11) {
        this.f79372b.n(d0Var.d());
        this.f79372b.s(2);
        for (int i12 = 0; i12 < i11; i12++) {
            com.google.android.exoplayer2.audio.b.C0364b c0364bE = com.google.android.exoplayer2.audio.b.e(this.f79372b);
            ((e0) com.google.android.exoplayer2.util.a.e(this.f79373c)).c(d0Var, c0364bE.f24612e);
            ((e0) p0.j(this.f79373c)).d(j11, 1, c0364bE.f24612e, 0, null);
            j11 += ((long) (c0364bE.f24613f / c0364bE.f24610c)) * 1000000;
            this.f79372b.s(c0364bE.f24612e);
        }
    }

    private void h(d0 d0Var, long j11) {
        int iA = d0Var.a();
        ((e0) com.google.android.exoplayer2.util.a.e(this.f79373c)).c(d0Var, iA);
        ((e0) p0.j(this.f79373c)).d(j11, 1, iA, 0, null);
    }

    private static long i(long j11, long j12, long j13, int i11) {
        return j11 + p0.N0(j12 - j13, 1000000L, i11);
    }

    @Override // z9.e
    public void a(d0 d0Var, long j11, int i11, boolean z10) {
        int iD = d0Var.D() & 3;
        int iD2 = d0Var.D() & 255;
        long jI = i(this.f79377g, j11, this.f79375e, this.f79371a.f26430b);
        if (iD == 0) {
            d();
            if (iD2 == 1) {
                h(d0Var, jI);
                return;
            } else {
                g(d0Var, iD2, jI);
                return;
            }
        }
        if (iD == 1 || iD == 2) {
            d();
        } else if (iD != 3) {
            throw new IllegalArgumentException(String.valueOf(iD));
        }
        f(d0Var, z10, iD, jI);
    }

    @Override // z9.e
    public void b(long j11, int i11) {
        com.google.android.exoplayer2.util.a.g(this.f79375e == C.TIME_UNSET);
        this.f79375e = j11;
    }

    @Override // z9.e
    public void c(n nVar, int i11) {
        e0 e0VarTrack = nVar.track(i11, 1);
        this.f79373c = e0VarTrack;
        e0VarTrack.e(this.f79371a.f26431c);
    }

    @Override // z9.e
    public void seek(long j11, long j12) {
        this.f79375e = j11;
        this.f79377g = j12;
    }
}
