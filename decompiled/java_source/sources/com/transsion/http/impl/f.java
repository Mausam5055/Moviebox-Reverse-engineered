package com.transsion.http.impl;

/* JADX INFO: loaded from: classes5.dex */
class f implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f45959a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ long f45960b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ long f45961c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ DownloadCallback f45962d;

    f(DownloadCallback downloadCallback, String str, long j11, long j12) {
        this.f45962d = downloadCallback;
        this.f45959a = str;
        this.f45960b = j11;
        this.f45961c = j12;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f45962d.z(this.f45959a, this.f45960b, this.f45961c);
    }
}
