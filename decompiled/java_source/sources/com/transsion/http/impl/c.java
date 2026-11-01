package com.transsion.http.impl;

/* JADX INFO: loaded from: classes5.dex */
class c implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f45950a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ Throwable f45951b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ BitmapCallback f45952c;

    c(BitmapCallback bitmapCallback, int i11, Throwable th2) {
        this.f45952c = bitmapCallback;
        this.f45950a = i11;
        this.f45951b = th2;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f45952c.y(this.f45950a, null, this.f45951b);
    }
}
