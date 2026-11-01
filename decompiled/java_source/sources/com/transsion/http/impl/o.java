package com.transsion.http.impl;

import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes5.dex */
class o implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ byte[] f45982a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ int f45983b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ Throwable f45984c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ StringCallback f45985d;

    o(StringCallback stringCallback, byte[] bArr, int i11, Throwable th2) {
        this.f45985d = stringCallback;
        this.f45982a = bArr;
        this.f45983b = i11;
        this.f45984c = th2;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f45985d.h(new m(this, StringCallback.w(this.f45982a, "UTF-8")));
        } catch (UnsupportedEncodingException e11) {
            this.f45985d.h(new n(this, e11));
        }
    }
}
