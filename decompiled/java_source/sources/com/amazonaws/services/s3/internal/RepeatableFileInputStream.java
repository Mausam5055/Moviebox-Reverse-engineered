package com.amazonaws.services.s3.internal;

import com.amazonaws.internal.SdkInputStream;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public class RepeatableFileInputStream extends SdkInputStream {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Log f18654e = LogFactory.c("RepeatableFIS");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final File f18655a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private FileInputStream f18656b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f18657c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f18658d = 0;

    public RepeatableFileInputStream(File file) {
        this.f18656b = null;
        if (file == null) {
            throw new IllegalArgumentException("File cannot be null");
        }
        this.f18656b = new FileInputStream(file);
        this.f18655a = file;
    }

    @Override // java.io.InputStream
    public int available() {
        k();
        return this.f18656b.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f18656b.close();
        k();
    }

    @Override // com.amazonaws.internal.SdkInputStream
    public InputStream l() {
        return this.f18656b;
    }

    @Override // java.io.InputStream
    public void mark(int i11) {
        k();
        this.f18658d += this.f18657c;
        this.f18657c = 0L;
        Log log = f18654e;
        if (log.b()) {
            log.a("Input stream marked at " + this.f18658d + " bytes");
        }
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        k();
        int i11 = this.f18656b.read();
        if (i11 == -1) {
            return -1;
        }
        this.f18657c++;
        return i11;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i11, int i12) throws IOException {
        k();
        int i13 = this.f18656b.read(bArr, i11, i12);
        this.f18657c += (long) i13;
        return i13;
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        this.f18656b.close();
        k();
        this.f18656b = new FileInputStream(this.f18655a);
        long jSkip = this.f18658d;
        while (jSkip > 0) {
            jSkip -= this.f18656b.skip(jSkip);
        }
        Log log = f18654e;
        if (log.b()) {
            log.a("Reset to mark point " + this.f18658d + " after returning " + this.f18657c + " bytes");
        }
        this.f18657c = 0L;
    }

    @Override // java.io.InputStream
    public long skip(long j11) throws IOException {
        k();
        long jSkip = this.f18656b.skip(j11);
        this.f18657c += jSkip;
        return jSkip;
    }
}
