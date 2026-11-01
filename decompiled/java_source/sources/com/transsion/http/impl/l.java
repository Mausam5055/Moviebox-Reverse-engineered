package com.transsion.http.impl;

import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes5.dex */
class l implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ byte[] f45975a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ int f45976b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ StringCallback f45977c;

    l(StringCallback stringCallback, byte[] bArr, int i11) {
        this.f45977c = stringCallback;
        this.f45975a = bArr;
        this.f45976b = i11;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f45977c.h(new j(this, StringCallback.w(this.f45975a, "UTF-8")));
        } catch (UnsupportedEncodingException e11) {
            this.f45977c.h(new k(this, e11));
        }
    }
}
