package com.bykv.vk.openvk.preload.geckox.buffer.stream;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public final class a extends InputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.bykv.vk.openvk.preload.geckox.buffer.a f20647a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f20648b;

    public a(com.bykv.vk.openvk.preload.geckox.buffer.a aVar) {
        this.f20647a = aVar;
    }

    @Override // java.io.InputStream
    public final int available() throws IOException {
        long jB = this.f20647a.b() - this.f20647a.c();
        if (jB > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) jB;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
    }

    @Override // java.io.InputStream
    public final synchronized void mark(int i11) {
        this.f20648b = i11;
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        return this.f20647a.d();
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        return this.f20647a.b(bArr);
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i11, int i12) throws IOException {
        return this.f20647a.b(bArr, i11, i12);
    }

    @Override // java.io.InputStream
    public final synchronized void reset() throws IOException {
        this.f20647a.b(this.f20648b);
    }

    @Override // java.io.InputStream
    public final long skip(long j11) throws IOException {
        return this.f20647a.a(j11);
    }
}
