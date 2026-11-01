package com.google.android.exoplayer2;

import android.os.Handler;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
final class h2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e9.u1 f25113a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final d f25117e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.google.android.exoplayer2.source.p.a f25118f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final com.google.android.exoplayer2.drm.s.a f25119g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final HashMap f25120h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Set f25121i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f25123k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private com.google.android.exoplayer2.upstream.k0 f25124l;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private t9.t f25122j = new t9.t.a(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final IdentityHashMap f25115c = new IdentityHashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map f25116d = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f25114b = new ArrayList();

    private final class a implements com.google.android.exoplayer2.source.p, com.google.android.exoplayer2.drm.s {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final c f25125a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private com.google.android.exoplayer2.source.p.a f25126b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private com.google.android.exoplayer2.drm.s.a f25127c;

        public a(c cVar) {
            this.f25126b = h2.this.f25118f;
            this.f25127c = h2.this.f25119g;
            this.f25125a = cVar;
        }

        private boolean G(int i11, com.google.android.exoplayer2.source.o.b bVar) {
            com.google.android.exoplayer2.source.o.b bVarN;
            if (bVar != null) {
                bVarN = h2.n(this.f25125a, bVar);
                if (bVarN == null) {
                    return false;
                }
            } else {
                bVarN = null;
            }
            int iR = h2.r(this.f25125a, i11);
            com.google.android.exoplayer2.source.p.a aVar = this.f25126b;
            if (aVar.f26241a != iR || !com.google.android.exoplayer2.util.p0.c(aVar.f26242b, bVarN)) {
                this.f25126b = h2.this.f25118f.F(iR, bVarN, 0L);
            }
            com.google.android.exoplayer2.drm.s.a aVar2 = this.f25127c;
            if (aVar2.f25012a == iR && com.google.android.exoplayer2.util.p0.c(aVar2.f25013b, bVarN)) {
                return true;
            }
            this.f25127c = h2.this.f25119g.u(iR, bVarN);
            return true;
        }

        @Override // com.google.android.exoplayer2.drm.s
        public void B(int i11, com.google.android.exoplayer2.source.o.b bVar) {
            if (G(i11, bVar)) {
                this.f25127c.h();
            }
        }

        @Override // com.google.android.exoplayer2.drm.s
        public void D(int i11, com.google.android.exoplayer2.source.o.b bVar, int i12) {
            if (G(i11, bVar)) {
                this.f25127c.k(i12);
            }
        }

        @Override // com.google.android.exoplayer2.drm.s
        public void E(int i11, com.google.android.exoplayer2.source.o.b bVar) {
            if (G(i11, bVar)) {
                this.f25127c.m();
            }
        }

        @Override // com.google.android.exoplayer2.drm.s
        public void F(int i11, com.google.android.exoplayer2.source.o.b bVar) {
            if (G(i11, bVar)) {
                this.f25127c.j();
            }
        }

        @Override // com.google.android.exoplayer2.source.p
        public void l(int i11, com.google.android.exoplayer2.source.o.b bVar, t9.i iVar) {
            if (G(i11, bVar)) {
                this.f25126b.E(iVar);
            }
        }

        @Override // com.google.android.exoplayer2.source.p
        public void p(int i11, com.google.android.exoplayer2.source.o.b bVar, t9.h hVar, t9.i iVar) {
            if (G(i11, bVar)) {
                this.f25126b.B(hVar, iVar);
            }
        }

        @Override // com.google.android.exoplayer2.drm.s
        public void r(int i11, com.google.android.exoplayer2.source.o.b bVar) {
            if (G(i11, bVar)) {
                this.f25127c.i();
            }
        }

        @Override // com.google.android.exoplayer2.drm.s
        public /* synthetic */ void s(int i11, com.google.android.exoplayer2.source.o.b bVar) {
            com.google.android.exoplayer2.drm.l.a(this, i11, bVar);
        }

        @Override // com.google.android.exoplayer2.source.p
        public void u(int i11, com.google.android.exoplayer2.source.o.b bVar, t9.h hVar, t9.i iVar) {
            if (G(i11, bVar)) {
                this.f25126b.s(hVar, iVar);
            }
        }

        @Override // com.google.android.exoplayer2.source.p
        public void w(int i11, com.google.android.exoplayer2.source.o.b bVar, t9.i iVar) {
            if (G(i11, bVar)) {
                this.f25126b.j(iVar);
            }
        }

        @Override // com.google.android.exoplayer2.source.p
        public void x(int i11, com.google.android.exoplayer2.source.o.b bVar, t9.h hVar, t9.i iVar, IOException iOException, boolean z10) {
            if (G(i11, bVar)) {
                this.f25126b.y(hVar, iVar, iOException, z10);
            }
        }

        @Override // com.google.android.exoplayer2.drm.s
        public void y(int i11, com.google.android.exoplayer2.source.o.b bVar, Exception exc) {
            if (G(i11, bVar)) {
                this.f25127c.l(exc);
            }
        }

        @Override // com.google.android.exoplayer2.source.p
        public void z(int i11, com.google.android.exoplayer2.source.o.b bVar, t9.h hVar, t9.i iVar) {
            if (G(i11, bVar)) {
                this.f25126b.v(hVar, iVar);
            }
        }
    }

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final com.google.android.exoplayer2.source.o f25129a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final com.google.android.exoplayer2.source.o.c f25130b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final a f25131c;

        public b(com.google.android.exoplayer2.source.o oVar, com.google.android.exoplayer2.source.o.c cVar, a aVar) {
            this.f25129a = oVar;
            this.f25130b = cVar;
            this.f25131c = aVar;
        }
    }

    static final class c implements f2 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final com.google.android.exoplayer2.source.m f25132a;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f25135d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f25136e;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List f25134c = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f25133b = new Object();

        public c(com.google.android.exoplayer2.source.o oVar, boolean z10) {
            this.f25132a = new com.google.android.exoplayer2.source.m(oVar, z10);
        }

        @Override // com.google.android.exoplayer2.f2
        public Object a() {
            return this.f25133b;
        }

        @Override // com.google.android.exoplayer2.f2
        public k3 b() {
            return this.f25132a.P();
        }

        public void c(int i11) {
            this.f25135d = i11;
            this.f25136e = false;
            this.f25134c.clear();
        }
    }

    public interface d {
        void a();
    }

    public h2(d dVar, e9.a aVar, Handler handler, e9.u1 u1Var) {
        this.f25113a = u1Var;
        this.f25117e = dVar;
        com.google.android.exoplayer2.source.p.a aVar2 = new com.google.android.exoplayer2.source.p.a();
        this.f25118f = aVar2;
        com.google.android.exoplayer2.drm.s.a aVar3 = new com.google.android.exoplayer2.drm.s.a();
        this.f25119g = aVar3;
        this.f25120h = new HashMap();
        this.f25121i = new HashSet();
        aVar2.g(handler, aVar);
        aVar3.g(handler, aVar);
    }

    private void A(int i11, int i12) {
        for (int i13 = i12 - 1; i13 >= i11; i13--) {
            c cVar = (c) this.f25114b.remove(i13);
            this.f25116d.remove(cVar.f25133b);
            g(i13, -cVar.f25132a.P().t());
            cVar.f25136e = true;
            if (this.f25123k) {
                u(cVar);
            }
        }
    }

    private void g(int i11, int i12) {
        while (i11 < this.f25114b.size()) {
            ((c) this.f25114b.get(i11)).f25135d += i12;
            i11++;
        }
    }

    private void j(c cVar) {
        b bVar = (b) this.f25120h.get(cVar);
        if (bVar != null) {
            bVar.f25129a.o(bVar.f25130b);
        }
    }

    private void k() {
        Iterator it = this.f25121i.iterator();
        while (it.hasNext()) {
            c cVar = (c) it.next();
            if (cVar.f25134c.isEmpty()) {
                j(cVar);
                it.remove();
            }
        }
    }

    private void l(c cVar) {
        this.f25121i.add(cVar);
        b bVar = (b) this.f25120h.get(cVar);
        if (bVar != null) {
            bVar.f25129a.m(bVar.f25130b);
        }
    }

    private static Object m(Object obj) {
        return com.google.android.exoplayer2.a.B(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static com.google.android.exoplayer2.source.o.b n(c cVar, com.google.android.exoplayer2.source.o.b bVar) {
        for (int i11 = 0; i11 < cVar.f25134c.size(); i11++) {
            if (((com.google.android.exoplayer2.source.o.b) cVar.f25134c.get(i11)).f76117d == bVar.f76117d) {
                return bVar.c(p(cVar, bVar.f76114a));
            }
        }
        return null;
    }

    private static Object o(Object obj) {
        return com.google.android.exoplayer2.a.C(obj);
    }

    private static Object p(c cVar, Object obj) {
        return com.google.android.exoplayer2.a.E(cVar.f25133b, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int r(c cVar, int i11) {
        return i11 + cVar.f25135d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t(com.google.android.exoplayer2.source.o oVar, k3 k3Var) {
        this.f25117e.a();
    }

    private void u(c cVar) {
        if (cVar.f25136e && cVar.f25134c.isEmpty()) {
            b bVar = (b) com.google.android.exoplayer2.util.a.e((b) this.f25120h.remove(cVar));
            bVar.f25129a.e(bVar.f25130b);
            bVar.f25129a.h(bVar.f25131c);
            bVar.f25129a.r(bVar.f25131c);
            this.f25121i.remove(cVar);
        }
    }

    private void w(c cVar) {
        com.google.android.exoplayer2.source.m mVar = cVar.f25132a;
        com.google.android.exoplayer2.source.o.c cVar2 = new com.google.android.exoplayer2.source.o.c() { // from class: com.google.android.exoplayer2.g2
            @Override // com.google.android.exoplayer2.source.o.c
            public final void a(com.google.android.exoplayer2.source.o oVar, k3 k3Var) {
                this.f25096a.t(oVar, k3Var);
            }
        };
        a aVar = new a(cVar);
        this.f25120h.put(cVar, new b(mVar, cVar2, aVar));
        mVar.g(com.google.android.exoplayer2.util.p0.y(), aVar);
        mVar.q(com.google.android.exoplayer2.util.p0.y(), aVar);
        mVar.i(cVar2, this.f25124l, this.f25113a);
    }

    public k3 B(List list, t9.t tVar) {
        A(0, this.f25114b.size());
        return f(this.f25114b.size(), list, tVar);
    }

    public k3 C(t9.t tVar) {
        int iQ = q();
        if (tVar.getLength() != iQ) {
            tVar = tVar.cloneAndClear().cloneAndInsert(0, iQ);
        }
        this.f25122j = tVar;
        return i();
    }

    public k3 f(int i11, List list, t9.t tVar) {
        if (!list.isEmpty()) {
            this.f25122j = tVar;
            for (int i12 = i11; i12 < list.size() + i11; i12++) {
                c cVar = (c) list.get(i12 - i11);
                if (i12 > 0) {
                    c cVar2 = (c) this.f25114b.get(i12 - 1);
                    cVar.c(cVar2.f25135d + cVar2.f25132a.P().t());
                } else {
                    cVar.c(0);
                }
                g(i12, cVar.f25132a.P().t());
                this.f25114b.add(i12, cVar);
                this.f25116d.put(cVar.f25133b, cVar);
                if (this.f25123k) {
                    w(cVar);
                    if (this.f25115c.isEmpty()) {
                        this.f25121i.add(cVar);
                    } else {
                        j(cVar);
                    }
                }
            }
        }
        return i();
    }

    public com.google.android.exoplayer2.source.n h(com.google.android.exoplayer2.source.o.b bVar, com.google.android.exoplayer2.upstream.b bVar2, long j11) {
        Object objO = o(bVar.f76114a);
        com.google.android.exoplayer2.source.o.b bVarC = bVar.c(m(bVar.f76114a));
        c cVar = (c) com.google.android.exoplayer2.util.a.e((c) this.f25116d.get(objO));
        l(cVar);
        cVar.f25134c.add(bVarC);
        com.google.android.exoplayer2.source.l lVarD = cVar.f25132a.d(bVarC, bVar2, j11);
        this.f25115c.put(lVarD, cVar);
        k();
        return lVarD;
    }

    public k3 i() {
        if (this.f25114b.isEmpty()) {
            return k3.f25151a;
        }
        int iT = 0;
        for (int i11 = 0; i11 < this.f25114b.size(); i11++) {
            c cVar = (c) this.f25114b.get(i11);
            cVar.f25135d = iT;
            iT += cVar.f25132a.P().t();
        }
        return new t2(this.f25114b, this.f25122j);
    }

    public int q() {
        return this.f25114b.size();
    }

    public boolean s() {
        return this.f25123k;
    }

    public void v(com.google.android.exoplayer2.upstream.k0 k0Var) {
        com.google.android.exoplayer2.util.a.g(!this.f25123k);
        this.f25124l = k0Var;
        for (int i11 = 0; i11 < this.f25114b.size(); i11++) {
            c cVar = (c) this.f25114b.get(i11);
            w(cVar);
            this.f25121i.add(cVar);
        }
        this.f25123k = true;
    }

    public void x() {
        for (b bVar : this.f25120h.values()) {
            try {
                bVar.f25129a.e(bVar.f25130b);
            } catch (RuntimeException e11) {
                com.google.android.exoplayer2.util.s.d("MediaSourceList", "Failed to release child source.", e11);
            }
            bVar.f25129a.h(bVar.f25131c);
            bVar.f25129a.r(bVar.f25131c);
        }
        this.f25120h.clear();
        this.f25121i.clear();
        this.f25123k = false;
    }

    public void y(com.google.android.exoplayer2.source.n nVar) {
        c cVar = (c) com.google.android.exoplayer2.util.a.e((c) this.f25115c.remove(nVar));
        cVar.f25132a.k(nVar);
        cVar.f25134c.remove(((com.google.android.exoplayer2.source.l) nVar).f26219a);
        if (!this.f25115c.isEmpty()) {
            k();
        }
        u(cVar);
    }

    public k3 z(int i11, int i12, t9.t tVar) {
        com.google.android.exoplayer2.util.a.a(i11 >= 0 && i11 <= i12 && i12 <= q());
        this.f25122j = tVar;
        A(i11, i12);
        return i();
    }
}
