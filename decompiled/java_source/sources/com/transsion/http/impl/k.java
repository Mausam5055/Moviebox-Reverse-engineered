package com.transsion.http.impl;

import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes5.dex */
class k implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ UnsupportedEncodingException f45973a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ l f45974b;

    k(l lVar, UnsupportedEncodingException unsupportedEncodingException) {
        this.f45974b = lVar;
        this.f45973a = unsupportedEncodingException;
    }

    @Override // java.lang.Runnable
    public void run() {
        l lVar = this.f45974b;
        lVar.f45977c.x(lVar.f45976b, null, this.f45973a.getCause());
    }
}
