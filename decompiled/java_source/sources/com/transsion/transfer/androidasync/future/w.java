package com.transsion.transfer.androidasync.future;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes6.dex */
public class w extends n implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.transsion.transfer.androidasync.c f55230a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Exception f55231b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Object f55232c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f55233d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private a f55234e;

    protected interface a {
        void a(Exception exc, Object obj, b bVar);
    }

    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Exception f55235a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Object f55236b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        a f55237c;

        b() {
        }

        void a() {
            while (true) {
                a aVar = this.f55237c;
                if (aVar == null) {
                    return;
                }
                Exception exc = this.f55235a;
                Object obj = this.f55236b;
                this.f55237c = null;
                this.f55235a = null;
                this.f55236b = null;
                aVar.a(exc, obj, this);
            }
        }
    }

    public w() {
    }

    public w(Object obj) {
        J(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ f A(y yVar, Object obj) {
        return new w(yVar.then(obj));
    }

    private f F(f fVar, b bVar) {
        setParent(fVar);
        final w wVar = new w();
        if (fVar instanceof w) {
            ((w) fVar).D(bVar, new a() { // from class: com.transsion.transfer.androidasync.future.p
                @Override // com.transsion.transfer.androidasync.future.w.a
                public final void a(Exception exc, Object obj, w.b bVar2) {
                    this.f55218a.w(wVar, exc, obj, bVar2);
                }
            });
        } else {
            fVar.f(new g() { // from class: com.transsion.transfer.androidasync.future.q
                @Override // com.transsion.transfer.androidasync.future.g
                public final void a(Exception exc, Object obj) {
                    this.f55220a.x(wVar, exc, obj);
                }
            });
        }
        return wVar;
    }

    private boolean I(Exception exc, Object obj, b bVar) {
        synchronized (this) {
            try {
                if (!super.setComplete()) {
                    return false;
                }
                this.f55232c = obj;
                this.f55231b = exc;
                B();
                r(bVar, s());
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private boolean n(boolean z10) {
        a aVarS;
        if (!super.cancel()) {
            return false;
        }
        synchronized (this) {
            this.f55231b = new CancellationException();
            B();
            aVarS = s();
            this.f55233d = z10;
        }
        r(null, aVarS);
        return true;
    }

    private Object q() throws ExecutionException {
        if (this.f55231b == null) {
            return this.f55232c;
        }
        throw new ExecutionException(this.f55231b);
    }

    private void r(b bVar, a aVar) {
        boolean z10;
        if (this.f55233d || aVar == null) {
            return;
        }
        if (bVar == null) {
            bVar = new b();
            z10 = true;
        } else {
            z10 = false;
        }
        bVar.f55237c = aVar;
        bVar.f55235a = this.f55231b;
        bVar.f55236b = this.f55232c;
        if (z10) {
            bVar.a();
        }
    }

    private a s() {
        a aVar = this.f55234e;
        this.f55234e = null;
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ f t(d dVar, Exception exc) {
        dVar.a(exc);
        return new w(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void u(w wVar, e eVar, Exception exc, Object obj, b bVar) {
        if (exc == null) {
            wVar.I(exc, obj, bVar);
            return;
        }
        try {
            wVar.F(eVar.a(exc), bVar);
        } catch (Exception e11) {
            wVar.I(e11, null, bVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w(w wVar, Exception exc, Object obj, b bVar) {
        wVar.I(I(exc, obj, bVar) ? null : new CancellationException(), obj, bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void x(w wVar, Exception exc, Object obj) {
        wVar.G(I(exc, obj, null) ? null : new CancellationException());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void y(x xVar, w wVar, Exception e11, Object obj, b bVar) {
        if (e11 == null) {
            try {
                xVar.a(obj);
            } catch (Exception e12) {
                e11 = e12;
            }
        }
        wVar.I(e11, obj, bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void z(w wVar, z zVar, Exception exc, Object obj, b bVar) {
        if (exc != null) {
            wVar.I(exc, null, bVar);
            return;
        }
        try {
            wVar.F(zVar.then(obj), bVar);
        } catch (Exception e11) {
            wVar.I(e11, null, bVar);
        }
    }

    void B() {
        com.transsion.transfer.androidasync.c cVar = this.f55230a;
        if (cVar != null) {
            cVar.b();
            this.f55230a = null;
        }
    }

    @Override // com.transsion.transfer.androidasync.future.n
    /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
    public w reset() {
        super.reset();
        this.f55232c = null;
        this.f55231b = null;
        this.f55230a = null;
        this.f55234e = null;
        this.f55233d = false;
        return this;
    }

    void D(b bVar, a aVar) {
        synchronized (this) {
            try {
                this.f55234e = aVar;
                if (isDone() || isCancelled()) {
                    r(bVar, s());
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public f E(f fVar) {
        return F(fVar, null);
    }

    public boolean G(Exception exc) {
        return I(exc, null, null);
    }

    public boolean H(Exception exc, Object obj) {
        return I(exc, obj, null);
    }

    public boolean J(Object obj) {
        return I(null, obj, null);
    }

    @Override // com.transsion.transfer.androidasync.future.f
    public f a(final z zVar) {
        final w wVar = new w();
        wVar.setParent(this);
        D(null, new a() { // from class: com.transsion.transfer.androidasync.future.s
            @Override // com.transsion.transfer.androidasync.future.w.a
            public final void a(Exception exc, Object obj, w.b bVar) {
                w.z(this.f55223a, zVar, exc, obj, bVar);
            }
        });
        return wVar;
    }

    @Override // com.transsion.transfer.androidasync.future.n, com.transsion.transfer.androidasync.future.a
    public boolean cancel() {
        return n(this.f55233d);
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z10) {
        return cancel();
    }

    @Override // com.transsion.transfer.androidasync.future.f
    public f e(final d dVar) {
        return p(new e() { // from class: com.transsion.transfer.androidasync.future.t
            @Override // com.transsion.transfer.androidasync.future.e
            public final f a(Exception exc) {
                return w.t(dVar, exc);
            }
        });
    }

    @Override // com.transsion.transfer.androidasync.future.f
    public void f(final g gVar) {
        if (gVar == null) {
            D(null, null);
        } else {
            D(null, new a() { // from class: com.transsion.transfer.androidasync.future.o
                @Override // com.transsion.transfer.androidasync.future.w.a
                public final void a(Exception exc, Object obj, w.b bVar) {
                    gVar.a(exc, obj);
                }
            });
        }
    }

    @Override // java.util.concurrent.Future
    public Object get() {
        synchronized (this) {
            if (!isCancelled() && !isDone()) {
                o().a();
                return q();
            }
            return q();
        }
    }

    @Override // java.util.concurrent.Future
    public Object get(long j11, TimeUnit timeUnit) throws TimeoutException {
        synchronized (this) {
            if (!isCancelled() && !isDone()) {
                com.transsion.transfer.androidasync.c cVarO = o();
                if (cVarO.c(j11, timeUnit)) {
                    return q();
                }
                throw new TimeoutException();
            }
            return q();
        }
    }

    @Override // com.transsion.transfer.androidasync.future.f
    public f h(final y yVar) {
        return a(new z() { // from class: com.transsion.transfer.androidasync.future.r
            @Override // com.transsion.transfer.androidasync.future.z
            public final f then(Object obj) {
                return w.A(yVar, obj);
            }
        });
    }

    @Override // com.transsion.transfer.androidasync.future.f
    public f j(final x xVar) {
        final w wVar = new w();
        wVar.setParent(this);
        D(null, new a() { // from class: com.transsion.transfer.androidasync.future.v
            @Override // com.transsion.transfer.androidasync.future.w.a
            public final void a(Exception exc, Object obj, w.b bVar) {
                w.y(xVar, wVar, exc, obj, bVar);
            }
        });
        return wVar;
    }

    com.transsion.transfer.androidasync.c o() {
        if (this.f55230a == null) {
            this.f55230a = new com.transsion.transfer.androidasync.c();
        }
        return this.f55230a;
    }

    public f p(final e eVar) {
        final w wVar = new w();
        wVar.setParent(this);
        D(null, new a() { // from class: com.transsion.transfer.androidasync.future.u
            @Override // com.transsion.transfer.androidasync.future.w.a
            public final void a(Exception exc, Object obj, w.b bVar) {
                w.u(this.f55226a, eVar, exc, obj, bVar);
            }
        });
        return wVar;
    }

    @Override // com.transsion.transfer.androidasync.future.n
    public boolean setComplete() {
        return J(null);
    }

    @Override // com.transsion.transfer.androidasync.future.n, com.transsion.transfer.androidasync.future.b
    public boolean setParent(com.transsion.transfer.androidasync.future.a aVar) {
        return super.setParent(aVar);
    }
}
