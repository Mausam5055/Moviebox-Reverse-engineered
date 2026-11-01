package com.google.android.exoplayer2.source;

import android.os.Handler;
import com.google.android.exoplayer2.k3;
import com.google.android.exoplayer2.upstream.k0;
import com.google.android.exoplayer2.util.p0;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public abstract class c extends com.google.android.exoplayer2.source.a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final HashMap f25726h = new HashMap();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Handler f25727i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private k0 f25728j;

    private final class a implements p, com.google.android.exoplayer2.drm.s {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Object f25729a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private p.a f25730b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private com.google.android.exoplayer2.drm.s.a f25731c;

        public a(Object obj) {
            this.f25730b = c.this.v(null);
            this.f25731c = c.this.t(null);
            this.f25729a = obj;
        }

        private boolean G(int i11, o.b bVar) {
            o.b bVarF;
            if (bVar != null) {
                bVarF = c.this.F(this.f25729a, bVar);
                if (bVarF == null) {
                    return false;
                }
            } else {
                bVarF = null;
            }
            int iH = c.this.H(this.f25729a, i11);
            p.a aVar = this.f25730b;
            if (aVar.f26241a != iH || !p0.c(aVar.f26242b, bVarF)) {
                this.f25730b = c.this.u(iH, bVarF, 0L);
            }
            com.google.android.exoplayer2.drm.s.a aVar2 = this.f25731c;
            if (aVar2.f25012a == iH && p0.c(aVar2.f25013b, bVarF)) {
                return true;
            }
            this.f25731c = c.this.s(iH, bVarF);
            return true;
        }

        private t9.i H(t9.i iVar) {
            long jG = c.this.G(this.f25729a, iVar.f76112f);
            long jG2 = c.this.G(this.f25729a, iVar.f76113g);
            return (jG == iVar.f76112f && jG2 == iVar.f76113g) ? iVar : new t9.i(iVar.f76107a, iVar.f76108b, iVar.f76109c, iVar.f76110d, iVar.f76111e, jG, jG2);
        }

        @Override // com.google.android.exoplayer2.drm.s
        public void B(int i11, o.b bVar) {
            if (G(i11, bVar)) {
                this.f25731c.h();
            }
        }

        @Override // com.google.android.exoplayer2.drm.s
        public void D(int i11, o.b bVar, int i12) {
            if (G(i11, bVar)) {
                this.f25731c.k(i12);
            }
        }

        @Override // com.google.android.exoplayer2.drm.s
        public void E(int i11, o.b bVar) {
            if (G(i11, bVar)) {
                this.f25731c.m();
            }
        }

        @Override // com.google.android.exoplayer2.drm.s
        public void F(int i11, o.b bVar) {
            if (G(i11, bVar)) {
                this.f25731c.j();
            }
        }

        @Override // com.google.android.exoplayer2.source.p
        public void l(int i11, o.b bVar, t9.i iVar) {
            if (G(i11, bVar)) {
                this.f25730b.E(H(iVar));
            }
        }

        @Override // com.google.android.exoplayer2.source.p
        public void p(int i11, o.b bVar, t9.h hVar, t9.i iVar) {
            if (G(i11, bVar)) {
                this.f25730b.B(hVar, H(iVar));
            }
        }

        @Override // com.google.android.exoplayer2.drm.s
        public void r(int i11, o.b bVar) {
            if (G(i11, bVar)) {
                this.f25731c.i();
            }
        }

        @Override // com.google.android.exoplayer2.drm.s
        public /* synthetic */ void s(int i11, o.b bVar) {
            com.google.android.exoplayer2.drm.l.a(this, i11, bVar);
        }

        @Override // com.google.android.exoplayer2.source.p
        public void u(int i11, o.b bVar, t9.h hVar, t9.i iVar) {
            if (G(i11, bVar)) {
                this.f25730b.s(hVar, H(iVar));
            }
        }

        @Override // com.google.android.exoplayer2.source.p
        public void w(int i11, o.b bVar, t9.i iVar) {
            if (G(i11, bVar)) {
                this.f25730b.j(H(iVar));
            }
        }

        @Override // com.google.android.exoplayer2.source.p
        public void x(int i11, o.b bVar, t9.h hVar, t9.i iVar, IOException iOException, boolean z10) {
            if (G(i11, bVar)) {
                this.f25730b.y(hVar, H(iVar), iOException, z10);
            }
        }

        @Override // com.google.android.exoplayer2.drm.s
        public void y(int i11, o.b bVar, Exception exc) {
            if (G(i11, bVar)) {
                this.f25731c.l(exc);
            }
        }

        @Override // com.google.android.exoplayer2.source.p
        public void z(int i11, o.b bVar, t9.h hVar, t9.i iVar) {
            if (G(i11, bVar)) {
                this.f25730b.v(hVar, H(iVar));
            }
        }
    }

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final o f25733a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final o.c f25734b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final a f25735c;

        public b(o oVar, o.c cVar, a aVar) {
            this.f25733a = oVar;
            this.f25734b = cVar;
            this.f25735c = aVar;
        }
    }

    protected c() {
    }

    @Override // com.google.android.exoplayer2.source.a
    protected void B(k0 k0Var) {
        this.f25728j = k0Var;
        this.f25727i = p0.w();
    }

    @Override // com.google.android.exoplayer2.source.a
    protected void D() {
        for (b bVar : this.f25726h.values()) {
            bVar.f25733a.e(bVar.f25734b);
            bVar.f25733a.h(bVar.f25735c);
            bVar.f25733a.r(bVar.f25735c);
        }
        this.f25726h.clear();
    }

    protected o.b F(Object obj, o.b bVar) {
        return bVar;
    }

    protected long G(Object obj, long j11) {
        return j11;
    }

    protected int H(Object obj, int i11) {
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX INFO: renamed from: J, reason: merged with bridge method [inline-methods] */
    public abstract void I(Object obj, o oVar, k3 k3Var);

    protected final void K(final Object obj, o oVar) {
        com.google.android.exoplayer2.util.a.a(!this.f25726h.containsKey(obj));
        o.c cVar = new o.c() { // from class: t9.b
            @Override // com.google.android.exoplayer2.source.o.c
            public final void a(com.google.android.exoplayer2.source.o oVar2, k3 k3Var) {
                this.f76095a.I(obj, oVar2, k3Var);
            }
        };
        a aVar = new a(obj);
        this.f25726h.put(obj, new b(oVar, cVar, aVar));
        oVar.g((Handler) com.google.android.exoplayer2.util.a.e(this.f25727i), aVar);
        oVar.q((Handler) com.google.android.exoplayer2.util.a.e(this.f25727i), aVar);
        oVar.i(cVar, this.f25728j, z());
        if (A()) {
            return;
        }
        oVar.o(cVar);
    }

    @Override // com.google.android.exoplayer2.source.o
    public void maybeThrowSourceInfoRefreshError() {
        Iterator it = this.f25726h.values().iterator();
        while (it.hasNext()) {
            ((b) it.next()).f25733a.maybeThrowSourceInfoRefreshError();
        }
    }

    @Override // com.google.android.exoplayer2.source.a
    protected void x() {
        for (b bVar : this.f25726h.values()) {
            bVar.f25733a.o(bVar.f25734b);
        }
    }

    @Override // com.google.android.exoplayer2.source.a
    protected void y() {
        for (b bVar : this.f25726h.values()) {
            bVar.f25733a.m(bVar.f25734b);
        }
    }
}
