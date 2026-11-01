package com.bumptech.glide.disklrucache;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes2.dex */
class StrictLineReader implements Closeable {
    private static final byte CR = 13;
    private static final byte LF = 10;
    private byte[] buf;
    private final Charset charset;
    private int end;

    /* JADX INFO: renamed from: in, reason: collision with root package name */
    private final InputStream f20128in;
    private int pos;

    public StrictLineReader(InputStream inputStream, int i11, Charset charset) {
        if (inputStream == null || charset == null) {
            throw null;
        }
        if (i11 < 0) {
            throw new IllegalArgumentException("capacity <= 0");
        }
        if (!charset.equals(Util.US_ASCII)) {
            throw new IllegalArgumentException("Unsupported encoding");
        }
        this.f20128in = inputStream;
        this.charset = charset;
        this.buf = new byte[i11];
    }

    public StrictLineReader(InputStream inputStream, Charset charset) {
        this(inputStream, 8192, charset);
    }

    private void fillBuf() throws IOException {
        InputStream inputStream = this.f20128in;
        byte[] bArr = this.buf;
        int i11 = inputStream.read(bArr, 0, bArr.length);
        if (i11 == -1) {
            throw new EOFException();
        }
        this.pos = 0;
        this.end = i11;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this.f20128in) {
            try {
                if (this.buf != null) {
                    this.buf = null;
                    this.f20128in.close();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public boolean hasUnterminatedLine() {
        return this.end == -1;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x002f  */
    public String readLine() throws IOException {
        int i11;
        byte[] bArr;
        int i12;
        synchronized (this.f20128in) {
            try {
                if (this.buf == null) {
                    throw new IOException("LineReader is closed");
                }
                if (this.pos >= this.end) {
                    fillBuf();
                }
                for (int i13 = this.pos; i13 != this.end; i13++) {
                    byte[] bArr2 = this.buf;
                    if (bArr2[i13] == 10) {
                        int i14 = this.pos;
                        if (i13 != i14) {
                            i12 = i13 - 1;
                            if (bArr2[i12] != 13) {
                                i12 = i13;
                            }
                        } else {
                            i12 = i13;
                        }
                        String str = new String(bArr2, i14, i12 - i14, this.charset.name());
                        this.pos = i13 + 1;
                        return str;
                    }
                }
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream((this.end - this.pos) + 80) { // from class: com.bumptech.glide.disklrucache.StrictLineReader.1
                    @Override // java.io.ByteArrayOutputStream
                    public String toString() {
                        int i15 = ((ByteArrayOutputStream) this).count;
                        if (i15 > 0 && ((ByteArrayOutputStream) this).buf[i15 - 1] == 13) {
                            i15--;
                        }
                        try {
                            return new String(((ByteArrayOutputStream) this).buf, 0, i15, StrictLineReader.this.charset.name());
                        } catch (UnsupportedEncodingException e11) {
                            throw new AssertionError(e11);
                        }
                    }
                };
                loop1: while (true) {
                    byte[] bArr3 = this.buf;
                    int i15 = this.pos;
                    byteArrayOutputStream.write(bArr3, i15, this.end - i15);
                    this.end = -1;
                    fillBuf();
                    i11 = this.pos;
                    while (i11 != this.end) {
                        bArr = this.buf;
                        if (bArr[i11] == 10) {
                            break loop1;
                        }
                        i11++;
                    }
                }
                int i16 = this.pos;
                if (i11 != i16) {
                    byteArrayOutputStream.write(bArr, i16, i11 - i16);
                }
                this.pos = i11 + 1;
                return byteArrayOutputStream.toString();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
