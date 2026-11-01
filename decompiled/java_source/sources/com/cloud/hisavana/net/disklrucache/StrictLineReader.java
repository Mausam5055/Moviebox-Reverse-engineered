package com.cloud.hisavana.net.disklrucache;

import com.cloud.hisavana.net.disklrucache.utils.DiskLruCacheUtil;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes3.dex */
class StrictLineReader implements Closeable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final InputStream f21392a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Charset f21393b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private byte[] f21394c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f21395d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f21396e;

    public StrictLineReader(InputStream inputStream, int i11, Charset charset) {
        if (inputStream == null || charset == null) {
            throw null;
        }
        if (i11 < 0) {
            throw new IllegalArgumentException("capacity <= 0");
        }
        if (!charset.equals(DiskLruCacheUtil.f21408a)) {
            throw new IllegalArgumentException("Unsupported encoding");
        }
        this.f21392a = inputStream;
        this.f21393b = charset;
        this.f21394c = new byte[i11];
    }

    public StrictLineReader(InputStream inputStream, Charset charset) {
        this(inputStream, 8192, charset);
    }

    private void d() throws IOException {
        InputStream inputStream = this.f21392a;
        byte[] bArr = this.f21394c;
        int i11 = inputStream.read(bArr, 0, bArr.length);
        if (i11 == -1) {
            throw new EOFException();
        }
        this.f21395d = 0;
        this.f21396e = i11;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this.f21392a) {
            try {
                if (this.f21394c != null) {
                    this.f21394c = null;
                    this.f21392a.close();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public boolean h() {
        return this.f21396e == -1;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x002f  */
    public String k() {
        int i11;
        byte[] bArr;
        int i12;
        synchronized (this.f21392a) {
            try {
                if (this.f21394c == null) {
                    throw new IOException("LineReader is closed");
                }
                if (this.f21395d >= this.f21396e) {
                    d();
                }
                for (int i13 = this.f21395d; i13 != this.f21396e; i13++) {
                    byte[] bArr2 = this.f21394c;
                    if (bArr2[i13] == 10) {
                        int i14 = this.f21395d;
                        if (i13 != i14) {
                            i12 = i13 - 1;
                            if (bArr2[i12] != 13) {
                                i12 = i13;
                            }
                        } else {
                            i12 = i13;
                        }
                        String str = new String(bArr2, i14, i12 - i14, this.f21393b.name());
                        this.f21395d = i13 + 1;
                        return str;
                    }
                }
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream((this.f21396e - this.f21395d) + 80) { // from class: com.cloud.hisavana.net.disklrucache.StrictLineReader.1
                    @Override // java.io.ByteArrayOutputStream
                    public String toString() {
                        int i15 = ((ByteArrayOutputStream) this).count;
                        if (i15 > 0 && ((ByteArrayOutputStream) this).buf[i15 - 1] == 13) {
                            i15--;
                        }
                        try {
                            return new String(((ByteArrayOutputStream) this).buf, 0, i15, StrictLineReader.this.f21393b.name());
                        } catch (UnsupportedEncodingException e11) {
                            throw new AssertionError(e11);
                        }
                    }
                };
                loop1: while (true) {
                    byte[] bArr3 = this.f21394c;
                    int i15 = this.f21395d;
                    byteArrayOutputStream.write(bArr3, i15, this.f21396e - i15);
                    this.f21396e = -1;
                    d();
                    i11 = this.f21395d;
                    while (i11 != this.f21396e) {
                        bArr = this.f21394c;
                        if (bArr[i11] == 10) {
                            break loop1;
                        }
                        i11++;
                    }
                }
                int i16 = this.f21395d;
                if (i11 != i16) {
                    byteArrayOutputStream.write(bArr, i16, i11 - i16);
                }
                this.f21395d = i11 + 1;
                return byteArrayOutputStream.toString();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
