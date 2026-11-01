package com.google.android.exoplayer2.source;

import android.os.Handler;
import android.os.Looper;
import com.google.android.exoplayer2.k3;
import com.google.android.exoplayer2.upstream.k0;
import e9.u1;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public abstract class a implements o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ArrayList f25678a = new ArrayList(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HashSet f25679b = new HashSet(1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final p.a f25680c = new p.a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.google.android.exoplayer2.drm.s.a f25681d = new com.google.android.exoplayer2.drm.s.a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Looper f25682e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private k3 f25683f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private u1 f25684g;

    protected final boolean A() {
        return !this.f25679b.isEmpty();
    }

    protected abstract void B(k0 k0Var);

    protected final void C(k3 k3Var) {
        this.f25683f = k3Var;
        Iterator it = this.f25678a.iterator();
        while (it.hasNext()) {
            ((o.c) it.next()).a(this, k3Var);
        }
    }

    protected abstract void D();

    @Override // com.google.android.exoplayer2.source.o
    public /* synthetic */ boolean b() {
        return t9.k.b(this);
    }

    @Override // com.google.android.exoplayer2.source.o
    public /* synthetic */ k3 c() {
        return t9.k.a(this);
    }

    @Override // com.google.android.exoplayer2.source.o
    public final void e(o.c cVar) {
        this.f25678a.remove(cVar);
        if (!this.f25678a.isEmpty()) {
            o(cVar);
            return;
        }
        this.f25682e = null;
        this.f25683f = null;
        this.f25684g = null;
        this.f25679b.clear();
        D();
    }

    @Override // com.google.android.exoplayer2.source.o
    public final void g(Handler handler, p pVar) {
        com.google.android.exoplayer2.util.a.e(handler);
        com.google.android.exoplayer2.util.a.e(pVar);
        this.f25680c.g(handler, pVar);
    }

    @Override // com.google.android.exoplayer2.source.o
    public final void h(p pVar) {
        this.f25680c.C(pVar);
    }

    @Override // com.google.android.exoplayer2.source.o
    public final void i(o.c cVar, k0 k0Var, u1 u1Var) {
        Looper looperMyLooper = Looper.myLooper();
        Looper looper = this.f25682e;
        com.google.android.exoplayer2.util.a.a(looper == null || looper == looperMyLooper);
        this.f25684g = u1Var;
        k3 k3Var = this.f25683f;
        this.f25678a.add(cVar);
        if (this.f25682e == null) {
            this.f25682e = looperMyLooper;
            this.f25679b.add(cVar);
            B(k0Var);
        } else if (k3Var != null) {
            m(cVar);
            cVar.a(this, k3Var);
        }
    }

    @Override // com.google.android.exoplayer2.source.o
    public final void m(o.c cVar) {
        com.google.android.exoplayer2.util.a.e(this.f25682e);
        boolean zIsEmpty = this.f25679b.isEmpty();
        this.f25679b.add(cVar);
        if (zIsEmpty) {
            y();
        }
    }

    @Override // com.google.android.exoplayer2.source.o
    public final void o(o.c cVar) {
        boolean zIsEmpty = this.f25679b.isEmpty();
        this.f25679b.remove(cVar);
        if (zIsEmpty || !this.f25679b.isEmpty()) {
            return;
        }
        x();
    }

    @Override // com.google.android.exoplayer2.source.o
    public final void q(Handler handler, com.google.android.exoplayer2.drm.s sVar) {
        com.google.android.exoplayer2.util.a.e(handler);
        com.google.android.exoplayer2.util.a.e(sVar);
        this.f25681d.g(handler, sVar);
    }

    @Override // com.google.android.exoplayer2.source.o
    public final void r(com.google.android.exoplayer2.drm.s sVar) {
        this.f25681d.t(sVar);
    }

    protected final com.google.android.exoplayer2.drm.s.a s(int i11, o.b bVar) {
        return this.f25681d.u(i11, bVar);
    }

    protected final com.google.android.exoplayer2.drm.s.a t(o.b bVar) {
        return this.f25681d.u(0, bVar);
    }

    protected final p.a u(int i11, o.b bVar, long j11) {
        return this.f25680c.F(i11, bVar, j11);
    }

    protected final p.a v(o.b bVar) {
        return this.f25680c.F(0, bVar, 0L);
    }

    protected final p.a w(o.b bVar, long j11) {
        com.google.android.exoplayer2.util.a.e(bVar);
        return this.f25680c.F(0, bVar, j11);
    }

    protected void x() {
    }

    protected void y() {
    }

    protected final u1 z() {
        return (u1) com.google.android.exoplayer2.util.a.i(this.f25684g);
    }
}
