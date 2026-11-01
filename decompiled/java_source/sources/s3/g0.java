package s3;

import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.List;
import l2.s0;

/* JADX INFO: loaded from: classes2.dex */
public final class g0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f74932a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f74933b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final s0[] f74934c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.media3.container.i f74935d = new androidx.media3.container.i(new androidx.media3.container.i.b() { // from class: s3.f0
        @Override // androidx.media3.container.i.b
        public final void a(long j11, androidx.media3.common.util.j0 j0Var) {
            this.f74931a.f(j11, j0Var);
        }
    });

    public g0(List list, String str) {
        this.f74932a = list;
        this.f74933b = str;
        this.f74934c = new s0[list.size()];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(long j11, androidx.media3.common.util.j0 j0Var) {
        l2.g.a(j11, j0Var, this.f74934c);
    }

    public void b() {
        this.f74935d.d();
    }

    public void c(long j11, androidx.media3.common.util.j0 j0Var) {
        this.f74935d.a(j11, j0Var);
    }

    public void d(l2.t tVar, l0.d dVar) {
        for (int i11 = 0; i11 < this.f74934c.length; i11++) {
            dVar.a();
            s0 s0VarTrack = tVar.track(dVar.c(), 3);
            androidx.media3.common.r rVar = (androidx.media3.common.r) this.f74932a.get(i11);
            String str = rVar.f10161o;
            androidx.media3.common.util.a.b(MimeTypes.APPLICATION_CEA608.equals(str) || MimeTypes.APPLICATION_CEA708.equals(str), "Invalid closed caption MIME type provided: " + str);
            String strB = rVar.f10147a;
            if (strB == null) {
                strB = dVar.b();
            }
            s0VarTrack.c(new androidx.media3.common.r.b().f0(strB).U(this.f74933b).u0(str).w0(rVar.f10151e).j0(rVar.f10150d).O(rVar.J).g0(rVar.f10164r).N());
            this.f74934c[i11] = s0VarTrack;
        }
    }

    public void e() {
        this.f74935d.d();
    }

    public void g(int i11) {
        this.f74935d.g(i11);
    }
}
