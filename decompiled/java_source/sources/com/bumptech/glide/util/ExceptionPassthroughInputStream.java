package com.bumptech.glide.util;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.io.InputStream;
import java.util.Queue;

/* JADX INFO: loaded from: classes2.dex */
public final class ExceptionPassthroughInputStream extends InputStream {
    private static final Queue<ExceptionPassthroughInputStream> POOL = Util.createQueue(0);
    private IOException exception;
    private InputStream wrapped;

    ExceptionPassthroughInputStream() {
    }

    static void clearQueue() {
        synchronized (POOL) {
            while (true) {
                try {
                    Queue<ExceptionPassthroughInputStream> queue = POOL;
                    if (!queue.isEmpty()) {
                        queue.remove();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    @NonNull
    public static ExceptionPassthroughInputStream obtain(@NonNull InputStream inputStream) {
        ExceptionPassthroughInputStream exceptionPassthroughInputStreamPoll;
        Queue<ExceptionPassthroughInputStream> queue = POOL;
        synchronized (queue) {
            exceptionPassthroughInputStreamPoll = queue.poll();
        }
        if (exceptionPassthroughInputStreamPoll == null) {
            exceptionPassthroughInputStreamPoll = new ExceptionPassthroughInputStream();
        }
        exceptionPassthroughInputStreamPoll.setInputStream(inputStream);
        return exceptionPassthroughInputStreamPoll;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.wrapped.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.wrapped.close();
    }

    @Nullable
    public IOException getException() {
        return this.exception;
    }

    @Override // java.io.InputStream
    public void mark(int i11) {
        this.wrapped.mark(i11);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.wrapped.markSupported();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        try {
            return this.wrapped.read();
        } catch (IOException e11) {
            this.exception = e11;
            throw e11;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        try {
            return this.wrapped.read(bArr);
        } catch (IOException e11) {
            this.exception = e11;
            throw e11;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i11, int i12) throws IOException {
        try {
            return this.wrapped.read(bArr, i11, i12);
        } catch (IOException e11) {
            this.exception = e11;
            throw e11;
        }
    }

    public void release() {
        this.exception = null;
        this.wrapped = null;
        Queue<ExceptionPassthroughInputStream> queue = POOL;
        synchronized (queue) {
            queue.offer(this);
        }
    }

    @Override // java.io.InputStream
    public synchronized void reset() throws IOException {
        this.wrapped.reset();
    }

    void setInputStream(@NonNull InputStream inputStream) {
        this.wrapped = inputStream;
    }

    @Override // java.io.InputStream
    public long skip(long j11) throws IOException {
        try {
            return this.wrapped.skip(j11);
        } catch (IOException e11) {
            this.exception = e11;
            throw e11;
        }
    }
}
