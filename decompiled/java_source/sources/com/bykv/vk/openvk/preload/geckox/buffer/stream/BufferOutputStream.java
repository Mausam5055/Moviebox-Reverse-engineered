package com.bykv.vk.openvk.preload.geckox.buffer.stream;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class BufferOutputStream extends b {
    private com.bykv.vk.openvk.preload.geckox.buffer.a mBuffer;

    public BufferOutputStream(com.bykv.vk.openvk.preload.geckox.buffer.a aVar) {
        this.mBuffer = aVar;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        flush();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
    }

    @Override // java.io.OutputStream
    public void write(int i11) throws IOException {
        this.mBuffer.a(i11);
    }

    @Override // com.bykv.vk.openvk.preload.geckox.buffer.stream.b
    public void write(long j11, int i11) throws IOException {
        synchronized (this) {
            this.mBuffer.b(j11);
            this.mBuffer.a(i11);
        }
    }

    @Override // com.bykv.vk.openvk.preload.geckox.buffer.stream.b
    public void write(long j11, byte[] bArr) throws IOException {
        synchronized (this) {
            this.mBuffer.b(j11);
            this.mBuffer.a(bArr);
        }
    }

    @Override // com.bykv.vk.openvk.preload.geckox.buffer.stream.b
    public void write(long j11, byte[] bArr, int i11, int i12) throws IOException {
        synchronized (this) {
            this.mBuffer.b(j11);
            this.mBuffer.a(bArr, i11, i12);
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        this.mBuffer.a(bArr);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i11, int i12) throws IOException {
        this.mBuffer.a(bArr, i11, i12);
    }
}
