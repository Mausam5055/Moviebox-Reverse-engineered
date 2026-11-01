package com.transsion.transfer.androidasync;

/* JADX INFO: loaded from: classes6.dex */
public class n implements s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    s f55536a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    boolean f55537b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    bv.j f55539d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f55541f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final ByteBufferList f55538c = new ByteBufferList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f55540e = Integer.MAX_VALUE;

    public n(s sVar) {
        m(sVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r() {
        boolean zS;
        bv.j jVar;
        if (this.f55537b) {
            return;
        }
        synchronized (this.f55538c) {
            this.f55536a.l(this.f55538c);
            zS = this.f55538c.s();
        }
        if (zS && this.f55541f) {
            this.f55536a.d();
        }
        if (!zS || (jVar = this.f55539d) == null) {
            return;
        }
        jVar.a();
    }

    @Override // com.transsion.transfer.androidasync.s
    public AsyncServer a() {
        return this.f55536a.a();
    }

    @Override // com.transsion.transfer.androidasync.s
    public void d() {
        if (a().o() != Thread.currentThread()) {
            a().D(new Runnable() { // from class: com.transsion.transfer.androidasync.m
                @Override // java.lang.Runnable
                public final void run() {
                    this.f55535a.d();
                }
            });
            return;
        }
        synchronized (this.f55538c) {
            try {
                if (this.f55538c.r()) {
                    this.f55541f = true;
                } else {
                    this.f55536a.d();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void g(boolean z10) {
        this.f55537b = z10;
        if (z10) {
            return;
        }
        r();
    }

    public boolean h() {
        return this.f55538c.r() || this.f55537b;
    }

    @Override // com.transsion.transfer.androidasync.s
    public bv.j i() {
        return this.f55539d;
    }

    protected void j(ByteBufferList byteBufferList) {
    }

    public int k() {
        return this.f55538c.C();
    }

    @Override // com.transsion.transfer.androidasync.s
    public void l(ByteBufferList byteBufferList) {
        if (a().o() == Thread.currentThread()) {
            j(byteBufferList);
            if (!h()) {
                this.f55536a.l(byteBufferList);
            }
            synchronized (this.f55538c) {
                byteBufferList.f(this.f55538c);
            }
            return;
        }
        synchronized (this.f55538c) {
            try {
                if (this.f55538c.C() >= this.f55540e) {
                    return;
                }
                j(byteBufferList);
                byteBufferList.f(this.f55538c);
                a().D(new Runnable() { // from class: com.transsion.transfer.androidasync.l
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f55534a.r();
                    }
                });
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void m(s sVar) {
        this.f55536a = sVar;
        sVar.o(new bv.j() { // from class: com.transsion.transfer.androidasync.k
            @Override // bv.j
            public final void a() {
                this.f55533a.r();
            }
        });
    }

    @Override // com.transsion.transfer.androidasync.s
    public void o(bv.j jVar) {
        this.f55539d = jVar;
    }

    @Override // com.transsion.transfer.androidasync.s
    public void p(bv.a aVar) {
        this.f55536a.p(aVar);
    }

    public void q(int i11) {
        this.f55540e = i11;
    }
}
