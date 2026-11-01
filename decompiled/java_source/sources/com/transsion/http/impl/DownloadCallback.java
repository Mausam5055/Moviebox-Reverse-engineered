package com.transsion.http.impl;

import java.io.File;

/* JADX INFO: loaded from: classes5.dex */
public abstract class DownloadCallback extends q {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f45943e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f45944f = 300;

    public void A(int i11, String str, File file) {
        h(new e(this, str, file));
    }

    public abstract void B(String str, File file);

    @Override // com.transsion.http.impl.q
    public void m(int i11, byte[] bArr, Throwable th2) {
    }

    @Override // com.transsion.http.impl.q
    public void s(int i11, byte[] bArr) {
    }

    public void w(int i11, String str, String str2) {
        h(new d(this, str, str2));
    }

    public abstract void x(String str, String str2);

    public void y(int i11, String str, long j11, long j12) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.f45943e >= this.f45944f) {
            this.f45943e = jCurrentTimeMillis;
            h(new f(this, str, j11, j12));
        }
    }

    public abstract void z(String str, long j11, long j12);
}
