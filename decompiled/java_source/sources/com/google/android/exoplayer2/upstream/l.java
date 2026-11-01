package com.google.android.exoplayer2.upstream;

import java.io.InputStream;

/* JADX INFO: loaded from: classes3.dex */
public final class l extends InputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final k f27431a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final n f27432b;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f27436f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f27434d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f27435e = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final byte[] f27433c = new byte[1];

    public l(k kVar, n nVar) {
        this.f27431a = kVar;
        this.f27432b = nVar;
    }

    private void d() {
        if (this.f27434d) {
            return;
        }
        this.f27431a.a(this.f27432b);
        this.f27434d = true;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f27435e) {
            return;
        }
        this.f27431a.close();
        this.f27435e = true;
    }

    public void h() {
        d();
    }

    @Override // java.io.InputStream
    public int read() {
        if (read(this.f27433c) == -1) {
            return -1;
        }
        return this.f27433c[0] & 255;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i11, int i12) {
        com.google.android.exoplayer2.util.a.g(!this.f27435e);
        d();
        int i13 = this.f27431a.read(bArr, i11, i12);
        if (i13 == -1) {
            return -1;
        }
        this.f27436f += (long) i13;
        return i13;
    }
}
