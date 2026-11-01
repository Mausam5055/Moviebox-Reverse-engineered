package com.amazonaws.services.s3.internal;

import com.amazonaws.internal.SdkFilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public final class InputSubstream extends SdkFilterInputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f18626a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f18627b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f18628c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f18629d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f18630e;

    public InputSubstream(InputStream inputStream, long j11, long j12, boolean z10) {
        super(inputStream);
        this.f18630e = 0L;
        this.f18626a = 0L;
        this.f18628c = j12;
        this.f18627b = j11;
        this.f18629d = z10;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int available() {
        long j11 = this.f18626a;
        long j12 = this.f18627b;
        return (int) Math.min(j11 < j12 ? this.f18628c : (this.f18628c + j12) - j11, super.available());
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f18629d) {
            super.close();
        }
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i11) {
        this.f18630e = this.f18626a;
        super.mark(i11);
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() {
        byte[] bArr = new byte[1];
        int i11 = read(bArr, 0, 1);
        return i11 == -1 ? i11 : bArr[0];
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i11, int i12) {
        long j11;
        long j12;
        while (true) {
            j11 = this.f18626a;
            j12 = this.f18627b;
            if (j11 >= j12) {
                break;
            }
            this.f18626a += super.skip(j12 - j11);
        }
        long j13 = (this.f18628c + j12) - j11;
        if (j13 <= 0) {
            return -1;
        }
        int i13 = super.read(bArr, i11, (int) Math.min(i12, j13));
        this.f18626a += (long) i13;
        return i13;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() {
        this.f18626a = this.f18630e;
        super.reset();
    }
}
