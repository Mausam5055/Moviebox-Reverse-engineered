package com.bytedance.sdk.component.HiB.TKC.Sj.Sj;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes2.dex */
class TKC implements Closeable {
    private int EjP;
    private int HiB;
    private final InputStream Sj;
    private byte[] TKC;
    private final Charset sP;

    public TKC(InputStream inputStream, int i11, Charset charset) {
        if (inputStream == null || charset == null) {
            throw null;
        }
        if (i11 < 0) {
            throw new IllegalArgumentException("capacity <= 0");
        }
        if (!charset.equals(EjP.Sj)) {
            throw new IllegalArgumentException("Unsupported encoding");
        }
        this.Sj = inputStream;
        this.sP = charset;
        this.TKC = new byte[i11];
    }

    public TKC(InputStream inputStream, Charset charset) {
        this(inputStream, 8192, charset);
    }

    private void TKC() throws IOException {
        InputStream inputStream = this.Sj;
        byte[] bArr = this.TKC;
        int i11 = inputStream.read(bArr, 0, bArr.length);
        if (i11 == -1) {
            throw new EOFException();
        }
        this.EjP = 0;
        this.HiB = i11;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x002f  */
    public String Sj() throws IOException {
        int i11;
        byte[] bArr;
        int i12;
        synchronized (this.Sj) {
            try {
                if (this.TKC == null) {
                    throw new IOException("LineReader is closed");
                }
                if (this.EjP >= this.HiB) {
                    TKC();
                }
                for (int i13 = this.EjP; i13 != this.HiB; i13++) {
                    byte[] bArr2 = this.TKC;
                    if (bArr2[i13] == 10) {
                        int i14 = this.EjP;
                        if (i13 != i14) {
                            i12 = i13 - 1;
                            if (bArr2[i12] != 13) {
                                i12 = i13;
                            }
                        } else {
                            i12 = i13;
                        }
                        String str = new String(bArr2, i14, i12 - i14, this.sP.name());
                        this.EjP = i13 + 1;
                        return str;
                    }
                }
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream((this.HiB - this.EjP) + 80) { // from class: com.bytedance.sdk.component.HiB.TKC.Sj.Sj.TKC.1
                    @Override // java.io.ByteArrayOutputStream
                    public String toString() {
                        int i15 = ((ByteArrayOutputStream) this).count;
                        if (i15 > 0 && ((ByteArrayOutputStream) this).buf[i15 - 1] == 13) {
                            i15--;
                        }
                        try {
                            return new String(((ByteArrayOutputStream) this).buf, 0, i15, TKC.this.sP.name());
                        } catch (UnsupportedEncodingException e11) {
                            throw new AssertionError(e11);
                        }
                    }
                };
                loop1: while (true) {
                    byte[] bArr3 = this.TKC;
                    int i15 = this.EjP;
                    byteArrayOutputStream.write(bArr3, i15, this.HiB - i15);
                    this.HiB = -1;
                    TKC();
                    i11 = this.EjP;
                    while (i11 != this.HiB) {
                        bArr = this.TKC;
                        if (bArr[i11] == 10) {
                            break loop1;
                        }
                        i11++;
                    }
                }
                int i16 = this.EjP;
                if (i11 != i16) {
                    byteArrayOutputStream.write(bArr, i16, i11 - i16);
                }
                this.EjP = i11 + 1;
                return byteArrayOutputStream.toString();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this.Sj) {
            try {
                if (this.TKC != null) {
                    this.TKC = null;
                    this.Sj.close();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public boolean sP() {
        return this.HiB == -1;
    }
}
