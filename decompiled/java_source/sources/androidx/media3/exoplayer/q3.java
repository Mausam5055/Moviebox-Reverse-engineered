package androidx.media3.exoplayer;

import android.util.Pair;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
final class q3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final y1.f4 f12460a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final d f12464e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final y1.a f12467h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final androidx.media3.common.util.p f12468i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f12470k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private w1.n f12471l;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private g2.v f12469j = new g2.v.a(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final IdentityHashMap f12462c = new IdentityHashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map f12463d = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f12461b = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final HashMap f12465f = new HashMap();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Set f12466g = new HashSet();

    /* JADX INFO: Access modifiers changed from: private */
    final class a implements androidx.media3.exoplayer.source.s, androidx.media3.exoplayer.drm.r {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final c f12472a;

        public a(c cVar) {
            this.f12472a = cVar;
        }

        private Pair U(int i11, androidx.media3.exoplayer.source.r.b bVar) {
            androidx.media3.exoplayer.source.r.b bVar2 = null;
            if (bVar != null) {
                androidx.media3.exoplayer.source.r.b bVarN = q3.n(this.f12472a, bVar);
                if (bVarN == null) {
                    return null;
                }
                bVar2 = bVarN;
            }
            return Pair.create(Integer.valueOf(q3.s(this.f12472a, i11)), bVar2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void V(Pair pair, g2.j jVar) {
            q3.this.f12467h.E(((Integer) pair.first).intValue(), (androidx.media3.exoplayer.source.r.b) pair.second, jVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void W(Pair pair) {
            q3.this.f12467h.q(((Integer) pair.first).intValue(), (androidx.media3.exoplayer.source.r.b) pair.second);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void X(Pair pair) {
            q3.this.f12467h.w(((Integer) pair.first).intValue(), (androidx.media3.exoplayer.source.r.b) pair.second);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void Y(Pair pair) {
            q3.this.f12467h.A(((Integer) pair.first).intValue(), (androidx.media3.exoplayer.source.r.b) pair.second);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void Z(Pair pair, int i11) {
            q3.this.f12467h.r(((Integer) pair.first).intValue(), (androidx.media3.exoplayer.source.r.b) pair.second, i11);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a0(Pair pair, Exception exc) {
            q3.this.f12467h.x(((Integer) pair.first).intValue(), (androidx.media3.exoplayer.source.r.b) pair.second, exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b0(Pair pair) {
            q3.this.f12467h.G(((Integer) pair.first).intValue(), (androidx.media3.exoplayer.source.r.b) pair.second);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c0(Pair pair, g2.i iVar, g2.j jVar) {
            q3.this.f12467h.l(((Integer) pair.first).intValue(), (androidx.media3.exoplayer.source.r.b) pair.second, iVar, jVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d0(Pair pair, g2.i iVar, g2.j jVar) {
            q3.this.f12467h.C(((Integer) pair.first).intValue(), (androidx.media3.exoplayer.source.r.b) pair.second, iVar, jVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void e0(Pair pair, g2.i iVar, g2.j jVar, IOException iOException, boolean z10) {
            q3.this.f12467h.y(((Integer) pair.first).intValue(), (androidx.media3.exoplayer.source.r.b) pair.second, iVar, jVar, iOException, z10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void f0(Pair pair, g2.i iVar, g2.j jVar, int i11) {
            q3.this.f12467h.F(((Integer) pair.first).intValue(), (androidx.media3.exoplayer.source.r.b) pair.second, iVar, jVar, i11);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void g0(Pair pair, g2.j jVar) {
            q3.this.f12467h.D(((Integer) pair.first).intValue(), (androidx.media3.exoplayer.source.r.b) androidx.media3.common.util.a.e((androidx.media3.exoplayer.source.r.b) pair.second), jVar);
        }

        @Override // androidx.media3.exoplayer.drm.r
        public void A(int i11, androidx.media3.exoplayer.source.r.b bVar) {
            final Pair pairU = U(i11, bVar);
            if (pairU != null) {
                q3.this.f12468i.post(new Runnable() { // from class: androidx.media3.exoplayer.f3
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f11632a.Y(pairU);
                    }
                });
            }
        }

        @Override // androidx.media3.exoplayer.source.s
        public void C(int i11, androidx.media3.exoplayer.source.r.b bVar, final g2.i iVar, final g2.j jVar) {
            final Pair pairU = U(i11, bVar);
            if (pairU != null) {
                q3.this.f12468i.post(new Runnable() { // from class: androidx.media3.exoplayer.l3
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f12099a.d0(pairU, iVar, jVar);
                    }
                });
            }
        }

        @Override // androidx.media3.exoplayer.source.s
        public void D(int i11, androidx.media3.exoplayer.source.r.b bVar, final g2.j jVar) {
            final Pair pairU = U(i11, bVar);
            if (pairU != null) {
                q3.this.f12468i.post(new Runnable() { // from class: androidx.media3.exoplayer.e3
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f11624a.g0(pairU, jVar);
                    }
                });
            }
        }

        @Override // androidx.media3.exoplayer.source.s
        public void E(int i11, androidx.media3.exoplayer.source.r.b bVar, final g2.j jVar) {
            final Pair pairU = U(i11, bVar);
            if (pairU != null) {
                q3.this.f12468i.post(new Runnable() { // from class: androidx.media3.exoplayer.j3
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f12046a.V(pairU, jVar);
                    }
                });
            }
        }

        @Override // androidx.media3.exoplayer.source.s
        public void F(int i11, androidx.media3.exoplayer.source.r.b bVar, final g2.i iVar, final g2.j jVar, final int i12) {
            final Pair pairU = U(i11, bVar);
            if (pairU != null) {
                q3.this.f12468i.post(new Runnable() { // from class: androidx.media3.exoplayer.n3
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f12279a.f0(pairU, iVar, jVar, i12);
                    }
                });
            }
        }

        @Override // androidx.media3.exoplayer.drm.r
        public void G(int i11, androidx.media3.exoplayer.source.r.b bVar) {
            final Pair pairU = U(i11, bVar);
            if (pairU != null) {
                q3.this.f12468i.post(new Runnable() { // from class: androidx.media3.exoplayer.k3
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f12056a.b0(pairU);
                    }
                });
            }
        }

        @Override // androidx.media3.exoplayer.source.s
        public void l(int i11, androidx.media3.exoplayer.source.r.b bVar, final g2.i iVar, final g2.j jVar) {
            final Pair pairU = U(i11, bVar);
            if (pairU != null) {
                q3.this.f12468i.post(new Runnable() { // from class: androidx.media3.exoplayer.h3
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f11653a.c0(pairU, iVar, jVar);
                    }
                });
            }
        }

        @Override // androidx.media3.exoplayer.drm.r
        public void q(int i11, androidx.media3.exoplayer.source.r.b bVar) {
            final Pair pairU = U(i11, bVar);
            if (pairU != null) {
                q3.this.f12468i.post(new Runnable() { // from class: androidx.media3.exoplayer.g3
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f11638a.W(pairU);
                    }
                });
            }
        }

        @Override // androidx.media3.exoplayer.drm.r
        public void r(int i11, androidx.media3.exoplayer.source.r.b bVar, final int i12) {
            final Pair pairU = U(i11, bVar);
            if (pairU != null) {
                q3.this.f12468i.post(new Runnable() { // from class: androidx.media3.exoplayer.m3
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f12130a.Z(pairU, i12);
                    }
                });
            }
        }

        @Override // androidx.media3.exoplayer.drm.r
        public void w(int i11, androidx.media3.exoplayer.source.r.b bVar) {
            final Pair pairU = U(i11, bVar);
            if (pairU != null) {
                q3.this.f12468i.post(new Runnable() { // from class: androidx.media3.exoplayer.p3
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f12447a.X(pairU);
                    }
                });
            }
        }

        @Override // androidx.media3.exoplayer.drm.r
        public void x(int i11, androidx.media3.exoplayer.source.r.b bVar, final Exception exc) {
            final Pair pairU = U(i11, bVar);
            if (pairU != null) {
                q3.this.f12468i.post(new Runnable() { // from class: androidx.media3.exoplayer.i3
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f12027a.a0(pairU, exc);
                    }
                });
            }
        }

        @Override // androidx.media3.exoplayer.source.s
        public void y(int i11, androidx.media3.exoplayer.source.r.b bVar, final g2.i iVar, final g2.j jVar, final IOException iOException, final boolean z10) {
            final Pair pairU = U(i11, bVar);
            if (pairU != null) {
                q3.this.f12468i.post(new Runnable() { // from class: androidx.media3.exoplayer.o3
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f12300a.e0(pairU, iVar, jVar, iOException, z10);
                    }
                });
            }
        }
    }

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final androidx.media3.exoplayer.source.r f12474a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final androidx.media3.exoplayer.source.r.c f12475b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final a f12476c;

        public b(androidx.media3.exoplayer.source.r rVar, androidx.media3.exoplayer.source.r.c cVar, a aVar) {
            this.f12474a = rVar;
            this.f12475b = cVar;
            this.f12476c = aVar;
        }
    }

    static final class c implements c3 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final androidx.media3.exoplayer.source.p f12477a;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f12480d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f12481e;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List f12479c = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f12478b = new Object();

        public c(androidx.media3.exoplayer.source.r rVar, boolean z10) {
            this.f12477a = new androidx.media3.exoplayer.source.p(rVar, z10);
        }

        @Override // androidx.media3.exoplayer.c3
        public Object a() {
            return this.f12478b;
        }

        @Override // androidx.media3.exoplayer.c3
        public androidx.media3.common.e0 b() {
            return this.f12477a.W();
        }

        public void c(int i11) {
            this.f12480d = i11;
            this.f12481e = false;
            this.f12479c.clear();
        }
    }

    public interface d {
        void a();
    }

    public q3(d dVar, y1.a aVar, androidx.media3.common.util.p pVar, y1.f4 f4Var) {
        this.f12460a = f4Var;
        this.f12464e = dVar;
        this.f12467h = aVar;
        this.f12468i = pVar;
    }

    private void B(int i11, int i12) {
        for (int i13 = i12 - 1; i13 >= i11; i13--) {
            c cVar = (c) this.f12461b.remove(i13);
            this.f12463d.remove(cVar.f12478b);
            g(i13, -cVar.f12477a.W().p());
            cVar.f12481e = true;
            if (this.f12470k) {
                v(cVar);
            }
        }
    }

    private void g(int i11, int i12) {
        while (i11 < this.f12461b.size()) {
            ((c) this.f12461b.get(i11)).f12480d += i12;
            i11++;
        }
    }

    private void j(c cVar) {
        b bVar = (b) this.f12465f.get(cVar);
        if (bVar != null) {
            bVar.f12474a.o(bVar.f12475b);
        }
    }

    private void k() {
        Iterator it = this.f12466g.iterator();
        while (it.hasNext()) {
            c cVar = (c) it.next();
            if (cVar.f12479c.isEmpty()) {
                j(cVar);
                it.remove();
            }
        }
    }

    private void l(c cVar) {
        this.f12466g.add(cVar);
        b bVar = (b) this.f12465f.get(cVar);
        if (bVar != null) {
            bVar.f12474a.k(bVar.f12475b);
        }
    }

    private static Object m(Object obj) {
        return androidx.media3.exoplayer.a.v(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static androidx.media3.exoplayer.source.r.b n(c cVar, androidx.media3.exoplayer.source.r.b bVar) {
        for (int i11 = 0; i11 < cVar.f12479c.size(); i11++) {
            if (((androidx.media3.exoplayer.source.r.b) cVar.f12479c.get(i11)).f12886d == bVar.f12886d) {
                return bVar.a(p(cVar, bVar.f12883a));
            }
        }
        return null;
    }

    private static Object o(Object obj) {
        return androidx.media3.exoplayer.a.w(obj);
    }

    private static Object p(c cVar, Object obj) {
        return androidx.media3.exoplayer.a.y(cVar.f12478b, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int s(c cVar, int i11) {
        return i11 + cVar.f12480d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u(androidx.media3.exoplayer.source.r rVar, androidx.media3.common.e0 e0Var) {
        this.f12464e.a();
    }

    private void v(c cVar) {
        if (cVar.f12481e && cVar.f12479c.isEmpty()) {
            b bVar = (b) androidx.media3.common.util.a.e((b) this.f12465f.remove(cVar));
            bVar.f12474a.n(bVar.f12475b);
            bVar.f12474a.e(bVar.f12476c);
            bVar.f12474a.i(bVar.f12476c);
            this.f12466g.remove(cVar);
        }
    }

    private void x(c cVar) {
        androidx.media3.exoplayer.source.p pVar = cVar.f12477a;
        androidx.media3.exoplayer.source.r.c cVar2 = new androidx.media3.exoplayer.source.r.c() { // from class: androidx.media3.exoplayer.d3
            @Override // androidx.media3.exoplayer.source.r.c
            public final void a(androidx.media3.exoplayer.source.r rVar, androidx.media3.common.e0 e0Var) {
                this.f11352a.u(rVar, e0Var);
            }
        };
        a aVar = new a(cVar);
        this.f12465f.put(cVar, new b(pVar, cVar2, aVar));
        pVar.d(androidx.media3.common.util.a1.C(), aVar);
        pVar.h(androidx.media3.common.util.a1.C(), aVar);
        pVar.m(cVar2, this.f12471l, this.f12460a);
    }

    public androidx.media3.common.e0 A(int i11, int i12, g2.v vVar) {
        androidx.media3.common.util.a.a(i11 >= 0 && i11 <= i12 && i12 <= r());
        this.f12469j = vVar;
        B(i11, i12);
        return i();
    }

    public androidx.media3.common.e0 C(List list, g2.v vVar) {
        B(0, this.f12461b.size());
        return f(this.f12461b.size(), list, vVar);
    }

    public androidx.media3.common.e0 D(g2.v vVar) {
        int iR = r();
        if (vVar.getLength() != iR) {
            vVar = vVar.cloneAndClear().cloneAndInsert(0, iR);
        }
        this.f12469j = vVar;
        return i();
    }

    public androidx.media3.common.e0 E(int i11, int i12, List list) {
        androidx.media3.common.util.a.a(i11 >= 0 && i11 <= i12 && i12 <= r());
        androidx.media3.common.util.a.a(list.size() == i12 - i11);
        for (int i13 = i11; i13 < i12; i13++) {
            ((c) this.f12461b.get(i13)).f12477a.l((androidx.media3.common.t) list.get(i13 - i11));
        }
        return i();
    }

    public androidx.media3.common.e0 f(int i11, List list, g2.v vVar) {
        if (!list.isEmpty()) {
            this.f12469j = vVar;
            for (int i12 = i11; i12 < list.size() + i11; i12++) {
                c cVar = (c) list.get(i12 - i11);
                if (i12 > 0) {
                    c cVar2 = (c) this.f12461b.get(i12 - 1);
                    cVar.c(cVar2.f12480d + cVar2.f12477a.W().p());
                } else {
                    cVar.c(0);
                }
                g(i12, cVar.f12477a.W().p());
                this.f12461b.add(i12, cVar);
                this.f12463d.put(cVar.f12478b, cVar);
                if (this.f12470k) {
                    x(cVar);
                    if (this.f12462c.isEmpty()) {
                        this.f12466g.add(cVar);
                    } else {
                        j(cVar);
                    }
                }
            }
        }
        return i();
    }

    public androidx.media3.exoplayer.source.q h(androidx.media3.exoplayer.source.r.b bVar, androidx.media3.exoplayer.upstream.b bVar2, long j11) {
        Object objO = o(bVar.f12883a);
        androidx.media3.exoplayer.source.r.b bVarA = bVar.a(m(bVar.f12883a));
        c cVar = (c) androidx.media3.common.util.a.e((c) this.f12463d.get(objO));
        l(cVar);
        cVar.f12479c.add(bVarA);
        androidx.media3.exoplayer.source.o oVarG = cVar.f12477a.g(bVarA, bVar2, j11);
        this.f12462c.put(oVarG, cVar);
        k();
        return oVarG;
    }

    public androidx.media3.common.e0 i() {
        if (this.f12461b.isEmpty()) {
            return androidx.media3.common.e0.f9925a;
        }
        int iP = 0;
        for (int i11 = 0; i11 < this.f12461b.size(); i11++) {
            c cVar = (c) this.f12461b.get(i11);
            cVar.f12480d = iP;
            iP += cVar.f12477a.W().p();
        }
        return new u3(this.f12461b, this.f12469j);
    }

    public g2.v q() {
        return this.f12469j;
    }

    public int r() {
        return this.f12461b.size();
    }

    public boolean t() {
        return this.f12470k;
    }

    public void w(w1.n nVar) {
        androidx.media3.common.util.a.g(!this.f12470k);
        this.f12471l = nVar;
        for (int i11 = 0; i11 < this.f12461b.size(); i11++) {
            c cVar = (c) this.f12461b.get(i11);
            x(cVar);
            this.f12466g.add(cVar);
        }
        this.f12470k = true;
    }

    public void y() {
        for (b bVar : this.f12465f.values()) {
            try {
                bVar.f12474a.n(bVar.f12475b);
            } catch (RuntimeException e11) {
                androidx.media3.common.util.u.d("MediaSourceList", "Failed to release child source.", e11);
            }
            bVar.f12474a.e(bVar.f12476c);
            bVar.f12474a.i(bVar.f12476c);
        }
        this.f12465f.clear();
        this.f12466g.clear();
        this.f12470k = false;
    }

    public void z(androidx.media3.exoplayer.source.q qVar) {
        c cVar = (c) androidx.media3.common.util.a.e((c) this.f12462c.remove(qVar));
        cVar.f12477a.j(qVar);
        cVar.f12479c.remove(((androidx.media3.exoplayer.source.o) qVar).f12862a);
        if (!this.f12462c.isEmpty()) {
            k();
        }
        v(cVar);
    }
}
