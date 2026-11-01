package com.transsion.http.impl;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes5.dex */
class a implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Bitmap f45945a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ b f45946b;

    a(b bVar, Bitmap bitmap) {
        this.f45946b = bVar;
        this.f45945a = bitmap;
    }

    @Override // java.lang.Runnable
    public void run() {
        b bVar = this.f45946b;
        bVar.f45949c.z(bVar.f45948b, this.f45945a);
    }
}
