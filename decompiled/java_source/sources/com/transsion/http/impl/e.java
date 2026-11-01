package com.transsion.http.impl;

import java.io.File;

/* JADX INFO: loaded from: classes5.dex */
class e implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f45956a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ File f45957b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ DownloadCallback f45958c;

    e(DownloadCallback downloadCallback, String str, File file) {
        this.f45958c = downloadCallback;
        this.f45956a = str;
        this.f45957b = file;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f45958c.B(this.f45956a, this.f45957b);
    }
}
