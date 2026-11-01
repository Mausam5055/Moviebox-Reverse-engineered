package com.transsion.transfer.androidasync;

/* JADX INFO: loaded from: classes6.dex */
public class r implements bv.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    bv.d f55546a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f55547b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    ByteBufferList f55548c = new ByteBufferList();

    private boolean a(p pVar) {
        if (this.f55547b > this.f55548c.C()) {
            return false;
        }
        bv.d dVar = this.f55546a;
        this.f55546a = null;
        dVar.F(pVar, this.f55548c);
        return true;
    }

    @Override // bv.d
    public void F(p pVar, ByteBufferList byteBufferList) {
        do {
            byteBufferList.g(this.f55548c, Math.min(byteBufferList.C(), this.f55547b - this.f55548c.C()));
            byteBufferList.C();
            if (!a(pVar)) {
                break;
            }
        } while (this.f55546a != null);
        byteBufferList.C();
    }

    public void b(int i11, bv.d dVar) {
        this.f55547b = i11;
        this.f55546a = dVar;
        this.f55548c.B();
    }
}
