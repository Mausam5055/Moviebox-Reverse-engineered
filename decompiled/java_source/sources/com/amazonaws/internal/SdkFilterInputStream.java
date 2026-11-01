package com.amazonaws.internal;

import com.amazonaws.AbortedException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public abstract class SdkFilterInputStream extends FilterInputStream implements MetricAware {
    protected SdkFilterInputStream(InputStream inputStream) {
        super(inputStream);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() {
        k();
        return ((FilterInputStream) this).in.available();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        ((FilterInputStream) this).in.close();
        k();
    }

    @Override // com.amazonaws.internal.MetricAware
    public boolean d() {
        if (((FilterInputStream) this).in instanceof MetricAware) {
            return ((MetricAware) ((FilterInputStream) this).in).d();
        }
        return false;
    }

    protected void h() {
    }

    protected final void k() {
        if (Thread.interrupted()) {
            h();
            throw new AbortedException();
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i11) {
        k();
        ((FilterInputStream) this).in.mark(i11);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        k();
        return ((FilterInputStream) this).in.markSupported();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() {
        k();
        return ((FilterInputStream) this).in.read();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i11, int i12) {
        k();
        return ((FilterInputStream) this).in.read(bArr, i11, i12);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() {
        k();
        ((FilterInputStream) this).in.reset();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j11) {
        k();
        return ((FilterInputStream) this).in.skip(j11);
    }
}
