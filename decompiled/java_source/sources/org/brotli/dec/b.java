package org.brotli.dec;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes7.dex */
public class b extends InputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private byte[] f71621a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f71622b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f71623c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final j f71624d;

    public b(InputStream inputStream) {
        this(inputStream, 16384, null);
    }

    public b(InputStream inputStream, int i11, byte[] bArr) throws IOException {
        j jVar = new j();
        this.f71624d = jVar;
        if (i11 <= 0) {
            throw new IllegalArgumentException("Bad buffer size:" + i11);
        }
        if (inputStream == null) {
            throw new IllegalArgumentException("source is null");
        }
        this.f71621a = new byte[i11];
        this.f71622b = 0;
        this.f71623c = 0;
        try {
            j.c(jVar, inputStream);
            if (bArr != null) {
                d.s(jVar, bArr);
            }
        } catch (BrotliRuntimeException e11) {
            throw new IOException("Brotli decoder initialization failed", e11);
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        j.a(this.f71624d);
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.f71623c >= this.f71622b) {
            byte[] bArr = this.f71621a;
            int i11 = read(bArr, 0, bArr.length);
            this.f71622b = i11;
            this.f71623c = 0;
            if (i11 == -1) {
                return -1;
            }
        }
        byte[] bArr2 = this.f71621a;
        int i12 = this.f71623c;
        this.f71623c = i12 + 1;
        return bArr2[i12] & 255;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i11, int i12) throws IOException {
        if (i11 < 0) {
            throw new IllegalArgumentException("Bad offset: " + i11);
        }
        if (i12 < 0) {
            throw new IllegalArgumentException("Bad length: " + i12);
        }
        int i13 = i11 + i12;
        if (i13 > bArr.length) {
            throw new IllegalArgumentException("Buffer overflow: " + i13 + " > " + bArr.length);
        }
        if (i12 == 0) {
            return 0;
        }
        int iMax = Math.max(this.f71622b - this.f71623c, 0);
        if (iMax != 0) {
            iMax = Math.min(iMax, i12);
            System.arraycopy(this.f71621a, this.f71623c, bArr, i11, iMax);
            this.f71623c += iMax;
            i11 += iMax;
            i12 -= iMax;
            if (i12 == 0) {
                return iMax;
            }
        }
        try {
            j jVar = this.f71624d;
            jVar.Z = bArr;
            jVar.U = i11;
            jVar.V = i12;
            jVar.W = 0;
            d.i(jVar);
            int i14 = this.f71624d.W;
            if (i14 == 0) {
                return -1;
            }
            return i14 + iMax;
        } catch (BrotliRuntimeException e11) {
            throw new IOException("Brotli stream decoding failed", e11);
        }
    }
}
