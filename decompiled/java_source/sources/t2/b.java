package t2;

import androidx.media3.common.util.j0;
import androidx.media3.common.x;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import f3.n;
import java.util.List;
import l2.l0;
import l2.m0;
import l2.q;
import l2.r;
import l2.s;
import l2.t;

/* JADX INFO: loaded from: classes2.dex */
final class b implements r {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private t f75992b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f75993c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f75994d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f75995e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private a3.a f75997g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private s f75998h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private d f75999i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private n f76000j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j0 f75991a = new j0(6);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f75996f = -1;

    private void a(s sVar) {
        this.f75991a.S(2);
        sVar.peekFully(this.f75991a.e(), 0, 2);
        sVar.advancePeekPosition(this.f75991a.P() - 2);
    }

    private void g() {
        ((t) androidx.media3.common.util.a.e(this.f75992b)).endTracks();
        this.f75992b.f(new m0.b(C.TIME_UNSET));
        this.f75993c = 6;
    }

    private static a3.a h(String str, long j11) {
        c cVarA;
        if (j11 == -1 || (cVarA = f.a(str)) == null) {
            return null;
        }
        return cVarA.a(j11);
    }

    private void i(a3.a aVar) {
        ((t) androidx.media3.common.util.a.e(this.f75992b)).track(1024, 4).c(new androidx.media3.common.r.b().U("image/jpeg").n0(new x(aVar)).N());
    }

    private int j(s sVar) {
        this.f75991a.S(2);
        sVar.peekFully(this.f75991a.e(), 0, 2);
        return this.f75991a.P();
    }

    private void k(s sVar) {
        this.f75991a.S(2);
        sVar.readFully(this.f75991a.e(), 0, 2);
        int iP = this.f75991a.P();
        this.f75994d = iP;
        if (iP == 65498) {
            if (this.f75996f != -1) {
                this.f75993c = 4;
                return;
            } else {
                g();
                return;
            }
        }
        if ((iP < 65488 || iP > 65497) && iP != 65281) {
            this.f75993c = 1;
        }
    }

    private void l(s sVar) {
        String strB;
        if (this.f75994d == 65505) {
            j0 j0Var = new j0(this.f75995e);
            sVar.readFully(j0Var.e(), 0, this.f75995e);
            if (this.f75997g == null && "http://ns.adobe.com/xap/1.0/".equals(j0Var.B()) && (strB = j0Var.B()) != null) {
                a3.a aVarH = h(strB, sVar.getLength());
                this.f75997g = aVarH;
                if (aVarH != null) {
                    this.f75996f = aVarH.f140d;
                }
            }
        } else {
            sVar.skipFully(this.f75995e);
        }
        this.f75993c = 0;
    }

    private void m(s sVar) {
        this.f75991a.S(2);
        sVar.readFully(this.f75991a.e(), 0, 2);
        this.f75995e = this.f75991a.P() - 2;
        this.f75993c = 2;
    }

    private void n(s sVar) {
        if (!sVar.peekFully(this.f75991a.e(), 0, 1, true)) {
            g();
            return;
        }
        sVar.resetPeekPosition();
        if (this.f76000j == null) {
            this.f76000j = new n(i3.s.a.f64923a, 8);
        }
        d dVar = new d(sVar, this.f75996f);
        this.f75999i = dVar;
        if (!this.f76000j.d(dVar)) {
            g();
        } else {
            this.f76000j.b(new e(this.f75996f, (t) androidx.media3.common.util.a.e(this.f75992b)));
            o();
        }
    }

    private void o() {
        i((a3.a) androidx.media3.common.util.a.e(this.f75997g));
        this.f75993c = 5;
    }

    @Override // l2.r
    public void b(t tVar) {
        this.f75992b = tVar;
    }

    @Override // l2.r
    public int c(s sVar, l0 l0Var) {
        int i11 = this.f75993c;
        if (i11 == 0) {
            k(sVar);
            return 0;
        }
        if (i11 == 1) {
            m(sVar);
            return 0;
        }
        if (i11 == 2) {
            l(sVar);
            return 0;
        }
        if (i11 == 4) {
            long position = sVar.getPosition();
            long j11 = this.f75996f;
            if (position != j11) {
                l0Var.f68620a = j11;
                return 1;
            }
            n(sVar);
            return 0;
        }
        if (i11 != 5) {
            if (i11 == 6) {
                return -1;
            }
            throw new IllegalStateException();
        }
        if (this.f75999i == null || sVar != this.f75998h) {
            this.f75998h = sVar;
            this.f75999i = new d(sVar, this.f75996f);
        }
        int iC = ((n) androidx.media3.common.util.a.e(this.f76000j)).c(this.f75999i, l0Var);
        if (iC == 1) {
            l0Var.f68620a += this.f75996f;
        }
        return iC;
    }

    @Override // l2.r
    public boolean d(s sVar) {
        if (j(sVar) != 65496) {
            return false;
        }
        int iJ = j(sVar);
        this.f75994d = iJ;
        if (iJ == 65504) {
            a(sVar);
            this.f75994d = j(sVar);
        }
        if (this.f75994d != 65505) {
            return false;
        }
        sVar.advancePeekPosition(2);
        this.f75991a.S(6);
        sVar.peekFully(this.f75991a.e(), 0, 6);
        return this.f75991a.J() == 1165519206 && this.f75991a.P() == 0;
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
        n nVar = this.f76000j;
        if (nVar != null) {
            nVar.release();
        }
    }

    @Override // l2.r
    public void seek(long j11, long j12) {
        if (j11 == 0) {
            this.f75993c = 0;
            this.f76000j = null;
        } else if (this.f75993c == 5) {
            ((n) androidx.media3.common.util.a.e(this.f76000j)).seek(j11, j12);
        }
    }
}
