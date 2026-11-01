package com.transsion.transfer.androidasync;

/* JADX INFO: loaded from: classes6.dex */
public class t extends q implements p, bv.d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private p f55550d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f55551e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f55552f;

    class a implements bv.a {
        a() {
        }

        @Override // bv.a
        public void g(Exception exc) {
            t.this.M(exc);
        }
    }

    public void F(p pVar, ByteBufferList byteBufferList) {
        if (this.f55552f) {
            byteBufferList.B();
            return;
        }
        if (byteBufferList != null) {
            this.f55551e += byteBufferList.C();
        }
        a0.a(this, byteBufferList);
        if (byteBufferList != null) {
            this.f55551e -= byteBufferList.C();
        }
    }

    public void N(p pVar) {
        p pVar2 = this.f55550d;
        if (pVar2 != null) {
            pVar2.t(null);
        }
        this.f55550d = pVar;
        pVar.t(this);
        this.f55550d.s(new a());
    }

    @Override // com.transsion.transfer.androidasync.p, com.transsion.transfer.androidasync.s
    public AsyncServer a() {
        return this.f55550d.a();
    }

    @Override // com.transsion.transfer.androidasync.p
    public void close() {
        this.f55552f = true;
        p pVar = this.f55550d;
        if (pVar != null) {
            pVar.close();
        }
    }

    @Override // com.transsion.transfer.androidasync.p
    public boolean isPaused() {
        return this.f55550d.isPaused();
    }

    @Override // com.transsion.transfer.androidasync.p
    public void pause() {
        this.f55550d.pause();
    }

    @Override // com.transsion.transfer.androidasync.p
    public void resume() {
        this.f55550d.resume();
    }

    @Override // com.transsion.transfer.androidasync.q, com.transsion.transfer.androidasync.p
    public String v() {
        p pVar = this.f55550d;
        if (pVar == null) {
            return null;
        }
        return pVar.v();
    }
}
