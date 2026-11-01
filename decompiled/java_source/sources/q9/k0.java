package q9;

import com.google.android.exoplayer2.o1;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class k0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f73336a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final g9.e0[] f73337b;

    public k0(List list) {
        this.f73336a = list;
        this.f73337b = new g9.e0[list.size()];
    }

    public void a(long j11, com.google.android.exoplayer2.util.d0 d0Var) {
        if (d0Var.a() < 9) {
            return;
        }
        int iN = d0Var.n();
        int iN2 = d0Var.n();
        int iD = d0Var.D();
        if (iN == 434 && iN2 == 1195456820 && iD == 3) {
            g9.c.b(j11, d0Var, this.f73337b);
        }
    }

    public void b(g9.n nVar, i0.d dVar) {
        for (int i11 = 0; i11 < this.f73337b.length; i11++) {
            dVar.a();
            g9.e0 e0VarTrack = nVar.track(dVar.c(), 3);
            o1 o1Var = (o1) this.f73336a.get(i11);
            String str = o1Var.f25496l;
            com.google.android.exoplayer2.util.a.b(MimeTypes.APPLICATION_CEA608.equals(str) || MimeTypes.APPLICATION_CEA708.equals(str), "Invalid closed caption mime type provided: " + str);
            e0VarTrack.e(new o1.b().S(dVar.b()).e0(str).g0(o1Var.f25488d).V(o1Var.f25487c).F(o1Var.D).T(o1Var.f25498n).E());
            this.f73337b[i11] = e0VarTrack;
        }
    }
}
