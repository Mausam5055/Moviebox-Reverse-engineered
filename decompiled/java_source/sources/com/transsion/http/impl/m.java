package com.transsion.http.impl;

/* JADX INFO: loaded from: classes5.dex */
class m implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f45978a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ o f45979b;

    m(o oVar, String str) {
        this.f45979b = oVar;
        this.f45978a = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        o oVar = this.f45979b;
        oVar.f45985d.x(oVar.f45983b, this.f45978a, oVar.f45984c);
    }
}
