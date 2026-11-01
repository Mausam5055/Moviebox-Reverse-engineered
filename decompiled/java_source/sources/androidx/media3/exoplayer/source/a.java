package androidx.media3.exoplayer.source;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import y1.f4;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a implements r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ArrayList f12626a = new ArrayList(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HashSet f12627b = new HashSet(1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final s.a f12628c = new s.a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.media3.exoplayer.drm.r.a f12629d = new androidx.media3.exoplayer.drm.r.a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Looper f12630e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private androidx.media3.common.e0 f12631f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private f4 f12632g;

    protected final void A(androidx.media3.common.e0 e0Var) {
        this.f12631f = e0Var;
        Iterator it = this.f12626a.iterator();
        while (it.hasNext()) {
            ((r.c) it.next()).a(this, e0Var);
        }
    }

    protected abstract void B();

    @Override // androidx.media3.exoplayer.source.r
    public /* synthetic */ boolean b() {
        return g2.k.c(this);
    }

    @Override // androidx.media3.exoplayer.source.r
    public /* synthetic */ androidx.media3.common.e0 c() {
        return g2.k.b(this);
    }

    @Override // androidx.media3.exoplayer.source.r
    public final void d(Handler handler, s sVar) {
        androidx.media3.common.util.a.e(handler);
        androidx.media3.common.util.a.e(sVar);
        this.f12628c.h(handler, sVar);
    }

    @Override // androidx.media3.exoplayer.source.r
    public final void e(s sVar) {
        this.f12628c.E(sVar);
    }

    @Override // androidx.media3.exoplayer.source.r
    public final void h(Handler handler, androidx.media3.exoplayer.drm.r rVar) {
        androidx.media3.common.util.a.e(handler);
        androidx.media3.common.util.a.e(rVar);
        this.f12629d.g(handler, rVar);
    }

    @Override // androidx.media3.exoplayer.source.r
    public final void i(androidx.media3.exoplayer.drm.r rVar) {
        this.f12629d.t(rVar);
    }

    @Override // androidx.media3.exoplayer.source.r
    public final void k(r.c cVar) {
        androidx.media3.common.util.a.e(this.f12630e);
        boolean zIsEmpty = this.f12627b.isEmpty();
        this.f12627b.add(cVar);
        if (zIsEmpty) {
            w();
        }
    }

    @Override // androidx.media3.exoplayer.source.r
    public /* synthetic */ void l(androidx.media3.common.t tVar) {
        g2.k.d(this, tVar);
    }

    @Override // androidx.media3.exoplayer.source.r
    public final void m(r.c cVar, w1.n nVar, f4 f4Var) {
        Looper looperMyLooper = Looper.myLooper();
        Looper looper = this.f12630e;
        androidx.media3.common.util.a.a(looper == null || looper == looperMyLooper);
        this.f12632g = f4Var;
        androidx.media3.common.e0 e0Var = this.f12631f;
        this.f12626a.add(cVar);
        if (this.f12630e == null) {
            this.f12630e = looperMyLooper;
            this.f12627b.add(cVar);
            z(nVar);
        } else if (e0Var != null) {
            k(cVar);
            cVar.a(this, e0Var);
        }
    }

    @Override // androidx.media3.exoplayer.source.r
    public final void n(r.c cVar) {
        this.f12626a.remove(cVar);
        if (!this.f12626a.isEmpty()) {
            o(cVar);
            return;
        }
        this.f12630e = null;
        this.f12631f = null;
        this.f12632g = null;
        this.f12627b.clear();
        B();
    }

    @Override // androidx.media3.exoplayer.source.r
    public final void o(r.c cVar) {
        boolean zIsEmpty = this.f12627b.isEmpty();
        this.f12627b.remove(cVar);
        if (zIsEmpty || !this.f12627b.isEmpty()) {
            return;
        }
        v();
    }

    @Override // androidx.media3.exoplayer.source.r
    public /* synthetic */ boolean q(androidx.media3.common.t tVar) {
        return g2.k.a(this, tVar);
    }

    protected final androidx.media3.exoplayer.drm.r.a r(int i11, r.b bVar) {
        return this.f12629d.u(i11, bVar);
    }

    protected final androidx.media3.exoplayer.drm.r.a s(r.b bVar) {
        return this.f12629d.u(0, bVar);
    }

    protected final s.a t(int i11, r.b bVar) {
        return this.f12628c.H(i11, bVar);
    }

    protected final s.a u(r.b bVar) {
        return this.f12628c.H(0, bVar);
    }

    protected void v() {
    }

    protected void w() {
    }

    protected final f4 x() {
        return (f4) androidx.media3.common.util.a.i(this.f12632g);
    }

    protected final boolean y() {
        return !this.f12627b.isEmpty();
    }

    protected abstract void z(w1.n nVar);
}
