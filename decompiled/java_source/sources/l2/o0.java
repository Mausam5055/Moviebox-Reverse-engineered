package l2;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class o0 implements r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f68655a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f68656b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f68657c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f68658d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f68659e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private t f68660f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private s0 f68661g;

    public o0(int i11, int i12, String str) {
        this.f68655a = i11;
        this.f68656b = i12;
        this.f68657c = str;
    }

    private void a(String str) {
        s0 s0VarTrack = this.f68660f.track(1024, 4);
        this.f68661g = s0VarTrack;
        s0VarTrack.c(new androidx.media3.common.r.b().U(str).u0(str).N());
        this.f68660f.endTracks();
        this.f68660f.f(new p0(C.TIME_UNSET));
        this.f68659e = 1;
    }

    private void g(s sVar) {
        int iE = ((s0) androidx.media3.common.util.a.e(this.f68661g)).e(sVar, 1024, true);
        if (iE != -1) {
            this.f68658d += iE;
            return;
        }
        this.f68659e = 2;
        this.f68661g.d(0L, 1, this.f68658d, 0, null);
        this.f68658d = 0;
    }

    @Override // l2.r
    public void b(t tVar) {
        this.f68660f = tVar;
        a(this.f68657c);
    }

    @Override // l2.r
    public int c(s sVar, l0 l0Var) {
        int i11 = this.f68659e;
        if (i11 == 1) {
            g(sVar);
            return 0;
        }
        if (i11 == 2) {
            return -1;
        }
        throw new IllegalStateException();
    }

    @Override // l2.r
    public boolean d(s sVar) {
        androidx.media3.common.util.a.g((this.f68655a == -1 || this.f68656b == -1) ? false : true);
        androidx.media3.common.util.j0 j0Var = new androidx.media3.common.util.j0(this.f68656b);
        sVar.peekFully(j0Var.e(), 0, this.f68656b);
        return j0Var.P() == this.f68655a;
    }

    @Override // l2.r
    public /* synthetic */ r e() {
        return q.b(this);
    }

    @Override // l2.r
    public /* synthetic */ List f() {
        return q.a(this);
    }

    @Override // l2.r
    public void release() {
    }

    @Override // l2.r
    public void seek(long j11, long j12) {
        if (j11 == 0 || this.f68659e == 1) {
            this.f68659e = 1;
            this.f68658d = 0;
        }
    }
}
