package com.transsion.transfer.androidasync.http.server;

import com.transsion.transfer.androidasync.a0;

/* JADX INFO: loaded from: classes6.dex */
public class s implements cv.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f55492a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f55493b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    com.transsion.transfer.androidasync.p f55494c;

    public s(String str) {
        this.f55493b = str;
    }

    @Override // cv.a
    public void C(com.transsion.transfer.androidasync.http.j jVar, com.transsion.transfer.androidasync.s sVar, bv.a aVar) {
        a0.c(this.f55494c, sVar, aVar);
        if (this.f55494c.isPaused()) {
            this.f55494c.resume();
        }
    }

    @Override // cv.a
    public boolean K() {
        return false;
    }

    @Override // cv.a
    public String j() {
        return this.f55493b;
    }

    @Override // cv.a
    public int length() {
        return this.f55492a;
    }

    @Override // cv.a
    public void r(com.transsion.transfer.androidasync.p pVar, bv.a aVar) {
        this.f55494c = pVar;
        pVar.s(aVar);
        pVar.t(new bv.d.a());
    }
}
