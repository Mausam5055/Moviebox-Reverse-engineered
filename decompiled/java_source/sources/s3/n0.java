package s3;

import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.List;
import l2.s0;

/* JADX INFO: loaded from: classes2.dex */
final class n0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f75077a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f75078b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final s0[] f75079c;

    public n0(List list, String str) {
        this.f75077a = list;
        this.f75078b = str;
        this.f75079c = new s0[list.size()];
    }

    public void a(long j11, androidx.media3.common.util.j0 j0Var) {
        if (j0Var.a() < 9) {
            return;
        }
        int iQ = j0Var.q();
        int iQ2 = j0Var.q();
        int iH = j0Var.H();
        if (iQ == 434 && iQ2 == 1195456820 && iH == 3) {
            l2.g.b(j11, j0Var, this.f75079c);
        }
    }

    public void b(l2.t tVar, l0.d dVar) {
        for (int i11 = 0; i11 < this.f75079c.length; i11++) {
            dVar.a();
            s0 s0VarTrack = tVar.track(dVar.c(), 3);
            androidx.media3.common.r rVar = (androidx.media3.common.r) this.f75077a.get(i11);
            String str = rVar.f10161o;
            androidx.media3.common.util.a.b(MimeTypes.APPLICATION_CEA608.equals(str) || MimeTypes.APPLICATION_CEA708.equals(str), "Invalid closed caption MIME type provided: " + str);
            s0VarTrack.c(new androidx.media3.common.r.b().f0(dVar.b()).U(this.f75078b).u0(str).w0(rVar.f10151e).j0(rVar.f10150d).O(rVar.J).g0(rVar.f10164r).N());
            this.f75079c[i11] = s0VarTrack;
        }
    }
}
