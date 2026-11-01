package com.amazonaws.util;

import com.amazonaws.AmazonClientException;
import com.amazonaws.internal.SdkFilterInputStream;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public class LengthCheckInputStream extends SdkFilterInputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f18996a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f18997b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f18998c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f18999d;

    public LengthCheckInputStream(InputStream inputStream, long j11, boolean z10) {
        super(inputStream);
        if (j11 < 0) {
            throw new IllegalArgumentException();
        }
        this.f18996a = j11;
        this.f18997b = z10;
    }

    private void l(boolean z10) {
        if (z10) {
            if (this.f18998c == this.f18996a) {
                return;
            }
            throw new AmazonClientException("Data read (" + this.f18998c + ") has a different length than the expected (" + this.f18996a + ")");
        }
        if (this.f18998c <= this.f18996a) {
            return;
        }
        throw new AmazonClientException("More data read (" + this.f18998c + ") than expected (" + this.f18996a + ")");
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public void mark(int i11) {
        super.mark(i11);
        this.f18999d = this.f18998c;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() {
        int i11 = super.read();
        if (i11 >= 0) {
            this.f18998c++;
        }
        l(i11 == -1);
        return i11;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i11, int i12) {
        int i13 = super.read(bArr, i11, i12);
        this.f18998c += i13 >= 0 ? i13 : 0L;
        l(i13 == -1);
        return i13;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public void reset() {
        super.reset();
        if (super.markSupported()) {
            this.f18998c = this.f18999d;
        }
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public long skip(long j11) {
        long jSkip = super.skip(j11);
        if (this.f18997b && jSkip > 0) {
            this.f18998c += jSkip;
            l(false);
        }
        return jSkip;
    }
}
