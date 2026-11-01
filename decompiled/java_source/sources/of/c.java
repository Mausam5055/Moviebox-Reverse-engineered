package of;

import com.tencent.tinker.android.utils.SparseBoolArray;

/* JADX INFO: loaded from: classes5.dex */
public class c extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final jf.a f70985a = new jf.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final jf.a f70986b = new jf.a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final jf.a f70987c = new jf.a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final jf.a f70988d = new jf.a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final jf.a f70989e = new jf.a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final jf.a f70990f = new jf.a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final jf.a f70991g = new jf.a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final jf.a f70992h = new jf.a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final jf.a f70993i = new jf.a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final jf.a f70994j = new jf.a();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final jf.a f70995k = new jf.a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final jf.a f70996l = new jf.a();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final jf.a f70997m = new jf.a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final jf.a f70998n = new jf.a();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final jf.a f70999o = new jf.a();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final jf.a f71000p = new jf.a();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final SparseBoolArray f71001q = new SparseBoolArray();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final SparseBoolArray f71002r = new SparseBoolArray();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final SparseBoolArray f71003s = new SparseBoolArray();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final SparseBoolArray f71004t = new SparseBoolArray();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final SparseBoolArray f71005u = new SparseBoolArray();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final SparseBoolArray f71006v = new SparseBoolArray();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final SparseBoolArray f71007w = new SparseBoolArray();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final SparseBoolArray f71008x = new SparseBoolArray();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final SparseBoolArray f71009y = new SparseBoolArray();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final SparseBoolArray f71010z = new SparseBoolArray();
    private final SparseBoolArray A = new SparseBoolArray();
    private final SparseBoolArray B = new SparseBoolArray();
    private final SparseBoolArray C = new SparseBoolArray();
    private final SparseBoolArray D = new SparseBoolArray();
    private final SparseBoolArray E = new SparseBoolArray();
    private final SparseBoolArray F = new SparseBoolArray();

    @Override // of.a
    public int C(int i11) {
        int iK = this.f70991g.k(i11);
        if (iK >= 0) {
            return this.f70991g.p(iK);
        }
        if (i11 < 0 || !this.f71007w.c(i11)) {
            return i11;
        }
        return -1;
    }

    @Override // of.a
    public int D(int i11) {
        int iK = this.f70989e.k(i11);
        if (iK >= 0) {
            return this.f70989e.p(iK);
        }
        if (i11 < 0 || !this.f71005u.c(i11)) {
            return i11;
        }
        return -1;
    }

    @Override // of.a
    public int G(int i11) {
        int iK = this.f70987c.k(i11);
        if (iK >= 0) {
            return this.f70987c.p(iK);
        }
        if (i11 < 0 || !this.f71003s.c(i11)) {
            return i11;
        }
        return -1;
    }

    @Override // of.a
    public int H(int i11) {
        int iK = this.f70997m.k(i11);
        if (iK >= 0) {
            return this.f70997m.p(iK);
        }
        if (i11 < 0 || !this.C.c(i11)) {
            return i11;
        }
        return -1;
    }

    @Override // of.a
    public int I(int i11) {
        int iK = this.f70985a.k(i11);
        if (iK >= 0) {
            return this.f70985a.p(iK);
        }
        if (i11 < 0 || !this.f71001q.c(i11)) {
            return i11;
        }
        return -1;
    }

    @Override // of.a
    public int J(int i11) {
        int iK = this.f70986b.k(i11);
        if (iK >= 0) {
            return this.f70986b.p(iK);
        }
        if (i11 < 0 || !this.f71002r.c(i11)) {
            return i11;
        }
        return -1;
    }

    @Override // of.a
    public int K(int i11) {
        int iK = this.f70992h.k(i11);
        if (iK >= 0) {
            return this.f70992h.p(iK);
        }
        if (i11 < 0 || !this.f71008x.c(i11)) {
            return i11;
        }
        return -1;
    }

    public void L(int i11, int i12) {
        this.f70993i.n(i11, i12);
    }

    public void M(int i11, int i12) {
        this.f70994j.n(i11, i12);
    }

    public void N(int i11, int i12) {
        this.f70995k.n(i11, i12);
    }

    public void O(int i11, int i12) {
        this.f70996l.n(i11, i12);
    }

    public void P(int i11, int i12) {
        this.f70990f.n(i11, i12);
    }

    public void Q(int i11, int i12) {
        this.f70998n.n(i11, i12);
    }

    public void R(int i11, int i12) {
        this.f71000p.n(i11, i12);
    }

    public void S(int i11, int i12) {
        this.f70999o.n(i11, i12);
    }

    public void T(int i11, int i12) {
        this.f70988d.n(i11, i12);
    }

    public void U(int i11, int i12) {
        this.f70991g.n(i11, i12);
    }

    public void V(int i11, int i12) {
        this.f70989e.n(i11, i12);
    }

    public void W(int i11, int i12) {
        this.f70987c.n(i11, i12);
    }

    public void X(int i11, int i12) {
        this.f70997m.n(i11, i12);
    }

    public void Y(int i11, int i12) {
        this.f70985a.n(i11, i12);
    }

    public void Z(int i11, int i12) {
        this.f70986b.n(i11, i12);
    }

    public void a0(int i11, int i12) {
        this.f70992h.n(i11, i12);
    }

    public void b0(int i11) {
        if (i11 < 0) {
            return;
        }
        this.f71009y.j(i11, true);
    }

    public void c0(int i11) {
        if (i11 < 0) {
            return;
        }
        this.f71010z.j(i11, true);
    }

    public void d0(int i11) {
        if (i11 < 0) {
            return;
        }
        this.A.j(i11, true);
    }

    public void e0(int i11) {
        if (i11 < 0) {
            return;
        }
        this.B.j(i11, true);
    }

    public void f0(int i11) {
        if (i11 < 0) {
            return;
        }
        this.f71006v.j(i11, true);
    }

    public void g0(int i11) {
        if (i11 < 0) {
            return;
        }
        this.D.j(i11, true);
    }

    public void h0(int i11) {
        if (i11 < 0) {
            return;
        }
        this.F.j(i11, true);
    }

    public void i0(int i11) {
        if (i11 < 0) {
            return;
        }
        this.E.j(i11, true);
    }

    public void j0(int i11) {
        if (i11 < 0) {
            return;
        }
        this.f71004t.j(i11, true);
    }

    public void k0(int i11) {
        if (i11 < 0) {
            return;
        }
        this.f71007w.j(i11, true);
    }

    public void l0(int i11) {
        if (i11 < 0) {
            return;
        }
        this.f71005u.j(i11, true);
    }

    public void m0(int i11) {
        if (i11 < 0) {
            return;
        }
        this.f71003s.j(i11, true);
    }

    public void n0(int i11) {
        if (i11 < 0) {
            return;
        }
        this.C.j(i11, true);
    }

    public void o0(int i11) {
        if (i11 < 0) {
            return;
        }
        this.f71001q.j(i11, true);
    }

    @Override // of.a
    public int p(int i11) {
        int iK = this.f70993i.k(i11);
        if (iK >= 0) {
            return this.f70993i.p(iK);
        }
        if (i11 < 0 || !this.f71009y.c(i11)) {
            return i11;
        }
        return -1;
    }

    public void p0(int i11) {
        if (i11 < 0) {
            return;
        }
        this.f71002r.j(i11, true);
    }

    @Override // of.a
    public int q(int i11) {
        int iK = this.f70994j.k(i11);
        if (iK >= 0) {
            return this.f70994j.p(iK);
        }
        if (i11 < 0 || !this.f71010z.c(i11)) {
            return i11;
        }
        return -1;
    }

    public void q0(int i11) {
        if (i11 < 0) {
            return;
        }
        this.f71008x.j(i11, true);
    }

    @Override // of.a
    public int r(int i11) {
        int iK = this.f70995k.k(i11);
        if (iK >= 0) {
            return this.f70995k.p(iK);
        }
        if (i11 < 0 || !this.A.c(i11)) {
            return i11;
        }
        return -1;
    }

    @Override // of.a
    public int s(int i11) {
        int iK = this.f70996l.k(i11);
        if (iK >= 0) {
            return this.f70996l.p(iK);
        }
        if (i11 < 0 || !this.B.c(i11)) {
            return i11;
        }
        return -1;
    }

    @Override // of.a
    public int t(int i11) {
        int iK = this.f70990f.k(i11);
        if (iK >= 0) {
            return this.f70990f.p(iK);
        }
        if (i11 < 0 || !this.f71006v.c(i11)) {
            return i11;
        }
        return -1;
    }

    @Override // of.a
    public int v(int i11) {
        int iK = this.f70998n.k(i11);
        if (iK >= 0) {
            return this.f70998n.p(iK);
        }
        if (i11 < 0 || !this.D.c(i11)) {
            return i11;
        }
        return -1;
    }

    @Override // of.a
    public int w(int i11) {
        int iK = this.f71000p.k(i11);
        if (iK >= 0) {
            return this.f71000p.p(iK);
        }
        if (i11 < 0 || !this.F.c(i11)) {
            return i11;
        }
        return -1;
    }

    @Override // of.a
    public int x(int i11) {
        int iK = this.f70999o.k(i11);
        if (iK >= 0) {
            return this.f70999o.p(iK);
        }
        if (i11 < 0 || !this.E.c(i11)) {
            return i11;
        }
        return -1;
    }

    @Override // of.a
    public int z(int i11) {
        int iK = this.f70988d.k(i11);
        if (iK >= 0) {
            return this.f70988d.p(iK);
        }
        if (i11 < 0 || !this.f71004t.c(i11)) {
            return i11;
        }
        return -1;
    }
}
