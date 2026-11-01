package com.bumptech.glide.load.data;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes2.dex */
public final class BufferedOutputStream extends OutputStream {
    private ArrayPool arrayPool;
    private byte[] buffer;
    private int index;

    @NonNull
    private final OutputStream out;

    public BufferedOutputStream(@NonNull OutputStream outputStream, @NonNull ArrayPool arrayPool) {
        this(outputStream, arrayPool, 65536);
    }

    BufferedOutputStream(@NonNull OutputStream outputStream, ArrayPool arrayPool, int i11) {
        this.out = outputStream;
        this.arrayPool = arrayPool;
        this.buffer = (byte[]) arrayPool.get(i11, byte[].class);
    }

    private void flushBuffer() throws IOException {
        int i11 = this.index;
        if (i11 > 0) {
            this.out.write(this.buffer, 0, i11);
            this.index = 0;
        }
    }

    private void maybeFlushBuffer() throws IOException {
        if (this.index == this.buffer.length) {
            flushBuffer();
        }
    }

    private void release() {
        byte[] bArr = this.buffer;
        if (bArr != null) {
            this.arrayPool.put(bArr);
            this.buffer = null;
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            flush();
            this.out.close();
            release();
        } catch (Throwable th2) {
            this.out.close();
            throw th2;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        flushBuffer();
        this.out.flush();
    }

    @Override // java.io.OutputStream
    public void write(int i11) throws IOException {
        byte[] bArr = this.buffer;
        int i12 = this.index;
        this.index = i12 + 1;
        bArr[i12] = (byte) i11;
        maybeFlushBuffer();
    }

    @Override // java.io.OutputStream
    public void write(@NonNull byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(@NonNull byte[] bArr, int i11, int i12) throws IOException {
        int i13 = 0;
        do {
            int i14 = i12 - i13;
            int i15 = i11 + i13;
            int i16 = this.index;
            if (i16 == 0 && i14 >= this.buffer.length) {
                this.out.write(bArr, i15, i14);
                return;
            }
            int iMin = Math.min(i14, this.buffer.length - i16);
            System.arraycopy(bArr, i15, this.buffer, this.index, iMin);
            this.index += iMin;
            i13 += iMin;
            maybeFlushBuffer();
        } while (i13 < i12);
    }
}
