package s3;

import androidx.media3.common.util.a1;
import androidx.media3.common.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import l2.s0;

/* JADX INFO: loaded from: classes2.dex */
public final class x implements d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private androidx.media3.common.r f75264a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private p0 f75265b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private s0 f75266c;

    public x(String str, String str2) {
        this.f75264a = new androidx.media3.common.r.b().U(str2).u0(str).N();
    }

    private void c() {
        androidx.media3.common.util.a.i(this.f75265b);
        a1.i(this.f75266c);
    }

    @Override // s3.d0
    public void a(androidx.media3.common.util.j0 j0Var) {
        c();
        long jE = this.f75265b.e();
        long jF = this.f75265b.f();
        if (jE == C.TIME_UNSET || jF == C.TIME_UNSET) {
            return;
        }
        androidx.media3.common.r rVar = this.f75264a;
        if (jF != rVar.f10166t) {
            androidx.media3.common.r rVarN = rVar.b().y0(jF).N();
            this.f75264a = rVarN;
            this.f75266c.c(rVarN);
        }
        int iA = j0Var.a();
        this.f75266c.b(j0Var, iA);
        this.f75266c.d(jE, 1, iA, 0, null);
    }

    @Override // s3.d0
    public void b(p0 p0Var, l2.t tVar, l0.d dVar) {
        this.f75265b = p0Var;
        dVar.a();
        s0 s0VarTrack = tVar.track(dVar.c(), 5);
        this.f75266c = s0VarTrack;
        s0VarTrack.c(this.f75264a);
    }
}
