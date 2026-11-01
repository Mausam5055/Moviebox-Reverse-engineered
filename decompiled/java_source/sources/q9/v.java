package q9;

import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes4.dex */
public final class v implements b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private o1 f73512a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private l0 f73513b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private g9.e0 f73514c;

    public v(String str) {
        this.f73512a = new o1.b().e0(str).E();
    }

    private void c() {
        com.google.android.exoplayer2.util.a.i(this.f73513b);
        p0.j(this.f73514c);
    }

    @Override // q9.b0
    public void a(com.google.android.exoplayer2.util.d0 d0Var) {
        c();
        long jD = this.f73513b.d();
        long jE = this.f73513b.e();
        if (jD == C.TIME_UNSET || jE == C.TIME_UNSET) {
            return;
        }
        o1 o1Var = this.f73512a;
        if (jE != o1Var.f25500p) {
            o1 o1VarE = o1Var.b().i0(jE).E();
            this.f73512a = o1VarE;
            this.f73514c.e(o1VarE);
        }
        int iA = d0Var.a();
        this.f73514c.c(d0Var, iA);
        this.f73514c.d(jD, 1, iA, 0, null);
    }

    @Override // q9.b0
    public void b(l0 l0Var, g9.n nVar, i0.d dVar) {
        this.f73513b = l0Var;
        dVar.a();
        g9.e0 e0VarTrack = nVar.track(dVar.c(), 5);
        this.f73514c = e0VarTrack;
        e0VarTrack.e(this.f73512a);
    }
}
