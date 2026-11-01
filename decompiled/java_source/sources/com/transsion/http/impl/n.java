package com.transsion.http.impl;

import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes5.dex */
class n implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ UnsupportedEncodingException f45980a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ o f45981b;

    n(o oVar, UnsupportedEncodingException unsupportedEncodingException) {
        this.f45981b = oVar;
        this.f45980a = unsupportedEncodingException;
    }

    @Override // java.lang.Runnable
    public void run() {
        o oVar = this.f45981b;
        oVar.f45985d.x(oVar.f45983b, null, this.f45980a.getCause());
    }
}
