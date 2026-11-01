package androidx.media3.exoplayer.source;

import android.os.Handler;
import androidx.media3.common.e0;
import androidx.media3.common.util.a1;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public abstract class c extends androidx.media3.exoplayer.source.a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final HashMap f12715h = new HashMap();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Handler f12716i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private w1.n f12717j;

    private final class a implements s, androidx.media3.exoplayer.drm.r {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Object f12718a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private s.a f12719b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private androidx.media3.exoplayer.drm.r.a f12720c;

        public a(Object obj) {
            this.f12719b = c.this.u(null);
            this.f12720c = c.this.s(null);
            this.f12718a = obj;
        }

        private boolean I(int i11, r.b bVar) {
            r.b bVarD;
            if (bVar != null) {
                bVarD = c.this.D(this.f12718a, bVar);
                if (bVarD == null) {
                    return false;
                }
            } else {
                bVarD = null;
            }
            int iF = c.this.F(this.f12718a, i11);
            s.a aVar = this.f12719b;
            if (aVar.f12888a != iF || !Objects.equals(aVar.f12889b, bVarD)) {
                this.f12719b = c.this.t(iF, bVarD);
            }
            androidx.media3.exoplayer.drm.r.a aVar2 = this.f12720c;
            if (aVar2.f11607a == iF && Objects.equals(aVar2.f11608b, bVarD)) {
                return true;
            }
            this.f12720c = c.this.r(iF, bVarD);
            return true;
        }

        private g2.j J(g2.j jVar, r.b bVar) {
            long jE = c.this.E(this.f12718a, jVar.f63220f, bVar);
            long jE2 = c.this.E(this.f12718a, jVar.f63221g, bVar);
            return (jE == jVar.f63220f && jE2 == jVar.f63221g) ? jVar : new g2.j(jVar.f63215a, jVar.f63216b, jVar.f63217c, jVar.f63218d, jVar.f63219e, jE, jE2);
        }

        @Override // androidx.media3.exoplayer.drm.r
        public void A(int i11, r.b bVar) {
            if (I(i11, bVar)) {
                this.f12720c.j();
            }
        }

        @Override // androidx.media3.exoplayer.source.s
        public void C(int i11, r.b bVar, g2.i iVar, g2.j jVar) {
            if (I(i11, bVar)) {
                this.f12719b.x(iVar, J(jVar, bVar));
            }
        }

        @Override // androidx.media3.exoplayer.source.s
        public void D(int i11, r.b bVar, g2.j jVar) {
            if (I(i11, bVar)) {
                this.f12719b.G(J(jVar, bVar));
            }
        }

        @Override // androidx.media3.exoplayer.source.s
        public void E(int i11, r.b bVar, g2.j jVar) {
            if (I(i11, bVar)) {
                this.f12719b.k(J(jVar, bVar));
            }
        }

        @Override // androidx.media3.exoplayer.source.s
        public void F(int i11, r.b bVar, g2.i iVar, g2.j jVar, int i12) {
            if (I(i11, bVar)) {
                this.f12719b.D(iVar, J(jVar, bVar), i12);
            }
        }

        @Override // androidx.media3.exoplayer.drm.r
        public void G(int i11, r.b bVar) {
            if (I(i11, bVar)) {
                this.f12720c.m();
            }
        }

        @Override // androidx.media3.exoplayer.source.s
        public void l(int i11, r.b bVar, g2.i iVar, g2.j jVar) {
            if (I(i11, bVar)) {
                this.f12719b.u(iVar, J(jVar, bVar));
            }
        }

        @Override // androidx.media3.exoplayer.drm.r
        public void q(int i11, r.b bVar) {
            if (I(i11, bVar)) {
                this.f12720c.h();
            }
        }

        @Override // androidx.media3.exoplayer.drm.r
        public void r(int i11, r.b bVar, int i12) {
            if (I(i11, bVar)) {
                this.f12720c.k(i12);
            }
        }

        @Override // androidx.media3.exoplayer.drm.r
        public void w(int i11, r.b bVar) {
            if (I(i11, bVar)) {
                this.f12720c.i();
            }
        }

        @Override // androidx.media3.exoplayer.drm.r
        public void x(int i11, r.b bVar, Exception exc) {
            if (I(i11, bVar)) {
                this.f12720c.l(exc);
            }
        }

        @Override // androidx.media3.exoplayer.source.s
        public void y(int i11, r.b bVar, g2.i iVar, g2.j jVar, IOException iOException, boolean z10) {
            if (I(i11, bVar)) {
                this.f12719b.A(iVar, J(jVar, bVar), iOException, z10);
            }
        }
    }

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final r f12722a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final r.c f12723b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final a f12724c;

        public b(r rVar, r.c cVar, a aVar) {
            this.f12722a = rVar;
            this.f12723b = cVar;
            this.f12724c = aVar;
        }
    }

    protected c() {
    }

    @Override // androidx.media3.exoplayer.source.a
    protected void B() {
        for (b bVar : this.f12715h.values()) {
            bVar.f12722a.n(bVar.f12723b);
            bVar.f12722a.e(bVar.f12724c);
            bVar.f12722a.i(bVar.f12724c);
        }
        this.f12715h.clear();
    }

    protected abstract r.b D(Object obj, r.b bVar);

    protected long E(Object obj, long j11, r.b bVar) {
        return j11;
    }

    protected int F(Object obj, int i11) {
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
    public abstract void G(Object obj, r rVar, androidx.media3.common.e0 e0Var);

    protected final void I(final Object obj, r rVar) {
        androidx.media3.common.util.a.a(!this.f12715h.containsKey(obj));
        r.c cVar = new r.c() { // from class: g2.c
            @Override // androidx.media3.exoplayer.source.r.c
            public final void a(androidx.media3.exoplayer.source.r rVar2, e0 e0Var) {
                this.f63199a.G(obj, rVar2, e0Var);
            }
        };
        a aVar = new a(obj);
        this.f12715h.put(obj, new b(rVar, cVar, aVar));
        rVar.d((Handler) androidx.media3.common.util.a.e(this.f12716i), aVar);
        rVar.h((Handler) androidx.media3.common.util.a.e(this.f12716i), aVar);
        rVar.m(cVar, this.f12717j, x());
        if (y()) {
            return;
        }
        rVar.o(cVar);
    }

    @Override // androidx.media3.exoplayer.source.r
    public void maybeThrowSourceInfoRefreshError() {
        Iterator it = this.f12715h.values().iterator();
        while (it.hasNext()) {
            ((b) it.next()).f12722a.maybeThrowSourceInfoRefreshError();
        }
    }

    @Override // androidx.media3.exoplayer.source.a
    protected void v() {
        for (b bVar : this.f12715h.values()) {
            bVar.f12722a.o(bVar.f12723b);
        }
    }

    @Override // androidx.media3.exoplayer.source.a
    protected void w() {
        for (b bVar : this.f12715h.values()) {
            bVar.f12722a.k(bVar.f12723b);
        }
    }

    @Override // androidx.media3.exoplayer.source.a
    protected void z(w1.n nVar) {
        this.f12717j = nVar;
        this.f12716i = a1.A();
    }
}
