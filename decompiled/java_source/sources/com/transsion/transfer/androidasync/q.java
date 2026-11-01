package com.transsion.transfer.androidasync;

/* JADX INFO: loaded from: classes6.dex */
public abstract class q implements p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f55543a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    bv.a f55544b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    bv.d f55545c;

    @Override // com.transsion.transfer.androidasync.p
    public bv.d I() {
        return this.f55545c;
    }

    public final bv.a L() {
        return this.f55544b;
    }

    protected void M(Exception exc) {
        if (this.f55543a) {
            return;
        }
        this.f55543a = true;
        if (L() != null) {
            L().g(exc);
        }
    }

    @Override // com.transsion.transfer.androidasync.p
    public final void s(bv.a aVar) {
        this.f55544b = aVar;
    }

    @Override // com.transsion.transfer.androidasync.p
    public void t(bv.d dVar) {
        this.f55545c = dVar;
    }

    @Override // com.transsion.transfer.androidasync.p
    public String v() {
        return null;
    }
}
