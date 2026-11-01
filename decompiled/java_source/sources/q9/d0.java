package q9;

import com.google.android.exoplayer2.o1;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f73217a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final g9.e0[] f73218b;

    public d0(List list) {
        this.f73217a = list;
        this.f73218b = new g9.e0[list.size()];
    }

    public void a(long j11, com.google.android.exoplayer2.util.d0 d0Var) {
        g9.c.a(j11, d0Var, this.f73218b);
    }

    public void b(g9.n nVar, i0.d dVar) {
        for (int i11 = 0; i11 < this.f73218b.length; i11++) {
            dVar.a();
            g9.e0 e0VarTrack = nVar.track(dVar.c(), 3);
            o1 o1Var = (o1) this.f73217a.get(i11);
            String str = o1Var.f25496l;
            com.google.android.exoplayer2.util.a.b(MimeTypes.APPLICATION_CEA608.equals(str) || MimeTypes.APPLICATION_CEA708.equals(str), "Invalid closed caption mime type provided: " + str);
            String strB = o1Var.f25485a;
            if (strB == null) {
                strB = dVar.b();
            }
            e0VarTrack.e(new o1.b().S(strB).e0(str).g0(o1Var.f25488d).V(o1Var.f25487c).F(o1Var.D).T(o1Var.f25498n).E());
            this.f73218b[i11] = e0VarTrack;
        }
    }
}
