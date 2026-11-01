package com.transsion.http.impl;

/* JADX INFO: loaded from: classes5.dex */
class j implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f45971a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ l f45972b;

    j(l lVar, String str) {
        this.f45972b = lVar;
        this.f45971a = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        l lVar = this.f45972b;
        lVar.f45977c.y(lVar.f45976b, this.f45971a);
    }
}
