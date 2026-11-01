package com.transsion.http.impl;

/* JADX INFO: loaded from: classes5.dex */
class b implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ byte[] f45947a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ int f45948b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ BitmapCallback f45949c;

    b(BitmapCallback bitmapCallback, byte[] bArr, int i11) {
        this.f45949c = bitmapCallback;
        this.f45947a = bArr;
        this.f45948b = i11;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f45949c.h(new a(this, this.f45949c.x(this.f45947a)));
    }
}
