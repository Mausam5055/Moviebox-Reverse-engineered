package com.transsion.http.impl;

/* JADX INFO: loaded from: classes5.dex */
class d implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f45953a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f45954b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ DownloadCallback f45955c;

    d(DownloadCallback downloadCallback, String str, String str2) {
        this.f45955c = downloadCallback;
        this.f45953a = str;
        this.f45954b = str2;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f45955c.x(this.f45953a, this.f45954b);
    }
}
