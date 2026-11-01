package com.bumptech.glide.util;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.io.InputStream;
import java.util.Queue;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class ExceptionCatchingInputStream extends InputStream {
    private static final Queue<ExceptionCatchingInputStream> QUEUE = Util.createQueue(0);
    private IOException exception;
    private InputStream wrapped;

    ExceptionCatchingInputStream() {
    }

    static void clearQueue() {
        while (true) {
            Queue<ExceptionCatchingInputStream> queue = QUEUE;
            if (queue.isEmpty()) {
                return;
            } else {
                queue.remove();
            }
        }
    }

    @NonNull
    public static ExceptionCatchingInputStream obtain(@NonNull InputStream inputStream) {
        ExceptionCatchingInputStream exceptionCatchingInputStreamPoll;
        Queue<ExceptionCatchingInputStream> queue = QUEUE;
        synchronized (queue) {
            exceptionCatchingInputStreamPoll = queue.poll();
        }
        if (exceptionCatchingInputStreamPoll == null) {
            exceptionCatchingInputStreamPoll = new ExceptionCatchingInputStream();
        }
        exceptionCatchingInputStreamPoll.setInputStream(inputStream);
        return exceptionCatchingInputStreamPoll;
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
    public int read() {
        try {
            return this.wrapped.read();
        } catch (IOException e11) {
            this.exception = e11;
            return -1;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        try {
            return this.wrapped.read(bArr);
        } catch (IOException e11) {
            this.exception = e11;
            return -1;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i11, int i12) {
        try {
            return this.wrapped.read(bArr, i11, i12);
        } catch (IOException e11) {
            this.exception = e11;
            return -1;
        }
    }

    public void release() {
        this.exception = null;
        this.wrapped = null;
        Queue<ExceptionCatchingInputStream> queue = QUEUE;
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
    public long skip(long j11) {
        try {
            return this.wrapped.skip(j11);
        } catch (IOException e11) {
            this.exception = e11;
            return 0L;
        }
    }
}
