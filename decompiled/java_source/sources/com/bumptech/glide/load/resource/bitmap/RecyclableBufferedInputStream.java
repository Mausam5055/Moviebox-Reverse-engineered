package com.bumptech.glide.load.resource.bitmap;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class RecyclableBufferedInputStream extends FilterInputStream {
    private volatile byte[] buf;
    private final ArrayPool byteArrayPool;
    private int count;
    private int marklimit;
    private int markpos;
    private int pos;

    /* JADX INFO: loaded from: classes2.dex */
    static class InvalidMarkException extends IOException {
        private static final long serialVersionUID = -4338378848813561757L;

        InvalidMarkException(String str) {
            super(str);
        }
    }

    public RecyclableBufferedInputStream(@NonNull InputStream inputStream, @NonNull ArrayPool arrayPool) {
        this(inputStream, arrayPool, 65536);
    }

    RecyclableBufferedInputStream(@NonNull InputStream inputStream, @NonNull ArrayPool arrayPool, int i11) {
        super(inputStream);
        this.markpos = -1;
        this.byteArrayPool = arrayPool;
        this.buf = (byte[]) arrayPool.get(i11, byte[].class);
    }

    private int fillbuf(InputStream inputStream, byte[] bArr) throws IOException {
        int i11 = this.markpos;
        if (i11 != -1) {
            int i12 = this.pos - i11;
            int i13 = this.marklimit;
            if (i12 < i13) {
                if (i11 == 0 && i13 > bArr.length && this.count == bArr.length) {
                    int length = bArr.length * 2;
                    if (length <= i13) {
                        i13 = length;
                    }
                    byte[] bArr2 = (byte[]) this.byteArrayPool.get(i13, byte[].class);
                    System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                    this.buf = bArr2;
                    this.byteArrayPool.put(bArr);
                    bArr = bArr2;
                } else if (i11 > 0) {
                    System.arraycopy(bArr, i11, bArr, 0, bArr.length - i11);
                }
                int i14 = this.pos - this.markpos;
                this.pos = i14;
                this.markpos = 0;
                this.count = 0;
                int i15 = inputStream.read(bArr, i14, bArr.length - i14);
                int i16 = this.pos;
                if (i15 > 0) {
                    i16 += i15;
                }
                this.count = i16;
                return i15;
            }
        }
        int i17 = inputStream.read(bArr);
        if (i17 > 0) {
            this.markpos = -1;
            this.pos = 0;
            this.count = i17;
        }
        return i17;
    }

    private static IOException streamClosed() throws IOException {
        throw new IOException("BufferedInputStream is closed");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int available() throws IOException {
        InputStream inputStream;
        inputStream = ((FilterInputStream) this).in;
        if (this.buf == null || inputStream == null) {
            throw streamClosed();
        }
        return (this.count - this.pos) + inputStream.available();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.buf != null) {
            this.byteArrayPool.put(this.buf);
            this.buf = null;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        ((FilterInputStream) this).in = null;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    public synchronized void fixMarkLimit() {
        this.marklimit = this.buf.length;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i11) {
        this.marklimit = Math.max(this.marklimit, i11);
        this.markpos = this.pos;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read() throws IOException {
        byte[] bArr = this.buf;
        InputStream inputStream = ((FilterInputStream) this).in;
        if (bArr == null || inputStream == null) {
            throw streamClosed();
        }
        if (this.pos >= this.count && fillbuf(inputStream, bArr) == -1) {
            return -1;
        }
        if (bArr != this.buf && (bArr = this.buf) == null) {
            throw streamClosed();
        }
        int i11 = this.count;
        int i12 = this.pos;
        if (i11 - i12 <= 0) {
            return -1;
        }
        this.pos = i12 + 1;
        return bArr[i12] & 255;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read(@NonNull byte[] bArr, int i11, int i12) throws IOException {
        int i13;
        int i14;
        byte[] bArr2 = this.buf;
        if (bArr2 == null) {
            throw streamClosed();
        }
        if (i12 == 0) {
            return 0;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        if (inputStream == null) {
            throw streamClosed();
        }
        int i15 = this.pos;
        int i16 = this.count;
        if (i15 < i16) {
            int i17 = i16 - i15 >= i12 ? i12 : i16 - i15;
            System.arraycopy(bArr2, i15, bArr, i11, i17);
            this.pos += i17;
            if (i17 == i12 || inputStream.available() == 0) {
                return i17;
            }
            i11 += i17;
            i13 = i12 - i17;
        } else {
            i13 = i12;
        }
        while (true) {
            if (this.markpos == -1 && i13 >= bArr2.length) {
                i14 = inputStream.read(bArr, i11, i13);
                if (i14 == -1) {
                    return i13 != i12 ? i12 - i13 : -1;
                }
            } else {
                if (fillbuf(inputStream, bArr2) == -1) {
                    return i13 != i12 ? i12 - i13 : -1;
                }
                if (bArr2 != this.buf && (bArr2 = this.buf) == null) {
                    throw streamClosed();
                }
                int i18 = this.count;
                int i19 = this.pos;
                i14 = i18 - i19 >= i13 ? i13 : i18 - i19;
                System.arraycopy(bArr2, i19, bArr, i11, i14);
                this.pos += i14;
            }
            i13 -= i14;
            if (i13 == 0) {
                return i12;
            }
            if (inputStream.available() == 0) {
                return i12 - i13;
            }
            i11 += i14;
        }
    }

    public synchronized void release() {
        if (this.buf != null) {
            this.byteArrayPool.put(this.buf);
            this.buf = null;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() throws IOException {
        if (this.buf == null) {
            throw new IOException("Stream is closed");
        }
        int i11 = this.markpos;
        if (-1 == i11) {
            throw new InvalidMarkException("Mark has been invalidated, pos: " + this.pos + " markLimit: " + this.marklimit);
        }
        this.pos = i11;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized long skip(long j11) throws IOException {
        if (j11 < 1) {
            return 0L;
        }
        byte[] bArr = this.buf;
        if (bArr == null) {
            throw streamClosed();
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        if (inputStream == null) {
            throw streamClosed();
        }
        int i11 = this.count;
        int i12 = this.pos;
        if (i11 - i12 >= j11) {
            this.pos = (int) (((long) i12) + j11);
            return j11;
        }
        long j12 = ((long) i11) - ((long) i12);
        this.pos = i11;
        if (this.markpos == -1 || j11 > this.marklimit) {
            long jSkip = inputStream.skip(j11 - j12);
            if (jSkip > 0) {
                this.markpos = -1;
            }
            return j12 + jSkip;
        }
        if (fillbuf(inputStream, bArr) == -1) {
            return j12;
        }
        int i13 = this.count;
        int i14 = this.pos;
        if (i13 - i14 >= j11 - j12) {
            this.pos = (int) ((((long) i14) + j11) - j12);
            return j11;
        }
        long j13 = (j12 + ((long) i13)) - ((long) i14);
        this.pos = i13;
        return j13;
    }
}
